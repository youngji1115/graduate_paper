.class Lcom/cashwalk/cashwalk/MainActivity$11$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/MainActivity$11;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/MainActivity$11;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$11;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 419
    if-eqz p1, :cond_1

    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 421
    :try_start_0
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "stepbet"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, "stepbet":Ljava/lang/String;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$11;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$11;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "STEPBET_ID"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 424
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 425
    .local v1, "r":Ljava/util/Random;
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 426
    .local v2, "rand":I
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stepbet_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)V

    .line 428
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$11;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$11;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "FRIEND_RANK_NEW_FLAG"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 429
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$11;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$11;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/MainActivity;->access$900(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/ImageView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 430
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$11;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$11;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/MainActivity;->access$1000(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 431
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$11;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$11;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "FRIEND_RANK_NEW_FLAG"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 434
    :cond_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$11;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$11;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$11;

    iget-object v6, v6, Lcom/cashwalk/cashwalk/MainActivity$11;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const-class v7, Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 435
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$11;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$11;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v5, 0x7f050019

    const v6, 0x7f050017

    invoke-virtual {v4, v5, v6}, Lcom/cashwalk/cashwalk/MainActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .end local v1    # "r":Ljava/util/Random;
    .end local v2    # "rand":I
    .end local v3    # "stepbet":Ljava/lang/String;
    :goto_0
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 440
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v4, "StepBetIntroActivity: RestClient.participateStepBet failed!"

    invoke-static {v4}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
