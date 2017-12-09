.class Lcom/cashwalk/cashwalk/activity/ShopItemActivity$6;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "ShopItemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 338
    :try_start_0
    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 339
    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseUser(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v2

    .line 340
    .local v2, "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 341
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "POINT"

    iget v4, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->point:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 342
    const-string v3, "CODE"

    iget-object v4, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->code:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 345
    iget-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->kakaoUid:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->fbUid:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->anonymousId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 346
    const-string v3, "IS_LOGIN"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 347
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$1302(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;Z)Z

    .line 348
    const-string v3, "#### \ube44\ub85c\uadf8\uc778 \uc0ac\uc6a9\uc790"

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 356
    :goto_0
    iget-boolean v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->smsAuth:Z

    if-eqz v3, :cond_2

    .line 358
    const-string v3, "GUEST_AUTH_SMS"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 359
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$1402(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;Z)Z

    .line 366
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 368
    const/4 v3, 0x0

    sput-boolean v3, Lcom/cashwalk/cashwalk/CashWalkApp;->shouldRefreshCash:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$1500(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)V

    .line 377
    return-void

    .line 350
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :cond_1
    :try_start_1
    const-string v3, "IS_LOGIN"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 351
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$1302(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;Z)Z

    .line 352
    const-string v3, "#### \ub85c\uadf8\uc778 \uc0ac\uc6a9\uc790"

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 370
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 362
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :cond_2
    :try_start_2
    const-string v3, "GUEST_AUTH_SMS"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 363
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$1402(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
