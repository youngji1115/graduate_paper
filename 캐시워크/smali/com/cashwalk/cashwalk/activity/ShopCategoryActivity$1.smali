.class Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$1;
.super Ljava/lang/Object;
.source "ShopCategoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->showBrandList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

.field final synthetic val$item:Lcom/cashwalk/cashwalk/util/network/model/ShopBrand;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;Lcom/cashwalk/cashwalk/util/network/model/ShopBrand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$1;->val$item:Lcom/cashwalk/cashwalk/util/network/model/ShopBrand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->access$000(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;)Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->access$000(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;)Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$1;->val$item:Lcom/cashwalk/cashwalk/util/network/model/ShopBrand;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/ShopBrand;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->scrollTo(Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method
