.class Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;
.super Ljava/lang/Object;
.source "ShopItemActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 117
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v5, 0x7f090132

    .line 120
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$900(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 123
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09027a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 124
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2$1;-><init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 159
    .end local v0    # "ab":Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$000(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$000(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    move-result-object v1

    iget v1, v1, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->delay:I

    if-nez v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$1000(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)V

    goto :goto_0

    .line 142
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    .restart local v0    # "ab":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    const v2, 0x7f09027d

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->access$000(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    move-result-object v4

    iget v4, v4, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->delay:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 144
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2$2;-><init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2$3;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2$3;-><init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 157
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
