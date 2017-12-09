.class public Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;
.super Landroid/support/v4/app/Fragment;
.source "TnkAdListFragment.java"

# interfaces
.implements Lcom/tnkfactory/ad/TnkAdListener;


# static fields
.field public static mTnkAdListFragment:Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;


# instance fields
.field private adlistView:Lcom/tnkfactory/ad/AdListView;

.field private mContext:Landroid/content/Context;

.field private pref:Landroid/content/SharedPreferences;

.field private rl_not_ad_list:Landroid/widget/RelativeLayout;

.field private viewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private makePopupLayout()Lcom/tnkfactory/ad/TnkLayout;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Lcom/tnkfactory/ad/TnkLayout;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkLayout;-><init>()V

    .line 97
    .local v0, "res":Lcom/tnkfactory/ad/TnkLayout;
    iget-object v1, v0, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    const v2, 0x7f0400e9

    iput v2, v1, Lcom/tnkfactory/ad/TnkAdWallLayout;->layout:I

    .line 98
    iget-object v1, v0, Lcom/tnkfactory/ad/TnkLayout;->adwall:Lcom/tnkfactory/ad/TnkAdWallLayout;

    const v2, 0x7f10044d

    iput v2, v1, Lcom/tnkfactory/ad/TnkAdWallLayout;->idList:I

    .line 100
    return-object v0
.end method

.method public static newInstance()Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;-><init>()V

    .line 32
    .local v0, "fragment":Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;
    return-object v0
.end method


# virtual methods
.method public onClose(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 105
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;->mContext:Landroid/content/Context;

    .line 39
    sput-object p0, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;->mTnkAdListFragment:Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;

    .line 41
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;->pref:Landroid/content/SharedPreferences;

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
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
    .line 48
    const v2, 0x7f0400a5

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, "v":Landroid/view/View;
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;->makePopupLayout()Lcom/tnkfactory/ad/TnkLayout;

    move-result-object v0

    .line 51
    .local v0, "layout":Lcom/tnkfactory/ad/TnkLayout;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/tnkfactory/ad/TnkSession;->createAdListView(Landroid/content/Context;Lcom/tnkfactory/ad/TnkLayout;)Lcom/tnkfactory/ad/AdListView;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;->adlistView:Lcom/tnkfactory/ad/AdListView;

    .line 52
    const v2, 0x7f1003a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;->rl_not_ad_list:Landroid/widget/RelativeLayout;

    .line 54
    const v2, 0x7f100409

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;->viewGroup:Landroid/view/ViewGroup;

    .line 55
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;->viewGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;->adlistView:Lcom/tnkfactory/ad/AdListView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 56
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;->adlistView:Lcom/tnkfactory/ad/AdListView;

    invoke-virtual {v2, p0}, Lcom/tnkfactory/ad/AdListView;->setListener(Lcom/tnkfactory/ad/TnkAdListener;)V

    .line 57
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;->adlistView:Lcom/tnkfactory/ad/AdListView;

    invoke-virtual {v2}, Lcom/tnkfactory/ad/AdListView;->loadAdList()V

    .line 82
    return-object v1
.end method

.method public onFailure(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 113
    return-void
.end method

.method public onLoad()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public setAdList(Z)V
    .locals 2
    .param p1, "isTnkAd"    # Z

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;->rl_not_ad_list:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;->rl_not_ad_list:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
