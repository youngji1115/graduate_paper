.class Lcom/cashwalk/cashwalk/activity/LoginActivity$7;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/LoginActivity;->connectUser(Lcom/cashwalk/cashwalk/util/network/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

.field final synthetic val$user:Lcom/cashwalk/cashwalk/util/network/model/User;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LoginActivity;Lcom/cashwalk/cashwalk/util/network/model/User;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/LoginActivity;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$7;->val$user:Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x1

    .line 273
    :try_start_0
    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 275
    .local v2, "res":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->access$200(Lcom/cashwalk/cashwalk/activity/LoginActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 276
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "nickname"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 277
    const-string v3, "NICKNAME"

    const-string v4, "nickname"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 279
    :cond_0
    const-string v3, "profileUrl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 280
    const-string v3, "PROFILE_URL"

    const-string v4, "profileUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 282
    :cond_1
    const-string v3, "height"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 283
    const-string v3, "HEIGHT"

    const-string v4, "height"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 285
    :cond_2
    const-string/jumbo v3, "weight"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 286
    const-string v3, "WEIGHT"

    const-string/jumbo v4, "weight"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 288
    :cond_3
    const-string v3, "gender"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 289
    const-string v3, "GENDER"

    const-string v4, "gender"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 291
    :cond_4
    const-string v3, "birth"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 292
    const-string v3, "BIRTHDAY"

    const-string v4, "birth"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 294
    :cond_5
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 295
    const-string v3, "USER_ID"

    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 296
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->f(Ljava/lang/String;)V

    .line 298
    :cond_6
    const-string v3, "createdAt"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 299
    const-string v3, "CREATED_DATETIME"

    const-string v4, "createdAt"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 303
    :goto_0
    const-string v3, "point"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 304
    const-string v3, "POINT"

    const-string v4, "point"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 306
    :cond_7
    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 307
    const-string v3, "CODE"

    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 309
    :cond_8
    const-string v3, "fb"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "kakao"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 310
    :cond_9
    const-string v3, "IS_LOGIN"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 314
    :goto_1
    const-string/jumbo v3, "uid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 315
    const-string v3, "IS_LOGIN"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 317
    :cond_a
    const-string v3, "coachImageUrl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 318
    const-string v3, "LOCKSCREEN_COACH_PROFILE_PATH"

    const-string v4, "coachImageUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 320
    :cond_b
    const-string v3, "bgImageUrl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 321
    const-string v3, "LOCKSCREEN_BACKGROUND_PATH"

    const-string v4, "bgImageUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 324
    :cond_c
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "res":Lorg/json/JSONObject;
    :goto_2
    const-string v3, "m"

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$7;->val$user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/User;->gender:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 330
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->access$200(Lcom/cashwalk/cashwalk/activity/LoginActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "LOCKSCREEN_BACKGROUND_ID"

    const v5, 0x7f0202e3

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 335
    :goto_3
    sput-boolean v6, Lcom/cashwalk/cashwalk/CashWalkApp;->shouldRefreshCash:Z

    .line 337
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->access$500(Lcom/cashwalk/cashwalk/activity/LoginActivity;)V

    .line 339
    return-void

    .line 301
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "res":Lorg/json/JSONObject;
    :cond_d
    :try_start_1
    const-string v3, "CREATED_DATETIME"

    new-instance v4, Lorg/joda/time/DateTime;

    invoke-direct {v4}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v4}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 325
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "res":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "res":Lorg/json/JSONObject;
    :cond_e
    :try_start_2
    const-string v3, "IS_LOGIN"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 332
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "res":Lorg/json/JSONObject;
    :cond_f
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->access$200(Lcom/cashwalk/cashwalk/activity/LoginActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "LOCKSCREEN_BACKGROUND_ID"

    const v5, 0x7f0202f6

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3
.end method
