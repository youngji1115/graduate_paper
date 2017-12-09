.class public Lcom/cashwalk/cashwalk/activity/StepBetActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "StepBetActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;
    }
.end annotation


# static fields
.field public static MY_FRIEND_TOTAL_SIZE:I

.field public static actionItemShare:Landroid/view/MenuItem;


# instance fields
.field private ANMATION_COUNT:I

.field private FRAGMENT_POSTION:I

.field private actionItemAddFriend:Landroid/view/MenuItem;

.field private adapter:Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;

.field private iv_lotto_winner_item_image:Landroid/widget/ImageView;

.field private li_timeline_scroll_top_layout:Landroid/widget/LinearLayout;

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

.field private pager:Landroid/support/v4/view/ViewPager;

.field private pref:Landroid/content/SharedPreferences;

.field private progress:Landroid/widget/ProgressBar;

.field private rl_realtime_winner_info:Landroid/widget/RelativeLayout;

.field private rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

.field private rl_timeline_scroll_top:Landroid/widget/RelativeLayout;

.field private tabsLinearLayout:Landroid/widget/LinearLayout;

.field private tv_lotto_winner_msg:Landroid/widget/TextView;

.field private tv_lotto_winner_time:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->MY_FRIEND_TOTAL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 72
    iput v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->ANMATION_COUNT:I

    .line 75
    iput v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->FRAGMENT_POSTION:I

    .line 492
    new-instance v0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$9;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity$9;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->mAnimationEndHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->initViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 50
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->FRAGMENT_POSTION:I

    return v0
.end method

