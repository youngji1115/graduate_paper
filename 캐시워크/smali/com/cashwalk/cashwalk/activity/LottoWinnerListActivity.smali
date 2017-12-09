.class public Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "LottoWinnerListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;
    }
.end annotation


# instance fields
.field private ANMATION_COUNT:I

.field private adapter:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

.field private empty:Landroid/widget/LinearLayout;

.field private iv_lotto_winner_item_image:Landroid/widget/ImageView;

.field private likeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field mAnimationEndHandler:Landroid/os/Handler;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mLottoWinnerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Winner;",
            ">;"
        }
    .end annotation
.end field

.field private pref:Landroid/content/SharedPreferences;

.field private progress:Landroid/widget/ProgressBar;

.field private refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private rl_realtime_winner_info:Landroid/widget/RelativeLayout;

.field private rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

.field private selectedIndex:I

.field private tv_lotto_winner_msg:Landroid/widget/TextView;

.field private tv_lotto_winner_time:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->likeList:Ljava/util/ArrayList;

    .line 62
    iput v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->selectedIndex:I

    .line 74
    iput v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->ANMATION_COUNT:I

    .line 549
    new-instance v0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$6;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$6;-><init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->mAnimationEndHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .prologue
    .line 51
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->selectedIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->selectedIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->mLottoWinnerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->mLottoWinnerList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->setWinnerBanner(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->rl_realtime_winner_info:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->tv_lotto_winner_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->iv_lotto_winner_item_image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->tv_lotto_winner_msg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .prologue
    .line 51
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->ANMATION_COUNT:I

    return v0
.end method

.method static synthetic access$1702(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->ANMATION_COUNT:I

    return p1
.end method

.method static synthetic access$1708(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .prologue
    .line 51
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->ANMATION_COUNT:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->ANMATION_COUNT:I

    return v0
.end method

.method static synthetic access$1800(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->mAnimationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->likeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->getLottoWinnerList()V

    return-void
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->empty:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method private getLottoWinnerList()V
    .locals 2

    .prologue
    .line 440
    new-instance v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$4;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$4;-><init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getLottoWinnerList(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 457
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 458
    return-void
.end method

.method private initLayout()V
    .locals 2

    .prologue
    .line 98
    const v0, 0x7f100202

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 99
    const v0, 0x7f1001ba

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->listView:Landroid/widget/ListView;

    .line 100
    const v0, 0x7f1001bb

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->empty:Landroid/widget/LinearLayout;

    .line 101
    const v0, 0x7f1001f5

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    .line 102
    const v0, 0x7f1001f6

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->rl_realtime_winner_info:Landroid/widget/RelativeLayout;

    .line 103
    const v0, 0x7f1001f9

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->tv_lotto_winner_msg:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f1001f8

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->tv_lotto_winner_time:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f1001f7

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->iv_lotto_winner_item_image:Landroid/widget/ImageView;

    .line 106
    const v0, 0x7f1000d6

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->progress:Landroid/widget/ProgressBar;

    .line 108
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 122
    return-void
.end method

.method private setWinnerBanner(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Winner;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "winnerUserList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Winner;>;"
    const v6, 0x7f020221

    const/4 v7, 0x0

    .line 461
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->mAnimationHandler:Landroid/os/Handler;

    .line 462
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 463
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 466
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->tv_lotto_winner_time:Landroid/widget/TextView;

    new-instance v5, Lorg/joda/time/DateTime;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;->created:Ljava/lang/String;

    invoke-direct {v5, v3}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v5}, Lcom/cashwalk/cashwalk/util/Utils;->getAgoString(Landroid/content/Context;Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v1, v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;->imageUrl:Ljava/lang/String;

    .line 468
    .local v1, "path":Ljava/lang/String;
    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 469
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    .line 470
    invoke-virtual {v3, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 471
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->iv_lotto_winner_item_image:Landroid/widget/ImageView;

    .line 472
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 481
    :goto_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->tv_lotto_winner_msg:Landroid/widget/TextView;

    const v3, 0x7f0901f0

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;->nickname:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->ANMATION_COUNT:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->ANMATION_COUNT:I

    .line 483
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 484
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    .line 486
    .local v2, "winner":Lcom/cashwalk/cashwalk/util/network/model/Winner;
    new-instance v3, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;

    invoke-direct {v3, p0, v2, p1}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;-><init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;Lcom/cashwalk/cashwalk/util/network/model/Winner;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 541
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->mAnimationHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    mul-int/lit16 v5, v0, 0x1388

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 474
    .end local v0    # "i":I
    .end local v2    # "winner":Lcom/cashwalk/cashwalk/util/network/model/Winner;
    :cond_0
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    .line 476
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v4

    .line 477
    invoke-virtual {v4, v1}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 475
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 478
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->iv_lotto_winner_item_image:Landroid/widget/ImageView;

    .line 479
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 545
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 547
    :cond_2
    return-void
.end method


# virtual methods
.method public fetchData()V
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 144
    new-instance v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$3;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$3;-><init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getLottoWinnerTimeline(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 179
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 180
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->finish()V

    .line 572
    const v0, 0x7f050017

    const v1, 0x7f050021

    invoke-virtual {p0, v0, v1}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->overridePendingTransition(II)V

    .line 573
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v1, 0x7f04003e

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->setContentView(I)V

    .line 81
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->pref:Landroid/content/SharedPreferences;

    .line 83
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x680080

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 89
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    const-string v2, "lotto_winner_enter"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->initLayout()V

    .line 95
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 430
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onPause()V

    .line 432
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 433
    iput v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->ANMATION_COUNT:I

    .line 434
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 435
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 437
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onResume()V

    .line 127
    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->refresh(Z)V

    .line 129
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 130
    iput v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->ANMATION_COUNT:I

    .line 131
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->getLottoWinnerList()V

    .line 136
    return-void
.end method

.method public refresh(Z)V
    .locals 0
    .param p1, "delay"    # Z

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->fetchData()V

    .line 140
    return-void
.end method
