.class Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$12;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "AuthSMSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->checkAuthNumber(Ljava/lang/String;)V
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
    .line 293
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const v5, 0x7f090141

    const/4 v4, 0x0

    .line 296
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->access$900(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 298
    if-eqz p1, :cond_2

    .line 299
    :try_start_0
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 300
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    const-string/jumbo v2, "\uc778\uc99d\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 302
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;)V

    .line 316
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    const-string/jumbo v2, "\uc778\uc99d\ucf54\ub4dc\ub97c \ud655\uc778\ud574\uc8fc\uc138\uc694."

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 314
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-virtual {v2, v5}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    const v3, 0x7f090141

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 310
    :cond_2
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    const v3, 0x7f090141

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
