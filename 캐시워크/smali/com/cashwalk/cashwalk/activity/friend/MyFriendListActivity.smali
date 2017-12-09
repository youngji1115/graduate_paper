.class public Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "MyFriendListActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$OnItemClickListener;


# static fields
.field public static isRefresh:Z

.field public static mMyAddRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field public static mMyFriendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field public static mRecommendResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field public static mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Friend;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private FRAGMENT_POSTION:I

.field private INTENT_POSTION:I

.field private REF_FLAG:Ljava/lang/String;

.field private REF_TYPE:Ljava/lang/String;

.field private RE_COUNT:I

.field private UPLOAD_COUNT:I

.field private actionItem:Landroid/view/MenuItem;

.field private callbackManager:Lcom/facebook/CallbackManager;

.field public et_input_search_text:Landroid/widget/EditText;

.field private fb_id:Ljava/lang/String;

.field private fb_token:Ljava/lang/String;

.field private isContactsConnect:Z

.field private isFacebookConnect:Z

.field private iv_request_new:Landroid/widget/ImageView;

.field private iv_reset_search_input_box:Landroid/widget/ImageView;

.field private mContactsDBHelper:Lcom/cashwalk/cashwalk/util/ContactsDBHelper;

.field private mFriendSearchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private mLodingProgress:Landroid/widget/ProgressBar;

.field private mMyFriendFragment:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

.field private mNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Phone;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRecommendContactsFriendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendFacebookFriendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendFriendFragment:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

.field private mRecommendFriendSearchAdapter:Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;

.field private mRequestFriendFragment:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

.field private pref:Landroid/content/SharedPreferences;

.field private refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private resultPhoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rl_error:Landroid/widget/RelativeLayout;

.field private rl_not_search_result:Landroid/widget/RelativeLayout;

.field public rl_search_bar_layout:Landroid/widget/RelativeLayout;

.field private rl_search_result_layout:Landroid/widget/RelativeLayout;

.field private rv_search_result_list:Landroid/support/v7/widget/RecyclerView;

.field private tabLayout:Landroid/support/design/widget/TabLayout;

.field private tv_search_btn:Landroid/widget/TextView;

.field private uploadCcode:Ljava/lang/String;

.field private uploadCount:I

.field private uploadMaxCount:I

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isRefresh:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    .line 101
    iput v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->FRAGMENT_POSTION:I

    .line 102
    const/16 v0, 0x64

    iput v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->UPLOAD_COUNT:I

    .line 118
    iput v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->uploadCount:I

    .line 119
    iput v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->uploadMaxCount:I

    .line 121
    const-string v0, "82"

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->uploadCcode:Ljava/lang/String;

    .line 123
    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->fb_token:Ljava/lang/String;

    .line 124
    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->fb_id:Ljava/lang/String;

    .line 129
    iput v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->INTENT_POSTION:I

    .line 131
    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->REF_FLAG:Ljava/lang/String;

    .line 132
    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->REF_TYPE:Ljava/lang/String;

    .line 136
    iput v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->RE_COUNT:I

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->FRAGMENT_POSTION:I

    return v0
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->FRAGMENT_POSTION:I

    return p1
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->iv_reset_search_input_box:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getPhoneContacts()V

    return-void
.end method

.method static synthetic access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mLodingProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->RE_COUNT:I

    return v0
.end method

