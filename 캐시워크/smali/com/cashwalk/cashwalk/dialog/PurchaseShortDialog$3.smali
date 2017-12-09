.class Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog$3;
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
    .line 91
    iput-object p1, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog$3;->this$0:Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog$3;->this$0:Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->dismiss()V

    .line 95
    return-void
.end method
