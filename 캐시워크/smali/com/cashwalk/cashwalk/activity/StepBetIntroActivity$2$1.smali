.class Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "StepBetIntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 109
    if-eqz p1, :cond_1

    const-string v2, "error"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->access$200(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "STEPBET_ID"

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->access$100(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)Lcom/cashwalk/cashwalk/util/network/model/StepBet;

    move-result-object v4

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->id:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 113
    .local v0, "r":Ljava/util/Random;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 115
    .local v1, "rand":I
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stepbet_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->access$100(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)Lcom/cashwalk/cashwalk/util/network/model/StepBet;

    move-result-object v4

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->access$300(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->access$100(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)Lcom/cashwalk/cashwalk/util/network/model/StepBet;

    move-result-object v4

    iget v4, v4, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->participants:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    const v5, 0x7f090231

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->access$400(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    const v4, 0x7f0902a6

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->access$400(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 121
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->access$100(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)Lcom/cashwalk/cashwalk/util/network/model/StepBet;

    move-result-object v2

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->startDate:Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->isBeforeNow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->finish()V

    .line 123
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    const-class v5, Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    .end local v0    # "r":Ljava/util/Random;
    .end local v1    # "rand":I
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const-string v2, "StepBetIntroActivity: RestClient.participateStepBet failed!"

    invoke-static {v2}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
