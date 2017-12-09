.class public Lcom/cashwalk/cashwalk/fragment/HomeFragment;
.super Landroid/support/v4/app/Fragment;
.source "HomeFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 15
    return-void
.end method

.method public static newInstance()Lcom/cashwalk/cashwalk/fragment/HomeFragment;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/cashwalk/cashwalk/fragment/HomeFragment;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/fragment/HomeFragment;-><init>()V

    .line 19
    .local v0, "fragment":Lcom/cashwalk/cashwalk/fragment/HomeFragment;
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    const v0, 0x7f04008f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
