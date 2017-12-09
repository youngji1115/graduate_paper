.class public Lcom/cashwalk/cashwalk/fragment/IgaAdListFragment;
.super Landroid/support/v4/app/Fragment;
.source "IgaAdListFragment.java"


# instance fields
.field private TOTAL_COUIN:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/cashwalk/cashwalk/fragment/IgaAdListFragment;->TOTAL_COUIN:I

    return-void
.end method

.method public static newInstance()Lcom/cashwalk/cashwalk/fragment/IgaAdListFragment;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/cashwalk/cashwalk/fragment/IgaAdListFragment;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/fragment/IgaAdListFragment;-><init>()V

    .line 22
    .local v0, "fragment":Lcom/cashwalk/cashwalk/fragment/IgaAdListFragment;
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 37
    const v1, 0x7f040090

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method
