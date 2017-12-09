.class Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$1;
.super Ljava/lang/Object;
.source "ShopCategoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;

.field final synthetic val$item:Lcom/cashwalk/cashwalk/util/network/model/ShopItem;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;Lcom/cashwalk/cashwalk/util/network/model/ShopItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$1;->val$item:Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    const-class v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "id"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$1;->val$item:Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isOpen"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->access$500(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 257
    return-void
.end method
