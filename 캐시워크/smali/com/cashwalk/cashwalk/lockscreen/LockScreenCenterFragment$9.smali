.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;
.super Ljava/lang/Object;
.source "LockScreenCenterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->showEventLotto(Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

.field final synthetic val$eventInfo:Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 686
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->val$eventInfo:Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 689
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 692
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)I

    move-result v2

    if-lez v2, :cond_0

    .line 693
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 694
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 695
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200e0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 696
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 701
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "USER_ID"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "NICKNAME"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 703
    sget-boolean v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->isEventLottoFreeBox:Z

    if-eqz v2, :cond_1

    .line 704
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 705
    .local v1, "startLottoActivity":Landroid/content/Intent;
    const-string v2, "item_id"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->val$eventInfo:Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;->prize:Lcom/cashwalk/cashwalk/util/network/model/Prize;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Prize;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    const-string v2, "is_free"

    sget-boolean v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->isEventLottoFreeBox:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 707
    const-string v2, "is_free_type"

    const-string v3, "POPUP"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 736
    .end local v1    # "startLottoActivity":Landroid/content/Intent;
    :goto_1
    return-void

    .line 698
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 710
    :cond_1
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 711
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->val$eventInfo:Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;->prize:Lcom/cashwalk/cashwalk/util/network/model/Prize;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Prize;->point:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 712
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090101

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9$1;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 718
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090132

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9$2;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9$2;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 729
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_1

    .line 734
    .end local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_2
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
