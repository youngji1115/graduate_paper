.class Lcom/cashwalk/cashwalk/CashWalkMainActivity$5;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "CashWalkMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/CashWalkMainActivity;->refreshCash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$5;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 645
    :try_start_0
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 646
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseUser(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v3

    .line 647
    .local v3, "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$5;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->access$000(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 648
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "POINT"

    iget v5, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->point:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 649
    const-string v4, "CODE"

    iget-object v5, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->code:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 652
    iget-object v4, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->kakaoUid:Ljava/lang/String;

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->fbUid:Ljava/lang/String;

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->anonymousId:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 653
    const-string v4, "IS_LOGIN"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 654
    const-string v4, "#### \ube44\ub85c\uadf8\uc778 \uc0ac\uc6a9\uc790"

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 661
    :goto_0
    iget-boolean v4, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->smsAuth:Z

    if-eqz v4, :cond_2

    .line 663
    const-string v4, "GUEST_AUTH_SMS"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 669
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 673
    const/4 v4, 0x0

    sput-boolean v4, Lcom/cashwalk/cashwalk/CashWalkApp;->shouldRefreshCash:Z

    .line 699
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :cond_0
    :goto_2
    return-void

    .line 656
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :cond_1
    const-string v4, "IS_LOGIN"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 657
    const-string v4, "#### \ub85c\uadf8\uc778 \uc0ac\uc6a9\uc790"

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 696
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :catch_0
    move-exception v1

    .line 697
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 666
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :cond_2
    :try_start_1
    const-string v4, "GUEST_AUTH_SMS"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 674
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :cond_3
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x7c

    if-ne v4, v5, :cond_0

    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UpdateClientError"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 676
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$5;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 677
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$5;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    const v5, 0x7f0902e7

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 678
    iget-object v4, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$5;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090101

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/CashWalkMainActivity$5$1;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity$5$1;-><init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity$5;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 684
    iget-object v4, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$5;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    const v5, 0x7f0902e5

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/CashWalkMainActivity$5$2;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity$5$2;-><init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity$5;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 693
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
