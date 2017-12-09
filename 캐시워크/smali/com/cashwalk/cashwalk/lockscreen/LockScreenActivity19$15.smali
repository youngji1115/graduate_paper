.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$15;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "LockScreenActivity19.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->refreshCash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$15;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 567
    :try_start_0
    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 568
    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseUser(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v2

    .line 569
    .local v2, "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$15;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$700(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 570
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "POINT"

    iget v4, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->point:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 572
    iget-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->kakaoUid:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->fbUid:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->anonymousId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 573
    const-string v3, "IS_LOGIN"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 574
    const-string v3, "#### \ube44\ub85c\uadf8\uc778 \uc0ac\uc6a9\uc790"

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 581
    :goto_0
    iget-boolean v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->smsAuth:Z

    if-eqz v3, :cond_2

    .line 583
    const-string v3, "GUEST_AUTH_SMS"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 589
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 591
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$15;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$1200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/widget/TextView;

    move-result-object v3

    iget v4, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->point:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    const/4 v3, 0x0

    sput-boolean v3, Lcom/cashwalk/cashwalk/CashWalkApp;->shouldRefreshCash:Z

    .line 598
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :cond_0
    :goto_2
    return-void

    .line 576
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :cond_1
    const-string v3, "IS_LOGIN"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 577
    const-string v3, "#### \ub85c\uadf8\uc778 \uc0ac\uc6a9\uc790"

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 595
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 586
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :cond_2
    :try_start_1
    const-string v3, "GUEST_AUTH_SMS"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
