.class public Lcom/cashwalk/cashwalk/CashWalkApp;
.super Landroid/app/Application;
.source "CashWalkApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/CashWalkApp$KakaoSDKAdapter;
    }
.end annotation


# static fields
.field public static MAIN_WINNER_LIST_LAST_TIME:Ljava/lang/Long;

.field public static MY_FRIEND_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field public static PLAYER_ID:Ljava/lang/String;

.field public static REQUEST_COUNT:I

.field public static SUCCESS_VIDEO_REWARDED:Z

.field public static SUCCESS_VIDEO_REWARDED_ERROR:Z

.field public static StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

.field public static TEMP_STEP_COUNT:Ljava/lang/Long;

.field public static UPLOAD_MY_PHONE_NUMBER:Z

.field public static awsCredentials:Lcom/amazonaws/auth/AWSCredentials;

.field public static awsS3client:Lcom/amazonaws/services/s3/AmazonS3Client;

.field private static currentActivity:Landroid/app/Activity;

.field public static globalPoint:Ljava/lang/String;

.field private static obj:Lcom/cashwalk/cashwalk/CashWalkApp;

.field public static shouldRefreshCash:Z

.field public static token:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static winnerArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Winner;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private pref:Landroid/content/SharedPreferences;

.field private requestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    sput-object v1, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    .line 45
    sput v0, Lcom/cashwalk/cashwalk/CashWalkApp;->REQUEST_COUNT:I

    .line 47
    sput-object v1, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    .line 54
    sput-boolean v0, Lcom/cashwalk/cashwalk/CashWalkApp;->SUCCESS_VIDEO_REWARDED:Z

    .line 55
    sput-boolean v0, Lcom/cashwalk/cashwalk/CashWalkApp;->SUCCESS_VIDEO_REWARDED_ERROR:Z

    .line 56
    sput-boolean v0, Lcom/cashwalk/cashwalk/CashWalkApp;->UPLOAD_MY_PHONE_NUMBER:Z

    .line 60
    sput-object v1, Lcom/cashwalk/cashwalk/CashWalkApp;->globalPoint:Ljava/lang/String;

    .line 62
    sput-boolean v0, Lcom/cashwalk/cashwalk/CashWalkApp;->shouldRefreshCash:Z

    .line 65
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->MAIN_WINNER_LIST_LAST_TIME:Ljava/lang/Long;

    .line 67
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->TEMP_STEP_COUNT:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 152
    return-void
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getGlobalApplicationContext()Lcom/cashwalk/cashwalk/CashWalkApp;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->obj:Lcom/cashwalk/cashwalk/CashWalkApp;

    return-object v0
.end method

.method private initOneSignal()V
    .locals 2

    .prologue
    .line 112
    invoke-static {p0}, Lcom/onesignal/OneSignal;->startInit(Landroid/content/Context;)Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    new-instance v1, Lcom/cashwalk/cashwalk/NotificationOpenedHandler;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/NotificationOpenedHandler;-><init>()V

    .line 113
    invoke-virtual {v0, v1}, Lcom/onesignal/OneSignal$Builder;->setNotificationOpenedHandler(Lcom/onesignal/OneSignal$NotificationOpenedHandler;)Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    sget-object v1, Lcom/onesignal/OneSignal$OSInFocusDisplayOption;->Notification:Lcom/onesignal/OneSignal$OSInFocusDisplayOption;

    .line 114
    invoke-virtual {v0, v1}, Lcom/onesignal/OneSignal$Builder;->inFocusDisplaying(Lcom/onesignal/OneSignal$OSInFocusDisplayOption;)Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 115
    invoke-virtual {v0, v1}, Lcom/onesignal/OneSignal$Builder;->unsubscribeWhenNotificationsAreDisabled(Z)Lcom/onesignal/OneSignal$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/onesignal/OneSignal$Builder;->init()V

    .line 118
    new-instance v0, Lcom/cashwalk/cashwalk/CashWalkApp$1;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/CashWalkApp$1;-><init>(Lcom/cashwalk/cashwalk/CashWalkApp;)V

    invoke-static {v0}, Lcom/onesignal/OneSignal;->idsAvailable(Lcom/onesignal/OneSignal$IdsAvailableHandler;)V

    .line 128
    return-void
.end method

.method public static setCurrentActivity(Landroid/app/Activity;)V
    .locals 0
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 145
    sput-object p0, Lcom/cashwalk/cashwalk/CashWalkApp;->currentActivity:Landroid/app/Activity;

    .line 146
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 133
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 134
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 73
    sput-object p0, Lcom/cashwalk/cashwalk/CashWalkApp;->obj:Lcom/cashwalk/cashwalk/CashWalkApp;

    .line 74
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/CashWalkApp;->pref:Landroid/content/SharedPreferences;

    .line 75
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 78
    new-instance v0, Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    invoke-direct {v0, p0, v2}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    sput-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    .line 79
    new-instance v0, Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    invoke-direct {v0, p0, v2}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/DatabaseManager;->initializeInstance(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 81
    iget-object v0, p0, Lcom/cashwalk/cashwalk/CashWalkApp;->pref:Landroid/content/SharedPreferences;

    const-string v1, "TOKEN"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [Lio/fabric/sdk/android/Kit;

    new-instance v1, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v1}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v1, v0, v3

    invoke-static {p0, v0}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 93
    new-instance v0, Lcom/cashwalk/cashwalk/CashWalkApp$KakaoSDKAdapter;

    invoke-direct {v0, v2}, Lcom/cashwalk/cashwalk/CashWalkApp$KakaoSDKAdapter;-><init>(Lcom/cashwalk/cashwalk/CashWalkApp$1;)V

    invoke-static {v0}, Lcom/kakao/auth/KakaoSDK;->init(Lcom/kakao/auth/KakaoAdapter;)V

    .line 94
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/CashWalkApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 95
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/app/Application;)V

    .line 96
    const-string v0, "CashwalkServiceUtils"

    sput-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->globalPoint:Ljava/lang/String;

    .line 97
    const-string v0, "ca-app-pub-1843376102797932~3027172805"

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    .line 101
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/CashWalkApp;->initOneSignal()V

    .line 103
    iget-object v0, p0, Lcom/cashwalk/cashwalk/CashWalkApp;->pref:Landroid/content/SharedPreferences;

    const-string v1, "SAVE_PHONE_NUMBER"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/cashwalk/cashwalk/CashWalkApp;->UPLOAD_MY_PHONE_NUMBER:Z

    .line 104
    const-string v0, "#### \uae00\ub85c\ubc8c \ud638\ucd9c"

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    .line 109
    return-void
.end method

.method public requestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method
