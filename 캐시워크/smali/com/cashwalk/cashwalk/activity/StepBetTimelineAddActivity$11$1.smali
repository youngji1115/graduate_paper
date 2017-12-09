.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "StepBetTimelineAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;

.field final synthetic val$pd:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;->val$pd:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 445
    :try_start_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 446
    const-string v2, "error"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    :try_start_1
    const-string v2, "error"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "error"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x1f4

    if-ne v2, v3, :cond_0

    const-string v2, "error"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BannedUserError"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 450
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    const v3, 0x7f090142

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 451
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090101

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1$1;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1$1;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 457
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 474
    .end local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    const v4, 0x7f0902b8

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1700(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "NICKNAME"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v1

    .line 462
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 463
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    const v4, 0x7f0902b8

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1700(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "NICKNAME"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 470
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 471
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 472
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    const v4, 0x7f090141

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 466
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->finish()V

    .line 467
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    const-class v5, Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "timeline_refresh"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->startActivity(Landroid/content/Intent;)V

    .line 468
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    const v4, 0x7f0902ba

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1700(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "NICKNAME"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method
