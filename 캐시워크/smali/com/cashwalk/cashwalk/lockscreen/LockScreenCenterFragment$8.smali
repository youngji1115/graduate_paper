.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$8;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "LockScreenCenterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->checkVersion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 598
    :try_start_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "LOCKSCREEN_VERSION_DATETIME"

    new-instance v5, Lorg/joda/time/DateTime;

    invoke-direct {v5}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v5}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 599
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "LOCKSCREEN_AD_SHOW_RATE"

    const-string v5, "adInterval"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 601
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "CASHWALK_TOTAL_STEPS"

    const-string/jumbo v5, "totalStep"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 602
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "CASHWALK_TOTAL_REWARD"

    const-string/jumbo v5, "totalReward"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 604
    const-string v3, "adInterval"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1602(I)I

    .line 605
    const-string v3, "popupInterval"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$2002(I)I

    .line 607
    const-string v3, "adSource"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 608
    .local v0, "adObj":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "PREFERENCE_AD_PRIORITY"

    const-string v5, "bottomBanner"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 609
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "PREFERENCE_AD_PRIORITY_BOX"

    const-string/jumbo v5, "treasureBox"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 611
    const-string v3, "showMenu"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 612
    .local v2, "menuObj":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$8;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "PREFERENCE_OFFERWALL_SHOW"

    const-string v5, "offerwall"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    .end local v0    # "adObj":Lorg/json/JSONObject;
    .end local v2    # "menuObj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 613
    :catch_0
    move-exception v1

    .line 614
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
