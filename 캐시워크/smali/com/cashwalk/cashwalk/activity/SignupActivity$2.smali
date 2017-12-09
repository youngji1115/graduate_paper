.class Lcom/cashwalk/cashwalk/activity/SignupActivity$2;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "SignupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/SignupActivity;->setInviteCode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/SignupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/SignupActivity;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 172
    :try_start_0
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 173
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 174
    .local v3, "result":Z
    if-eqz v3, :cond_0

    .line 175
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->finish()V

    .line 176
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    const-class v7, Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->startActivity(Landroid/content/Intent;)V

    .line 233
    .end local v3    # "result":Z
    :goto_0
    return-void

    .line 178
    .restart local v3    # "result":Z
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090284

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 180
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090101

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/activity/SignupActivity$2$1;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/activity/SignupActivity$2$1;-><init>(Lcom/cashwalk/cashwalk/activity/SignupActivity$2;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 186
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0902df

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/activity/SignupActivity$2$2;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/activity/SignupActivity$2$2;-><init>(Lcom/cashwalk/cashwalk/activity/SignupActivity$2;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 193
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    .end local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    .end local v3    # "result":Z
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->finish()V

    .line 230
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    const-class v7, Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->startActivity(Landroid/content/Intent;)V

    .line 231
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 197
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 198
    .local v2, "res":Lorg/json/JSONObject;
    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 199
    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xd2

    if-ne v4, v5, :cond_2

    .line 200
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    .restart local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090286

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 202
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090132

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/activity/SignupActivity$2$3;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/activity/SignupActivity$2$3;-><init>(Lcom/cashwalk/cashwalk/activity/SignupActivity$2;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 208
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 209
    .end local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_2
    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xe4

    if-ne v4, v5, :cond_3

    .line 210
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 211
    .restart local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090283

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 212
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090132

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/activity/SignupActivity$2$4;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/activity/SignupActivity$2$4;-><init>(Lcom/cashwalk/cashwalk/activity/SignupActivity$2;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 220
    .end local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_3
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->finish()V

    .line 221
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    const-class v7, Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 224
    :cond_4
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->finish()V

    .line 225
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    const-class v7, Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
