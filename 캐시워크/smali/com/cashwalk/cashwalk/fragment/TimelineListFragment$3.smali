.class Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$3;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "TimelineListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->setAdapter(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 110
    :try_start_0
    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "InvalidAccessTokenError"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "TOKEN"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 115
    :cond_0
    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseStepBetTimelineList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 116
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;>;"
    new-instance v0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    invoke-direct {v0, v3, v1}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;-><init>(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;Ljava/util/ArrayList;)V

    .line 117
    .local v0, "adapter":Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    invoke-virtual {v3, v0}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v0    # "adapter":Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;>;"
    :goto_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->isRefreshing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->setRefreshing(Z)V

    .line 125
    :cond_1
    return-void

    .line 118
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
