.class public Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;
.super Landroid/support/v4/app/Fragment;
.source "RequestFriendFragment.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$OnItemClickListener;


# instance fields
.field public instent:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

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

.field private mRequestFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;

.field private pref:Landroid/content/SharedPreferences;

.field private recycler_view:Landroid/support/v7/widget/RecyclerView;

.field private rl_not_content:Landroid/widget/RelativeLayout;

.field private rootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->instent:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    .line 48
    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->mContext:Landroid/content/Context;

    .line 49
    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->mFriendList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->mRequestFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->rl_not_content:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->mActivity:Landroid/app/Activity;

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
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
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
    .line 65
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->mActivity:Landroid/app/Activity;

    .line 67
    iput-object p0, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->instent:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    .line 69
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->pref:Landroid/content/SharedPreferences;

    .line 71
    const v0, 0x7f040099

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->rootView:Landroid/view/ViewGroup;

    .line 72
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f1002ff

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->rootView:Landroid/view/ViewGroup;

    const v1, 0x7f100300

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->rl_not_content:Landroid/widget/RelativeLayout;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->mFriendList:Ljava/util/List;

    .line 77
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->rootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onItemAdd(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "postion"    # I
    .param p3, "item"    # Lcom/cashwalk/cashwalk/util/network/model/Friend;

    .prologue
    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v2

    const-string v3, "friend_accept"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    iget-object v2, p3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend:Ljava/lang/String;

    new-instance v3, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;

    invoke-direct {v3, p0, p2}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;-><init>(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;I)V

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->postUpdateFriend(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .line 173
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 174
    return-void

    .line 115
    .end local v1    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/view/View;Lcom/cashwalk/cashwalk/util/network/model/Friend;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "item"    # Lcom/cashwalk/cashwalk/util/network/model/Friend;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-virtual {v0, p2}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->showDetailFriend(Lcom/cashwalk/cashwalk/util/network/model/Friend;)V

    .line 109
    return-void
.end method

.method public onItemDelete(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "postion"    # I
    .param p3, "item"    # Lcom/cashwalk/cashwalk/util/network/model/Friend;

    .prologue
    .line 178
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090173

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 180
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$2;-><init>(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 186
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;

    invoke-direct {v2, p0, p3, p2}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;-><init>(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;Lcom/cashwalk/cashwalk/util/network/model/Friend;I)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 225
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 226
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 84
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 4
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
    .line 88
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->mFriendList:Ljava/util/List;

    .line 90
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->mFriendList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->rl_not_content:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 92
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, "mLayoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 94
    new-instance v1, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->mFriendList:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->mRequestFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;

    .line 95
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->mRequestFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;

    invoke-virtual {v1, p0}, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->setOnItemClickListener(Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$OnItemClickListener;)V

    .line 96
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->mRequestFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 98
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->mRequestFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->notifyDataSetChanged()V

    .line 104
    .end local v0    # "mLayoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->rl_not_content:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
