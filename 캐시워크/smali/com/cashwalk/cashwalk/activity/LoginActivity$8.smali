.class Lcom/cashwalk/cashwalk/activity/LoginActivity$8;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/LoginActivity;->login(Lcom/cashwalk/cashwalk/util/network/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/LoginActivity;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 13
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/16 v12, 0x2710

    const/4 v11, 0x0

    .line 360
    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->access$600(Lcom/cashwalk/cashwalk/activity/LoginActivity;)Landroid/widget/ProgressBar;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 362
    :try_start_0
    const-string v6, "result"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "owner"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseUser(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v5

    .line 364
    .local v5, "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->access$200(Lcom/cashwalk/cashwalk/activity/LoginActivity;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 365
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "result"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "token"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    .line 366
    const-string v6, "TOKEN"

    sget-object v7, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 367
    const-string v6, "NICKNAME"

    iget-object v7, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 368
    const-string v6, "USER_ID"

    iget-object v7, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->uid:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 369
    const-string v6, "POINT"

    iget v7, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->point:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 370
    const-string v6, "CODE"

    iget-object v7, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->code:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 371
    const-string v6, "LOCKSCREEN_COACH_PROFILE_PATH"

    iget-object v7, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->coachImageUrl:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 372
    const-string v6, "LOCKSCREEN_BACKGROUND_PATH"

    iget-object v7, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->bgImageUrl:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 373
    iget-object v6, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->uid:Ljava/lang/String;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/util/Utils;->f(Ljava/lang/String;)V

    .line 375
    iget-boolean v6, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->smsAuth:Z

    if-eqz v6, :cond_4

    .line 377
    const-string v6, "GUEST_AUTH_SMS"

    const/4 v7, 0x1

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 383
    :goto_0
    iget-object v6, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 384
    const-string v6, "PROFILE_URL"

    iget-object v7, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 387
    :cond_0
    const-string v6, "result"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "isNew"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->isNew:Z

    .line 389
    const-string v6, "result"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "stepUpdated"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "result"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "stepUpdated"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-eqz v6, :cond_1

    .line 391
    :try_start_1
    new-instance v6, Lorg/joda/time/DateTime;

    const-string v7, "result"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "stepUpdated"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    iput-object v6, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->stepUpdated:Lorg/joda/time/DateTime;

    .line 393
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->stepUpdated:Lorg/joda/time/DateTime;

    invoke-virtual {v7}, Lorg/joda/time/DateTime;->getYear()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%02d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->stepUpdated:Lorg/joda/time/DateTime;

    invoke-virtual {v10}, Lorg/joda/time/DateTime;->getMonthOfYear()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%02d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->stepUpdated:Lorg/joda/time/DateTime;

    invoke-virtual {v10}, Lorg/joda/time/DateTime;->getDayOfMonth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "lastStepUpdated":Ljava/lang/String;
    const-string v6, "LOCKSCREEN_UNLOCK_DATE"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 400
    .end local v3    # "lastStepUpdated":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_2
    iget-object v6, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->createdAt:Lorg/joda/time/DateTime;

    if-eqz v6, :cond_5

    .line 401
    const-string v6, "CREATED_DATETIME"

    iget-object v7, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->createdAt:Lorg/joda/time/DateTime;

    invoke-virtual {v7}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 405
    :cond_2
    :goto_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 407
    iget-boolean v6, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->isNew:Z

    if-nez v6, :cond_3

    iget v6, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->height:I

    if-eqz v6, :cond_3

    iget v6, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->weight:I

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->gender:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->birthday:Lorg/joda/time/DateTime;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v6, :cond_6

    .line 409
    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v6}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v6

    const-string v7, "sign_up"

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v7, v8}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 413
    :goto_3
    :try_start_4
    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v6, v5}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->access$700(Lcom/cashwalk/cashwalk/activity/LoginActivity;Lcom/cashwalk/cashwalk/util/network/model/User;)V

    .line 464
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :goto_4
    return-void

    .line 380
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v5    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :cond_4
    const-string v6, "GUEST_AUTH_SMS"

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 459
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 461
    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    iget-object v7, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-virtual {v7}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090143

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 462
    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-virtual {v6}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->finish()V

    goto :goto_4

    .line 402
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v5    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :cond_5
    :try_start_5
    iget-boolean v6, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->isNew:Z

    if-eqz v6, :cond_2

    .line 403
    const-string v6, "CREATED_DATETIME"

    new-instance v7, Lorg/joda/time/DateTime;

    invoke-direct {v7}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v7}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 410
    :catch_1
    move-exception v0

    .line 411
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 416
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_6
    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v6}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v6

    const-string v7, "login"

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v7, v8}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 421
    :goto_5
    :try_start_7
    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->access$200(Lcom/cashwalk/cashwalk/activity/LoginActivity;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 422
    .local v2, "editor2":Landroid/content/SharedPreferences$Editor;
    const-string v6, "result"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "step"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_c

    .line 423
    const-string/jumbo v6, "steps"

    const-string v7, "result"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "step"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 426
    const-string v6, "result"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "step"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ge v6, v12, :cond_b

    .line 427
    const-string v6, "result"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "step"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    div-int/lit8 v6, v6, 0x64

    mul-int/lit8 v4, v6, 0x64

    .line 428
    .local v4, "resultHarvestedSteps":I
    const-string v6, "LOCKSCREEN_HARVESTED_STEPS"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 438
    .end local v4    # "resultHarvestedSteps":I
    :goto_6
    iget v6, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->height:I

    if-eqz v6, :cond_7

    .line 439
    const-string v6, "HEIGHT"

    iget v7, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->height:I

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 441
    :cond_7
    iget v6, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->weight:I

    if-eqz v6, :cond_8

    .line 442
    const-string v6, "WEIGHT"

    iget v7, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->weight:I

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 444
    :cond_8
    iget-object v6, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->gender:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 445
    const-string v6, "GENDER"

    iget-object v7, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->gender:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 447
    :cond_9
    iget-object v6, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->birthday:Lorg/joda/time/DateTime;

    if-eqz v6, :cond_a

    .line 448
    const-string v6, "BIRTHDAY"

    iget-object v7, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->birthday:Lorg/joda/time/DateTime;

    const-string/jumbo v8, "yyyyMMdd"

    invoke-virtual {v7, v8}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 450
    :cond_a
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 452
    const-string v6, "result"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "step"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_d

    .line 454
    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->access$800(Lcom/cashwalk/cashwalk/activity/LoginActivity;)V

    goto/16 :goto_4

    .line 417
    .end local v2    # "editor2":Landroid/content/SharedPreferences$Editor;
    :catch_2
    move-exception v0

    .line 418
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 430
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "editor2":Landroid/content/SharedPreferences$Editor;
    :cond_b
    const-string v6, "LOCKSCREEN_HARVESTED_STEPS"

    const/16 v7, 0x2710

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_6

    .line 434
    :cond_c
    const-string/jumbo v6, "steps"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_6

    .line 456
    :cond_d
    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->access$500(Lcom/cashwalk/cashwalk/activity/LoginActivity;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_4

    .line 395
    .end local v2    # "editor2":Landroid/content/SharedPreferences$Editor;
    :catch_3
    move-exception v6

    goto/16 :goto_1
.end method
