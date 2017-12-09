.class public Lcom/cashwalk/cashwalk/activity/TnkAdActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "TnkAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/activity/TnkAdActivity$TabsPagerAdapter;
    }
.end annotation


# static fields
.field private static final COUNT_DOWN_INTERVAL:I = 0x3e8


# instance fields
.field private VIDEO_ADMOB_AD_CASH:I

.field private VIDEO_ADMOB_AD_COUNT:I

.field private VIDEO_TYPE_1:Ljava/lang/String;

.field private VIDEO_TYPE_2:Ljava/lang/String;

.field private VIDEO_UNITY_AD_CASH:I

.field private VIDEO_UNITY_AD_COUNT:I

.field private ad1Count:I

.field private ad2Count:I

.field private adapter:Lcom/cashwalk/cashwalk/activity/TnkAdActivity$TabsPagerAdapter;

.field private countAdmobDownTimer:Landroid/os/CountDownTimer;

.field private countUnityAdsDownTimer:Landroid/os/CountDownTimer;

.field private final defaultGameId:Ljava/lang/String;

.field private fr_tabs:Landroid/widget/FrameLayout;

.field private mVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

.field private pref:Landroid/content/SharedPreferences;

.field private rl_tnkad_total_point_layout:Landroid/widget/RelativeLayout;

.field private st_tab_layout:Landroid/widget/LinearLayout;

.field private tnkAdTotalCoin:Ljava/lang/String;

.field private tv_tnkad_use_ad_point:Landroid/widget/TextView;

