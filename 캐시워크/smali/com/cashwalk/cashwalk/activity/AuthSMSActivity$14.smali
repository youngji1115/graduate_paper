.class Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$14;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "AuthSMSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->setStep3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$14;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const v7, 0x7f090141

    const/4 v6, 0x0

    .line 377
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$14;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->access$900(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 379
    :try_start_0
    const-string v2, "error"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 380
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseUser(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v1

    .line 382
    .local v1, "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    iget-boolean v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->smsAuth:Z

    if-eqz v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$14;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->access$1500(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "GUEST_AUTH_SMS"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 390
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$14;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$14;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    const-class v5, Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "from_signup"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->startActivity(Landroid/content/Intent;)V

    .line 391
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$14;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->finish()V

    .line 399
    .end local v1    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :goto_1
    return-void

    .line 387
    .restart local v1    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$14;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->access$1500(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "GUEST_AUTH_SMS"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    .end local v1    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 397
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$14;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$14;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-virtual {v3, v7}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 393
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$14;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$14;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    const v4, 0x7f090141

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