.method static synthetic access$1302(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->RE_COUNT:I

    return p1
.end method

.method static synthetic access$1308(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->RE_COUNT:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->RE_COUNT:I

    return v0
.end method

.method static synthetic access$1400(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isFacebookConnect:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isFacebookConnect:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getFacebookFriendList()V

    return-void
.end method

.method static synthetic access$1600(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getRecommendPhoneList()V

    return-void
.end method

.method static synthetic access$1800(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_error:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->uploadCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->searchResult()V

    return-void
.end method

.method static synthetic access$2000(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->resultPhoneList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->resultPhoneList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->uploadCcode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->uploadCcode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->uploadFriendList(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Lcom/cashwalk/cashwalk/util/ContactsDBHelper;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mContactsDBHelper:Lcom/cashwalk/cashwalk/util/ContactsDBHelper;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->iv_request_new:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->INTENT_POSTION:I

    return v0
.end method

.method static synthetic access$2502(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->INTENT_POSTION:I

    return p1
.end method

.method static synthetic access$2600(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRequestFriendFragment:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mNumberList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mNumberList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->UPLOAD_COUNT:I

    return v0
.end method

.method static synthetic access$2908(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->uploadMaxCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->uploadMaxCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->actionItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->resultPhoneContactsSync()V

    return-void
.end method

.method static synthetic access$3100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_search_result_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_not_search_result:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mFriendSearchList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mFriendSearchList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rv_search_result_list:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendFriendSearchAdapter:Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;)Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendFriendSearchAdapter:Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->fb_id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->fb_token:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mMyFriendFragment:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendFriendFragment:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isContactsConnect:Z

    return v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendFacebookFriendList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendFacebookFriendList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendContactsFriendList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendContactsFriendList:Ljava/util/List;

    return-object p1
.end method

.method private getFacebookFriendList()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1253
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1254
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->fb_token:Ljava/lang/String;

    .line 1255
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->fb_id:Ljava/lang/String;

    .line 1257
    iput-boolean v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isFacebookConnect:Z

    .line 1258
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "IS_FACEBOOK_CONNECT"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1260
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mLodingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1261
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->fb_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->fb_token:Ljava/lang/String;

    new-instance v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$12;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$12;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V

    invoke-static {v1, v2, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getFriendFacebookRecommend(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 1296
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1310
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :goto_0
    return-void

    .line 1299
    :cond_0
    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->fb_token:Ljava/lang/String;

    .line 1300
    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->fb_id:Ljava/lang/String;

    .line 1301
    iput-boolean v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isFacebookConnect:Z

    .line 1302
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "IS_FACEBOOK_CONNECT"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1305
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mLodingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1306
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mLodingProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1308
    :cond_1
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isLoginFacebook()V

    goto :goto_0
.end method

.method private getFriendList(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 749
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mLodingProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 750
    const/4 v1, -0x1

    const-string v2, ""

    new-instance v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$10;

    invoke-direct {v3, p0, p1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$10;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;I)V

    invoke-static {v1, v2, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getFriendList(ILjava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 823
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 824
    return-void
.end method

.method private getPhoneContacts()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 828
    const v1, 0x7f090164

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->pref:Landroid/content/SharedPreferences;

    const-string v5, "NICKNAME"

    const-string/jumbo v6, "\uc0ac\uc6a9\uc790"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 829
    .local v0, "dialogMsg":Ljava/lang/String;
    const-string v1, ""

    invoke-static {p0, v1, v0, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 831
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1000
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1001
    return-void
.end method

.method private getRecommendPhoneList()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 537
    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mContactsDBHelper:Lcom/cashwalk/cashwalk/util/ContactsDBHelper;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Lcom/cashwalk/cashwalk/util/ContactsDBHelper;->selectRandom(I)Ljava/util/List;

    move-result-object v0

    .line 539
    .local v0, "getRandomList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Phone;>;"
    const-string v5, ""

    .line 540
    .local v5, "resultPhoneList":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_1

    .line 541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    .local v3, "phones":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 543
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cashwalk/cashwalk/util/network/model/Phone;

    iget-object v2, v6, Lcom/cashwalk/cashwalk/util/network/model/Phone;->number:Ljava/lang/String;

    .line 544
    .local v2, "phoneNumber":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 547
    .end local v2    # "phoneNumber":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 548
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 553
    .end local v1    # "i":I
    .end local v3    # "phones":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mLodingProgress:Landroid/widget/ProgressBar;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mLodingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    .line 554
    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mLodingProgress:Landroid/widget/ProgressBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :cond_2
    :goto_1
    new-instance v6, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;

    invoke-direct {v6, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V

    invoke-static {v5, v6}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getFriendPhoneRecommend(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v4

    .line 639
    .local v4, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v6}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 640
    return-void

    .line 556
    .end local v4    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private initLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f1001d1

    const/4 v2, 0x1

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendResultList:Ljava/util/List;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mMyFriendList:Ljava/util/List;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRequestList:Ljava/util/List;

    .line 186
    const v0, 0x7f1001db

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 187
    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 188
    const v0, 0x7f1000d6

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mLodingProgress:Landroid/widget/ProgressBar;

    .line 189
    const v0, 0x7f1001d4

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_search_bar_layout:Landroid/widget/RelativeLayout;

    .line 190
    const v0, 0x7f1001d6

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->et_input_search_text:Landroid/widget/EditText;

    .line 191
    const v0, 0x7f1001dc

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_search_result_layout:Landroid/widget/RelativeLayout;

    .line 192
    const v0, 0x7f1001dd

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rv_search_result_list:Landroid/support/v7/widget/RecyclerView;

    .line 193
    const v0, 0x7f1001b9

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 194
    const v0, 0x7f1001d8

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->tv_search_btn:Landroid/widget/TextView;

    .line 195
    const v0, 0x7f1001d9

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_not_search_result:Landroid/widget/RelativeLayout;

    .line 196
    const v0, 0x7f1001d7

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->iv_reset_search_input_box:Landroid/widget/ImageView;

    .line 197
    const v0, 0x7f1001d2

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->iv_request_new:Landroid/widget/ImageView;

    .line 198
    const v0, 0x7f1001de

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_error:Landroid/widget/RelativeLayout;

    .line 201
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 215
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->iv_reset_search_input_box:Landroid/widget/ImageView;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->et_input_search_text:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 224
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->et_input_search_text:Landroid/widget/EditText;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$3;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$3;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 243
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->tv_search_btn:Landroid/widget/TextView;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$4;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$4;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->et_input_search_text:Landroid/widget/EditText;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$5;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$5;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 273
    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 274
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 276
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->setupViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 278
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 350
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->INTENT_POSTION:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 352
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->REF_TYPE:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->REF_TYPE:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->REF_TYPE:Ljava/lang/String;

    const-string v1, "facebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    iput-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->REF_TYPE:Ljava/lang/String;

    .line 355
    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isFacebookConnect:Z

    .line 356
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IS_FACEBOOK_CONNECT"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 357
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getFacebookFriendList()V

    .line 363
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_search_bar_layout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 365
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->REF_TYPE:Ljava/lang/String;

    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iput-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->REF_TYPE:Ljava/lang/String;

    goto :goto_0
.end method

.method private isLoginFacebook()V
    .locals 4

    .prologue
    .line 1462
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 1463
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->callbackManager:Lcom/facebook/CallbackManager;

    .line 1464
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "public_profile"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "user_friends"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 1465
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 1509
    return-void
.end method

.method private resultPhoneContactsSync()V
    .locals 3

    .prologue
    .line 1243
    const/4 v0, 0x0

    iput v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->uploadCount:I

    .line 1244
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->resultPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->resultPhoneList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->uploadCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->uploadCcode:Ljava/lang/String;

    iget v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->uploadMaxCount:I

    invoke-direct {p0, v0, v1, v2}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->uploadFriendList(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1250
    :goto_0
    return-void

    .line 1248
    :cond_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getRecommendPhoneList()V

    goto :goto_0
.end method

.method private searchResult()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 410
    :try_start_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->et_input_search_text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 411
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 415
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_not_search_result:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 416
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_search_result_layout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 417
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->iv_reset_search_input_box:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    :goto_0
    iget v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->FRAGMENT_POSTION:I

    if-nez v3, :cond_4

    .line 424
    sget-object v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mMyFriendList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 425
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_search_result_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 426
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_search_result_layout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 428
    :cond_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mMyFriendFragment:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->instent:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->mMyFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter;

    invoke-virtual {v3, v2}, Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter;->filter(Ljava/lang/String;)Z

    move-result v1

    .line 429
    .local v1, "isResult":Z
    if-eqz v1, :cond_3

    .line 430
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_not_search_result:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 463
    .end local v1    # "isResult":Z
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 419
    .restart local v2    # "text":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->iv_reset_search_input_box:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 459
    .end local v2    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 461
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_not_search_result:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 432
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "isResult":Z
    .restart local v2    # "text":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_not_search_result:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 436
    .end local v1    # "isResult":Z
    :cond_4
    iget v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->FRAGMENT_POSTION:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 438
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->et_input_search_text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->et_input_search_text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 440
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->et_input_search_text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->findFriend(Ljava/lang/String;)V

    goto :goto_1

    .line 442
    :cond_5
    sget-object v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendResultList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_8

    .line 443
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_search_result_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    .line 444
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_search_result_layout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 447
    :cond_6
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendFriendFragment:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->instent:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mRecommendFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;

    invoke-virtual {v3, v2}, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->filter(Ljava/lang/String;)Z

    move-result v1

    .line 448
    .restart local v1    # "isResult":Z
    if-eqz v1, :cond_7

    .line 449
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_not_search_result:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 451
    :cond_7
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_not_search_result:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 454
    .end local v1    # "isResult":Z
    :cond_8
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_not_search_result:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 455
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_search_result_layout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private setupViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 3
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 466
    new-instance v1, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;-><init>()V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mMyFriendFragment:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    .line 467
    new-instance v1, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;-><init>()V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendFriendFragment:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    .line 468
    new-instance v1, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;-><init>()V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRequestFriendFragment:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    .line 470
    new-instance v0, Lcom/cashwalk/cashwalk/util/ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cashwalk/cashwalk/util/ViewPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 471
    .local v0, "adapter":Lcom/cashwalk/cashwalk/util/ViewPagerAdapter;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mMyFriendFragment:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    const v2, 0x7f090179

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cashwalk/cashwalk/util/ViewPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendFriendFragment:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    const v2, 0x7f09017a

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cashwalk/cashwalk/util/ViewPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRequestFriendFragment:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    const v2, 0x7f09017b

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cashwalk/cashwalk/util/ViewPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 475
    return-void
.end method

.method private uploadFriendList(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "phones"    # Ljava/lang/String;
    .param p2, "cCode"    # Ljava/lang/String;
    .param p3, "totalSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 670
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mLodingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 671
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 674
    :cond_0
    iget v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->uploadCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->uploadCount:I

    .line 677
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 678
    :cond_1
    iget v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->uploadCount:I

    if-ge v1, p3, :cond_2

    .line 679
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->resultPhoneList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->uploadCount:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->uploadCcode:Ljava/lang/String;

    invoke-direct {p0, v1, v2, p3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->uploadFriendList(Ljava/lang/String;Ljava/lang/String;I)V

    .line 734
    :goto_0
    return-void

    .line 682
    :cond_2
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getRecommendPhoneList()V

    .line 683
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mLodingProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 688
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### phones "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 691
    const-string v1, "phone"

    new-instance v2, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;

    invoke-direct {v2, p0, p3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;I)V

    invoke-static {p1, p2, v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->postUploadFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 733
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method


# virtual methods
.method public checkPhoneContactsFriendList()V
    .locals 3

    .prologue
    .line 654
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mContactsDBHelper:Lcom/cashwalk/cashwalk/util/ContactsDBHelper;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/ContactsDBHelper;->getResult()Ljava/util/List;

    move-result-object v0

    .line 656
    .local v0, "getLocalDB":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Phone;>;"
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->actionItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->actionItem:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 660
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 662
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getPhoneContacts()V

    .line 667
    :goto_0
    return-void

    .line 665
    :cond_1
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getRecommendPhoneList()V

    goto :goto_0
.end method

.method public connectFacebook()V
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getFacebookFriendList()V

    .line 532
    return-void
.end method

.method public findFriend(Ljava/lang/String;)V
    .locals 3
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 1317
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mLodingProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1318
    new-instance v1, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V

    invoke-static {p1, v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getFriendSearch(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 1362
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1363
    return-void
.end method

.method public getMyFriendList()V
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getFriendList(I)V

    .line 479
    return-void
.end method

.method public getRecommendFriendList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendResultList:Ljava/util/List;

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendFacebookFriendList:Ljava/util/List;

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendContactsFriendList:Ljava/util/List;

    .line 503
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->pref:Landroid/content/SharedPreferences;

    const-string v1, "IS_FACEBOOK_CONNECT"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isFacebookConnect:Z

    .line 504
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->pref:Landroid/content/SharedPreferences;

    const-string v1, "IS_CONTACTS_CONNECT"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isContactsConnect:Z

    .line 506
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_search_result_layout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 509
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isFacebookConnect:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isContactsConnect:Z

    if-nez v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_search_bar_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendFriendFragment:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->instent:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendFriendFragment:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->instent:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    sget-object v1, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendResultList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->setList(Ljava/util/List;)V

    .line 513
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isFacebookConnect:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isContactsConnect:Z

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isContactsConnect:Z

    if-eqz v0, :cond_4

    .line 524
    :cond_3
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->checkPhoneContactsFriendList()V

    goto :goto_0

    .line 525
    :cond_4
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isFacebookConnect:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isContactsConnect:Z

    if-nez v0, :cond_0

    .line 526
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getFacebookFriendList()V

    goto :goto_0
.end method

.method public getRequestFriendList()V
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getFriendList(I)V

    .line 738
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1525
    invoke-super {p0, p1, p2, p3}, Lcom/cashwalk/cashwalk/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1527
    if-eqz p3, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 1530
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 140
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const v2, 0x7f040037

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->setContentView(I)V

    .line 143
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x680080

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 148
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->pref:Landroid/content/SharedPreferences;

    .line 149
    new-instance v2, Lcom/cashwalk/cashwalk/util/ContactsDBHelper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/cashwalk/cashwalk/util/ContactsDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mContactsDBHelper:Lcom/cashwalk/cashwalk/util/ContactsDBHelper;

    .line 152
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 153
    .local v1, "getData":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 154
    const-string v2, "postion"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    const-string v2, "postion"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->INTENT_POSTION:I

    .line 158
    :cond_0
    const-string v2, "ref"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 159
    const-string v2, "ref"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->REF_FLAG:Ljava/lang/String;

    .line 160
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->REF_TYPE:Ljava/lang/String;

    .line 163
    :cond_1
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->initLayout()V

    .line 166
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "LAST_REQUEST_COUNT"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget v3, Lcom/cashwalk/cashwalk/CashWalkApp;->REQUEST_COUNT:I

    if-eq v2, v3, :cond_2

    .line 167
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "LAST_REQUEST_COUNT"

    sget v4, Lcom/cashwalk/cashwalk/CashWalkApp;->REQUEST_COUNT:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 170
    :cond_2
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getMyFriendList()V

    .line 173
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v2

    const-string v3, "friend_enter"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 376
    const-string/jumbo v0, "\uc5f0\ub77d\ucc98 \uc0c8\ub85c\uace0\uce68"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->actionItem:Landroid/view/MenuItem;

    .line 377
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->actionItem:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 378
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->actionItem:Landroid/view/MenuItem;

    const v1, 0x7f02009c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 379
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->actionItem:Landroid/view/MenuItem;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$7;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$7;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 389
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->actionItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 391
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemAdd(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "postion"    # I
    .param p3, "item"    # Lcom/cashwalk/cashwalk/util/network/model/Friend;

    .prologue
    .line 1421
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->et_input_search_text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CODE"

    new-instance v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$15;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$15;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V

    invoke-static {v1, v2, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->postAddFriend(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 1445
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1446
    return-void
.end method

.method public onItemClick(Landroid/view/View;Lcom/cashwalk/cashwalk/util/network/model/Friend;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "item"    # Lcom/cashwalk/cashwalk/util/network/model/Friend;

    .prologue
    .line 1451
    return-void
.end method

.method public onItemDelete(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "postion"    # I
    .param p3, "item"    # Lcom/cashwalk/cashwalk/util/network/model/Friend;

    .prologue
    .line 1456
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1513
    packed-switch p1, :pswitch_data_0

    .line 1520
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/cashwalk/cashwalk/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1515
    :pswitch_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->REF_FLAG:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->REF_FLAG:Ljava/lang/String;

    const-string v1, "rank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1516
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1518
    :cond_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->finish()V

    goto :goto_0

    .line 1513
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 396
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 404
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 398
    :pswitch_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->REF_FLAG:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->REF_FLAG:Ljava/lang/String;

    const-string v1, "rank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->startActivity(Landroid/content/Intent;)V

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->finish()V

    .line 402
    const/4 v0, 0x1

    goto :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 369
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onResume()V

    .line 370
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isRefresh:Z

    .line 371
    return-void
.end method

.method public refreshRecommendList()V
    .locals 4

    .prologue
    .line 1366
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mLodingProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1367
    const/4 v1, -0x1

    const-string v2, ""

    new-instance v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$14;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$14;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V

    invoke-static {v1, v2, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getFriendList(ILjava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 1416
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1417
    return-void
.end method

.method public setViewPagerPostion(I)V
    .locals 2
    .param p1, "postion"    # I

    .prologue
    .line 644
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 645
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 647
    :cond_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getMyFriendList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :goto_0
    return-void

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showDetailFriend(Lcom/cashwalk/cashwalk/util/network/model/Friend;)V
    .locals 3
    .param p1, "item"    # Lcom/cashwalk/cashwalk/util/network/model/Friend;

    .prologue
    .line 483
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 484
    .local v0, "startFeed":Landroid/content/Intent;
    iget-object v1, p1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 485
    const-string v1, "id"

    iget-object v2, p1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    :goto_0
    iget-object v1, p1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->id:Ljava/lang/String;

    const-string v2, "fb_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    const-string v1, "id"

    iget-object v2, p1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    :cond_0
    const-string v1, "name"

    iget-object v2, p1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->startActivity(Landroid/content/Intent;)V

    .line 496
    return-void

    .line 487
    :cond_1
    const-string v1, "id"

    iget-object v2, p1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->owner:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
