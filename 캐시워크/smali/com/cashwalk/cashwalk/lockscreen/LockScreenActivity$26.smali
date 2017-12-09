.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$26;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "LockScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->fetchWeather(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 873
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$26;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "result"    # Lorg/json/JSONObject;

    .prologue
    const/16 v6, 0x8

    .line 877
    :try_start_0
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 878
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 880
    .local v2, "jo":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$26;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 881
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "LOCKSCREEN_WEATHER_JSON"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 882
    const-string v4, "LOCKSCREEN_WEATHER_DATETIME"

    new-instance v5, Lorg/joda/time/DateTime;

    invoke-direct {v5}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v5}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 883
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 885
    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseWeather(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/Weather;

    move-result-object v3

    .line 886
    .local v3, "w":Lcom/cashwalk/cashwalk/util/network/model/Weather;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$26;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v4, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$2600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;Lcom/cashwalk/cashwalk/util/network/model/Weather;)V

    .line 894
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "jo":Lorg/json/JSONObject;
    .end local v3    # "w":Lcom/cashwalk/cashwalk/util/network/model/Weather;
    :goto_0
    return-void

    .line 888
    :cond_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$26;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$2700(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 892
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$26;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$2700(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
