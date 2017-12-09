.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9$2;
.super Ljava/lang/Object;
.source "LockScreenCenterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;

    .prologue
    .line 718
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 721
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 722
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 723
    .local v0, "startLottoActivity":Landroid/content/Intent;
    const-string v1, "item_id"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->val$eventInfo:Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;->prize:Lcom/cashwalk/cashwalk/util/network/model/Prize;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/Prize;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    const-string v1, "is_free"

    sget-boolean v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->isEventLottoFreeBox:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 725
    const-string v1, "is_free_type"

    const-string v2, "POPUP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 727
    return-void
.end method
