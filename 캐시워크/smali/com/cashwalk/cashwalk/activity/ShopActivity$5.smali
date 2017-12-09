.class Lcom/cashwalk/cashwalk/activity/ShopActivity$5;
.super Ljava/lang/Object;
.source "ShopActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/ShopActivity;->initView()V
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
    .line 192
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    const-class v3, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->startActivity(Landroid/content/Intent;)V

    .line 196
    return-void
.end method
