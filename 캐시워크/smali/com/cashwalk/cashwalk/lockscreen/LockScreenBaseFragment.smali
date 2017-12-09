.class public Lcom/cashwalk/cashwalk/lockscreen/LockScreenBaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "LockScreenBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/lockscreen/LockScreenBaseFragment$FragmentEventListener;
    }
.end annotation


# instance fields
.field protected mListener:Lcom/cashwalk/cashwalk/lockscreen/LockScreenBaseFragment$FragmentEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 12
    instance-of v0, p1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenBaseFragment$FragmentEventListener;

    if-eqz v0, :cond_0

    .line 13
    check-cast p1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenBaseFragment$FragmentEventListener;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenBaseFragment;->mListener:Lcom/cashwalk/cashwalk/lockscreen/LockScreenBaseFragment$FragmentEventListener;

    .line 15
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenBaseFragment;->mListener:Lcom/cashwalk/cashwalk/lockscreen/LockScreenBaseFragment$FragmentEventListener;

    .line 21
    return-void
.end method
