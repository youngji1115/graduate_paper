.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$1;
.super Ljava/lang/Object;
.source "LockScreenCenterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$1$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$1$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 344
    return-void
.end method
