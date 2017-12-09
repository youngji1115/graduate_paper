.class public Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CashHistoryActivity.java"


# instance fields
.field private point:Lcom/cashwalk/cashwalk/util/network/model/Point;

.field private pref:Landroid/content/SharedPreferences;

.field private rl_not_history:Landroid/widget/RelativeLayout;

.field private tv_lottery_accumulate_total_cash:Landroid/widget/TextView;

.field private tv_total_accumulate_cash:Landroid/widget/TextView;

.field private tv_total_current_cash:Landroid/widget/TextView;

.field private tv_use_shop_totcal_accumulate_cash:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;Lcom/cashwalk/cashwalk/util/network/model/Point;)Lcom/cashwalk/cashwalk/util/network/model/Point;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/util/network/model/Point;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->point:Lcom/cashwalk/cashwalk/util/network/model/Point;

    return-object p1
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->init()V

    return-void
.end method

.method private getMyHistory()V
    .locals 2

    .prologue
    .line 75
    new-instance v1, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getPoint(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 88
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 89
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 61
    const v0, 0x7f1000e4

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->rl_not_history:Landroid/widget/RelativeLayout;

    .line 62
    const v0, 0x7f1000d9

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->tv_total_current_cash:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f1000de

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->tv_total_accumulate_cash:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f1000e3

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->tv_use_shop_totcal_accumulate_cash:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f1000e1

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->tv_lottery_accumulate_total_cash:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->tv_total_current_cash:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->point:Lcom/cashwalk/cashwalk/util/network/model/Point;

    iget v1, v1, Lcom/cashwalk/cashwalk/util/network/model/Point;->currentPoint:I

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->tv_total_accumulate_cash:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->point:Lcom/cashwalk/cashwalk/util/network/model/Point;

    iget v1, v1, Lcom/cashwalk/cashwalk/util/network/model/Point;->totalPoint:I

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->tv_use_shop_totcal_accumulate_cash:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->point:Lcom/cashwalk/cashwalk/util/network/model/Point;

    iget v0, v0, Lcom/cashwalk/cashwalk/util/network/model/Point;->shopUsed:I

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->point:Lcom/cashwalk/cashwalk/util/network/model/Point;

    iget v2, v2, Lcom/cashwalk/cashwalk/util/network/model/Point;->shopUsed:I

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->tv_lottery_accumulate_total_cash:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->point:Lcom/cashwalk/cashwalk/util/network/model/Point;

    iget v0, v0, Lcom/cashwalk/cashwalk/util/network/model/Point;->raffleUsed:I

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->point:Lcom/cashwalk/cashwalk/util/network/model/Point;

    iget v2, v2, Lcom/cashwalk/cashwalk/util/network/model/Point;->raffleUsed:I

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void

    .line 69
    :cond_0
    const-string v0, "-"

    goto :goto_0

    .line 70
    :cond_1
    const-string v0, "-"

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v2, 0x7f04001d

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->setContentView(I)V

    .line 42
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 43
    .local v1, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    const v2, 0x7f0901b0

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 47
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->pref:Landroid/content/SharedPreferences;

    .line 50
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v2

    const-string v3, "coin_history_enter"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->getMyHistory()V

    .line 57
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
