.class Lcom/cashwalk/cashwalk/dialog/PurchaseDialog$1;
.super Ljava/lang/Object;
.source "PurchaseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;-><init>(Landroid/content/Context;Lcom/cashwalk/cashwalk/util/network/model/ShopItem;FLandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog$1;->this$0:Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog$1;->val$handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 67
    iget-object v0, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog$1;->this$0:Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->dismiss()V

    .line 68
    return-void
.end method
