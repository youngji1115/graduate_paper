.class public Lcom/cashwalk/cashwalk/activity/StatActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "StatActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/activity/StatActivity$TabsPagerAdapter;
    }
.end annotation


# instance fields
.field private mDayStatFragment:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

.field private mMonthStatFragment:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

.field private mViewPager:Lcom/cashwalk/cashwalk/util/SwipeViewPager;

.field private mWeekStatFragment:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

.field private pref:Landroid/content/SharedPreferences;

.field private tabStrip:Lcom/astuetz/PagerSlidingTabStrip;

.field private tabsLinearLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/StatActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StatActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->tabsLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/StatActivity;)Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StatActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->mDayStatFragment:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/StatActivity;)Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StatActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->mWeekStatFragment:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/activity/StatActivity;)Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StatActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->mMonthStatFragment:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/activity/StatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StatActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/StatActivity;->initViews()V

    return-void
.end method

.method private initViews()V
    .locals 7

    .prologue
    const v6, 0x7f0f0091

    const/4 v5, 0x0

    .line 62
    new-instance v2, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;-><init>()V

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->mDayStatFragment:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    .line 63
    new-instance v2, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;-><init>()V

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->mWeekStatFragment:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    .line 64
    new-instance v2, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;-><init>()V

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->mMonthStatFragment:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    .line 65
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->mWeekStatFragment:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->setType(I)V

    .line 66
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->mMonthStatFragment:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->setType(I)V

    .line 68
    const v2, 0x7f1001b6

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/StatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/util/SwipeViewPager;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->mViewPager:Lcom/cashwalk/cashwalk/util/SwipeViewPager;

    .line 69
    const v2, 0x7f100285

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/StatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/astuetz/PagerSlidingTabStrip;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->tabStrip:Lcom/astuetz/PagerSlidingTabStrip;

    .line 70
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->mViewPager:Lcom/cashwalk/cashwalk/util/SwipeViewPager;

    invoke-virtual {v2, v5}, Lcom/cashwalk/cashwalk/util/SwipeViewPager;->setPagingEnabled(Z)V

    .line 72
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->mViewPager:Lcom/cashwalk/cashwalk/util/SwipeViewPager;

    new-instance v3, Lcom/cashwalk/cashwalk/activity/StatActivity$TabsPagerAdapter;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/cashwalk/cashwalk/activity/StatActivity$TabsPagerAdapter;-><init>(Lcom/cashwalk/cashwalk/activity/StatActivity;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/util/SwipeViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 73
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->tabStrip:Lcom/astuetz/PagerSlidingTabStrip;

    const/16 v3, 0x10

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setTextSize(I)V

    .line 74
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->tabStrip:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v2, v6}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColorResource(I)V

    .line 75
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->tabStrip:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->mViewPager:Lcom/cashwalk/cashwalk/util/SwipeViewPager;

    invoke-virtual {v2, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 77
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->tabStrip:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v2, v5}, Lcom/astuetz/PagerSlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->tabsLinearLayout:Landroid/widget/LinearLayout;

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->tabsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->tabsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 81
    .local v1, "tv":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 87
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->tabStrip:Lcom/astuetz/PagerSlidingTabStrip;

    new-instance v3, Lcom/cashwalk/cashwalk/activity/StatActivity$1;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/StatActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/StatActivity;)V

    invoke-virtual {v2, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 119
    return-void
.end method

.method private uploadSteps(I)V
    .locals 3
    .param p1, "stepsTotal"    # I

    .prologue
    .line 209
    if-ltz p1, :cond_0

    const v1, 0x61a80

    if-le p1, v1, :cond_1

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/StatActivity;->initViews()V

    .line 220
    :goto_0
    return-void

    .line 212
    :cond_1
    const/4 v1, 0x0

    new-instance v2, Lcom/cashwalk/cashwalk/activity/StatActivity$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/StatActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/StatActivity;)V

    invoke-static {p1, v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->updateSteps(IZLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 218
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StatActivity;->getApplication()Landroid/app/Application;

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
    .line 204
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StatActivity;->finish()V

    .line 205
    const v0, 0x7f050017

    const v1, 0x7f050021

    invoke-virtual {p0, v0, v1}, Lcom/cashwalk/cashwalk/activity/StatActivity;->overridePendingTransition(II)V

    .line 206
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v1, 0x7f04004c

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StatActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x480000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 52
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    const-string/jumbo v2, "stat_enter"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->pref:Landroid/content/SharedPreferences;

    .line 58
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "steps"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/cashwalk/cashwalk/activity/StatActivity;->uploadSteps(I)V

    .line 59
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StatActivity;->shareStat()V

    .line 134
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 139
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 136
    :pswitch_0
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    .line 137
    const/4 v0, 0x1

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public shareStat()V
    .locals 4

    .prologue
    .line 146
    new-instance v0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;

    sget-object v1, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->REF_STAT:Ljava/lang/String;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StatActivity;->mViewPager:Lcom/cashwalk/cashwalk/util/SwipeViewPager;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/util/SwipeViewPager;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1001b6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Z)V

    .line 147
    .local v0, "mShareDialog":Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;
    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->show()V

    .line 148
    return-void
.end method
