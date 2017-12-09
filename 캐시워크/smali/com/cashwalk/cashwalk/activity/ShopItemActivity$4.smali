.class Lcom/cashwalk/cashwalk/activity/ShopItemActivity$4;
.super Ljava/lang/Object;
.source "ShopItemActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 179
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 180
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    const-class v2, Lcom/cashwalk/cashwalk/activity/AuthSMSActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v0, "startAuthSMS":Landroid/content/Intent;
    const-string/jumbo v1, "type"

    const-string v2, "shop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v1, "id"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-virtual {v1, v0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->startActivity(Landroid/content/Intent;)V

    .line 184
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->finish()V

    .line 185
    return-void
.end method
