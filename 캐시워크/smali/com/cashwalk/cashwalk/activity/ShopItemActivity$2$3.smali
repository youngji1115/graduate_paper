.class Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2$3;
.super Ljava/lang/Object;
.source "ShopItemActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2$3;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 153
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 154
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2$3;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$1000(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)V

    .line 155
    return-void
.end method
