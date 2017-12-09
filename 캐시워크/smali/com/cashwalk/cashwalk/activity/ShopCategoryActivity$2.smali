.class Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$2;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "ShopCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->refreshShopList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 120
    :try_start_0
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseShopItemList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 122
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/ShopItem;>;"
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    new-instance v3, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    invoke-direct {v3, v4, v5, v1}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;-><init>(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->access$002(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;)Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;

    .line 123
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->access$100(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;)Lde/halfbit/pinnedsection/PinnedSectionListView;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->access$000(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;)Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/halfbit/pinnedsection/PinnedSectionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->access$200(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/ShopItem;>;"
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
