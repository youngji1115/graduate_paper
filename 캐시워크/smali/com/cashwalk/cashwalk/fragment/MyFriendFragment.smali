.class public Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;
.super Landroid/support/v4/app/Fragment;
.source "MyFriendFragment.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter$OnItemClickListener;


# instance fields
.field public instent:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mFriendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field public mMyFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter;

.field private pref:Landroid/content/SharedPreferences;

.field private recycler_view:Landroid/support/v7/widget/RecyclerView;

.field private rl_not_content:Landroid/widget/RelativeLayout;

.field private rootView:Landroid/view/ViewGroup;

.field private tv_not_friend_msg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->instent:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    .line 49
    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->mContext:Landroid/content/Context;

    .line 50
    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->mFriendList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->mActivity:Landroid/app/Activity;

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
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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
    .line 67
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->mActivity:Landroid/app/Activity;

    .line 69
    iput-object p0, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->instent:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    .line 70
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->pref:Landroid/content/SharedPreferences;

    .line 72
    const v0, 0x7f040095

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->rootView:Landroid/view/ViewGroup;

    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f1002ff

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f100300

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->rl_not_content:Landroid/widget/RelativeLayout;

    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f100301

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->tv_not_friend_msg:Landroid/widget/TextView;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->mFriendList:Ljava/util/List;

    .line 79
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->rootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onItemClick(Landroid/view/View;Lcom/cashwalk/cashwalk/util/network/model/Friend;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "item"    # Lcom/cashwalk/cashwalk/util/network/model/Friend;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-virtual {v0, p2}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->showDetailFriend(Lcom/cashwalk/cashwalk/util/network/model/Friend;)V

    .line 114
    return-void
.end method

.method public onItemDelete(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "postion"    # I
    .param p3, "item"    # Lcom/cashwalk/cashwalk/util/network/model/Friend;

    .prologue
    .line 119
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 121
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$1;-><init>(Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;

    invoke-direct {v2, p0, p3, p2}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;-><init>(Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;Lcom/cashwalk/cashwalk/util/network/model/Friend;I)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 166
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 86
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    const/16 v2, 0x8

    const/4 v7, 0x0

    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->mFriendList:Ljava/util/List;

    .line 92
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->mFriendList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v7}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 94
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_search_bar_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->rl_not_content:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 96
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, "mLayoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 98
    new-instance v1, Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->mFriendList:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->mMyFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter;

    .line 99
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->mMyFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter;

    invoke-virtual {v1, p0}, Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter;->setOnItemClickListener(Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter$OnItemClickListener;)V

    .line 100
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->mMyFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 102
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->mMyFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter;->notifyDataSetChanged()V

    .line 109
    .end local v0    # "mLayoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_search_bar_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 106
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->rl_not_content:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 107
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->tv_not_friend_msg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09016d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->pref:Landroid/content/SharedPreferences;

    const-string v5, "NICKNAME"

    const-string/jumbo v6, "\uc0ac\uc6a9\uc790"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
