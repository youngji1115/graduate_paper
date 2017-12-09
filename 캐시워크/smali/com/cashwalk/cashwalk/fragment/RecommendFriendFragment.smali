.class public Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;
.super Landroid/support/v4/app/Fragment;
.source "RecommendFriendFragment.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$OnItemClickListener;


# instance fields
.field public instent:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

.field private isContactsConnect:Z

.field private isFacebookConnect:Z

.field private iv_add_connect_image:Landroid/widget/ImageView;

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

.field public mRecommendFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;

.field private pref:Landroid/content/SharedPreferences;

.field private recycler_view:Landroid/support/v7/widget/RecyclerView;

.field private rl_add_connect_option:Landroid/widget/RelativeLayout;

.field private rl_contacts_connect:Landroid/widget/RelativeLayout;

.field private rl_facebook_connect:Landroid/widget/RelativeLayout;

.field private rl_not_connect:Landroid/widget/RelativeLayout;

.field private rl_not_content:Landroid/widget/RelativeLayout;

.field private rootView:Landroid/view/ViewGroup;

.field private tv_add_connect_close:Landroid/widget/TextView;

.field private tv_add_connect_text:Landroid/widget/TextView;

.field private tv_connect_info_msg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->instent:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    .line 56
    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mContext:Landroid/content/Context;

    .line 57
    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->isFacebookConnect:Z

    return v0
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->isFacebookConnect:Z

    return p1
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->isContactsConnect:Z

    return v0
.end method

