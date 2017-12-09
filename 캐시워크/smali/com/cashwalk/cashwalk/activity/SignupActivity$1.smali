.class Lcom/cashwalk/cashwalk/activity/SignupActivity$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "SignupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/SignupActivity;->register(Lcom/cashwalk/cashwalk/util/network/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

.field final synthetic val$user:Lcom/cashwalk/cashwalk/util/network/model/User;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/SignupActivity;Lcom/cashwalk/cashwalk/util/network/model/User;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/SignupActivity;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$1;->val$user:Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 105
    :try_start_0
    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 107
    .local v2, "res":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->access$000(Lcom/cashwalk/cashwalk/activity/SignupActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 108
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "nickname"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    const-string v3, "NICKNAME"

    const-string v4, "nickname"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    :cond_0
    const-string v3, "profileUrl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 112
    const-string v3, "PROFILE_URL"

    const-string v4, "profileUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    :cond_1
    const-string v3, "height"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 115
    const-string v3, "HEIGHT"

    const-string v4, "height"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 117
    :cond_2
    const-string/jumbo v3, "weight"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 118
    const-string v3, "WEIGHT"

    const-string/jumbo v4, "weight"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 120
    :cond_3
    const-string v3, "gender"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 121
    const-string v3, "GENDER"

    const-string v4, "gender"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    :cond_4
    const-string v3, "birth"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 124
    const-string v3, "BIRTHDAY"

    const-string v4, "birth"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    :cond_5
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 127
    const-string v3, "USER_ID"

    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->f(Ljava/lang/String;)V

    .line 130
    :cond_6
    const-string v3, "createdAt"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 131
    const-string v3, "CREATED_DATETIME"

    const-string v4, "createdAt"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    :goto_0
    const-string v3, "point"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 136
    const-string v3, "POINT"

    const-string v4, "point"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 138
    :cond_7
    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 139
    const-string v3, "CODE"

    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    :cond_8
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "res":Lorg/json/JSONObject;
    :goto_1
    const-string v3, "m"

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$1;->val$user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/User;->gender:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 148
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->access$000(Lcom/cashwalk/cashwalk/activity/SignupActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "LOCKSCREEN_BACKGROUND_ID"

    const v5, 0x7f0202e3

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 154
    :goto_2
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$1;->val$user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->friendCode:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$1;->val$user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->friendCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 155
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$1;->val$user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/User;->friendCode:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->access$100(Lcom/cashwalk/cashwalk/activity/SignupActivity;Ljava/lang/String;)V

    .line 160
    :goto_3
    return-void

    .line 133
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "res":Lorg/json/JSONObject;
    :cond_9
    :try_start_1
    const-string v3, "CREATED_DATETIME"

    new-instance v4, Lorg/joda/time/DateTime;

    invoke-direct {v4}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v4}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 143
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "res":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->access$000(Lcom/cashwalk/cashwalk/activity/SignupActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "LOCKSCREEN_BACKGROUND_ID"

    const v5, 0x7f0202f6

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 157
    :cond_b
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->finish()V

    .line 158
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/SignupActivity;

    const-class v6, Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3
.end method
