.class public Lcom/cashwalk/cashwalk/CashWalkMainActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "CashWalkMainActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static steps:I


# instance fields
.field private hasStepSensor:Z

.field private height:I

.field private lastSensorMillis:J

.field private mLastDiff:[F

.field private mLastDirections:[F

.field private mLastExtremes:[[F

.field private mLastMatch:I

.field private mLastValues:[F

.field private mLimit:F

.field private mScale:[F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

.field private mTabLayout:Landroid/support/design/widget/TabLayout;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mYOffset:F

.field private stepDetectorSensor:Landroid/hardware/Sensor;

.field private weight:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 61
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    .line 68
    iput v2, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->weight:I

    .line 69
    iput v2, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->height:I

    .line 72
    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->hasStepSensor:Z

    .line 73
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mLimit:F

    .line 74
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mLastValues:[F

    .line 75
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mScale:[F

    .line 77
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mLastDirections:[F

    .line 78
    new-array v0, v1, [[F

    new-array v1, v3, [F

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-array v2, v3, [F

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mLastExtremes:[[F

    .line 79
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mLastDiff:[F

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mLastMatch:I

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->lastSensorMillis:J

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/CashWalkMainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/CashWalkMainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->sendRegistrationToServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)Lcom/cashwalk/cashwalk/util/StepsDBHelper;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->setViralCash()V

    return-void
.end method

.method private checkTotalStep()V
    .locals 2

    .prologue
    .line 941
    new-instance v1, Lcom/cashwalk/cashwalk/CashWalkMainActivity$10;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity$10;-><init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getVersion(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 1009
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1010
    return-void
.end method

.method private checkUpdate()V
    .locals 6

    .prologue
    .line 705
    iget-object v2, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "PREFERENCE_UPDATE_CHECK_DATETIME"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 707
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

    .line 708
    :cond_0
    new-instance v2, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;-><init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)V

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getRecentVersion(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 772
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 774
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :cond_1
    return-void
.end method

.method private dayStepUploadCheck()V
    .locals 4

    .prologue
    .line 778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 781
    .local v0, "getTodaySteps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/model/StepsTableModel;>;"
    iget-object v3, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;->getYesterdaySteps()Ljava/util/ArrayList;

    move-result-object v0

    .line 784
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 785
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/model/StepsTableModel;

    iget-object v2, v3, Lcom/cashwalk/cashwalk/util/model/StepsTableModel;->createAt:Ljava/lang/String;

    .line 786
    .local v2, "yesterdayString":Ljava/lang/String;
    const-string v3, "#### \uc77c\uc77c \uac78\uc74c\uc218 \ub3d9\uae30\ud654 \uc694\uccad"

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 787
    new-instance v3, Lcom/cashwalk/cashwalk/CashWalkMainActivity$7;

    invoke-direct {v3, p0, v2}, Lcom/cashwalk/cashwalk/CashWalkMainActivity$7;-><init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->syncDayStep(Ljava/util/ArrayList;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .line 800
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 804
    .end local v1    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    .end local v2    # "yesterdayString":Ljava/lang/String;
    :goto_0
    return-void

    .line 802
    :cond_0
    const-string v3, "#### \ub3d9\uae30\ud654\ud560 \uc804\uc77c \uac78\uc74c \uc218 \uc5c6\uc74c"

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCashwalkAdCenterBanner()V
    .locals 4

    .prologue
    .line 823
    new-instance v2, Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient;-><init>()V

    .line 824
    .local v2, "mCashwalkRestClient":Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient;, "Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient<Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkNetworkService;>;"
    const-class v3, Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkNetworkService;

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient;->getClient(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkNetworkService;

    .line 826
    .local v1, "mCashwalkNetworkService":Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkNetworkService;
    invoke-interface {v1}, Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkNetworkService;->getMainBanner()Lretrofit2/Call;

    move-result-object v0

    .line 827
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;>;"
    new-instance v3, Lcom/cashwalk/cashwalk/CashWalkMainActivity$9;

    invoke-direct {v3, p0, v1}, Lcom/cashwalk/cashwalk/CashWalkMainActivity$9;-><init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity;Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkNetworkService;)V

    invoke-interface {v0, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 884
    return-void
.end method

.method private init()V
    .locals 13

    .prologue
    const/16 v12, 0x13

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 97
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 98
    const-string v6, "keyguard"

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 99
    .local v4, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 100
    const v6, 0x7f0901b0

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 103
    :cond_0
    sget-object v6, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    if-nez v6, :cond_1

    .line 104
    new-instance v6, Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    sput-object v6, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    .line 106
    :cond_1
    sget-object v6, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    .line 108
    invoke-static {}, Lcom/cashwalk/cashwalk/util/AWSHelper;->AWS_initS3Client()V

    .line 109
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->dayStepUploadCheck()V

    .line 111
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/cashwalk/cashwalk/CashWalkMainActivity$1;

    invoke-direct {v7, p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity$1;-><init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v6

    const-string v7, "main_enter"

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v7, v8}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    const-string v6, "sensor"

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/SensorManager;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 131
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 132
    .local v5, "pm":Landroid/content/pm/PackageManager;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v12, :cond_2

    .line 133
    const-string v6, "android.hardware.sensor.stepdetector"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->hasStepSensor:Z

    .line 135
    :cond_2
    iget-boolean v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->hasStepSensor:Z

    if-eqz v6, :cond_4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v12, :cond_4

    .line 136
    iget-object v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v7, 0x12

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->stepDetectorSensor:Landroid/hardware/Sensor;

    .line 137
    iget-object v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v7, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->stepDetectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v6, p0, v7, v9}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 149
    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "WEIGHT"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->weight:I

    .line 150
    iget-object v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "HEIGHT"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->height:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    :goto_2
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->initLayout()V

    .line 159
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 160
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 165
    .local v3, "it":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->checkUpdate()V

    .line 166
    iget-object v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v7, "steps"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->uploadSteps(I)V

    .line 168
    iget-object v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "FIRST_LAUNCH"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 169
    .local v2, "isFirstLaunch":Z
    if-eqz v2, :cond_3

    .line 170
    iget-object v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "FIRST_LAUNCH"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 171
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v6, v12, :cond_5

    .line 172
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 177
    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->checkTotalStep()V

    .line 179
    return-void

    .line 125
    .end local v2    # "isFirstLaunch":Z
    .end local v3    # "it":Landroid/content/Intent;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    iget-object v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v6, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->stepDetectorSensor:Landroid/hardware/Sensor;

    .line 140
    iget-object v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v7, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->stepDetectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v6, p0, v7, v9}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 142
    const/16 v1, 0x1e0

    .line 143
    .local v1, "h":I
    int-to-float v6, v1

    mul-float/2addr v6, v11

    iput v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mYOffset:F

    .line 144
    iget-object v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mScale:[F

    int-to-float v7, v1

    mul-float/2addr v7, v11

    const v8, 0x3d50d67f

    mul-float/2addr v7, v8

    neg-float v7, v7

    aput v7, v6, v9

    .line 145
    iget-object v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mScale:[F

    int-to-float v7, v1

    mul-float/2addr v7, v11

    const v8, 0x3c888889

    mul-float/2addr v7, v8

    neg-float v7, v7

    aput v7, v6, v10

    goto/16 :goto_1

    .line 151
    .end local v1    # "h":I
    :catch_1
    move-exception v0

    .line 152
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "isFirstLaunch":Z
    .restart local v3    # "it":Landroid/content/Intent;
    :cond_5
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3
.end method

.method private initLayout()V
    .locals 4

    .prologue
    const v3, 0x7f020122

    .line 183
    const v1, 0x7f1001b5

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    .line 184
    iget-object v1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 185
    iget-object v1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 186
    iget-object v1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 187
    iget-object v1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 188
    iget-object v1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 189
    iget-object v1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setTabGravity(I)V

    .line 192
    const v1, 0x7f1001b6

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 195
    new-instance v0, Lcom/cashwalk/cashwalk/adapter/CashWalkMainTabPagerAdapter;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/cashwalk/cashwalk/adapter/CashWalkMainTabPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;I)V

    .line 196
    .local v0, "pagerAdapter":Lcom/cashwalk/cashwalk/adapter/CashWalkMainTabPagerAdapter;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 197
    iget-object v1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-direct {v2, v3}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 200
    iget-object v1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/CashWalkMainActivity$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity$2;-><init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 216
    return-void
.end method

.method private refreshCash()V
    .locals 2

    .prologue
    .line 641
    new-instance v1, Lcom/cashwalk/cashwalk/CashWalkMainActivity$5;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity$5;-><init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getUser(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 701
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 702
    return-void
.end method

.method private sendRegistrationToServer(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 807
    const-string v2, "sendRegistrationToServer"

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 809
    new-instance v1, Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/util/network/model/User;-><init>()V

    .line 810
    .local v1, "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    iput-object p1, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->pushID:Ljava/lang/String;

    .line 811
    new-instance v2, Lcom/cashwalk/cashwalk/CashWalkMainActivity$8;

    invoke-direct {v2, p0, p1}, Lcom/cashwalk/cashwalk/CashWalkMainActivity$8;-><init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->setUser(Lcom/cashwalk/cashwalk/util/network/model/User;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 819
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 820
    return-void
.end method

.method private setViralCash()V
    .locals 4

    .prologue
    .line 253
    iget-object v1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "CASHWALK_REWARD_CASH"

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 255
    .local v0, "defaultViralCahs":I
    return-void
.end method

.method private showCal()V
    .locals 8

    .prologue
    .line 407
    iget v3, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->weight:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->height:I

    if-eqz v3, :cond_0

    sget v3, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->steps:I

    if-eqz v3, :cond_0

    .line 408
    sget v3, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->steps:I

    div-int/lit8 v0, v3, 0x1e

    .line 409
    .local v0, "kcal":I
    iget v3, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->height:I

    add-int/lit8 v3, v3, -0x64

    sget v4, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->steps:I

    mul-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x64

    .line 410
    .local v1, "meter":I
    int-to-double v4, v1

    const-wide v6, 0x40af400000000000L    # 4000.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 411
    .local v2, "min":I
    if-eqz v1, :cond_0

    .line 417
    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_0

    .line 426
    .end local v0    # "kcal":I
    .end local v1    # "meter":I
    .end local v2    # "min":I
    :cond_0
    return-void
.end method

.method private stepValueSteps()V
    .locals 6

    .prologue
    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### \ud604\uc7ac \uac78\uc74c\uc218 => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->steps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 631
    sget v1, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->steps:I

    if-ltz v1, :cond_0

    .line 632
    sget v1, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->steps:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 633
    .local v0, "length":I
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 637
    .end local v0    # "length":I
    :cond_0
    return-void
.end method

.method private uploadSteps(I)V
    .locals 3
    .param p1, "stepsTotal"    # I

    .prologue
    .line 535
    if-ltz p1, :cond_0

    const v1, 0x61a80

    if-le p1, v1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    const/4 v1, 0x1

    new-instance v2, Lcom/cashwalk/cashwalk/CashWalkMainActivity$4;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity$4;-><init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)V

    invoke-static {p1, v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->updateSteps(IZLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 546
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getApplication()Landroid/app/Application;

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
    .line 626
    return-void
.end method

.method public onBackPressed()V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 220
    new-array v4, v2, [Ljava/lang/Integer;

    .line 221
    .local v4, "priorityList":[Ljava/lang/Integer;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 222
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 224
    const v0, 0x7f0900aa

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f09014f

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/cashwalk/cashwalk/CashWalkMainActivity$3;

    invoke-direct {v6, p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity$3;-><init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->startDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;ZLcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;)V

    .line 250
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f040032

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->setContentView(I)V

    .line 93
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->init()V

    .line 94
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 443
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onDestroy()V

    .line 444
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->MAIN_WINNER_LIST_LAST_TIME:Ljava/lang/Long;

    .line 451
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 430
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onPause()V

    .line 431
    iget-object v0, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->stepDetectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 439
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 455
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onResume()V

    .line 457
    sput-object v8, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    .line 458
    sget-boolean v5, Lcom/cashwalk/cashwalk/CashWalkApp;->shouldRefreshCash:Z

    if-eqz v5, :cond_0

    .line 459
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->refreshCash()V

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->updateBackground()V

    .line 468
    iget-object v5, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "PROFILE_URL"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 470
    const-string v5, "http"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 496
    :cond_1
    iget-object v5, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "LOCKSCREEN_UNLOCK_DATE"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 497
    .local v4, "unlockDate":Ljava/lang/String;
    new-instance v5, Lorg/joda/time/DateTime;

    invoke-direct {v5}, Lorg/joda/time/DateTime;-><init>()V

    const-string/jumbo v6, "yyyyMMdd"

    invoke-virtual {v5, v6}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, "today":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 500
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 501
    sget v5, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->steps:I

    invoke-direct {p0, v5}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->uploadSteps(I)V

    .line 503
    iget-object v5, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 504
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "steps"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 505
    const-string v5, "LOCKSCREEN_UNLOCK_DATE"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 506
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 512
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v6, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->stepDetectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v5, p0, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 513
    iget-object v5, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "steps"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->steps:I

    .line 515
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->stepValueSteps()V

    .line 519
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->showCal()V

    .line 522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 523
    .local v2, "tl":Ljava/lang/Long;
    sget-object v5, Lcom/cashwalk/cashwalk/CashWalkApp;->MAIN_WINNER_LIST_LAST_TIME:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x258

    add-long/2addr v6, v8

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_3

    .line 532
    :cond_3
    return-void

    .line 509
    .end local v2    # "tl":Ljava/lang/Long;
    :cond_4
    iget-object v5, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "LOCKSCREEN_UNLOCK_DATE"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 24
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 551
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 552
    .local v13, "sensor":Landroid/hardware/Sensor;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    .line 554
    .local v18, "values":[F
    invoke-virtual {v13}, Landroid/hardware/Sensor;->getType()I

    move-result v14

    .line 556
    .local v14, "type":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->hasStepSensor:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 557
    const/16 v19, 0x12

    move/from16 v0, v19

    if-ne v14, v0, :cond_1

    .line 558
    const/16 v17, -0x1

    .line 559
    .local v17, "val":I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_0

    .line 560
    const/16 v19, 0x0

    aget v19, v18, v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0xa

    .line 562
    :cond_0
    sget v19, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->steps:I

    add-int v19, v19, v17

    sput v19, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->steps:I

    .line 563
    invoke-direct/range {p0 .. p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->stepValueSteps()V

    .line 567
    invoke-direct/range {p0 .. p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->showCal()V

    .line 617
    .end local v17    # "val":I
    :cond_1
    :goto_0
    :try_start_0
    sget v19, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->steps:I

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    sput-object v19, Lcom/cashwalk/cashwalk/CashWalkApp;->TEMP_STEP_COUNT:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :goto_1
    return-void

    .line 569
    :cond_2
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v14, v0, :cond_1

    .line 570
    const/16 v16, 0x0

    .line 571
    .local v16, "vSum":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v8, v0, :cond_3

    .line 572
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mYOffset:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v20, v0

    aget v20, v20, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mScale:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    mul-float v20, v20, v21

    add-float v15, v19, v20

    .line 573
    .local v15, "v":F
    add-float v16, v16, v15

    .line 571
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 575
    .end local v15    # "v":F
    :cond_3
    const/4 v12, 0x0

    .line 576
    .local v12, "k":I
    const/high16 v19, 0x40400000    # 3.0f

    div-float v15, v16, v19

    .line 578
    .restart local v15    # "v":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mLastValues:[F

    move-object/from16 v19, v0

    aget v19, v19, v12

    cmpl-float v19, v15, v19

    if-lez v19, :cond_7

    const/16 v19, 0x1

    :goto_3
    move/from16 v0, v19

    int-to-float v5, v0

    .line 579
    .local v5, "direction":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mLastDirections:[F

    move-object/from16 v19, v0

    aget v19, v19, v12

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, v5, v19

    if-nez v19, :cond_6

    .line 581
    const/16 v19, 0x0

    cmpl-float v19, v5, v19

    if-lez v19, :cond_9

    const/4 v7, 0x0

    .line 582
    .local v7, "extType":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mLastExtremes:[[F

    move-object/from16 v19, v0

    aget-object v19, v19, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mLastValues:[F

    move-object/from16 v20, v0

    aget v20, v20, v12

    aput v20, v19, v12

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mLastExtremes:[[F

    move-object/from16 v19, v0

    aget-object v19, v19, v7

    aget v19, v19, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mLastExtremes:[[F

    move-object/from16 v20, v0

    rsub-int/lit8 v21, v7, 0x1

    aget-object v20, v20, v21

    aget v20, v20, v12

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 585
    .local v4, "diff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mLimit:F

    move/from16 v19, v0

    cmpl-float v19, v4, v19

    if-lez v19, :cond_5

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mLastDiff:[F

    move-object/from16 v19, v0

    aget v19, v19, v12

    const/high16 v20, 0x40000000    # 2.0f

    mul-float v19, v19, v20

    const/high16 v20, 0x40400000    # 3.0f

    div-float v19, v19, v20

    cmpl-float v19, v4, v19

    if-lez v19, :cond_a

    const/4 v9, 0x1

    .line 588
    .local v9, "isAlmostAsLargeAsPrevious":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mLastDiff:[F

    move-object/from16 v19, v0

    aget v19, v19, v12

    const/high16 v20, 0x40400000    # 3.0f

    div-float v20, v4, v20

    cmpl-float v19, v19, v20

    if-lez v19, :cond_b

    const/4 v11, 0x1

    .line 589
    .local v11, "isPreviousLargeEnough":Z
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mLastMatch:I

    move/from16 v19, v0

    rsub-int/lit8 v20, v7, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    const/4 v10, 0x1

    .line 591
    .local v10, "isNotContra":Z
    :goto_7
    if-eqz v9, :cond_d

    if-eqz v11, :cond_d

    if-eqz v10, :cond_d

    .line 592
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 593
    .local v2, "currentMillis":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->lastSensorMillis:J

    move-wide/from16 v20, v0

    sub-long v20, v2, v20

    const-wide/16 v22, 0x12c

    cmp-long v19, v20, v22

    if-lez v19, :cond_4

    .line 594
    sget v19, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->steps:I

    add-int/lit8 v19, v19, 0x1

    sput v19, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->steps:I

    .line 596
    invoke-direct/range {p0 .. p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->stepValueSteps()V

    .line 600
    invoke-direct/range {p0 .. p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->showCal()V

    .line 602
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->lastSensorMillis:J

    .line 605
    :cond_4
    move-object/from16 v0, p0

    iput v7, v0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mLastMatch:I

    .line 610
    .end local v2    # "currentMillis":J
    .end local v9    # "isAlmostAsLargeAsPrevious":Z
    .end local v10    # "isNotContra":Z
    .end local v11    # "isPreviousLargeEnough":Z
    :cond_5
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mLastDiff:[F

    move-object/from16 v19, v0

    aput v4, v19, v12

    .line 612
    .end local v4    # "diff":F
    .end local v7    # "extType":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mLastDirections:[F

    move-object/from16 v19, v0

    aput v5, v19, v12

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mLastValues:[F

    move-object/from16 v19, v0

    aput v15, v19, v12

    goto/16 :goto_0

    .line 578
    .end local v5    # "direction":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mLastValues:[F

    move-object/from16 v19, v0

    aget v19, v19, v12

    cmpg-float v19, v15, v19

    if-gez v19, :cond_8

    const/16 v19, -0x1

    goto/16 :goto_3

    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 581
    .restart local v5    # "direction":F
    :cond_9
    const/4 v7, 0x1

    goto/16 :goto_4

    .line 587
    .restart local v4    # "diff":F
    .restart local v7    # "extType":I
    :cond_a
    const/4 v9, 0x0

    goto :goto_5

    .line 588
    .restart local v9    # "isAlmostAsLargeAsPrevious":Z
    :cond_b
    const/4 v11, 0x0

    goto :goto_6

    .line 589
    .restart local v11    # "isPreviousLargeEnough":Z
    :cond_c
    const/4 v10, 0x0

    goto :goto_7

    .line 607
    .restart local v10    # "isNotContra":Z
    :cond_d
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mLastMatch:I

    goto :goto_8

    .line 618
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

    .line 619
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public updateBackground()V
    .locals 5

    .prologue
    .line 258
    iget-object v2, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "LOCKSCREEN_BACKGROUND_ID"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 260
    .local v0, "bgId":I
    if-nez v0, :cond_3

    .line 261
    iget-object v2, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "LOCKSCREEN_BACKGROUND_PATH"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "bgPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 263
    const-string v2, "re_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    const-string v2, "re_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 265
    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->updateBackground(I)V

    .line 275
    .end local v1    # "bgPath":Ljava/lang/String;
    :cond_0
    :goto_0
    sget v2, Lcom/cashwalk/cashwalk/CashWalkApp;->REQUEST_COUNT:I

    if-lez v2, :cond_1

    .line 279
    sget v2, Lcom/cashwalk/cashwalk/CashWalkApp;->REQUEST_COUNT:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    .line 290
    :cond_1
    return-void

    .line 267
    .restart local v1    # "bgPath":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->updateBackground(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    .end local v1    # "bgPath":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->updateBackground(I)V

    goto :goto_0
.end method

.method public updateBackground(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 310
    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 312
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 313
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 315
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 316
    .local v2, "width":I
    iget v3, v1, Landroid/graphics/Point;->y:I

    .line 403
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "size":Landroid/graphics/Point;
    .end local v2    # "width":I
    :cond_0
    return-void
.end method

.method public updateBackground(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 293
    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 295
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 296
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 298
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 299
    .local v3, "width":I
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 300
    .local v1, "height":I
    const-string v4, "bg_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 307
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "height":I
    .end local v2    # "size":Landroid/graphics/Point;
    .end local v3    # "width":I
    :cond_0
    :goto_0
    return-void

    .line 303
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "height":I
    .restart local v2    # "size":Landroid/graphics/Point;
    .restart local v3    # "width":I
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
