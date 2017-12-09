.class public Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AdBackPressDialog.java"


# static fields
.field private static final EXTRA_ADMOB_KEY:Ljava/lang/String; = "admob_key"

.field private static final EXTRA_AD_PRIORITY_LIST:Ljava/lang/String; = "ad_priority_list"

.field private static final EXTRA_APP_NAME:Ljava/lang/String; = "app_name"

.field private static final EXTRA_FACEBOOK_KEY:Ljava/lang/String; = "facebook_key"

.field private static final EXTRA_SHOW_REVIEW_BUTTON:Ljava/lang/String; = "show_review_button"

.field private static imageProvider:Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper$ImageProvider;

.field private static onBackPressListener:Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;


# instance fields
.field adPriorityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field adViewNativeAdHolder:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

.field admobKey:Ljava/lang/String;

.field adviewContainer:Landroid/view/View;

.field appName:Ljava/lang/String;

.field dividerBtn:Landroid/view/View;

.field facebookKey:Ljava/lang/String;

.field showReviewButton:Z

.field tvFinish:Landroid/widget/TextView;

.field tvReview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->onBackPressListener:Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->onReviewClick()V

    return-void
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->onFinishClick()V

    return-void
.end method

.method private checkReview()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 157
    const-string v1, "review"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/cashwalk/cashwalk/util/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 158
    .local v0, "isReview":Z
    if-eqz v0, :cond_0

    .line 159
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->dividerBtn:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->tvReview:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 194
    const v0, 0x7f10035a

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->adviewContainer:Landroid/view/View;

    .line 195
    const v0, 0x7f10035c

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->dividerBtn:Landroid/view/View;

    .line 197
    const v0, 0x7f10035b

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->tvReview:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->tvReview:Landroid/widget/TextView;

    new-instance v1, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog$2;-><init>(Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v0, 0x7f10035d

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->tvFinish:Landroid/widget/TextView;

    .line 205
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->tvFinish:Landroid/widget/TextView;

    new-instance v1, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog$3;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog$3;-><init>(Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    return-void
.end method

.method private onFinishClick()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->finish()V

    .line 229
    invoke-virtual {p0, v0, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->overridePendingTransition(II)V

    .line 231
    sget-object v0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->onBackPressListener:Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->onBackPressListener:Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;

    invoke-interface {v0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;->onFinish()V

    .line 234
    :cond_0
    return-void
.end method

.method private onReviewClick()V
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cashwalk/cashwalk/util/Utils;->openPlayStore(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    const-string v0, "review"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/cashwalk/cashwalk/util/Utils;->putSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 221
    sget-object v0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->onBackPressListener:Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;

    if-eqz v0, :cond_0

    .line 222
    sget-object v0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->onBackPressListener:Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;

    invoke-interface {v0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;->onReviewClick()V

    .line 225
    :cond_0
    return-void
.end method

.method private setupFromSavedInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 172
    const-string v0, "app_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->appName:Ljava/lang/String;

    .line 173
    const-string v0, "facebook_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->facebookKey:Ljava/lang/String;

    .line 174
    const-string v0, "admob_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->admobKey:Ljava/lang/String;

    .line 175
    const-string v0, "ad_priority_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->adPriorityList:Ljava/util/ArrayList;

    .line 176
    const-string v0, "show_review_button"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->showReviewButton:Z

    .line 190
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "app_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->appName:Ljava/lang/String;

    .line 182
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "facebook_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->facebookKey:Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "admob_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->admobKey:Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ad_priority_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->adPriorityList:Ljava/util/ArrayList;

    .line 185
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "show_review_button"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->showReviewButton:Z

    goto :goto_0
.end method

.method private showReviewButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 148
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->showReviewButton:Z

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->dividerBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->tvReview:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    :cond_0
    return-void
.end method

.method public static startAdmobDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "admobKey"    # Ljava/lang/String;
    .param p3, "onBackPressListener"    # Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;

    .prologue
    .line 89
    const/4 v2, 0x0

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->startDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;)V

    .line 90
    return-void
.end method

.method public static startDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "facebookKey"    # Ljava/lang/String;
    .param p3, "admobKey"    # Ljava/lang/String;
    .param p4, "adPriority"    # I
    .param p5, "onBackPressListener"    # Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;

    .prologue
    .line 50
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->startDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;)V

    .line 51
    return-void
.end method

.method public static startDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "facebookKey"    # Ljava/lang/String;
    .param p3, "admobKey"    # Ljava/lang/String;
    .param p4, "adPriority"    # I
    .param p5, "showReviewButton"    # Z
    .param p6, "onBackPressListener"    # Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 54
    new-array v4, v3, [Ljava/lang/Integer;

    .line 55
    .local v4, "tempAdPriorityList":[Ljava/lang/Integer;
    const/4 v0, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    .line 56
    if-ne p4, v2, :cond_0

    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    move-object v6, p6

    .line 61
    invoke-static/range {v0 .. v6}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->startDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;ZLcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;)V

    .line 63
    return-void

    .line 59
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    goto :goto_0
.end method

.method public static startDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;ZLcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "facebookKey"    # Ljava/lang/String;
    .param p3, "admobKey"    # Ljava/lang/String;
    .param p4, "adPriorityList"    # [Ljava/lang/Integer;
    .param p5, "showReviewButton"    # Z
    .param p6, "onBackPressListener"    # Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;

    .prologue
    .line 66
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->startDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;ZLcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper$ImageProvider;)V

    .line 67
    return-void
.end method

.method public static startDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;ZLcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper$ImageProvider;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "facebookKey"    # Ljava/lang/String;
    .param p3, "admobKey"    # Ljava/lang/String;
    .param p4, "adPriorityList"    # [Ljava/lang/Integer;
    .param p5, "showReviewButton"    # Z
    .param p6, "onBackPressListener"    # Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;
    .param p7, "imageProvider"    # Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper$ImageProvider;

    .prologue
    const/4 v4, 0x0

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "app_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "facebook_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "admob_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v1, "show_review_button"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    const-string v1, "ad_priority_list"

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 78
    if-nez p6, :cond_0

    .line 79
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "OnBackPressListener can not null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_0
    sput-object p6, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->onBackPressListener:Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;

    .line 82
    sput-object p7, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->imageProvider:Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper$ImageProvider;

    .line 84
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 85
    invoke-virtual {p0, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 86
    return-void
.end method

.method public static startFacebookDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "facebookKey"    # Ljava/lang/String;
    .param p3, "onBackPressListener"    # Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;

    .prologue
    .line 46
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->startDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;)V

    .line 47
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->finish()V

    .line 248
    invoke-virtual {p0, v0, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->overridePendingTransition(II)V

    .line 249
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->requestWindowFeature(I)Z

    .line 96
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 98
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->setupFromSavedInstanceState(Landroid/os/Bundle;)V

    .line 102
    const v0, 0x7f04007b

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->setContentView(I)V

    .line 105
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 106
    .local v7, "display":Landroid/view/Display;
    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    double-to-int v8, v0

    .line 107
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->setFinishOnTouchOutside(Z)V

    .line 112
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->initView()V

    .line 113
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->showReviewButton()V

    .line 114
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->checkReview()V

    .line 115
    new-instance v0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->adviewContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->appName:Ljava/lang/String;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->facebookKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->admobKey:Ljava/lang/String;

    sget-object v6, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->imageProvider:Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper$ImageProvider;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;-><init>(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper$ImageProvider;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->adViewNativeAdHolder:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    .line 117
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->adViewNativeAdHolder:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->adPriorityList:Ljava/util/ArrayList;

    new-instance v2, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog$1;-><init>(Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->loadAD(Ljava/util/ArrayList;Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;)V

    .line 144
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->adViewNativeAdHolder:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->adViewNativeAdHolder:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->onDestroy()V

    .line 256
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 257
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 239
    const-string v0, "app_name"

    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v0, "facebook_key"

    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->facebookKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "admob_key"

    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->admobKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v0, "ad_priority_list"

    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->adPriorityList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 243
    return-void
.end method
