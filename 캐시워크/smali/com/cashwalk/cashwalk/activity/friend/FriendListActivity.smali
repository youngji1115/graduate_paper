.class public Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "FriendListActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$OnItemClickListener;


# instance fields
.field private friendId:Ljava/lang/String;

.field private friendName:Ljava/lang/String;

.field private mFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;

.field private mResultFriend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private pref:Landroid/content/SharedPreferences;

.field private recycler_view:Landroid/support/v7/widget/RecyclerView;

.field private rl_add_friend:Landroid/widget/RelativeLayout;

.field private rl_not_content:Landroid/widget/RelativeLayout;

.field private tv_not_friend_msg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->friendId:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->friendName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->setList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getFriendList(ZI)V

    return-void
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->mResultFriend:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;)Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->mFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;

    return-object v0
.end method

.method private getFriendList(ZI)V
    .locals 4
    .param p1, "isMyFriend"    # Z
    .param p2, "status"    # I

    .prologue
    .line 139
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->friendId:Ljava/lang/String;

    .line 140
    .local v1, "tempFriendId":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 141
    const-string v1, ""

    .line 150
    :cond_0
    new-instance v2, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;IZ)V

    invoke-static {p2, v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getFriendList(ILjava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 191
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 192
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :goto_0
    return-void

    .line 143
    :cond_1
    if-nez v1, :cond_0

    .line 144
    const v2, 0x7f090141

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 145
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->finish()V

    goto :goto_0
.end method

.method private initLayout()V
    .locals 2

    .prologue
    .line 99
    const v0, 0x7f1002ff

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    .line 100
    const v0, 0x7f100300

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->rl_not_content:Landroid/widget/RelativeLayout;

    .line 101
    const v0, 0x7f100301

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->tv_not_friend_msg:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f100304

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->rl_add_friend:Landroid/widget/RelativeLayout;

    .line 103
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->rl_add_friend:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method

.method private setList(Ljava/util/List;)V
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
    .line 196
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->rl_not_content:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 198
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->mResultFriend:Ljava/util/List;

    .line 199
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 200
    .local v0, "mLayoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 201
    new-instance v1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->mResultFriend:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->mFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;

    .line 202
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->mFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;

    invoke-virtual {v1, p0}, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->setOnItemClickListener(Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$OnItemClickListener;)V

    .line 203
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->mFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 205
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->mFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->notifyDataSetChanged()V

    .line 214
    .end local v0    # "mLayoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->rl_not_content:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 208
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->friendName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->tv_not_friend_msg:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->friendName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\ub2d8\uc740 \uc544\uc9c1 \uce5c\uad6c\uac00 \uc5c6\uc5b4\uc694!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->tv_not_friend_msg:Landroid/widget/TextView;

    const-string/jumbo v2, "\uc544\uc9c1 \uce5c\uad6c\uac00 \uc5c6\uc5b4\uc694!"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 53
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v2, 0x7f040057

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x680080

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 61
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->pref:Landroid/content/SharedPreferences;

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->mResultFriend:Ljava/util/List;

    .line 65
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 66
    .local v1, "getData":Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 67
    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->friendName:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\ub2d8\uc758 \uce5c\uad6c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->friendId:Ljava/lang/String;

    .line 78
    :goto_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->initLayout()V

    .line 85
    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    if-nez v2, :cond_3

    .line 86
    const/4 v2, -0x1

    invoke-direct {p0, v5, v2}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getFriendList(ZI)V

    .line 92
    :goto_1
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v2

    const-string v3, "friend_other_enter"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_2
    return-void

    .line 74
    :cond_2
    const v2, 0x7f090141

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 75
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->finish()V

    goto :goto_0

    .line 88
    :cond_3
    const/4 v2, 0x2

    invoke-direct {p0, v6, v2}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getFriendList(ZI)V

    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onItemAdd(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "postion"    # I
    .param p3, "item"    # Lcom/cashwalk/cashwalk/util/network/model/Friend;

    .prologue
    .line 276
    iget-object v3, p3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->fb_id:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 277
    const-string v2, "FB"

    .line 278
    .local v2, "type":Ljava/lang/String;
    iget-object v0, p3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->fb_id:Ljava/lang/String;

    .line 284
    .local v0, "friendId":Ljava/lang/String;
    :goto_0
    new-instance v3, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;

    invoke-direct {v3, p0, p2}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;-><init>(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;I)V

    invoke-static {v0, v2, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->postAddFriend(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .line 335
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 336
    return-void

    .line 280
    .end local v0    # "friendId":Ljava/lang/String;
    .end local v1    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    .end local v2    # "type":Ljava/lang/String;
    :cond_0
    const-string v2, "ID"

    .line 281
    .restart local v2    # "type":Ljava/lang/String;
    iget-object v0, p3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend:Ljava/lang/String;

    .restart local v0    # "friendId":Ljava/lang/String;
    goto :goto_0
.end method

.method public onItemAddReceiveFriend(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "postion"    # I
    .param p3, "item"    # Lcom/cashwalk/cashwalk/util/network/model/Friend;

    .prologue
    .line 340
    iget-object v1, p3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend:Ljava/lang/String;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$6;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$6;-><init>(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;)V

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->postUpdateFriend(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 386
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 387
    return-void
.end method

.method public onItemCancelRequest(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "postion"    # I
    .param p3, "item"    # Lcom/cashwalk/cashwalk/util/network/model/Friend;

    .prologue
    .line 220
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09015d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 222
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$3;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$3;-><init>(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 228
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;

    invoke-direct {v2, p0, p3, p2}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;-><init>(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;Lcom/cashwalk/cashwalk/util/network/model/Friend;I)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 260
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 262
    return-void
.end method

.method public onItemClick(Landroid/view/View;Lcom/cashwalk/cashwalk/util/network/model/Friend;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "item"    # Lcom/cashwalk/cashwalk/util/network/model/Friend;

    .prologue
    .line 266
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    .local v0, "startFeed":Landroid/content/Intent;
    const-string v1, "id"

    iget-object v2, p2, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v1, "name"

    iget-object v2, p2, Lcom/cashwalk/cashwalk/util/network/model/Friend;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->startActivity(Landroid/content/Intent;)V

    .line 270
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 391
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 396
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 393
    :pswitch_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->finish()V

    .line 394
    const/4 v0, 0x1

    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
