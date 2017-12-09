.class Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog$2;
.super Ljava/lang/Object;
.source "PurchaseShortDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog$2;->this$0:Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog$2;->this$0:Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->access$000(Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog$2;->this$0:Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->access$000(Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/cashwalk/cashwalk/activity/ViralActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    iget-object v0, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog$2;->this$0:Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->dismiss()V

    .line 79
    return-void
.end method
