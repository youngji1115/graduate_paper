.class Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/SplashActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 17
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 109
    :try_start_0
    const-string v13, "error"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 110
    const-string v13, "error"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string/jumbo v14, "type"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "error"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string/jumbo v14, "type"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "InvalidAccessTokenError"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 111
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-static {v13}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->access$000(Lcom/cashwalk/cashwalk/activity/SplashActivity;)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v15, v15, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    const-class v16, Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v13, v14}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    const v14, 0x7f050014

    const v15, 0x7f050015

    invoke-virtual {v13, v14, v15}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->overridePendingTransition(II)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const-string v13, "error"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string/jumbo v14, "type"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "error"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "code"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0x7c

    if-ne v13, v14, :cond_0

    const-string v13, "error"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string/jumbo v14, "type"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "UpdateClientError"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 116
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-direct {v1, v13}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    .local v1, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    const v14, 0x7f0902e7

    invoke-virtual {v13, v14}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 118
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-virtual {v13}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090101

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1$1;-><init>(Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;)V

    invoke-virtual {v1, v13, v14}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 124
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    const v14, 0x7f0902e5

    invoke-virtual {v13, v14}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1$2;-><init>(Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;)V

    invoke-virtual {v1, v13, v14}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 243
    .end local v1    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 137
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v13, "result"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-static {v13}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseUser(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v12

    .line 139
    .local v12, "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-static {v13}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->access$000(Lcom/cashwalk/cashwalk/activity/SplashActivity;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "SAVE_PLAYER_ID"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 140
    .local v8, "savePlayerId":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-static {v13}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->access$000(Lcom/cashwalk/cashwalk/activity/SplashActivity;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "SAVE_PHONE_NUMBER"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 142
    .local v7, "savePhoneNumber":Z
    iget v13, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->requestCount:I

    sput v13, Lcom/cashwalk/cashwalk/CashWalkApp;->REQUEST_COUNT:I

    .line 144
    if-eqz v8, :cond_3

    if-nez v7, :cond_8

    .line 145
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-static {v13}, Lcom/cashwalk/cashwalk/util/Utils;->getPhoneNumber(Landroid/content/Context;)Lcom/cashwalk/cashwalk/util/network/model/Phone;

    move-result-object v5

    .line 146
    .local v5, "phoneNumber":Lcom/cashwalk/cashwalk/util/network/model/Phone;
    new-instance v10, Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-direct {v10}, Lcom/cashwalk/cashwalk/util/network/model/User;-><init>()V

    .line 147
    .local v10, "tempUser":Lcom/cashwalk/cashwalk/util/network/model/User;
    if-eqz v5, :cond_4

    .line 148
    iget-object v13, v5, Lcom/cashwalk/cashwalk/util/network/model/Phone;->number:Ljava/lang/String;

    iput-object v13, v10, Lcom/cashwalk/cashwalk/util/network/model/User;->phone:Ljava/lang/String;

    .line 149
    iget-object v13, v5, Lcom/cashwalk/cashwalk/util/network/model/Phone;->countryCode:Ljava/lang/String;

    iput-object v13, v10, Lcom/cashwalk/cashwalk/util/network/model/User;->countryCode:Ljava/lang/String;

    .line 151
    :cond_4
    new-instance v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1$3;-><init>(Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;)V

    invoke-static {v10, v13}, Lcom/cashwalk/cashwalk/util/network/RestClient;->setUser(Lcom/cashwalk/cashwalk/util/network/model/User;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v6

    .line 159
    .local v6, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-virtual {v13}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->getApplication()Landroid/app/Application;

    move-result-object v13

    check-cast v13, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v13}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 182
    .end local v5    # "phoneNumber":Lcom/cashwalk/cashwalk/util/network/model/Phone;
    .end local v6    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    .end local v10    # "tempUser":Lcom/cashwalk/cashwalk/util/network/model/User;
    :cond_5
    :goto_1
    const/4 v4, 0x0

    .line 183
    .local v4, "isJustGoUser":Z
    iget-object v13, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->kakaoUid:Ljava/lang/String;

    if-nez v13, :cond_a

    iget-object v13, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->fbUid:Ljava/lang/String;

    if-nez v13, :cond_a

    iget-object v13, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->anonymousId:Ljava/lang/String;

    if-eqz v13, :cond_a

    .line 184
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-static {v13}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->access$000(Lcom/cashwalk/cashwalk/activity/SplashActivity;)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "IS_LOGIN"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 185
    const/4 v4, 0x0

    .line 192
    :goto_2
    iget-boolean v13, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->smsAuth:Z

    if-eqz v13, :cond_b

    .line 194
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-static {v13}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->access$000(Lcom/cashwalk/cashwalk/activity/SplashActivity;)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "GUEST_AUTH_SMS"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 200
    :goto_3
    iget-object v13, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    if-eqz v13, :cond_6

    iget-object v13, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    iget-object v13, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    if-eqz v13, :cond_6

    iget-object v13, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 201
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-static {v13}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->access$000(Lcom/cashwalk/cashwalk/activity/SplashActivity;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "PREFERENCE_TOS_ACCEPTED"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 202
    .local v11, "tos":Z
    if-eqz v11, :cond_c

    .line 203
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v14, v14, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    const-class v15, Lcom/cashwalk/cashwalk/activity/ProfileActivity;

    invoke-direct {v13, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v14, "user"

    invoke-virtual {v13, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v9

    .line 204
    .local v9, "startJoinIntent":Landroid/content/Intent;
    if-nez v4, :cond_7

    .line 205
    iget-boolean v13, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->smsAuth:Z

    if-nez v13, :cond_7

    .line 206
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v14, v14, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    const-class v15, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-direct {v13, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v14, "type"

    const-string v15, "join"

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 209
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-virtual {v13, v9}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 213
    .end local v9    # "startJoinIntent":Landroid/content/Intent;
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    const v14, 0x7f050014

    const v15, 0x7f050015

    invoke-virtual {v13, v14, v15}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 161
    .end local v4    # "isJustGoUser":Z
    .end local v11    # "tos":Z
    :cond_8
    iget-object v13, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->playerId:Ljava/lang/String;

    if-eqz v13, :cond_5

    sget-object v13, Lcom/cashwalk/cashwalk/CashWalkApp;->PLAYER_ID:Ljava/lang/String;

    if-eqz v13, :cond_5

    iget-object v13, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->playerId:Ljava/lang/String;

    sget-object v14, Lcom/cashwalk/cashwalk/CashWalkApp;->PLAYER_ID:Ljava/lang/String;

    .line 163
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-static {v13}, Lcom/cashwalk/cashwalk/util/Utils;->getPhoneNumber(Landroid/content/Context;)Lcom/cashwalk/cashwalk/util/network/model/Phone;

    move-result-object v5

    .line 166
    .restart local v5    # "phoneNumber":Lcom/cashwalk/cashwalk/util/network/model/Phone;
    new-instance v10, Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-direct {v10}, Lcom/cashwalk/cashwalk/util/network/model/User;-><init>()V

    .line 167
    .restart local v10    # "tempUser":Lcom/cashwalk/cashwalk/util/network/model/User;
    if-eqz v5, :cond_9

    .line 168
    iget-object v13, v5, Lcom/cashwalk/cashwalk/util/network/model/Phone;->number:Ljava/lang/String;

    iput-object v13, v10, Lcom/cashwalk/cashwalk/util/network/model/User;->phone:Ljava/lang/String;

    .line 169
    iget-object v13, v5, Lcom/cashwalk/cashwalk/util/network/model/Phone;->countryCode:Ljava/lang/String;

    iput-object v13, v10, Lcom/cashwalk/cashwalk/util/network/model/User;->countryCode:Ljava/lang/String;

    .line 171
    :cond_9
    new-instance v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1$4;-><init>(Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;)V

    invoke-static {v10, v13}, Lcom/cashwalk/cashwalk/util/network/RestClient;->setUser(Lcom/cashwalk/cashwalk/util/network/model/User;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v6

    .line 176
    .restart local v6    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-virtual {v13}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->getApplication()Landroid/app/Application;

    move-result-object v13

    check-cast v13, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v13}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto/16 :goto_1

    .line 187
    .end local v5    # "phoneNumber":Lcom/cashwalk/cashwalk/util/network/model/Phone;
    .end local v6    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    .end local v10    # "tempUser":Lcom/cashwalk/cashwalk/util/network/model/User;
    .restart local v4    # "isJustGoUser":Z
    :cond_a
    const/4 v4, 0x1

    .line 188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-static {v13}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->access$000(Lcom/cashwalk/cashwalk/activity/SplashActivity;)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "IS_LOGIN"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_2

    .line 197
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-static {v13}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->access$000(Lcom/cashwalk/cashwalk/activity/SplashActivity;)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "GUEST_AUTH_SMS"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_3

    .line 211
    .restart local v11    # "tos":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v15, v15, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    const-class v16, Lcom/cashwalk/cashwalk/activity/TOSActivity;

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v15, "user"

    invoke-virtual {v14, v15, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 214
    .end local v11    # "tos":Z
    :cond_d
    iget v13, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->height:I

    if-eqz v13, :cond_e

    iget v13, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->weight:I

    if-eqz v13, :cond_e

    iget-object v13, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->birthday:Lorg/joda/time/DateTime;

    if-eqz v13, :cond_e

    iget-object v13, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->gender:Ljava/lang/String;

    if-nez v13, :cond_f

    .line 215
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v15, v15, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    const-class v16, Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v15, "user"

    invoke-virtual {v14, v15, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    const v14, 0x7f050014

    const v15, 0x7f050015

    invoke-virtual {v13, v14, v15}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 218
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-static {v13}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->access$000(Lcom/cashwalk/cashwalk/activity/SplashActivity;)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 219
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v13, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->uid:Ljava/lang/String;

    invoke-static {v13}, Lcom/cashwalk/cashwalk/util/Utils;->f(Ljava/lang/String;)V

    .line 220
    const-string v13, "USER_ID"

    iget-object v14, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->uid:Ljava/lang/String;

    invoke-interface {v3, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 221
    const-string v13, "NICKNAME"

    iget-object v14, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    invoke-interface {v3, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 222
    const-string v13, "PROFILE_URL"

    iget-object v14, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    invoke-interface {v3, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 223
    const-string v13, "POINT"

    iget v14, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->point:I

    invoke-interface {v3, v13, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 224
    const-string v13, "HEIGHT"

    iget v14, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->height:I

    invoke-interface {v3, v13, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 225
    const-string v13, "WEIGHT"

    iget v14, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->weight:I

    invoke-interface {v3, v13, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 226
    const-string v13, "GENDER"

    iget-object v14, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->gender:Ljava/lang/String;

    invoke-interface {v3, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 227
    const-string v13, "BIRTHDAY"

    iget-object v14, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->birthday:Lorg/joda/time/DateTime;

    const-string/jumbo v15, "yyyyMMdd"

    invoke-virtual {v14, v15}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 228
    const-string v13, "CREATED_DATETIME"

    iget-object v14, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->createdAt:Lorg/joda/time/DateTime;

    invoke-virtual {v14}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    const-string v13, "CODE"

    iget-object v14, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->code:Ljava/lang/String;

    invoke-interface {v3, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 230
    const-string v13, "LOCKSCREEN_COACH_PROFILE_PATH"

    iget-object v14, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->coachImageUrl:Ljava/lang/String;

    invoke-interface {v3, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 231
    const-string v13, "LOCKSCREEN_BACKGROUND_PATH"

    iget-object v14, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->bgImageUrl:Ljava/lang/String;

    invoke-interface {v3, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 232
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v15, v15, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    const-class v16, Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v13, v14}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    const v14, 0x7f050014

    const v15, 0x7f050015

    invoke-virtual {v13, v14, v15}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->overridePendingTransition(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
