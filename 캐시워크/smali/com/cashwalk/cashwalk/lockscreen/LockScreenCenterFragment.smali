.class public Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;
.super Lcom/cashwalk/cashwalk/lockscreen/LockScreenBaseFragment;
.source "LockScreenCenterFragment.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static AD_RATE:I = 0x0

.field private static final AD_SHOW_DAYS:I = 0x3

.field private static final DAY_MAX_COIN:I = 0x2610

.field private static LOTTO_EVENT_RATE:I = 0x0

.field private static final MAX_HARVEST_STEPS:I = 0x2710

.field private static final STEPS_FOR_COIN:I

.field public static bSound:Z

.field public static bVibration:Z

.field public static isCoinBoxShow:Z

.field public static isEventLottoFreeBox:Z


# instance fields
.field private adLayout:Landroid/widget/LinearLayout;

.field private adRequest:Lcom/google/android/gms/ads/AdRequest;

.field private adView:Lcom/google/android/gms/ads/AdView;

.field private assetManager:Landroid/content/res/AssetManager;

.field private audioManager:Landroid/media/AudioManager;

.field private circle:Lat/grabner/circleprogress/CircleProgressView;

.field private cirleLayout:Landroid/widget/FrameLayout;

.field private close:Landroid/widget/ImageButton;

.field private closeInside:Landroid/widget/ImageButton;

.field private cm:Landroid/net/ConnectivityManager;

.field private coin:Landroid/widget/ImageView;

.field private coinBadgeCount:I

.field private coinBox:Landroid/widget/ImageView;

.field private createdAt:Lorg/joda/time/DateTime;

.field private handlerAnimation:Landroid/os/Handler;

.field private handlerCoinbox:Landroid/os/Handler;

.field private handlerSound:Landroid/os/Handler;

.field private harvestedSteps:I

.field private hasStepSensor:Z

.field private height:I

.field private iv_shop_item_image:Landroid/widget/ImageView;

.field private kcalView:Landroid/widget/TextView;

.field private lastSensorMillis:J

