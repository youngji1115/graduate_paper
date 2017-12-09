.class Lcom/cashwalk/cashwalk/MainActivity$17;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity;->refreshCash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/MainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$17;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 597
    :try_start_0
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 598
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseUser(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v3

    .line 599
    .local v3, "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$17;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 600
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "POINT"

    iget v5, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->point:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 601
    const-string v4, "CODE"

    iget-object v5, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->code:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 604
    iget-object v4, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->kakaoUid:Ljava/lang/String;

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->fbUid:Ljava/lang/String;

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->anonymousId:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 605
    const-string v4, "IS_LOGIN"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 606
    const-string v4, "#### \ube44\ub85c\uadf8\uc778 \uc0ac\uc6a9\uc790"

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 613
    :goto_0
    iget-boolean v4, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->smsAuth:Z

    if-eqz v4, :cond_2

    .line 615
    const-string v4, "GUEST_AUTH_SMS"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 621
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 623
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$17;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/MainActivity;->access$1700(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget v5, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->point:I

    invoke-static {v5}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    const/4 v4, 0x0

    sput-boolean v4, Lcom/cashwalk/cashwalk/CashWalkApp;->shouldRefreshCash:Z

    .line 651
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :cond_0
    :goto_2
    return-void

    .line 608
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :cond_1
    const-string v4, "IS_LOGIN"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 609
    const-string v4, "#### \ub85c\uadf8\uc778 \uc0ac\uc6a9\uc790"

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 648
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :catch_0
    move-exception v1

    .line 649
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 618
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :cond_2
    :try_start_1
    const-string v4, "GUEST_AUTH_SMS"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 626
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

    .line 628
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$17;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 629
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$17;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v5, 0x7f0902e7

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 630
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$17;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090101

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/MainActivity$17$1;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/MainActivity$17$1;-><init>(Lcom/cashwalk/cashwalk/MainActivity$17;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 636
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$17;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v5, 0x7f0902e5

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/MainActivity$17$2;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/MainActivity$17$2;-><init>(Lcom/cashwalk/cashwalk/MainActivity$17;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 645
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
