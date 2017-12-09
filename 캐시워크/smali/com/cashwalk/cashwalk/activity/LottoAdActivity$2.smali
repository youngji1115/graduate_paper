.class Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;
.super Lcom/cashwalk/cashwalk/util/OnSingleClickListener;
.source "LottoAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 233
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$000(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "POINT"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$100(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    move-result-object v4

    iget v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->point:I

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$200(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 235
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v3

    const-string v4, "lotto_try"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$300(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-direct {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 242
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090223

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$100(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    move-result-object v5

    iget v5, v5, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->point:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 243
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090101

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2$1;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2$1;-><init>(Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;)V

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 250
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090224

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2$2;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2$2;-><init>(Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;)V

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 258
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 275
    .end local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_1
    return-void

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 260
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$400(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)V

    goto :goto_1

    .line 265
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v3

    const-string v4, "lotto_short"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    :goto_2
    new-instance v2, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    const-string v4, "lotto"

    invoke-direct {v2, v3, v4}, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 273
    .local v2, "sd":Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;
    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->show()V

    goto :goto_1

    .line 266
    .end local v2    # "sd":Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;
    :catch_1
    move-exception v1

    .line 267
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
