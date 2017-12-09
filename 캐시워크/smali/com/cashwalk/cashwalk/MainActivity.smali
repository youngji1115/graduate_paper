.class public Lcom/cashwalk/cashwalk/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static steps:I


# instance fields
.field private ANMATION_COUNT:I

.field private background:Landroid/widget/ImageView;

.field private cashwalk_ad_view:Landroid/widget/RelativeLayout;

.field private circle:Lat/grabner/circleprogress/CircleProgressView;

.field private cirleLayout:Landroid/widget/FrameLayout;

.field private coupon:Landroid/widget/TextView;

.field private finishFlag:Z

.field private fromLockscreen:Z

.field private hasStepSensor:Z

.field private height:I

.field private ib_share:Landroid/widget/ImageButton;

.field private iv_cashwalk_ad_banner:Landroid/widget/ImageView;

.field private iv_lotto_winner_item_image:Landroid/widget/ImageView;

.field private iv_menu_lotto_icon:Landroid/widget/ImageView;

.field private iv_menu_rank_new:Landroid/widget/ImageView;

.field private iv_menu_reward_new:Landroid/widget/ImageView;

.field private iv_menu_viral_icon:Landroid/widget/ImageView;

.field private kcalView:Landroid/widget/TextView;

.field private lastSensorMillis:J

.field private lotto:Landroid/widget/RelativeLayout;

