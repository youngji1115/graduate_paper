.class Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;
.super Landroid/os/Handler;
.source "ShopItemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->purchaseItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

.field final synthetic val$ab:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->val$ab:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 197
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$800(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 198
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$000(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;-><init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;)V

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->purchaseShopItem(Lcom/cashwalk/cashwalk/util/network/model/ShopItem;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 314
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v2, 0x4e20

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 318
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 319
    return-void
.end method