.method static synthetic access$302(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->isContactsConnect:Z

    return p1
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rl_add_connect_option:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mFriendList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rl_not_content:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private checkConnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->pref:Landroid/content/SharedPreferences;

    const-string v1, "IS_FACEBOOK_CONNECT"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->isFacebookConnect:Z

    .line 188
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->pref:Landroid/content/SharedPreferences;

    const-string v1, "IS_CONTACTS_CONNECT"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->isContactsConnect:Z

    .line 191
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->isFacebookConnect:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->isContactsConnect:Z

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rl_not_connect:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rl_facebook_connect:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rl_contacts_connect:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rl_not_connect:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
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
    const/16 v5, 0x8

    const/16 v4, 0x21

    const/4 v3, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mActivity:Landroid/app/Activity;

    .line 86
    iput-object p0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->instent:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    .line 87
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->pref:Landroid/content/SharedPreferences;

    .line 89
    const v1, 0x7f040098

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rootView:Landroid/view/ViewGroup;

    .line 90
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f1002ff

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    .line 91
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f1003d1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rl_not_connect:Landroid/widget/RelativeLayout;

    .line 92
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f100300

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rl_not_content:Landroid/widget/RelativeLayout;

    .line 93
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f1003d3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rl_facebook_connect:Landroid/widget/RelativeLayout;

    .line 94
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f1003d4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rl_contacts_connect:Landroid/widget/RelativeLayout;

    .line 95
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f10039e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rl_add_connect_option:Landroid/widget/RelativeLayout;

    .line 96
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f1003d2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->tv_connect_info_msg:Landroid/widget/TextView;

    .line 97
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f1003a0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->tv_add_connect_text:Landroid/widget/TextView;

    .line 98
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f1003a1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->tv_add_connect_close:Landroid/widget/TextView;

    .line 99
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f10039f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->iv_add_connect_image:Landroid/widget/ImageView;

    .line 102
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090161

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 103
    .local v0, "infoMsgSps":Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v1, v3, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 104
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v2, -0xc4a863

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 105
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/16 v2, -0x7dda

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 106
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->tv_connect_info_msg:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->checkConnect()V

    .line 111
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rl_facebook_connect:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$1;-><init>(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rl_contacts_connect:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$2;-><init>(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rl_add_connect_option:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$3;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$3;-><init>(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->tv_add_connect_close:Landroid/widget/TextView;

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$4;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$4;-><init>(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mFriendList:Ljava/util/List;

    .line 182
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rootView:Landroid/view/ViewGroup;

    return-object v1
.end method

.method public onItemAdd(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "postion"    # I
    .param p3, "item"    # Lcom/cashwalk/cashwalk/util/network/model/Friend;

    .prologue
    .line 285
    iget-object v4, p3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->fb_id:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 286
    const-string v3, "FB"

    .line 287
    .local v3, "type":Ljava/lang/String;
    iget-object v1, p3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->fb_id:Ljava/lang/String;

    .line 294
    .local v1, "friendId":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v4

    const-string v5, "friend_r_add"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v5, v6}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_1
    new-instance v4, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;

    invoke-direct {v4, p0, p2}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$5;-><init>(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;I)V

    invoke-static {v1, v3, v4}, Lcom/cashwalk/cashwalk/util/network/RestClient;->postAddFriend(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v2

    .line 384
    .local v2, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 387
    return-void

    .line 289
    .end local v1    # "friendId":Ljava/lang/String;
    .end local v2    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    .end local v3    # "type":Ljava/lang/String;
    :cond_0
    const-string v3, "ID"

    .line 290
    .restart local v3    # "type":Ljava/lang/String;
    iget-object v1, p3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->owner:Ljava/lang/String;

    .restart local v1    # "friendId":Ljava/lang/String;
    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onItemClick(Landroid/view/View;Lcom/cashwalk/cashwalk/util/network/model/Friend;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "item"    # Lcom/cashwalk/cashwalk/util/network/model/Friend;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-virtual {v0, p2}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->showDetailFriend(Lcom/cashwalk/cashwalk/util/network/model/Friend;)V

    .line 278
    return-void
.end method

.method public onItemDelete(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "postion"    # I
    .param p3, "item"    # Lcom/cashwalk/cashwalk/util/network/model/Friend;

    .prologue
    const v4, 0x7f090132

    const v3, 0x7f090101

    .line 392
    iget v1, p3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->status:I

    if-nez v1, :cond_0

    .line 393
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 394
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09015d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 395
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$6;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$6;-><init>(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 402
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;

    invoke-direct {v2, p0, p3, p2}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;-><init>(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;Lcom/cashwalk/cashwalk/util/network/model/Friend;I)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 444
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 505
    :goto_0
    return-void

    .line 447
    .end local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 448
    .restart local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 449
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$8;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$8;-><init>(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 456
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$9;

    invoke-direct {v2, p0, p3, p2}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$9;-><init>(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;Lcom/cashwalk/cashwalk/util/network/model/Friend;I)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 503
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 203
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 11
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
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 207
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->checkConnect()V

    .line 210
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 212
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->fb_id:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 213
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->owner:Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->owner:Ljava/lang/String;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->pref:Landroid/content/SharedPreferences;

    const-string v6, "USER_ID"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 214
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 215
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    sget-object v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendResultList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 216
    sget-object v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendResultList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->owner:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendResultList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->owner:Ljava/lang/String;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->pref:Landroid/content/SharedPreferences;

    const-string v6, "USER_ID"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 217
    sget-object v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendResultList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v2    # "j":I
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_search_bar_layout:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_1

    .line 233
    :try_start_1
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_search_bar_layout:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 238
    :cond_1
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_5

    .line 239
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mFriendList:Ljava/util/List;

    .line 240
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mFriendList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 241
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rl_not_content:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 242
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v8}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 243
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 244
    .local v3, "mLayoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 245
    new-instance v4, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mFriendList:Ljava/util/List;

    invoke-direct {v4, v5, v6, v9, v9}, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZZ)V

    iput-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mRecommendFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;

    .line 246
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mRecommendFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;

    invoke-virtual {v4, p0}, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->setOnItemClickListener(Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$OnItemClickListener;)V

    .line 247
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mRecommendFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 249
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mRecommendFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->notifyDataSetChanged()V

    .line 251
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->et_input_search_text:Landroid/widget/EditText;

    const v5, 0x7f09015e

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 261
    .end local v3    # "mLayoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_2
    :goto_4
    iget-boolean v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->isFacebookConnect:Z

    if-nez v4, :cond_7

    .line 262
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rl_add_connect_option:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 263
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->iv_add_connect_image:Landroid/widget/ImageView;

    const v5, 0x7f02015c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 264
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->tv_add_connect_text:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090171

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :goto_5
    return-void

    .line 215
    .restart local v2    # "j":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 210
    .end local v2    # "j":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 235
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->et_input_search_text:Landroid/widget/EditText;

    const v5, 0x7f090170

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 256
    iget-boolean v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->isFacebookConnect:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->isContactsConnect:Z

    if-eqz v4, :cond_2

    .line 257
    :cond_6
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rl_not_content:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4

    .line 265
    :cond_7
    iget-boolean v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->isContactsConnect:Z

    if-nez v4, :cond_8

    .line 266
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rl_add_connect_option:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 267
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->iv_add_connect_image:Landroid/widget/ImageView;

    const v5, 0x7f02015a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->tv_add_connect_text:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090172

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 270
    :cond_8
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->rl_add_connect_option:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5
.end method