.field mAnimationEndHandler:Landroid/os/Handler;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mLastDiff:[F

.field private mLastDirections:[F

.field private mLastExtremes:[[F

.field private mLastMatch:I

.field private mLastValues:[F

.field private mLimit:F

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

.field private mScale:[F

.field private mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

.field private mYOffset:F

.field private meterView:Landroid/widget/TextView;

.field private minView:Landroid/widget/TextView;

.field private nickname:Landroid/widget/TextView;

.field private offerWall:Landroid/widget/RelativeLayout;

.field private point:Landroid/widget/TextView;

.field private pref:Landroid/content/SharedPreferences;

.field private profile:Landroid/widget/ImageView;

.field private rl_actionbar_mypage_btn:Landroid/widget/RelativeLayout;

.field private rl_cashband_main:Landroid/widget/RelativeLayout;

.field private rl_cashwalkad_dummy_view:Landroid/widget/RelativeLayout;

.field private rl_cover_base_layout:Landroid/widget/RelativeLayout;

.field private rl_lotto_bg_line:Landroid/widget/RelativeLayout;

.field private rl_mypage_request_count:Landroid/widget/RelativeLayout;

.field private rl_rank_new_bg_line:Landroid/widget/RelativeLayout;

.field private rl_realtime_winner_info:Landroid/widget/RelativeLayout;

.field private rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

.field private rl_reward_bg_line:Landroid/widget/RelativeLayout;

.field private rl_viral_bg_line:Landroid/widget/RelativeLayout;

.field private scrollView:Landroid/widget/ScrollView;

.field private setting:Landroid/widget/ImageButton;

.field private sm:Landroid/hardware/SensorManager;

.field private stat:Landroid/widget/RelativeLayout;

.field private stepDetectorSensor:Landroid/hardware/Sensor;

.field private stepbet:Landroid/widget/RelativeLayout;

.field private store:Landroid/widget/RelativeLayout;

.field private title:Landroid/widget/TextView;

.field private tv_lotto_winner_msg:Landroid/widget/TextView;

.field private tv_lotto_winner_time:Landroid/widget/TextView;

.field private tv_mypage_request_count:Landroid/widget/TextView;

.field private tv_viral_menu_msg:Landroid/widget/TextView;

.field private unit:Landroid/widget/TextView;

.field private value:Landroid/widget/TextView;

.field private view_dummy_margin_top:Landroid/view/View;

.field private view_lotto_dummy_margin_top:Landroid/view/View;

.field private view_lotto_dummy_view_1:Landroid/view/View;

.field private view_viral_dummy_view_1:Landroid/view/View;

.field private viral:Landroid/widget/RelativeLayout;

.field private weight:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 91
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 98
    iput v3, p0, Lcom/cashwalk/cashwalk/MainActivity;->weight:I

    .line 99
    iput v3, p0, Lcom/cashwalk/cashwalk/MainActivity;->height:I

    .line 134
    iput-boolean v3, p0, Lcom/cashwalk/cashwalk/MainActivity;->finishFlag:Z

    .line 136
    iput-boolean v3, p0, Lcom/cashwalk/cashwalk/MainActivity;->fromLockscreen:Z

    .line 162
    iput-boolean v3, p0, Lcom/cashwalk/cashwalk/MainActivity;->hasStepSensor:Z

    .line 163
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->mLimit:F

    .line 164
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->mLastValues:[F

    .line 165
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->mScale:[F

    .line 167
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->mLastDirections:[F

    .line 168
    new-array v0, v1, [[F

    new-array v1, v4, [F

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-array v2, v4, [F

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->mLastExtremes:[[F

    .line 169
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->mLastDiff:[F

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->mLastMatch:I

    .line 171
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->lastSensorMillis:J

    .line 177
    iput v3, p0, Lcom/cashwalk/cashwalk/MainActivity;->ANMATION_COUNT:I

    .line 1490
    new-instance v0, Lcom/cashwalk/cashwalk/MainActivity$27;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/MainActivity$27;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->mAnimationEndHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/MainActivity;->finishFlag:Z

    return p1
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_rank_new_bg_line:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_viral_bg_line:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->iv_menu_viral_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->view_dummy_margin_top:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->view_viral_dummy_view_1:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->iv_menu_reward_new:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_reward_bg_line:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->point:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/cashwalk/cashwalk/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/MainActivity;->consumePoint(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->offerWall:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/MainActivity;->sendRegistrationToServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/cashwalk/cashwalk/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/MainActivity;->setViralCash()V

    return-void
.end method

.method static synthetic access$2100(Lcom/cashwalk/cashwalk/MainActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/MainActivity;->setWinnerBanner(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_realtime_winner_info:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->tv_lotto_winner_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->iv_lotto_winner_item_image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->tv_lotto_winner_msg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/cashwalk/cashwalk/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->ANMATION_COUNT:I

    return v0
.end method

.method static synthetic access$2702(Lcom/cashwalk/cashwalk/MainActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/cashwalk/cashwalk/MainActivity;->ANMATION_COUNT:I

    return p1
.end method

.method static synthetic access$2708(Lcom/cashwalk/cashwalk/MainActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->ANMATION_COUNT:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cashwalk/cashwalk/MainActivity;->ANMATION_COUNT:I

    return v0
.end method

.method static synthetic access$2800(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->mAnimationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/cashwalk/cashwalk/MainActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_cover_base_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/cashwalk/cashwalk/MainActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->mLottoWinnerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/cashwalk/cashwalk/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/MainActivity;->getLottoWinnerList()V

    return-void
.end method

.method static synthetic access$3200(Lcom/cashwalk/cashwalk/MainActivity;)Lcom/cashwalk/cashwalk/util/StepsDBHelper;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/cashwalk/cashwalk/MainActivity;ZLcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/cashwalk/cashwalk/MainActivity;->setCashwakAdBanner(ZLcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;)V

    return-void
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_mypage_request_count:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_lotto_bg_line:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->iv_menu_lotto_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->view_lotto_dummy_view_1:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->view_lotto_dummy_margin_top:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->iv_menu_rank_new:Landroid/widget/ImageView;

    return-object v0
.end method

.method private checkTotalStep()V
    .locals 2

    .prologue
    .line 1301
    new-instance v1, Lcom/cashwalk/cashwalk/MainActivity$24;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/MainActivity$24;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getVersion(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 1376
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1377
    return-void
.end method

.method private checkUpdate()V
    .locals 6

    .prologue
    .line 657
    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "PREFERENCE_UPDATE_CHECK_DATETIME"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "updateDateTime":Ljava/lang/String;
    if-eqz v1, :cond_0

    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    new-instance v4, Lorg/joda/time/DateTime;

    invoke-direct {v4, v1}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xa4cb80

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 660
    :cond_0
    new-instance v2, Lcom/cashwalk/cashwalk/MainActivity$18;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/MainActivity$18;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getRecentVersion(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 724
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 726
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :cond_1
    return-void
.end method

.method private consumePoint(I)V
    .locals 3
    .param p1, "pointVal"    # I

    .prologue
    .line 915
    const-string v0, "point"

    const/4 v1, 0x1

    new-instance v2, Lcom/cashwalk/cashwalk/MainActivity$23;

    invoke-direct {v2, p0, p1}, Lcom/cashwalk/cashwalk/MainActivity$23;-><init>(Lcom/cashwalk/cashwalk/MainActivity;I)V

    invoke-static {p0, p1, v0, v1, v2}, Lcom/tnkfactory/ad/TnkSession;->purchaseItem(Landroid/content/Context;ILjava/lang/String;ZLcom/tnkfactory/ad/ServiceCallback;)V

    .line 1017
    return-void
.end method

.method private dayStepUploadCheck()V
    .locals 4

    .prologue
    .line 1512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1515
    .local v0, "getTodaySteps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/model/StepsTableModel;>;"
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity;->mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;->getYesterdaySteps()Ljava/util/ArrayList;

    move-result-object v0

    .line 1518
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1519
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/model/StepsTableModel;

    iget-object v2, v3, Lcom/cashwalk/cashwalk/util/model/StepsTableModel;->createAt:Ljava/lang/String;

    .line 1520
    .local v2, "yesterdayString":Ljava/lang/String;
    const-string v3, "#### \uc77c\uc77c \uac78\uc74c\uc218 \ub3d9\uae30\ud654 \uc694\uccad"

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1521
    new-instance v3, Lcom/cashwalk/cashwalk/MainActivity$28;

    invoke-direct {v3, p0, v2}, Lcom/cashwalk/cashwalk/MainActivity$28;-><init>(Lcom/cashwalk/cashwalk/MainActivity;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->syncDayStep(Ljava/util/ArrayList;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .line 1534
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1538
    .end local v1    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    .end local v2    # "yesterdayString":Ljava/lang/String;
    :goto_0
    return-void

    .line 1536
    :cond_0
    const-string v3, "#### \ub3d9\uae30\ud654\ud560 \uc804\uc77c \uac78\uc74c \uc218 \uc5c6\uc74c"

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCashwalkAdCenterBanner()V
    .locals 4

    .prologue
    .line 1553
    new-instance v2, Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient;-><init>()V

    .line 1554
    .local v2, "mCashwalkRestClient":Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient;, "Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient<Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkNetworkService;>;"
    const-class v3, Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkNetworkService;

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient;->getClient(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkNetworkService;

    .line 1556
    .local v1, "mCashwalkNetworkService":Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkNetworkService;
    invoke-interface {v1}, Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkNetworkService;->getMainBanner()Lretrofit2/Call;

    move-result-object v0

    .line 1557
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;>;"
    new-instance v3, Lcom/cashwalk/cashwalk/MainActivity$29;

    invoke-direct {v3, p0, v1}, Lcom/cashwalk/cashwalk/MainActivity$29;-><init>(Lcom/cashwalk/cashwalk/MainActivity;Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkNetworkService;)V

    invoke-interface {v0, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 1614
    return-void
.end method

.method private getLottoWinnerList()V
    .locals 2

    .prologue
    .line 1380
    new-instance v1, Lcom/cashwalk/cashwalk/MainActivity$25;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/MainActivity$25;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getLottoWinnerList(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 1398
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1399
    return-void
.end method

.method private refreshCash()V
    .locals 2

    .prologue
    .line 593
    new-instance v1, Lcom/cashwalk/cashwalk/MainActivity$17;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/MainActivity$17;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getUser(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 653
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 654
    return-void
.end method

.method private sendRegistrationToServer(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 899
    const-string v2, "sendRegistrationToServer"

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 901
    new-instance v1, Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/util/network/model/User;-><init>()V

    .line 902
    .local v1, "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    iput-object p1, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->pushID:Ljava/lang/String;

    .line 903
    new-instance v2, Lcom/cashwalk/cashwalk/MainActivity$22;

    invoke-direct {v2, p0, p1}, Lcom/cashwalk/cashwalk/MainActivity$22;-><init>(Lcom/cashwalk/cashwalk/MainActivity;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->setUser(Lcom/cashwalk/cashwalk/util/network/model/User;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 911
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 912
    return-void
.end method

.method private setCashwakAdBanner(ZLcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;)V
    .locals 3
    .param p1, "isShow"    # Z
    .param p2, "adbanner"    # Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1617
    if-eqz p1, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_cashwalkad_dummy_view:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1619
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->cashwalk_ad_view:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1620
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 1621
    invoke-virtual {p2}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;->getData()Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/MainActivity;->iv_cashwalk_ad_banner:Landroid/widget/ImageView;

    .line 1622
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 1624
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->cashwalk_ad_view:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/cashwalk/cashwalk/MainActivity$30;

    invoke-direct {v1, p0, p2}, Lcom/cashwalk/cashwalk/MainActivity$30;-><init>(Lcom/cashwalk/cashwalk/MainActivity;Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1668
    :goto_0
    return-void

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_cashwalkad_dummy_view:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1665
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->cashwalk_ad_view:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setViralCash()V
    .locals 6

    .prologue
    .line 1295
    iget-object v1, p0, Lcom/cashwalk/cashwalk/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "CASHWALK_REWARD_CASH"

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1296
    .local v0, "defaultViralCahs":I
    iget-object v1, p0, Lcom/cashwalk/cashwalk/MainActivity;->tv_viral_menu_msg:Landroid/widget/TextView;

    const v2, 0x7f090211

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    mul-int/lit16 v5, v0, 0xc8

    invoke-static {v5}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    return-void
.end method

.method private setWinnerBanner(Ljava/util/ArrayList;)V
    .locals 10
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
    const v9, 0x7f020221

    const/4 v8, 0x0

    .line 1403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1404
    .local v2, "tl":Ljava/lang/Long;
    sput-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->MAIN_WINNER_LIST_LAST_TIME:Ljava/lang/Long;

    .line 1406
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity;->mAnimationHandler:Landroid/os/Handler;

    .line 1407
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1408
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1409
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity;->mLottoWinnerList:Ljava/util/ArrayList;

    .line 1412
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->tv_lotto_winner_time:Landroid/widget/TextView;

    new-instance v6, Lorg/joda/time/DateTime;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Winner;->created:Ljava/lang/String;

    invoke-direct {v6, v4}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v6}, Lcom/cashwalk/cashwalk/util/Utils;->getAgoString(Landroid/content/Context;Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v1, v4, Lcom/cashwalk/cashwalk/util/network/model/Winner;->imageUrl:Ljava/lang/String;

    .line 1414
    .local v1, "path":Ljava/lang/String;
    const-string v4, "http"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1415
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    .line 1416
    invoke-virtual {v4, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    .line 1417
    invoke-virtual {v4, v9}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->iv_lotto_winner_item_image:Landroid/widget/ImageView;

    .line 1418
    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 1427
    :goto_0
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->tv_lotto_winner_msg:Landroid/widget/TextView;

    const v4, 0x7f0901f0

    invoke-virtual {p0, v4}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%s"

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Winner;->nickname:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1428
    iget v4, p0, Lcom/cashwalk/cashwalk/MainActivity;->ANMATION_COUNT:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/cashwalk/cashwalk/MainActivity;->ANMATION_COUNT:I

    .line 1429
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1430
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    .line 1432
    .local v3, "winner":Lcom/cashwalk/cashwalk/util/network/model/Winner;
    new-instance v4, Lcom/cashwalk/cashwalk/MainActivity$26;

    invoke-direct {v4, p0, v3, p1}, Lcom/cashwalk/cashwalk/MainActivity$26;-><init>(Lcom/cashwalk/cashwalk/MainActivity;Lcom/cashwalk/cashwalk/util/network/model/Winner;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 1481
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity;->mAnimationHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    mul-int/lit16 v6, v0, 0x1388

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1429
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1420
    .end local v0    # "i":I
    .end local v3    # "winner":Lcom/cashwalk/cashwalk/util/network/model/Winner;
    :cond_0
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    .line 1422
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v5

    .line 1423
    invoke-virtual {v5, v1}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1421
    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    .line 1424
    invoke-virtual {v4, v9}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->iv_lotto_winner_item_image:Landroid/widget/ImageView;

    .line 1425
    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 1485
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1487
    :cond_2
    return-void
.end method

.method private showCal()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1183
    iget v3, p0, Lcom/cashwalk/cashwalk/MainActivity;->weight:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/cashwalk/cashwalk/MainActivity;->height:I

    if-eqz v3, :cond_0

    sget v3, Lcom/cashwalk/cashwalk/MainActivity;->steps:I

    if-eqz v3, :cond_0

    .line 1184
    sget v3, Lcom/cashwalk/cashwalk/MainActivity;->steps:I

    div-int/lit8 v0, v3, 0x1e

    .line 1185
    .local v0, "kcal":I
    iget v3, p0, Lcom/cashwalk/cashwalk/MainActivity;->height:I

    add-int/lit8 v3, v3, -0x64

    sget v4, Lcom/cashwalk/cashwalk/MainActivity;->steps:I

    mul-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x64

    .line 1186
    .local v1, "meter":I
    int-to-double v4, v1

    const-wide v6, 0x40af400000000000L    # 4000.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 1187
    .local v2, "min":I
    if-eqz v1, :cond_0

    .line 1188
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity;->kcalView:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1189
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity;->meterView:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1190
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity;->minView:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1192
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity;->kcalView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f090199

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1193
    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_1

    .line 1194
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity;->meterView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1199
    :goto_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity;->minView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f090213

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1202
    .end local v0    # "kcal":I
    .end local v1    # "meter":I
    .end local v2    # "min":I
    :cond_0
    return-void

    .line 1196
    .restart local v0    # "kcal":I
    .restart local v1    # "meter":I
    .restart local v2    # "min":I
    :cond_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/MainActivity;->meterView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%.1f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    int-to-double v8, v1

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nkm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private stepValueSteps()V
    .locals 6

    .prologue
    .line 1284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### \ud604\uc7ac \uac78\uc74c\uc218 => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/cashwalk/cashwalk/MainActivity;->steps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1286
    sget v1, Lcom/cashwalk/cashwalk/MainActivity;->steps:I

    if-ltz v1, :cond_0

    .line 1287
    sget v1, Lcom/cashwalk/cashwalk/MainActivity;->steps:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 1288
    .local v0, "length":I
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 1289
    iget-object v1, p0, Lcom/cashwalk/cashwalk/MainActivity;->value:Landroid/widget/TextView;

    sget v2, Lcom/cashwalk/cashwalk/MainActivity;->steps:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1292
    .end local v0    # "length":I
    :cond_0
    return-void
.end method

.method private uploadSteps(I)V
    .locals 3
    .param p1, "stepsTotal"    # I

    .prologue
    .line 884
    if-ltz p1, :cond_0

    const v1, 0x61a80

    if-le p1, v1, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    const/4 v1, 0x1

    new-instance v2, Lcom/cashwalk/cashwalk/MainActivity$21;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/MainActivity$21;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    invoke-static {p1, v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->updateSteps(IZLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 895
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1281
    return-void
.end method

.method public onBackPressed()V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 732
    new-array v4, v2, [Ljava/lang/Integer;

    .line 734
    .local v4, "priorityList":[Ljava/lang/Integer;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 735
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 741
    const v0, 0x7f0900aa

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f09014f

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/cashwalk/cashwalk/MainActivity$19;

    invoke-direct {v6, p0}, Lcom/cashwalk/cashwalk/MainActivity$19;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->startDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;ZLcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;)V

    .line 780
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v13, 0x13

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 181
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    const v6, 0x7f040040

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->setContentView(I)V

    .line 183
    const-string v6, "keyguard"

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 184
    .local v4, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 185
    const v6, 0x7f0901b0

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 188
    :cond_0
    sget-object v6, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    if-nez v6, :cond_1

    .line 189
    new-instance v6, Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    sput-object v6, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    .line 191
    :cond_1
    sget-object v6, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    .line 193
    invoke-static {}, Lcom/cashwalk/cashwalk/util/AWSHelper;->AWS_initS3Client()V

    .line 194
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/MainActivity;->dayStepUploadCheck()V

    .line 196
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->pref:Landroid/content/SharedPreferences;

    .line 197
    new-instance v6, Lcom/cashwalk/cashwalk/MainActivity$1;

    invoke-direct {v6, p0}, Lcom/cashwalk/cashwalk/MainActivity$1;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->mHandler:Landroid/os/Handler;

    .line 204
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/cashwalk/cashwalk/MainActivity$2;

    invoke-direct {v7, p0}, Lcom/cashwalk/cashwalk/MainActivity$2;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v6

    const-string v7, "main_enter"

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v7, v8}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    const-string v6, "sensor"

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/SensorManager;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->sm:Landroid/hardware/SensorManager;

    .line 224
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 225
    .local v5, "pm":Landroid/content/pm/PackageManager;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v13, :cond_2

    .line 226
    const-string v6, "android.hardware.sensor.stepdetector"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->hasStepSensor:Z

    .line 228
    :cond_2
    iget-boolean v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->hasStepSensor:Z

    if-eqz v6, :cond_6

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v13, :cond_6

    .line 229
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->sm:Landroid/hardware/SensorManager;

    const/16 v7, 0x12

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->stepDetectorSensor:Landroid/hardware/Sensor;

    .line 230
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->sm:Landroid/hardware/SensorManager;

    iget-object v7, p0, Lcom/cashwalk/cashwalk/MainActivity;->stepDetectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v6, p0, v7, v9}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 242
    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v7, "WEIGHT"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->weight:I

    .line 243
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v7, "HEIGHT"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->height:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 248
    :goto_2
    const v6, 0x7f10022c

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->cashwalk_ad_view:Landroid/widget/RelativeLayout;

    .line 249
    const v6, 0x7f10022d

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->iv_cashwalk_ad_banner:Landroid/widget/ImageView;

    .line 251
    const v6, 0x7f100099

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->scrollView:Landroid/widget/ScrollView;

    .line 252
    const v6, 0x7f100210

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->value:Landroid/widget/TextView;

    .line 253
    const v6, 0x7f100211

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->unit:Landroid/widget/TextView;

    .line 254
    const v6, 0x7f100093

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->title:Landroid/widget/TextView;

    .line 255
    const v6, 0x7f100212

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->kcalView:Landroid/widget/TextView;

    .line 256
    const v6, 0x7f100214

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->meterView:Landroid/widget/TextView;

    .line 257
    const v6, 0x7f100213

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->minView:Landroid/widget/TextView;

    .line 258
    const v6, 0x7f10020f

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lat/grabner/circleprogress/CircleProgressView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->circle:Lat/grabner/circleprogress/CircleProgressView;

    .line 259
    const v6, 0x7f10020e

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->cirleLayout:Landroid/widget/FrameLayout;

    .line 261
    const v6, 0x7f100204

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    .line 262
    const v6, 0x7f1001f0

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->profile:Landroid/widget/ImageView;

    .line 263
    const v6, 0x7f1001f1

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->nickname:Landroid/widget/TextView;

    .line 264
    const v6, 0x7f1001f4

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->point:Landroid/widget/TextView;

    .line 265
    const v6, 0x7f100137

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->setting:Landroid/widget/ImageButton;

    .line 267
    const v6, 0x7f10020c

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->viral:Landroid/widget/RelativeLayout;

    .line 268
    const v6, 0x7f100206

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->coupon:Landroid/widget/TextView;

    .line 269
    const v6, 0x7f100215

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->stepbet:Landroid/widget/RelativeLayout;

    .line 270
    const v6, 0x7f100219

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->stat:Landroid/widget/RelativeLayout;

    .line 271
    const v6, 0x7f10020b

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->lotto:Landroid/widget/RelativeLayout;

    .line 272
    const v6, 0x7f10020a

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->store:Landroid/widget/RelativeLayout;

    .line 273
    const v6, 0x7f100209

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->offerWall:Landroid/widget/RelativeLayout;

    .line 274
    const v6, 0x7f100138

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->ib_share:Landroid/widget/ImageButton;

    .line 275
    const v6, 0x7f100133

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_actionbar_mypage_btn:Landroid/widget/RelativeLayout;

    .line 276
    const v6, 0x7f100216

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_rank_new_bg_line:Landroid/widget/RelativeLayout;

    .line 277
    const v6, 0x7f100228

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->tv_viral_menu_msg:Landroid/widget/TextView;

    .line 278
    const v6, 0x7f100227

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->view_dummy_margin_top:Landroid/view/View;

    .line 279
    const v6, 0x7f100224

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->view_viral_dummy_view_1:Landroid/view/View;

    .line 280
    const v6, 0x7f10021b

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->view_lotto_dummy_view_1:Landroid/view/View;

    .line 281
    const v6, 0x7f10021e

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->view_lotto_dummy_margin_top:Landroid/view/View;

    .line 282
    const v6, 0x7f10022b

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_cashwalkad_dummy_view:Landroid/widget/RelativeLayout;

    .line 284
    const v6, 0x7f10022a

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_cashband_main:Landroid/widget/RelativeLayout;

    .line 287
    const v6, 0x7f1001f5

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    .line 288
    const v6, 0x7f1001f6

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_realtime_winner_info:Landroid/widget/RelativeLayout;

    .line 289
    const v6, 0x7f1001f9

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->tv_lotto_winner_msg:Landroid/widget/TextView;

    .line 290
    const v6, 0x7f1001f8

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->tv_lotto_winner_time:Landroid/widget/TextView;

    .line 291
    const v6, 0x7f1001f7

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->iv_lotto_winner_item_image:Landroid/widget/ImageView;

    .line 293
    const v6, 0x7f100135

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_mypage_request_count:Landroid/widget/RelativeLayout;

    .line 294
    const v6, 0x7f100136

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->tv_mypage_request_count:Landroid/widget/TextView;

    .line 295
    const v6, 0x7f100218

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->iv_menu_rank_new:Landroid/widget/ImageView;

    .line 297
    const v6, 0x7f100222

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->iv_menu_reward_new:Landroid/widget/ImageView;

    .line 298
    const v6, 0x7f100220

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_reward_bg_line:Landroid/widget/RelativeLayout;

    .line 300
    const v6, 0x7f100223

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_viral_bg_line:Landroid/widget/RelativeLayout;

    .line 301
    const v6, 0x7f100225

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->iv_menu_viral_icon:Landroid/widget/ImageView;

    .line 302
    const v6, 0x7f10021c

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->iv_menu_lotto_icon:Landroid/widget/ImageView;

    .line 304
    const v6, 0x7f10021a

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_lotto_bg_line:Landroid/widget/RelativeLayout;

    .line 307
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v7, "FRIEND_RANK_NEW_FLAG"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_7

    .line 308
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->iv_menu_rank_new:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_rank_new_bg_line:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 315
    :goto_3
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v7, "CASHWALK_MAIN_LOTTO_STYLE"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_8

    .line 316
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_lotto_bg_line:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 317
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->iv_menu_lotto_icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->view_lotto_dummy_view_1:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->view_lotto_dummy_margin_top:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 328
    :goto_4
    const v6, 0x7f10020d

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_cover_base_layout:Landroid/widget/RelativeLayout;

    .line 330
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/cashwalk/cashwalk/MainActivity$3;

    invoke-direct {v7, p0}, Lcom/cashwalk/cashwalk/MainActivity$3;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->cirleLayout:Landroid/widget/FrameLayout;

    new-instance v7, Lcom/cashwalk/cashwalk/MainActivity$4;

    invoke-direct {v7, p0}, Lcom/cashwalk/cashwalk/MainActivity$4;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->stat:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/cashwalk/cashwalk/MainActivity$5;

    invoke-direct {v7, p0}, Lcom/cashwalk/cashwalk/MainActivity$5;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->store:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/cashwalk/cashwalk/MainActivity$6;

    invoke-direct {v7, p0}, Lcom/cashwalk/cashwalk/MainActivity$6;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->setting:Landroid/widget/ImageButton;

    new-instance v7, Lcom/cashwalk/cashwalk/MainActivity$7;

    invoke-direct {v7, p0}, Lcom/cashwalk/cashwalk/MainActivity$7;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->ib_share:Landroid/widget/ImageButton;

    new-instance v7, Lcom/cashwalk/cashwalk/MainActivity$8;

    invoke-direct {v7, p0}, Lcom/cashwalk/cashwalk/MainActivity$8;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_actionbar_mypage_btn:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/cashwalk/cashwalk/MainActivity$9;

    invoke-direct {v7, p0}, Lcom/cashwalk/cashwalk/MainActivity$9;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->lotto:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/cashwalk/cashwalk/MainActivity$10;

    invoke-direct {v7, p0}, Lcom/cashwalk/cashwalk/MainActivity$10;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->stepbet:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/cashwalk/cashwalk/MainActivity$11;

    invoke-direct {v7, p0}, Lcom/cashwalk/cashwalk/MainActivity$11;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->profile:Landroid/widget/ImageView;

    new-instance v7, Lcom/cashwalk/cashwalk/MainActivity$12;

    invoke-direct {v7, p0}, Lcom/cashwalk/cashwalk/MainActivity$12;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->coupon:Landroid/widget/TextView;

    new-instance v7, Lcom/cashwalk/cashwalk/MainActivity$13;

    invoke-direct {v7, p0}, Lcom/cashwalk/cashwalk/MainActivity$13;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->viral:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/cashwalk/cashwalk/MainActivity$14;

    invoke-direct {v7, p0}, Lcom/cashwalk/cashwalk/MainActivity$14;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->offerWall:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/cashwalk/cashwalk/MainActivity$15;

    invoke-direct {v7, p0}, Lcom/cashwalk/cashwalk/MainActivity$15;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 559
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 560
    .local v3, "it":Landroid/content/Intent;
    if-eqz v3, :cond_3

    const-string v6, "from_lockscreen"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 561
    iput-boolean v11, p0, Lcom/cashwalk/cashwalk/MainActivity;->fromLockscreen:Z

    .line 564
    :cond_3
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/MainActivity;->checkUpdate()V

    .line 565
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v7, "steps"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->uploadSteps(I)V

    .line 567
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v7, "FIRST_LAUNCH"

    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 568
    .local v2, "isFirstLaunch":Z
    if-eqz v2, :cond_4

    .line 569
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "FIRST_LAUNCH"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 570
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v6, v13, :cond_9

    .line 571
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 577
    :cond_4
    :goto_5
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/MainActivity;->checkTotalStep()V

    .line 579
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_cashband_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 580
    invoke-static {}, Lcom/cashwalk/cashwalk/util/Utils;->isDebug()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 581
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_cashband_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 582
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_cashband_main:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/cashwalk/cashwalk/MainActivity$16;

    invoke-direct {v7, p0}, Lcom/cashwalk/cashwalk/MainActivity$16;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/MainActivity;->getCashwalkAdCenterBanner()V

    .line 590
    :cond_5
    return-void

    .line 218
    .end local v2    # "isFirstLaunch":Z
    .end local v3    # "it":Landroid/content/Intent;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_6
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->sm:Landroid/hardware/SensorManager;

    invoke-virtual {v6, v11}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->stepDetectorSensor:Landroid/hardware/Sensor;

    .line 233
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->sm:Landroid/hardware/SensorManager;

    iget-object v7, p0, Lcom/cashwalk/cashwalk/MainActivity;->stepDetectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v6, p0, v7, v9}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 235
    const/16 v1, 0x1e0

    .line 236
    .local v1, "h":I
    int-to-float v6, v1

    mul-float/2addr v6, v12

    iput v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->mYOffset:F

    .line 237
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->mScale:[F

    int-to-float v7, v1

    mul-float/2addr v7, v12

    const v8, 0x3d50d67f

    mul-float/2addr v7, v8

    neg-float v7, v7

    aput v7, v6, v9

    .line 238
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->mScale:[F

    int-to-float v7, v1

    mul-float/2addr v7, v12

    const v8, 0x3c888889

    mul-float/2addr v7, v8

    neg-float v7, v7

    aput v7, v6, v11

    goto/16 :goto_1

    .line 244
    .end local v1    # "h":I
    :catch_1
    move-exception v0

    .line 245
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->iv_menu_rank_new:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_rank_new_bg_line:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 321
    :cond_8
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_lotto_bg_line:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 322
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->iv_menu_lotto_icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->view_lotto_dummy_view_1:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->view_lotto_dummy_margin_top:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 573
    .restart local v2    # "isFirstLaunch":Z
    .restart local v3    # "it":Landroid/content/Intent;
    :cond_9
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1542
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 1543
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->MAIN_WINNER_LIST_LAST_TIME:Ljava/lang/Long;

    .line 1545
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1546
    iput v2, p0, Lcom/cashwalk/cashwalk/MainActivity;->ANMATION_COUNT:I

    .line 1547
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1548
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1550
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 784
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 785
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->sm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/MainActivity;->stepDetectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 788
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 789
    iput v2, p0, Lcom/cashwalk/cashwalk/MainActivity;->ANMATION_COUNT:I

    .line 790
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 791
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 794
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    const v11, 0x7f020221

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 798
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 800
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_0

    .line 801
    iput v9, p0, Lcom/cashwalk/cashwalk/MainActivity;->ANMATION_COUNT:I

    .line 802
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 803
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 806
    :cond_0
    sput-object v10, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    .line 807
    sget-boolean v5, Lcom/cashwalk/cashwalk/CashWalkApp;->shouldRefreshCash:Z

    if-eqz v5, :cond_1

    .line 808
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/MainActivity;->refreshCash()V

    .line 811
    :cond_1
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/MainActivity;->updateBackground()V

    .line 812
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->scrollView:Landroid/widget/ScrollView;

    const/16 v6, 0x21

    invoke-virtual {v5, v6}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 814
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->nickname:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v7, "NICKNAME"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->point:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v7, "POINT"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v6, "PROFILE_URL"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 818
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 819
    const-string v5, "http"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 820
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v7, "PROFILE_URL"

    .line 821
    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 822
    invoke-virtual {v5, v11}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    new-instance v6, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v6}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    .line 823
    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->profile:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 833
    :cond_2
    :goto_0
    new-instance v5, Lcom/cashwalk/cashwalk/MainActivity$20;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/MainActivity$20;-><init>(Lcom/cashwalk/cashwalk/MainActivity;)V

    invoke-static {p0, v9, v5}, Lcom/tnkfactory/ad/TnkSession;->queryPoint(Landroid/content/Context;ZLcom/tnkfactory/ad/ServiceCallback;)V

    .line 845
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v6, "LOCKSCREEN_UNLOCK_DATE"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 846
    .local v4, "unlockDate":Ljava/lang/String;
    new-instance v5, Lorg/joda/time/DateTime;

    invoke-direct {v5}, Lorg/joda/time/DateTime;-><init>()V

    const-string/jumbo v6, "yyyyMMdd"

    invoke-virtual {v5, v6}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 848
    .local v3, "today":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 849
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 850
    sget v5, Lcom/cashwalk/cashwalk/MainActivity;->steps:I

    invoke-direct {p0, v5}, Lcom/cashwalk/cashwalk/MainActivity;->uploadSteps(I)V

    .line 852
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 853
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "steps"

    invoke-interface {v0, v5, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 854
    const-string v5, "LOCKSCREEN_UNLOCK_DATE"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 855
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 861
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->sm:Landroid/hardware/SensorManager;

    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->stepDetectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v5, p0, v6, v9}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 862
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "steps"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/cashwalk/cashwalk/MainActivity;->steps:I

    .line 864
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/MainActivity;->stepValueSteps()V

    .line 866
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->circle:Lat/grabner/circleprogress/CircleProgressView;

    const v6, 0x461c4000    # 10000.0f

    invoke-virtual {v5, v6}, Lat/grabner/circleprogress/CircleProgressView;->setMaxValue(F)V

    .line 867
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->circle:Lat/grabner/circleprogress/CircleProgressView;

    sget v6, Lcom/cashwalk/cashwalk/MainActivity;->steps:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lat/grabner/circleprogress/CircleProgressView;->setValueAnimated(F)V

    .line 868
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/MainActivity;->showCal()V

    .line 871
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 872
    .local v2, "tl":Ljava/lang/Long;
    sget-object v5, Lcom/cashwalk/cashwalk/CashWalkApp;->MAIN_WINNER_LIST_LAST_TIME:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x258

    add-long/2addr v6, v8

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_6

    .line 873
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/MainActivity;->getLottoWinnerList()V

    .line 881
    :goto_2
    return-void

    .line 825
    .end local v2    # "tl":Ljava/lang/Long;
    .end local v3    # "today":Ljava/lang/String;
    .end local v4    # "unlockDate":Ljava/lang/String;
    :cond_4
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    .line 826
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v6

    iget-object v7, p0, Lcom/cashwalk/cashwalk/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v8, "PROFILE_URL"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 827
    invoke-virtual {v5, v11}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    new-instance v6, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v6}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    .line 828
    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->profile:Landroid/widget/ImageView;

    .line 829
    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 858
    .restart local v3    # "today":Ljava/lang/String;
    .restart local v4    # "unlockDate":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "LOCKSCREEN_UNLOCK_DATE"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 875
    .restart local v2    # "tl":Ljava/lang/Long;
    :cond_6
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->mLottoWinnerList:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    .line 876
    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->mLottoWinnerList:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/cashwalk/cashwalk/MainActivity;->setWinnerBanner(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 878
    :cond_7
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/MainActivity;->getLottoWinnerList()V

    goto :goto_2
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 24
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 1206
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 1207
    .local v13, "sensor":Landroid/hardware/Sensor;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    .line 1209
    .local v18, "values":[F
    invoke-virtual {v13}, Landroid/hardware/Sensor;->getType()I

    move-result v14

    .line 1211
    .local v14, "type":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cashwalk/cashwalk/MainActivity;->hasStepSensor:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 1212
    const/16 v19, 0x12

    move/from16 v0, v19

    if-ne v14, v0, :cond_1

    .line 1213
    const/16 v17, -0x1

    .line 1214
    .local v17, "val":I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_0

    .line 1215
    const/16 v19, 0x0

    aget v19, v18, v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0xa

    .line 1217
    :cond_0
    sget v19, Lcom/cashwalk/cashwalk/MainActivity;->steps:I

    add-int v19, v19, v17

    sput v19, Lcom/cashwalk/cashwalk/MainActivity;->steps:I

    .line 1218
    invoke-direct/range {p0 .. p0}, Lcom/cashwalk/cashwalk/MainActivity;->stepValueSteps()V

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/MainActivity;->circle:Lat/grabner/circleprogress/CircleProgressView;

    move-object/from16 v19, v0

    sget v20, Lcom/cashwalk/cashwalk/MainActivity;->steps:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lat/grabner/circleprogress/CircleProgressView;->setValue(F)V

    .line 1222
    invoke-direct/range {p0 .. p0}, Lcom/cashwalk/cashwalk/MainActivity;->showCal()V

    .line 1272
    .end local v17    # "val":I
    :cond_1
    :goto_0
    :try_start_0
    sget v19, Lcom/cashwalk/cashwalk/MainActivity;->steps:I

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    sput-object v19, Lcom/cashwalk/cashwalk/CashWalkApp;->TEMP_STEP_COUNT:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1276
    :goto_1
    return-void

    .line 1224
    :cond_2
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v14, v0, :cond_1

    .line 1225
    const/16 v16, 0x0

    .line 1226
    .local v16, "vSum":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v8, v0, :cond_3

    .line 1227
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/MainActivity;->mYOffset:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v20, v0

    aget v20, v20, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/MainActivity;->mScale:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    mul-float v20, v20, v21

    add-float v15, v19, v20

    .line 1228
    .local v15, "v":F
    add-float v16, v16, v15

    .line 1226
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1230
    .end local v15    # "v":F
    :cond_3
    const/4 v12, 0x0

    .line 1231
    .local v12, "k":I
    const/high16 v19, 0x40400000    # 3.0f

    div-float v15, v16, v19

    .line 1233
    .restart local v15    # "v":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/MainActivity;->mLastValues:[F

    move-object/from16 v19, v0

    aget v19, v19, v12

    cmpl-float v19, v15, v19

    if-lez v19, :cond_7

    const/16 v19, 0x1

    :goto_3
    move/from16 v0, v19

    int-to-float v5, v0

    .line 1234
    .local v5, "direction":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/MainActivity;->mLastDirections:[F

    move-object/from16 v19, v0

    aget v19, v19, v12

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, v5, v19

    if-nez v19, :cond_6

    .line 1236
    const/16 v19, 0x0

    cmpl-float v19, v5, v19

    if-lez v19, :cond_9

    const/4 v7, 0x0

    .line 1237
    .local v7, "extType":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/MainActivity;->mLastExtremes:[[F

    move-object/from16 v19, v0

    aget-object v19, v19, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/MainActivity;->mLastValues:[F

    move-object/from16 v20, v0

    aget v20, v20, v12

    aput v20, v19, v12

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/MainActivity;->mLastExtremes:[[F

    move-object/from16 v19, v0

    aget-object v19, v19, v7

    aget v19, v19, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/MainActivity;->mLastExtremes:[[F

    move-object/from16 v20, v0

    rsub-int/lit8 v21, v7, 0x1

    aget-object v20, v20, v21

    aget v20, v20, v12

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1240
    .local v4, "diff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/MainActivity;->mLimit:F

    move/from16 v19, v0

    cmpl-float v19, v4, v19

    if-lez v19, :cond_5

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/MainActivity;->mLastDiff:[F

    move-object/from16 v19, v0

    aget v19, v19, v12

    const/high16 v20, 0x40000000    # 2.0f

    mul-float v19, v19, v20

    const/high16 v20, 0x40400000    # 3.0f

    div-float v19, v19, v20

    cmpl-float v19, v4, v19

    if-lez v19, :cond_a

    const/4 v9, 0x1

    .line 1243
    .local v9, "isAlmostAsLargeAsPrevious":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/MainActivity;->mLastDiff:[F

    move-object/from16 v19, v0

    aget v19, v19, v12

    const/high16 v20, 0x40400000    # 3.0f

    div-float v20, v4, v20

    cmpl-float v19, v19, v20

    if-lez v19, :cond_b

    const/4 v11, 0x1

    .line 1244
    .local v11, "isPreviousLargeEnough":Z
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/MainActivity;->mLastMatch:I

    move/from16 v19, v0

    rsub-int/lit8 v20, v7, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    const/4 v10, 0x1

    .line 1246
    .local v10, "isNotContra":Z
    :goto_7
    if-eqz v9, :cond_d

    if-eqz v11, :cond_d

    if-eqz v10, :cond_d

    .line 1247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1248
    .local v2, "currentMillis":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cashwalk/cashwalk/MainActivity;->lastSensorMillis:J

    move-wide/from16 v20, v0

    sub-long v20, v2, v20

    const-wide/16 v22, 0x12c

    cmp-long v19, v20, v22

    if-lez v19, :cond_4

    .line 1249
    sget v19, Lcom/cashwalk/cashwalk/MainActivity;->steps:I

    add-int/lit8 v19, v19, 0x1

    sput v19, Lcom/cashwalk/cashwalk/MainActivity;->steps:I

    .line 1251
    invoke-direct/range {p0 .. p0}, Lcom/cashwalk/cashwalk/MainActivity;->stepValueSteps()V

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/MainActivity;->circle:Lat/grabner/circleprogress/CircleProgressView;

    move-object/from16 v19, v0

    sget v20, Lcom/cashwalk/cashwalk/MainActivity;->steps:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lat/grabner/circleprogress/CircleProgressView;->setValue(F)V

    .line 1255
    invoke-direct/range {p0 .. p0}, Lcom/cashwalk/cashwalk/MainActivity;->showCal()V

    .line 1257
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/cashwalk/cashwalk/MainActivity;->lastSensorMillis:J

    .line 1260
    :cond_4
    move-object/from16 v0, p0

    iput v7, v0, Lcom/cashwalk/cashwalk/MainActivity;->mLastMatch:I

    .line 1265
    .end local v2    # "currentMillis":J
    .end local v9    # "isAlmostAsLargeAsPrevious":Z
    .end local v10    # "isNotContra":Z
    .end local v11    # "isPreviousLargeEnough":Z
    :cond_5
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/MainActivity;->mLastDiff:[F

    move-object/from16 v19, v0

    aput v4, v19, v12

    .line 1267
    .end local v4    # "diff":F
    .end local v7    # "extType":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/MainActivity;->mLastDirections:[F

    move-object/from16 v19, v0

    aput v5, v19, v12

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/MainActivity;->mLastValues:[F

    move-object/from16 v19, v0

    aput v15, v19, v12

    goto/16 :goto_0

    .line 1233
    .end local v5    # "direction":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/MainActivity;->mLastValues:[F

    move-object/from16 v19, v0

    aget v19, v19, v12

    cmpg-float v19, v15, v19

    if-gez v19, :cond_8

    const/16 v19, -0x1

    goto/16 :goto_3

    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1236
    .restart local v5    # "direction":F
    :cond_9
    const/4 v7, 0x1

    goto/16 :goto_4

    .line 1242
    .restart local v4    # "diff":F
    .restart local v7    # "extType":I
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 1243
    .restart local v9    # "isAlmostAsLargeAsPrevious":Z
    :cond_b
    const/4 v11, 0x0

    goto :goto_6

    .line 1244
    .restart local v11    # "isPreviousLargeEnough":Z
    :cond_c
    const/4 v10, 0x0

    goto :goto_7

    .line 1262
    .restart local v10    # "isNotContra":Z
    :cond_d
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cashwalk/cashwalk/MainActivity;->mLastMatch:I

    goto :goto_8

    .line 1273
    .end local v4    # "diff":F
    .end local v5    # "direction":F
    .end local v7    # "extType":I
    .end local v8    # "i":I
    .end local v9    # "isAlmostAsLargeAsPrevious":Z
    .end local v10    # "isNotContra":Z
    .end local v11    # "isPreviousLargeEnough":Z
    .end local v12    # "k":I
    .end local v15    # "v":F
    .end local v16    # "vSum":F
    :catch_0
    move-exception v6

    .line 1274
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public updateBackground()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1020
    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "LOCKSCREEN_BACKGROUND_ID"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1022
    .local v0, "bgId":I
    if-nez v0, :cond_2

    .line 1023
    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "LOCKSCREEN_BACKGROUND_PATH"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1024
    .local v1, "bgPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1025
    const-string v2, "re_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1026
    const-string v2, "re_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1027
    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/MainActivity;->updateBackground(I)V

    .line 1037
    .end local v1    # "bgPath":Ljava/lang/String;
    :cond_0
    :goto_0
    sget v2, Lcom/cashwalk/cashwalk/CashWalkApp;->REQUEST_COUNT:I

    if-lez v2, :cond_4

    .line 1040
    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_mypage_request_count:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1041
    sget v2, Lcom/cashwalk/cashwalk/CashWalkApp;->REQUEST_COUNT:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_3

    .line 1042
    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity;->tv_mypage_request_count:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/cashwalk/cashwalk/CashWalkApp;->REQUEST_COUNT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    :goto_1
    return-void

    .line 1029
    .restart local v1    # "bgPath":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/MainActivity;->updateBackground(Ljava/lang/String;)V

    goto :goto_0

    .line 1033
    .end local v1    # "bgPath":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/MainActivity;->updateBackground(I)V

    goto :goto_0

    .line 1044
    :cond_3
    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity;->tv_mypage_request_count:Landroid/widget/TextView;

    const-string v3, "99+"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1050
    :cond_4
    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity;->rl_mypage_request_count:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateBackground(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const v5, 0x7f0202de

    .line 1086
    if-eqz p1, :cond_0

    .line 1087
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1088
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1089
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1091
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 1092
    .local v3, "width":I
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 1094
    .local v1, "height":I
    packed-switch p1, :pswitch_data_0

    .line 1175
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 1180
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "height":I
    .end local v2    # "size":Landroid/graphics/Point;
    .end local v3    # "width":I
    :cond_0
    :goto_0
    return-void

    .line 1096
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "height":I
    .restart local v2    # "size":Landroid/graphics/Point;
    .restart local v3    # "width":I
    :pswitch_0
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 1099
    :pswitch_1
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202df

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 1102
    :pswitch_2
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e0

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 1105
    :pswitch_3
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e1

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 1108
    :pswitch_4
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e2

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 1111
    :pswitch_5
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e3

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1114
    :pswitch_6
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e4

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1117
    :pswitch_7
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e5

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1120
    :pswitch_8
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e6

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1123
    :pswitch_9
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e7

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1126
    :pswitch_a
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e8

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1129
    :pswitch_b
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202e9

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1132
    :pswitch_c
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202ea

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1135
    :pswitch_d
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202eb

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1138
    :pswitch_e
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202ec

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1141
    :pswitch_f
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202ed

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1144
    :pswitch_10
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202ee

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1147
    :pswitch_11
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202ef

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1150
    :pswitch_12
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f0

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1153
    :pswitch_13
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f1

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1156
    :pswitch_14
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f2

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1159
    :pswitch_15
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f3

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1162
    :pswitch_16
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f4

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1165
    :pswitch_17
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f5

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1168
    :pswitch_18
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f6

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1171
    :pswitch_19
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f0202f7

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 1094
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public updateBackground(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1055
    if-eqz p1, :cond_0

    .line 1056
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1057
    .local v0, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 1058
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1060
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 1061
    .local v4, "width":I
    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 1062
    .local v2, "height":I
    const-string v5, "bg_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1063
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    const v6, 0x7f0202de

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 1083
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "height":I
    .end local v3    # "size":Landroid/graphics/Point;
    .end local v4    # "width":I
    :cond_0
    :goto_0
    return-void

    .line 1065
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v2    # "height":I
    .restart local v3    # "size":Landroid/graphics/Point;
    .restart local v4    # "width":I
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1066
    .local v1, "file":Ljava/io/File;
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/MainActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method
