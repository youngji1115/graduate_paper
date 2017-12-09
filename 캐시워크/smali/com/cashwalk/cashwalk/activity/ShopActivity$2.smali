.class Lcom/cashwalk/cashwalk/activity/ShopActivity$2;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "ShopActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/ShopActivity;->refreshShopList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/ShopActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/ShopActivity;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 120
    :try_start_0
    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseShopCategoryList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    .line 122
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;>;"
    const-string v3, "isOpen"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    const-string v4, "isOpen"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->access$202(Lcom/cashwalk/cashwalk/activity/ShopActivity;Z)Z

    .line 128
    :goto_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->access$300(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "PREFERENCE_SHOP_EXCHANGE_RATE"

    const-string v5, "exchangeRate"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v5, v6

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    new-instance v4, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-direct {v4, v5, v2}, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->access$402(Lcom/cashwalk/cashwalk/activity/ShopActivity;Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;)Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;

    .line 131
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->access$400(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;->setOnItemClickListener(Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$OnItemClickListener;)V

    .line 132
    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 133
    .local v1, "layoutManager":Landroid/support/v7/widget/StaggeredGridLayoutManager;
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setGapStrategy(I)V

    .line 134
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->access$500(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 135
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->access$500(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->access$400(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 136
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->access$500(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    new-instance v4, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v4}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 137
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->access$500(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 138
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->access$500(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 139
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->access$500(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 141
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->access$600(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    .end local v1    # "layoutManager":Landroid/support/v7/widget/StaggeredGridLayoutManager;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;>;"
    :goto_1
    return-void

    .line 125
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;>;"
    :cond_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->access$202(Lcom/cashwalk/cashwalk/activity/ShopActivity;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 143
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;>;"
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
