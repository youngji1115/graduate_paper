.class Lcom/cashwalk/cashwalk/MainActivity$24;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity;->checkTotalStep()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/MainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 1305
    if-eqz p1, :cond_0

    .line 1306
    :try_start_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

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

    .line 1307
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

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

    .line 1309
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

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

    .line 1310
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

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

    .line 1312
    const-string v3, "recommendPoint"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1313
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

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

    .line 1318
    :goto_0
    const-string v3, "showMainBadge"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1319
    const-string v3, "showMainBadge"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "directPoint"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "showMainBadge"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "directPoint"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "CASHWALK_MAIN_TNK_STYLE"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1320
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$1500(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1321
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$1600(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1327
    :goto_1
    const-string v3, "showMainBadge"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "withFriend"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "showMainBadge"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "withFriend"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "CASHWALK_MAIN_VIRAL_STYPE"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1328
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$1100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1329
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$1200(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1330
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$1300(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1331
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$1400(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1354
    :goto_2
    const-string v3, "adSource"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1355
    .local v0, "adObj":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

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

    .line 1356
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

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

    .line 1358
    const-string v3, "showMenu"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1359
    .local v2, "menuObj":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

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

    .line 1361
    const-string v3, "offerwall"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "offerwall"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1362
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$1900(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1363
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v4, 0x7f100229

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1373
    .end local v0    # "adObj":Lorg/json/JSONObject;
    .end local v2    # "menuObj":Lorg/json/JSONObject;
    :cond_0
    :goto_3
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$2000(Lcom/cashwalk/cashwalk/MainActivity;)V

    .line 1374
    return-void

    .line 1315
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

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

    .line 1369
    :catch_0
    move-exception v1

    .line 1370
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1323
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$1500(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1324
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$1600(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 1333
    :cond_3
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$1100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1334
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$1200(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1335
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$1300(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1336
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$1400(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1339
    :cond_4
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$1300(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1340
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$1500(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1341
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$1600(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1342
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$1100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1343
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$1200(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1344
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$1400(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1365
    .restart local v0    # "adObj":Lorg/json/JSONObject;
    .restart local v2    # "menuObj":Lorg/json/JSONObject;
    :cond_5
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/MainActivity;->access$1900(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1366
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity$24;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v4, 0x7f100229

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3
.end method
