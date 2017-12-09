.class Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$3;
.super Ljava/lang/Object;
.source "PurchaseDoneDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;-><init>(Landroid/content/Context;Lcom/cashwalk/cashwalk/util/network/model/ShopItem;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$3;->this$0:Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$3;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$3;->val$handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 101
    iget-object v0, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$3;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$3;->val$context:Landroid/content/Context;

    const-class v3, Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 102
    iget-object v0, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog$3;->this$0:Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/dialog/PurchaseDoneDialog;->dismiss()V

    .line 103
    return-void
.end method
