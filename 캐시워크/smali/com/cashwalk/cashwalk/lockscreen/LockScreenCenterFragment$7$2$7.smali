.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$7;
.super Ljava/lang/Object;
.source "LockScreenCenterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->handleResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$7;->this$2:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$7;->this$2:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$7;->this$2:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$7$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$7$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$7;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 553
    :cond_0
    return-void
.end method
