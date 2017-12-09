.class public Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;
.super Landroid/support/v4/app/Fragment;
.source "LockScreenEmptyFragmentLeft.java"


# instance fields
.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 16
    return-void
.end method

.method public static newInstance()Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;-><init>()V

    .line 20
    .local v0, "fragment":Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    const v0, 0x7f040092

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;->rootView:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenEmptyFragmentLeft;->rootView:Landroid/view/View;

    return-object v0
.end method
