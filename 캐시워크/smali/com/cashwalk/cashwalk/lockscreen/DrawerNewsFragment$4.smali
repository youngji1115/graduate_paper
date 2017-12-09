.class Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$4;
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
    .line 293
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$4;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$4;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseNewsList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$202(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 298
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$4;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$300(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$4;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$4;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$200(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;-><init>(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 300
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$4;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LOCKSCREEN_NEWS_DATETIME"

    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 301
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$4;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$400(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LOCKSCREEN_NEWS_JSON"

    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 302
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$4;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->access$500(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
