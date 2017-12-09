.class Lcom/cashwalk/cashwalk/CashWalkMainActivity$10;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "CashWalkMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/CashWalkMainActivity;->checkTotalStep()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    .prologue
    .line 941
    iput-object p1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$10;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 945
    if-eqz p1, :cond_2

    .line 946
    :try_start_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$10;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->access$000(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "SPLASH_VERSION_DATETIME"

    new-instance v5, Lorg/joda/time/DateTime;

    invoke-direct {v5}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v5}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 947
    iget-object v3, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$10;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->access$000(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)Landroid/content/SharedPreferences;

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

    .line 949
    iget-object v3, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$10;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->access$000(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)Landroid/content/SharedPreferences;

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

    .line 950
    iget-object v3, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$10;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->access$000(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)Landroid/content/SharedPreferences;

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

    .line 952
    const-string v3, "recommendPoint"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 953
    iget-object v3, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$10;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->access$000(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "CASHWALK_REWARD_CASH"

    const-string v5, "recommendPoint"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 958
    :goto_0
    const-string v3, "showMainBadge"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 959
    const-string v3, "showMainBadge"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "directPoint"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "showMainBadge"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "directPoint"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$10;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->access$000(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "CASHWALK_MAIN_TNK_STYLE"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 967
    :cond_0
    const-string v3, "showMainBadge"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "withFriend"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "showMainBadge"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "withFriend"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$10;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->access$000(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "CASHWALK_MAIN_VIRAL_STYPE"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 987
    :cond_1
    const-string v3, "adSource"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 988
    .local v0, "adObj":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$10;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->access$000(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)Landroid/content/SharedPreferences;

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

    .line 989
    iget-object v3, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$10;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->access$000(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)Landroid/content/SharedPreferences;

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

    .line 991
    const-string v3, "showMenu"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 992
    .local v2, "menuObj":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$10;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->access$000(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)Landroid/content/SharedPreferences;

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

    .line 994
    const-string v3, "offerwall"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "offerwall"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 1006
    .end local v0    # "adObj":Lorg/json/JSONObject;
    .end local v2    # "menuObj":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$10;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->access$400(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)V

    .line 1007
    return-void

    .line 955
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$10;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->access$000(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "CASHWALK_REWARD_CASH"

    const/16 v5, 0x64

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1002
    :catch_0
    move-exception v1

    .line 1003
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