.method static synthetic access$1000(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->tv_lotto_winner_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/cashwalk/cashwalk/activity/StepBetActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->FRAGMENT_POSTION:I

    return p1
.end method

.method static synthetic access$1100(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->iv_lotto_winner_item_image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->tv_lotto_winner_msg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 50
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->ANMATION_COUNT:I

    return v0
.end method

.method static synthetic access$1302(Lcom/cashwalk/cashwalk/activity/StepBetActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->ANMATION_COUNT:I

    return p1
.end method

.method static synthetic access$1308(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 50
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->ANMATION_COUNT:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->ANMATION_COUNT:I

    return v0
.end method

.method static synthetic access$1400(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->mAnimationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->getLottoWinnerList()V

    return-void
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->adapter:Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->tabsLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->li_timeline_scroll_top_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->actionItemAddFriend:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->mLottoWinnerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/cashwalk/cashwalk/activity/StepBetActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->mLottoWinnerList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/activity/StepBetActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->setWinnerBanner(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->rl_realtime_winner_info:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private getLottoWinnerList()V
    .locals 2

    .prologue
    .line 378
    new-instance v1, Lcom/cashwalk/cashwalk/activity/StepBetActivity$7;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity$7;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getLottoWinnerList(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 395
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 396
    return-void
.end method

.method private initDefaultLayout()V
    .locals 2

    .prologue
    .line 143
    const v0, 0x7f1001f5

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    .line 144
    const v0, 0x7f1001f6

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->rl_realtime_winner_info:Landroid/widget/RelativeLayout;

    .line 145
    const v0, 0x7f1001f9

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->tv_lotto_winner_msg:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f1001f8

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->tv_lotto_winner_time:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f1001f7

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->iv_lotto_winner_item_image:Landroid/widget/ImageView;

    .line 148
    const v0, 0x7f100287

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->li_timeline_scroll_top_layout:Landroid/widget/LinearLayout;

    .line 149
    const v0, 0x7f100288

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->rl_timeline_scroll_top:Landroid/widget/RelativeLayout;

    .line 150
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->rl_timeline_scroll_top:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/StepBetActivity$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/StepBetActivity$3;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity$3;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    return-void
.end method

.method private initViews()V
    .locals 6

    .prologue
    const v5, 0x7f0f0091

    .line 168
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->progress:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 170
    new-instance v3, Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->adapter:Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;

    .line 171
    const v3, 0x7f1001b6

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->pager:Landroid/support/v4/view/ViewPager;

    .line 172
    const v3, 0x7f1001d1

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/astuetz/PagerSlidingTabStrip;

    .line 173
    .local v1, "tabs":Lcom/astuetz/PagerSlidingTabStrip;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->adapter:Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 174
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 175
    const/16 v3, 0x10

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setTextSize(I)V

    .line 176
    invoke-virtual {v1, v5}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColorResource(I)V

    .line 177
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 185
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/astuetz/PagerSlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->tabsLinearLayout:Landroid/widget/LinearLayout;

    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->tabsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 187
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->tabsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 189
    .local v2, "tv":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 196
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_1
    new-instance v3, Lcom/cashwalk/cashwalk/activity/StepBetActivity$4;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity$4;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)V

    invoke-virtual {v1, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 255
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

    const/16 v5, 0x8

    const/4 v7, 0x0

    .line 399
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->mAnimationHandler:Landroid/os/Handler;

    .line 400
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 402
    iget v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->FRAGMENT_POSTION:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 403
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 409
    :goto_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->tv_lotto_winner_time:Landroid/widget/TextView;

    new-instance v5, Lorg/joda/time/DateTime;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;->created:Ljava/lang/String;

    invoke-direct {v5, v3}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v5}, Lcom/cashwalk/cashwalk/util/Utils;->getAgoString(Landroid/content/Context;Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v1, v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;->imageUrl:Ljava/lang/String;

    .line 411
    .local v1, "path":Ljava/lang/String;
    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 412
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    .line 413
    invoke-virtual {v3, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 414
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->iv_lotto_winner_item_image:Landroid/widget/ImageView;

    .line 415
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 424
    :goto_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->tv_lotto_winner_msg:Landroid/widget/TextView;

    const v3, 0x7f0901f0

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;->nickname:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->ANMATION_COUNT:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->ANMATION_COUNT:I

    .line 426
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 427
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    .line 429
    .local v2, "winner":Lcom/cashwalk/cashwalk/util/network/model/Winner;
    new-instance v3, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;

    invoke-direct {v3, p0, v2, p1}, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetActivity;Lcom/cashwalk/cashwalk/util/network/model/Winner;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 484
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->mAnimationHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    mul-int/lit16 v5, v0, 0x1388

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 405
    .end local v0    # "i":I
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "winner":Lcom/cashwalk/cashwalk/util/network/model/Winner;
    :cond_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 417
    .restart local v1    # "path":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    .line 419
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v4

    .line 420
    invoke-virtual {v4, v1}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 418
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 421
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->iv_lotto_winner_item_image:Landroid/widget/ImageView;

    .line 422
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 488
    .end local v1    # "path":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 490
    :cond_3
    return-void
.end method

.method private uploadSteps(I)V
    .locals 3
    .param p1, "stepsTotal"    # I

    .prologue
    .line 99
    if-ltz p1, :cond_0

    const v1, 0x61a80

    if-le p1, v1, :cond_1

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->initViews()V

    .line 110
    :goto_0
    return-void

    .line 102
    :cond_1
    const/4 v1, 0x0

    new-instance v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)V

    invoke-static {p1, v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->updateSteps(IZLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 108
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->finish()V

    .line 515
    const v0, 0x7f050017

    const v1, 0x7f050021

    invoke-virtual {p0, v0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->overridePendingTransition(II)V

    .line 516
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v1, 0x7f04004d

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x480000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 85
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->pref:Landroid/content/SharedPreferences;

    .line 86
    const v1, 0x7f1000d6

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->progress:Landroid/widget/ProgressBar;

    .line 88
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->initDefaultLayout()V

    .line 89
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "steps"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->uploadSteps(I)V

    .line 92
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    const-string v2, "rank_enter"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x2

    .line 259
    const-string/jumbo v0, "\uce5c\uad6c\ucc3e\uae30"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->actionItemAddFriend:Landroid/view/MenuItem;

    .line 260
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->actionItemAddFriend:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 261
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->actionItemAddFriend:Landroid/view/MenuItem;

    const v1, 0x7f0200aa

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 262
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->actionItemAddFriend:Landroid/view/MenuItem;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/StepBetActivity$5;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity$5;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 273
    const-string/jumbo v0, "\ub7ad\ud0b9\uacf5\uc720"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->actionItemShare:Landroid/view/MenuItem;

    .line 274
    sget-object v0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->actionItemShare:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 275
    sget-object v0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->actionItemShare:Landroid/view/MenuItem;

    const v1, 0x7f0200c0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 276
    sget-object v0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->actionItemShare:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 277
    sget-object v0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->actionItemShare:Landroid/view/MenuItem;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/StepBetActivity$6;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity$6;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 289
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "it"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 294
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 295
    if-eqz p1, :cond_0

    .line 296
    const-string/jumbo v0, "timeline_refresh"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 298
    const-string/jumbo v0, "update"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#### \uc544\uc774\ub514 => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->adapter:Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;

    invoke-virtual {v0, v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    const-string v1, "id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "comment_count"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->updateLike(Ljava/lang/String;I)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->adapter:Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;

    invoke-virtual {v0, v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1, v4}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->refresh(ZLjava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 135
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 136
    iput v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->ANMATION_COUNT:I

    .line 137
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 140
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 124
    iput v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->ANMATION_COUNT:I

    .line 125
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 129
    :cond_0
    return-void
.end method

.method public shareFriendRank()V
    .locals 4

    .prologue
    .line 373
    new-instance v0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;

    sget-object v1, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->REF_RANK:Ljava/lang/String;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1001b6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Z)V

    .line 374
    .local v0, "mShareDialog":Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;
    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->show()V

    .line 375
    return-void
.end method
