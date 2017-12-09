.class Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "DrawerNewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->fetchData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 333
    :try_start_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseNewsList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$202(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 334
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$300(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$200(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;-><init>(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 336
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    iget-object v3, v2, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->type:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    move v1, v2

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 371
    :goto_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$500(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 375
    :goto_2
    return-void

    .line 336
    :sswitch_0
    const-string v4, "POLITICS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v1, "IT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "SOCIETY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "LIFE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "ECONOMY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "GLOBAL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "ENTERTAINMENT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "TV"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    .line 338
    :pswitch_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LOCKSCREEN_NEWS_JSON_POLITICS"

    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 339
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LOCKSCREEN_NEWS_DATETIME_POLITICS"

    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 342
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LOCKSCREEN_NEWS_JSON_IT"

    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 343
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LOCKSCREEN_NEWS_DATETIME_IT"

    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 346
    :pswitch_2
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LOCKSCREEN_NEWS_JSON_SOCIETY"

    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 347
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LOCKSCREEN_NEWS_DATETIME_SOCIETY"

    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 350
    :pswitch_3
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LOCKSCREEN_NEWS_JSON_LIFE"

    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 351
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LOCKSCREEN_NEWS_DATETIME_LIFE"

    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 354
    :pswitch_4
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LOCKSCREEN_NEWS_JSON_ECONOMY"

    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 355
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LOCKSCREEN_NEWS_DATETIME_ECONOMY"

    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 358
    :pswitch_5
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LOCKSCREEN_NEWS_JSON_GLOBAL"

    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 359
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LOCKSCREEN_NEWS_DATETIME_GLOBAL"

    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 362
    :pswitch_6
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LOCKSCREEN_NEWS_JSON_ENTERTAINMENT"

    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 363
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LOCKSCREEN_NEWS_DATETIME_ENTERTAINMENT"

    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 366
    :pswitch_7
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LOCKSCREEN_NEWS_JSON_TV"

    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 367
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$6;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LOCKSCREEN_NEWS_DATETIME_TV"

    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 336
    :sswitch_data_0
    .sparse-switch
        -0x4eb98d78 -> :sswitch_2
        -0x471f6de2 -> :sswitch_4
        -0x28746898 -> :sswitch_6
        0x92b -> :sswitch_1
        0xa82 -> :sswitch_7
        0x23a6fc -> :sswitch_3
        0x4f469b61 -> :sswitch_0
        0x7d7bf7a3 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
