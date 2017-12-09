.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$7$1;
.super Ljava/lang/Object;
.source "LockScreenCenterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$7;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$7;)V
    .locals 0
    .param p1, "this$3"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$7;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$7$1;->this$3:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$7$1;->this$3:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$7;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$7;->this$2:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$7$1;->this$3:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$7;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2$7;->this$2:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7$2;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    :cond_0
    return-void
.end method