.field private vp_pager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x258

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    .line 63
    iput v2, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->ad1Count:I

    .line 64
    iput v2, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->ad2Count:I

    .line 67
    iput v1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->VIDEO_ADMOB_AD_COUNT:I

    .line 68
    iput v0, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->VIDEO_ADMOB_AD_CASH:I

    .line 70
    iput v1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->VIDEO_UNITY_AD_COUNT:I

    .line 71
    iput v0, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->VIDEO_UNITY_AD_CASH:I

    .line 72
    const-string v0, "VIDEO1"

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->VIDEO_TYPE_1:Ljava/lang/String;

    .line 73
    const-string v0, "VIDEO2"

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->VIDEO_TYPE_2:Ljava/lang/String;

    .line 76
    const-string v0, "1166996"

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->defaultGameId:Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->tnkAdTotalCoin:Ljava/lang/String;

    .line 1021
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->rl_tnkad_total_point_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->st_tab_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/TnkAdActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->consumePoint(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private checkAppVersion()V
    .locals 2

    .prologue
    .line 1087
    new-instance v1, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$7;-><init>(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getRecentVersion(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 1121
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1122
    return-void
.end method

.method private checkTnkPoint()V
    .locals 2

    .prologue
    .line 274
    const/4 v0, 0x0

    new-instance v1, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$3;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$3;-><init>(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;)V

    invoke-static {p0, v0, v1}, Lcom/tnkfactory/ad/TnkSession;->queryPoint(Landroid/content/Context;ZLcom/tnkfactory/ad/ServiceCallback;)V

    .line 284
    return-void
.end method

.method private consumePoint(I)V
    .locals 3
    .param p1, "pointVal"    # I

    .prologue
    .line 287
    const-string v0, "point"

    const/4 v1, 0x1

    new-instance v2, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4;-><init>(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;I)V

    invoke-static {p0, p1, v0, v1, v2}, Lcom/tnkfactory/ad/TnkSession;->purchaseItem(Landroid/content/Context;ILjava/lang/String;ZLcom/tnkfactory/ad/ServiceCallback;)V

    .line 386
    return-void
.end method

.method private getGoogleADID()V
    .locals 1

    .prologue
    .line 507
    new-instance v0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$5;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$5;-><init>(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 520
    return-void
.end method

.method private getIGAWorksVideoAd()V
    .locals 0

    .prologue
    .line 574
    return-void
.end method

.method private initViews()V
    .locals 6

    .prologue
    const v5, 0x7f0f0091

    .line 156
    const v3, 0x7f100277

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->tv_tnkad_use_ad_point:Landroid/widget/TextView;

    .line 157
    const v3, 0x7f100275

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->rl_tnkad_total_point_layout:Landroid/widget/RelativeLayout;

    .line 160
    const v3, 0x7f100286

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->fr_tabs:Landroid/widget/FrameLayout;

    .line 161
    new-instance v3, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$TabsPagerAdapter;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$TabsPagerAdapter;-><init>(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->adapter:Lcom/cashwalk/cashwalk/activity/TnkAdActivity$TabsPagerAdapter;

    .line 162
    const v3, 0x7f1002ae

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->vp_pager:Landroid/support/v4/view/ViewPager;

    .line 163
    const v3, 0x7f1002ad

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/astuetz/PagerSlidingTabStrip;

    .line 164
    .local v1, "tabs":Lcom/astuetz/PagerSlidingTabStrip;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->vp_pager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->adapter:Lcom/cashwalk/cashwalk/activity/TnkAdActivity$TabsPagerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 165
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->vp_pager:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 166
    const/16 v3, 0x10

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setTextSize(I)V

    .line 167
    invoke-virtual {v1, v5}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColorResource(I)V

    .line 168
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->vp_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 170
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/astuetz/PagerSlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->st_tab_layout:Landroid/widget/LinearLayout;

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->st_tab_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 172
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->st_tab_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 173
    .local v2, "tv":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 179
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_1
    new-instance v3, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$2;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;)V

    invoke-virtual {v1, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 254
    return-void
.end method

.method private updatePoint(ILjava/lang/String;)V
    .locals 7
    .param p1, "pointVal"    # I
    .param p2, "typeString"    # Ljava/lang/String;

    .prologue
    .line 777
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->pref:Landroid/content/SharedPreferences;

    const-string v4, "POINT"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 778
    .local v0, "curPoint":I
    add-int v1, v0, p1

    .line 780
    .local v1, "newPoint":I
    const-string v3, "VIDEO"

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->pref:Landroid/content/SharedPreferences;

    const-string v5, "USER_ID"

    const-string v6, "0"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$6;

    invoke-direct {v5, p0, v1, p1}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$6;-><init>(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;II)V

    invoke-static {p1, v3, p2, v4, v5}, Lcom/cashwalk/cashwalk/util/network/RestClient;->updatePoint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler2;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v2

    .line 881
    .local v2, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 882
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1082
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->finish()V

    .line 1083
    const v0, 0x7f050017

    const v1, 0x7f050021

    invoke-virtual {p0, v0, v1}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->overridePendingTransition(II)V

    .line 1084
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v1, 0x7f040051

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->setContentView(I)V

    .line 100
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x480000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 103
    invoke-static {p0}, Lcom/cashwalk/cashwalk/util/Utils;->getDeviceUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tnkfactory/ad/TnkSession;->setUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->pref:Landroid/content/SharedPreferences;

    .line 109
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    const-string v2, "offerwall_enter"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    const/4 v1, 0x1

    new-instance v2, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;)V

    invoke-static {p0, v1, v2}, Lcom/tnkfactory/ad/TnkSession;->queryAdvertiseCount(Landroid/content/Context;ZLcom/tnkfactory/ad/ServiceCallback;)V

    .line 139
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->initViews()V

    .line 140
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->checkAppVersion()V

    .line 141
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1018
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 950
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onDestroy()V

    .line 953
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->countAdmobDownTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_0

    .line 954
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->countAdmobDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->countAdmobDownTimer:Landroid/os/CountDownTimer;

    .line 960
    :try_start_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->countUnityAdsDownTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_1

    .line 961
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->countUnityAdsDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 964
    :cond_1
    :goto_1
    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->countUnityAdsDownTimer:Landroid/os/CountDownTimer;

    .line 966
    return-void

    .line 956
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 963
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 267
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onResume()V

    .line 270
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->checkTnkPoint()V

    .line 271
    return-void
.end method

.method public setTnkCashInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "cash"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->tnkAdTotalCoin:Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->tnkAdTotalCoin:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->tv_tnkad_use_ad_point:Landroid/widget/TextView;

    const v1, 0x7f090234

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :cond_0
    return-void
.end method