.field private mLastDiff:[F

.field private mLastDirections:[F

.field private mLastExtremes:[[F

.field private mLastMatch:I

.field private mLastValues:[F

.field private mLimit:F

.field private mScale:[F

.field private mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

.field private mYOffset:F

.field private meterView:Landroid/widget/TextView;

.field private minView:Landroid/widget/TextView;

.field private pref:Landroid/content/SharedPreferences;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private rl_lotto_no:Landroid/widget/RelativeLayout;

.field private rl_lotto_yes:Landroid/widget/RelativeLayout;

.field private rl_x2_lotter_layout:Landroid/widget/RelativeLayout;

.field private runnableAnimation:Ljava/lang/Runnable;

.field private runnableCoinbox:Ljava/lang/Runnable;

.field private runnableSound:Ljava/lang/Runnable;

.field private sm:Landroid/hardware/SensorManager;

.field private stepDetectorSensor:Landroid/hardware/Sensor;

.field private steps:I

.field private title:Landroid/widget/TextView;

.field private tv_cash_layout:Landroid/widget/TextView;

.field private tv_coin_badge_count:Landroid/widget/TextView;

.field private tv_event_user_name:Landroid/widget/TextView;

.field private tv_lotto_title:Landroid/widget/TextView;

.field private tv_lotto_use_cash_info:Landroid/widget/TextView;

.field private unit:Landroid/widget/TextView;

.field private value:Landroid/widget/TextView;

.field private vibrator:Landroid/os/Vibrator;

.field private weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x1

    const/4 v1, 0x0

    .line 75
    invoke-static {}, Lcom/cashwalk/cashwalk/util/Utils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    sput v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->STEPS_FOR_COIN:I

    .line 76
    const/16 v0, 0x8

    sput v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->AD_RATE:I

    .line 77
    const/4 v0, 0x4

    sput v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->LOTTO_EVENT_RATE:I

    .line 82
    sput-boolean v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->isCoinBoxShow:Z

    .line 83
    sput-boolean v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->isEventLottoFreeBox:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 155
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenBaseFragment;-><init>()V

    .line 85
    iput v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBadgeCount:I

    .line 113
    iput v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    .line 114
    iput v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->harvestedSteps:I

    .line 130
    iput v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->weight:I

    .line 131
    iput v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->height:I

    .line 142
    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->hasStepSensor:Z

    .line 143
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mLimit:F

    .line 144
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mLastValues:[F

    .line 145
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mScale:[F

    .line 147
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mLastDirections:[F

    .line 148
    new-array v0, v1, [[F

    new-array v1, v3, [F

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-array v2, v3, [F

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mLastExtremes:[[F

    .line 149
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mLastDiff:[F

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mLastMatch:I

    .line 151
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->lastSensorMillis:J

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->rl_x2_lotter_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBox:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    iget v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->harvestedSteps:I

    return v0
.end method

.method static synthetic access$1002(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->harvestedSteps:I

    return p1
.end method

.method static synthetic access$1100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->tv_coin_badge_count:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    iget v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBadgeCount:I

    return v0
.end method

.method static synthetic access$1202(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBadgeCount:I

    return p1
.end method

.method static synthetic access$1300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->tv_cash_layout:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->STEPS_FOR_COIN:I

    return v0
.end method

.method static synthetic access$1500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    iget v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    return v0
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->AD_RATE:I

    return v0
.end method

.method static synthetic access$1602(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 73
    sput p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->AD_RATE:I

    return p0
.end method

.method static synthetic access$1700(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Lorg/joda/time/DateTime;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->createdAt:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Lcom/google/android/gms/ads/AdRequest;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->adRequest:Lcom/google/android/gms/ads/AdRequest;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Lcom/google/android/gms/ads/AdView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->adView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coin:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->LOTTO_EVENT_RATE:I

    return v0
.end method

.method static synthetic access$2002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 73
    sput p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->LOTTO_EVENT_RATE:I

    return p0
.end method

.method static synthetic access$2100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->checkEventLotto()V

    return-void
.end method

.method static synthetic access$2200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->runnableAnimation:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->runnableAnimation:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->handlerAnimation:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->showEventLotto(Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->handlerCoinbox:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->handlerCoinbox:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->runnableCoinbox:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->runnableCoinbox:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Lcom/cashwalk/cashwalk/util/StepsDBHelper;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/content/res/AssetManager;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->assetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->adLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->handlerSound:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->handlerSound:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->runnableSound:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->runnableSound:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->playCoinSound()V

    return-void
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->vibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->checkNetwork()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private checkCoinBox()V
    .locals 3

    .prologue
    .line 774
    sget-boolean v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->isTutorialFinished:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->harvestedSteps:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->harvestedSteps:I

    sget v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->STEPS_FOR_COIN:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    sget v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->STEPS_FOR_COIN:I

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 775
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->showCoinBox(Z)V

    .line 777
    :cond_0
    return-void
.end method

.method private checkEventLotto()V
    .locals 2

    .prologue
    .line 742
    const-string v1, "#### checkEventLotto()"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 743
    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$10;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$10;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getEventRaffle(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 756
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 757
    return-void
.end method

.method private checkNetwork()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 761
    sget-boolean v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->isTutorialFinished:Z

    if-eqz v3, :cond_0

    .line 763
    :try_start_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 764
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 769
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 764
    .restart local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 765
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 766
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private checkVersion()V
    .locals 5

    .prologue
    .line 592
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->pref:Landroid/content/SharedPreferences;

    const-string v3, "LOCKSCREEN_VERSION_DATETIME"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "dt":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2, v0}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->plusHours(I)Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->isBeforeNow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 594
    :cond_0
    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$8;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$8;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)V

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getVersion(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .line 618
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 623
    .end local v1    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->pref:Landroid/content/SharedPreferences;

    const-string v3, "LOCKSCREEN_LOTTO_EVENT_RATE"

    const/4 v4, 0x4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->LOTTO_EVENT_RATE:I

    .line 621
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->pref:Landroid/content/SharedPreferences;

    const-string v3, "LOCKSCREEN_AD_SHOW_RATE"

    const/16 v4, 0x8

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->AD_RATE:I

    goto :goto_0
.end method

.method private dayStepUploadCheck()V
    .locals 5

    .prologue
    .line 1100
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1103
    .local v1, "getTodaySteps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/model/StepsTableModel;>;"
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;->getYesterdaySteps()Ljava/util/ArrayList;

    move-result-object v1

    .line 1106
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1107
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/model/StepsTableModel;

    iget-object v3, v4, Lcom/cashwalk/cashwalk/util/model/StepsTableModel;->createAt:Ljava/lang/String;

    .line 1108
    .local v3, "yesterdayString":Ljava/lang/String;
    const-string v4, "#### \uc77c\uc77c \uac78\uc74c\uc218 \ub3d9\uae30\ud654 \uc694\uccad(\uc7a0\uae08\ud654\uba74)"

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1109
    new-instance v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$13;

    invoke-direct {v4, p0, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$13;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcom/cashwalk/cashwalk/util/network/RestClient;->syncDayStep(Ljava/util/ArrayList;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v2

    .line 1122
    .local v2, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1129
    .end local v1    # "getTodaySteps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/model/StepsTableModel;>;"
    .end local v2    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    .end local v3    # "yesterdayString":Ljava/lang/String;
    :goto_0
    return-void

    .line 1124
    .restart local v1    # "getTodaySteps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/model/StepsTableModel;>;"
    :cond_0
    const-string v4, "#### \ub3d9\uae30\ud654\ud560 \uc804\uc77c \uac78\uc74c \uc218 \uc5c6\uc74c"

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1126
    .end local v1    # "getTodaySteps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/model/StepsTableModel;>;"
    :catch_0
    move-exception v0

    .line 1127
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static newInstance(Lcom/cashwalk/cashwalk/lockscreen/LockScreenBaseFragment$FragmentEventListener;)Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;
    .locals 1
    .param p0, "listener"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenBaseFragment$FragmentEventListener;

    .prologue
    .line 160
    new-instance v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;-><init>()V

    .line 161
    .local v0, "fragment":Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;
    iput-object p0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mListener:Lcom/cashwalk/cashwalk/lockscreen/LockScreenBaseFragment$FragmentEventListener;

    .line 162
    return-object v0
.end method

.method private playCoinSound()V
    .locals 11

    .prologue
    .line 1164
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1174
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    .line 1176
    .local v7, "currentVolume":I
    if-eqz v7, :cond_3

    .line 1177
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v10

    .line 1178
    .local v10, "volume":I
    const/high16 v9, 0x3f800000    # 1.0f

    .line 1179
    .local v9, "setVolume":F
    const/16 v1, 0xa

    if-lt v10, v1, :cond_0

    .line 1180
    const v9, 0x3dcccccd    # 0.1f

    .line 1182
    :cond_0
    const/4 v1, 0x7

    if-lt v10, v1, :cond_1

    .line 1183
    const/high16 v9, 0x3f000000    # 0.5f

    .line 1185
    :cond_1
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->assetManager:Landroid/content/res/AssetManager;

    .line 1186
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->assetManager:Landroid/content/res/AssetManager;

    const-string v2, "coin1.mp3"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 1187
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 1188
    .local v0, "player":Landroid/media/MediaPlayer;
    invoke-virtual {v0, v9, v9}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1189
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1190
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 1191
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1192
    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$14;

    invoke-direct {v1, p0, v10}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$14;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;I)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1232
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1246
    .end local v0    # "player":Landroid/media/MediaPlayer;
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v7    # "currentVolume":I
    .end local v9    # "setVolume":F
    .end local v10    # "volume":I
    :cond_2
    :goto_0
    :pswitch_1
    return-void

    .line 1234
    .restart local v7    # "currentVolume":I
    :cond_3
    sget-boolean v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->bVibration:Z

    if-eqz v1, :cond_2

    .line 1235
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$15;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$15;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1243
    .end local v7    # "currentVolume":I
    :catch_0
    move-exception v8

    .line 1244
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showCal()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 874
    iget v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->weight:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->height:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    if-eqz v3, :cond_0

    .line 875
    iget v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    div-int/lit8 v0, v3, 0x1e

    .line 876
    .local v0, "kcal":I
    iget v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->height:I

    add-int/lit8 v3, v3, -0x64

    iget v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    mul-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x64

    .line 877
    .local v1, "meter":I
    int-to-double v4, v1

    const-wide v6, 0x40af400000000000L    # 4000.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 878
    .local v2, "min":I
    if-eqz v1, :cond_0

    .line 879
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->kcalView:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 880
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->meterView:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 881
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->minView:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 883
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->kcalView:Landroid/widget/TextView;

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

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_1

    .line 885
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->meterView:Landroid/widget/TextView;

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

    .line 890
    :goto_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->minView:Landroid/widget/TextView;

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

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    .end local v0    # "kcal":I
    .end local v1    # "meter":I
    .end local v2    # "min":I
    :cond_0
    return-void

    .line 887
    .restart local v0    # "kcal":I
    .restart local v1    # "meter":I
    .restart local v2    # "min":I
    :cond_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->meterView:Landroid/widget/TextView;

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

.method private showEventLotto(Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;)V
    .locals 9
    .param p1, "eventInfo"    # Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;

    .prologue
    const/4 v7, 0x7

    const v5, 0x7f0201a7

    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 630
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, p1, Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;->prize:Lcom/cashwalk/cashwalk/util/network/model/Prize;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Prize;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->iv_shop_item_image:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 633
    iget-boolean v2, p1, Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;->showEvent:Z

    if-eqz v2, :cond_1

    .line 634
    sput-boolean v6, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->isEventLottoFreeBox:Z

    .line 636
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 637
    .local v0, "eventSps":Landroid/text/SpannableStringBuilder;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->rl_x2_lotter_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 639
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBox:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 640
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBox:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 643
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->tv_lotto_use_cash_info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBox:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 646
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBox:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 681
    :goto_0
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, -0xbebf

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {v0, v2, v8, v7, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 682
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {v0, v2, v8, v7, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 683
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->tv_lotto_title:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->tv_event_user_name:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->pref:Landroid/content/SharedPreferences;

    const-string v6, "NICKNAME"

    const v7, 0x7f0902ec

    invoke-virtual {p0, v7}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->rl_lotto_yes:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;

    invoke-direct {v3, p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$9;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    :goto_1
    return-void

    .line 648
    .end local v0    # "eventSps":Landroid/text/SpannableStringBuilder;
    :cond_1
    sput-boolean v8, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->isEventLottoFreeBox:Z

    .line 651
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->pref:Landroid/content/SharedPreferences;

    const-string v3, "POINT"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_3

    .line 652
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 653
    .restart local v0    # "eventSps":Landroid/text/SpannableStringBuilder;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->rl_x2_lotter_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 655
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBox:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 656
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBox:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 658
    :cond_2
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBox:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 659
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBox:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 661
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->tv_lotto_use_cash_info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;->prize:Lcom/cashwalk/cashwalk/util/network/model/Prize;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/util/network/model/Prize;->point:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 663
    .end local v0    # "eventSps":Landroid/text/SpannableStringBuilder;
    :cond_3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 664
    .restart local v0    # "eventSps":Landroid/text/SpannableStringBuilder;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->rl_x2_lotter_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 667
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->pref:Landroid/content/SharedPreferences;

    const-string v3, "LOCKSCREEN_SHOW_AD_COUNT"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 668
    .local v1, "showAdCount":I
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "LOCKSCREEN_SHOW_AD_COUNT"

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 669
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->adLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 671
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->adView:Lcom/google/android/gms/ads/AdView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->adRequest:Lcom/google/android/gms/ads/AdRequest;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 672
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->adLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 674
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBox:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 675
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBox:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    goto/16 :goto_1
.end method

.method private stepValueSteps()V
    .locals 6

    .prologue
    .line 1133
    iget v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    if-ltz v1, :cond_1

    .line 1134
    iget v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 1135
    .local v0, "length":I
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 1136
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->value:Landroid/widget/TextView;

    iget v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1143
    .end local v0    # "length":I
    :goto_0
    return-void

    .line 1138
    .restart local v0    # "length":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stepValueSteps DEBUG_001 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1141
    .end local v0    # "length":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stepValueSteps DEBUG_002 => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private uploadSteps(I)V
    .locals 3
    .param p1, "stepsTotal"    # I

    .prologue
    .line 997
    if-ltz p1, :cond_0

    const v1, 0x61a80

    if-le p1, v1, :cond_1

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 1001
    :cond_1
    const/4 v1, 0x1

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$12;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$12;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)V

    invoke-static {p1, v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->updateSteps(IZLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 1008
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

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
    .param p2, "i"    # I

    .prologue
    .line 994
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x13

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    .line 167
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 169
    new-instance v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$1;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)V

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 182
    sget-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    if-nez v3, :cond_0

    .line 183
    new-instance v3, Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    sput-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    .line 185
    :cond_0
    sget-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 188
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.cashwalk.cashwalk.action.LOCKSCREEN_COINBOX_SHOW"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v3, "com.cashwalk.cashwalk.action.LOCKSCREEN_COINBOX_HIDE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->pref:Landroid/content/SharedPreferences;

    .line 194
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "sensor"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->sm:Landroid/hardware/SensorManager;

    .line 196
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 197
    .local v2, "pm":Landroid/content/pm/PackageManager;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v9, :cond_1

    .line 198
    const-string v3, "android.hardware.sensor.stepdetector"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->hasStepSensor:Z

    .line 200
    :cond_1
    iget-boolean v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->hasStepSensor:Z

    if-eqz v3, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v9, :cond_2

    .line 201
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->sm:Landroid/hardware/SensorManager;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->stepDetectorSensor:Landroid/hardware/Sensor;

    .line 202
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->sm:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->stepDetectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v3, p0, v4, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 213
    :goto_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->cm:Landroid/net/ConnectivityManager;

    .line 214
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->audioManager:Landroid/media/AudioManager;

    .line 215
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->assetManager:Landroid/content/res/AssetManager;

    .line 216
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->vibrator:Landroid/os/Vibrator;

    .line 218
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->handlerAnimation:Landroid/os/Handler;

    .line 220
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->checkVersion()V

    .line 222
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->pref:Landroid/content/SharedPreferences;

    const-string v4, "SETTINGS_LOCKSCREEN_SOUND"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->bSound:Z

    .line 223
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->pref:Landroid/content/SharedPreferences;

    const-string v4, "SETTINGS_LOCKSCREEN_VIBRATION"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->bVibration:Z

    .line 225
    return-void

    .line 204
    :cond_2
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->sm:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->stepDetectorSensor:Landroid/hardware/Sensor;

    .line 205
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->sm:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->stepDetectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v3, p0, v4, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 207
    const/16 v1, 0x1e0

    .line 208
    .local v1, "h":I
    int-to-float v3, v1

    mul-float/2addr v3, v7

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mYOffset:F

    .line 209
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mScale:[F

    int-to-float v4, v1

    mul-float/2addr v4, v7

    const v5, 0x3d50d67f

    mul-float/2addr v4, v5

    neg-float v4, v4

    aput v4, v3, v8

    .line 210
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mScale:[F

    int-to-float v4, v1

    mul-float/2addr v4, v7

    const v5, 0x3c888889

    mul-float/2addr v4, v5

    neg-float v4, v4

    aput v4, v3, v6

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 229
    const v3, 0x7f040091

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 231
    .local v2, "v":Landroid/view/View;
    const v3, 0x7f100210

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->value:Landroid/widget/TextView;

    .line 232
    const v3, 0x7f100211

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->unit:Landroid/widget/TextView;

    .line 233
    const v3, 0x7f100093

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->title:Landroid/widget/TextView;

    .line 234
    const v3, 0x7f100212

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->kcalView:Landroid/widget/TextView;

    .line 235
    const v3, 0x7f100214

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->meterView:Landroid/widget/TextView;

    .line 236
    const v3, 0x7f100213

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->minView:Landroid/widget/TextView;

    .line 237
    const v3, 0x7f10020f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lat/grabner/circleprogress/CircleProgressView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->circle:Lat/grabner/circleprogress/CircleProgressView;

    .line 238
    const v3, 0x7f10020e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->cirleLayout:Landroid/widget/FrameLayout;

    .line 239
    const v3, 0x7f1003a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBox:Landroid/widget/ImageView;

    .line 240
    const v3, 0x7f1003a9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coin:Landroid/widget/ImageView;

    .line 241
    const v3, 0x7f10022f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->adLayout:Landroid/widget/LinearLayout;

    .line 242
    const v3, 0x7f1002f7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->close:Landroid/widget/ImageButton;

    .line 243
    const v3, 0x7f1003aa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->closeInside:Landroid/widget/ImageButton;

    .line 244
    const v3, 0x7f100378

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->tv_cash_layout:Landroid/widget/TextView;

    .line 245
    const v3, 0x7f1003b0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->rl_lotto_yes:Landroid/widget/RelativeLayout;

    .line 246
    const v3, 0x7f1003af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->rl_lotto_no:Landroid/widget/RelativeLayout;

    .line 247
    const v3, 0x7f1003ab

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->rl_x2_lotter_layout:Landroid/widget/RelativeLayout;

    .line 248
    const v3, 0x7f1003ad

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->iv_shop_item_image:Landroid/widget/ImageView;

    .line 249
    const v3, 0x7f1003b2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->tv_event_user_name:Landroid/widget/TextView;

    .line 250
    const v3, 0x7f1003b3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->tv_lotto_title:Landroid/widget/TextView;

    .line 251
    const v3, 0x7f1003a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->tv_coin_badge_count:Landroid/widget/TextView;

    .line 252
    const v3, 0x7f1003b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->tv_lotto_use_cash_info:Landroid/widget/TextView;

    .line 254
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->rl_lotto_no:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$2;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$2;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBox:Landroid/widget/ImageView;

    const v4, 0x7f0200e0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 270
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f05000c

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 271
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$3;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$3;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 288
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f05000a

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 290
    .local v1, "cashAnim":Landroid/view/animation/Animation;
    const v3, 0x7f1002fb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/ads/AdView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->adView:Lcom/google/android/gms/ads/AdView;

    .line 291
    new-instance v3, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->adRequest:Lcom/google/android/gms/ads/AdRequest;

    .line 292
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->adView:Lcom/google/android/gms/ads/AdView;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->adRequest:Lcom/google/android/gms/ads/AdRequest;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 293
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->adView:Lcom/google/android/gms/ads/AdView;

    new-instance v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$4;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$4;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 304
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->closeInside:Landroid/widget/ImageButton;

    new-instance v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$5;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$5;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->close:Landroid/widget/ImageButton;

    new-instance v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$6;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$6;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBox:Landroid/widget/ImageView;

    new-instance v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;

    invoke-direct {v4, p0, v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$7;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1147
    invoke-super {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenBaseFragment;->onDestroy()V

    .line 1149
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1150
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1152
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1156
    invoke-super {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenBaseFragment;->onPause()V

    .line 1157
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->sm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->stepDetectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1158
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 1013
    invoke-super {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenBaseFragment;->onResume()V

    .line 1014
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->sm:Landroid/hardware/SensorManager;

    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->stepDetectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v5, p0, v6, v9}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1015
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "steps"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    .line 1016
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->pref:Landroid/content/SharedPreferences;

    const-string v6, "LOCKSCREEN_HARVESTED_STEPS"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->harvestedSteps:I

    .line 1018
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->stepValueSteps()V

    .line 1019
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->circle:Lat/grabner/circleprogress/CircleProgressView;

    const v6, 0x461c4000    # 10000.0f

    invoke-virtual {v5, v6}, Lat/grabner/circleprogress/CircleProgressView;->setMaxValue(F)V

    .line 1020
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ne v5, v6, :cond_1

    .line 1021
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->circle:Lat/grabner/circleprogress/CircleProgressView;

    iget v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lat/grabner/circleprogress/CircleProgressView;->setValue(F)V

    .line 1025
    :goto_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->showCal()V

    .line 1026
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->checkCoinBox()V

    .line 1029
    :try_start_0
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->pref:Landroid/content/SharedPreferences;

    const-string v6, "CREATED_DATETIME"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    .local v0, "cdt":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1032
    new-instance v5, Lorg/joda/time/DateTime;

    invoke-direct {v5, v0}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->createdAt:Lorg/joda/time/DateTime;

    .line 1037
    :goto_1
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->pref:Landroid/content/SharedPreferences;

    const-string v6, "LOCKSCREEN_UNLOCK_DATE"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1038
    .local v4, "unlockDate":Ljava/lang/String;
    new-instance v5, Lorg/joda/time/DateTime;

    invoke-direct {v5}, Lorg/joda/time/DateTime;-><init>()V

    const-string/jumbo v6, "yyyyMMdd"

    invoke-virtual {v5, v6}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1040
    .local v3, "today":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1041
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1042
    iget v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    invoke-direct {p0, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->uploadSteps(I)V

    .line 1044
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1045
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "LOCKSCREEN_HARVESTED_STEPS"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1046
    const-string/jumbo v5, "steps"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1047
    const-string v5, "LOCKSCREEN_SHOW_AD_COUNT"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1048
    const-string v5, "LOCKSCREEN_UNLOCK_DATE"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1049
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1051
    const/4 v5, 0x0

    iput v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBadgeCount:I

    .line 1052
    const/4 v5, 0x0

    iput v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    .line 1053
    const/4 v5, 0x0

    iput v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->harvestedSteps:I

    .line 1055
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->tv_coin_badge_count:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1056
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->showCoinBox(Z)V

    .line 1057
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1076
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_2
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->pref:Landroid/content/SharedPreferences;

    const-string v6, "WEIGHT"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->weight:I

    .line 1077
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->pref:Landroid/content/SharedPreferences;

    const-string v6, "HEIGHT"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1084
    .end local v0    # "cdt":Ljava/lang/String;
    .end local v3    # "today":Ljava/lang/String;
    .end local v4    # "unlockDate":Ljava/lang/String;
    :goto_3
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->pref:Landroid/content/SharedPreferences;

    const-string v6, "USER_ID"

    invoke-interface {v5, v6, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1086
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->dayStepUploadCheck()V

    .line 1093
    :goto_4
    return-void

    .line 1023
    :cond_1
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->circle:Lat/grabner/circleprogress/CircleProgressView;

    iget v6, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lat/grabner/circleprogress/CircleProgressView;->setValueAnimated(F)V

    goto/16 :goto_0

    .line 1034
    .restart local v0    # "cdt":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v5, Lorg/joda/time/DateTime;

    invoke-direct {v5}, Lorg/joda/time/DateTime;-><init>()V

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v5

    iput-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->createdAt:Lorg/joda/time/DateTime;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1080
    .end local v0    # "cdt":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1081
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1060
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cdt":Ljava/lang/String;
    .restart local v3    # "today":Ljava/lang/String;
    .restart local v4    # "unlockDate":Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1061
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "LOCKSCREEN_HARVESTED_STEPS"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1062
    const-string/jumbo v5, "steps"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1063
    const-string v5, "LOCKSCREEN_SHOW_AD_COUNT"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1064
    const-string v5, "LOCKSCREEN_UNLOCK_DATE"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1065
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1067
    const/4 v5, 0x0

    iput v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBadgeCount:I

    .line 1068
    const/4 v5, 0x0

    iput v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    .line 1069
    const/4 v5, 0x0

    iput v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->harvestedSteps:I

    .line 1071
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->tv_coin_badge_count:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1072
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->showCoinBox(Z)V

    .line 1073
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 1088
    .end local v0    # "cdt":Ljava/lang/String;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "today":Ljava/lang/String;
    .end local v4    # "unlockDate":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->tv_coin_badge_count:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1089
    invoke-virtual {p0, v9}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->showCoinBox(Z)V

    goto :goto_4
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 24
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 898
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 899
    .local v13, "sensor":Landroid/hardware/Sensor;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    .line 901
    .local v18, "values":[F
    invoke-virtual {v13}, Landroid/hardware/Sensor;->getType()I

    move-result v14

    .line 903
    .local v14, "type":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->hasStepSensor:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 904
    const/16 v19, 0x12

    move/from16 v0, v19

    if-ne v14, v0, :cond_2

    .line 905
    const/16 v17, -0x1

    .line 907
    .local v17, "val":I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_0

    .line 908
    const/16 v19, 0x0

    aget v19, v18, v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0xa

    .line 911
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    move/from16 v19, v0

    add-int v19, v19, v17

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    .line 912
    invoke-direct/range {p0 .. p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->stepValueSteps()V

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->circle:Lat/grabner/circleprogress/CircleProgressView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lat/grabner/circleprogress/CircleProgressView;->setValue(F)V

    .line 915
    invoke-direct/range {p0 .. p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->showCal()V

    .line 917
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    move/from16 v19, v0

    sget v20, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->STEPS_FOR_COIN:I

    div-int v19, v19, v20

    if-lez v19, :cond_1

    .line 918
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->harvestedSteps:I

    move/from16 v19, v0

    const/16 v20, 0x2710

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->harvestedSteps:I

    move/from16 v19, v0

    sget v20, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->STEPS_FOR_COIN:I

    div-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    move/from16 v20, v0

    sget v21, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->STEPS_FOR_COIN:I

    div-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 919
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->showCoinBox(Z)V

    .line 923
    :cond_1
    sget-boolean v19, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->isTutorialFinished:Z

    if-nez v19, :cond_2

    .line 924
    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v19

    check-cast v19, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->onStepChanged(I)V

    .line 984
    .end local v17    # "val":I
    :cond_2
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    sput-object v19, Lcom/cashwalk/cashwalk/CashWalkApp;->TEMP_STEP_COUNT:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    :goto_1
    return-void

    .line 927
    :cond_3
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v14, v0, :cond_2

    .line 928
    const/16 v16, 0x0

    .line 929
    .local v16, "vSum":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v8, v0, :cond_4

    .line 930
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mYOffset:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v20, v0

    aget v20, v20, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mScale:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    mul-float v20, v20, v21

    add-float v15, v19, v20

    .line 931
    .local v15, "v":F
    add-float v16, v16, v15

    .line 929
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 933
    .end local v15    # "v":F
    :cond_4
    const/4 v12, 0x0

    .line 934
    .local v12, "k":I
    const/high16 v19, 0x40400000    # 3.0f

    div-float v15, v16, v19

    .line 936
    .restart local v15    # "v":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mLastValues:[F

    move-object/from16 v19, v0

    aget v19, v19, v12

    cmpl-float v19, v15, v19

    if-lez v19, :cond_a

    const/16 v19, 0x1

    :goto_3
    move/from16 v0, v19

    int-to-float v5, v0

    .line 937
    .local v5, "direction":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mLastDirections:[F

    move-object/from16 v19, v0

    aget v19, v19, v12

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, v5, v19

    if-nez v19, :cond_9

    .line 939
    const/16 v19, 0x0

    cmpl-float v19, v5, v19

    if-lez v19, :cond_c

    const/4 v7, 0x0

    .line 940
    .local v7, "extType":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mLastExtremes:[[F

    move-object/from16 v19, v0

    aget-object v19, v19, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mLastValues:[F

    move-object/from16 v20, v0

    aget v20, v20, v12

    aput v20, v19, v12

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mLastExtremes:[[F

    move-object/from16 v19, v0

    aget-object v19, v19, v7

    aget v19, v19, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mLastExtremes:[[F

    move-object/from16 v20, v0

    rsub-int/lit8 v21, v7, 0x1

    aget-object v20, v20, v21

    aget v20, v20, v12

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 943
    .local v4, "diff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mLimit:F

    move/from16 v19, v0

    cmpl-float v19, v4, v19

    if-lez v19, :cond_8

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mLastDiff:[F

    move-object/from16 v19, v0

    aget v19, v19, v12

    const/high16 v20, 0x40000000    # 2.0f

    mul-float v19, v19, v20

    const/high16 v20, 0x40400000    # 3.0f

    div-float v19, v19, v20

    cmpl-float v19, v4, v19

    if-lez v19, :cond_d

    const/4 v9, 0x1

    .line 946
    .local v9, "isAlmostAsLargeAsPrevious":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mLastDiff:[F

    move-object/from16 v19, v0

    aget v19, v19, v12

    const/high16 v20, 0x40400000    # 3.0f

    div-float v20, v4, v20

    cmpl-float v19, v19, v20

    if-lez v19, :cond_e

    const/4 v11, 0x1

    .line 947
    .local v11, "isPreviousLargeEnough":Z
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mLastMatch:I

    move/from16 v19, v0

    rsub-int/lit8 v20, v7, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    const/4 v10, 0x1

    .line 949
    .local v10, "isNotContra":Z
    :goto_7
    if-eqz v9, :cond_10

    if-eqz v11, :cond_10

    if-eqz v10, :cond_10

    .line 950
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 952
    .local v2, "currentMillis":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->lastSensorMillis:J

    move-wide/from16 v20, v0

    sub-long v20, v2, v20

    const-wide/16 v22, 0x12c

    cmp-long v19, v20, v22

    if-lez v19, :cond_7

    .line 953
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    .line 954
    invoke-direct/range {p0 .. p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->stepValueSteps()V

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->circle:Lat/grabner/circleprogress/CircleProgressView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lat/grabner/circleprogress/CircleProgressView;->setValue(F)V

    .line 957
    invoke-direct/range {p0 .. p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->showCal()V

    .line 959
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    move/from16 v19, v0

    sget v20, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->STEPS_FOR_COIN:I

    div-int v19, v19, v20

    if-lez v19, :cond_5

    .line 960
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->harvestedSteps:I

    move/from16 v19, v0

    const/16 v20, 0x2710

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->harvestedSteps:I

    move/from16 v19, v0

    sget v20, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->STEPS_FOR_COIN:I

    div-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    move/from16 v20, v0

    sget v21, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->STEPS_FOR_COIN:I

    div-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 961
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->showCoinBox(Z)V

    .line 965
    :cond_5
    sget-boolean v19, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->isTutorialFinished:Z

    if-nez v19, :cond_6

    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v19

    check-cast v19, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->onStepChanged(I)V

    .line 969
    :cond_6
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->lastSensorMillis:J

    .line 971
    :cond_7
    move-object/from16 v0, p0

    iput v7, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mLastMatch:I

    .line 977
    .end local v2    # "currentMillis":J
    .end local v9    # "isAlmostAsLargeAsPrevious":Z
    .end local v10    # "isNotContra":Z
    .end local v11    # "isPreviousLargeEnough":Z
    :cond_8
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mLastDiff:[F

    move-object/from16 v19, v0

    aput v4, v19, v12

    .line 979
    .end local v4    # "diff":F
    .end local v7    # "extType":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mLastDirections:[F

    move-object/from16 v19, v0

    aput v5, v19, v12

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mLastValues:[F

    move-object/from16 v19, v0

    aput v15, v19, v12

    goto/16 :goto_0

    .line 936
    .end local v5    # "direction":F
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mLastValues:[F

    move-object/from16 v19, v0

    aget v19, v19, v12

    cmpg-float v19, v15, v19

    if-gez v19, :cond_b

    const/16 v19, -0x1

    goto/16 :goto_3

    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 939
    .restart local v5    # "direction":F
    :cond_c
    const/4 v7, 0x1

    goto/16 :goto_4

    .line 945
    .restart local v4    # "diff":F
    .restart local v7    # "extType":I
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 946
    .restart local v9    # "isAlmostAsLargeAsPrevious":Z
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 947
    .restart local v11    # "isPreviousLargeEnough":Z
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 974
    .restart local v10    # "isNotContra":Z
    :cond_10
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->mLastMatch:I

    goto :goto_8

    .line 985
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

    .line 986
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public showCoinBox(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v3, 0x2710

    const/4 v2, 0x0

    .line 781
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->isEmulator(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 782
    const-string v1, "Emulator Device!!!!"

    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 783
    iput v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBadgeCount:I

    .line 871
    :goto_0
    return-void

    .line 787
    :cond_0
    iput v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBadgeCount:I

    .line 788
    iget v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    sget v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->STEPS_FOR_COIN:I

    div-int/2addr v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    sget v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->STEPS_FOR_COIN:I

    if-le v1, v2, :cond_1

    .line 789
    iget v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    if-gt v1, v3, :cond_2

    .line 790
    iget v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->steps:I

    sget v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->STEPS_FOR_COIN:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->harvestedSteps:I

    sget v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->STEPS_FOR_COIN:I

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBadgeCount:I

    .line 799
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;

    invoke-direct {v2, p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;Z)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 793
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    sget v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->STEPS_FOR_COIN:I

    div-int v1, v3, v1

    iget v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->harvestedSteps:I

    sget v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->STEPS_FOR_COIN:I

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->coinBadgeCount:I

    goto :goto_1
.end method
