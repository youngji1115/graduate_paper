.class Lcom/cashwalk/cashwalk/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/MainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$6;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$6;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity$6;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const-class v3, Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 361
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$6;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v1, 0x7f050019

    const v2, 0x7f050017

    invoke-virtual {v0, v1, v2}, Lcom/cashwalk/cashwalk/MainActivity;->overridePendingTransition(II)V

    .line 362
    return-void
.end method
