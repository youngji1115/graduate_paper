.class Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$8;
.super Ljava/lang/Object;
.source "CashBandMainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 619
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$8;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$8;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$8;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    const-class v3, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 623
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$8;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    const v1, 0x7f050019

    const v2, 0x7f050017

    invoke-virtual {v0, v1, v2}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->overridePendingTransition(II)V

    .line 624
    const/4 v0, 0x1

    return v0
.end method
