.class public Lcom/cashwalk/cashwalk/activity/CouponActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CouponActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/activity/CouponActivity$CouponListAdapter;
    }
.end annotation


# instance fields
.field private empty:Landroid/widget/LinearLayout;

.field private listView:Lde/halfbit/pinnedsection/PinnedSectionListView;

.field private pref:Landroid/content/SharedPreferences;

.field private progress:Landroid/widget/ProgressBar;

.field private refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private rl_event_banner:Landroid/widget/RelativeLayout;

.field private rl_go_instagram:Landroid/widget/RelativeLayout;

.field private rl_instagram_event_popup:Landroid/widget/RelativeLayout;

.field private tv_instagram_event_msg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/CouponActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/CouponActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->rl_instagram_event_popup:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/CouponActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/CouponActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->refresh()V

    return-void
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/CouponActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/CouponActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/activity/CouponActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/CouponActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/activity/CouponActivity;)Lde/halfbit/pinnedsection/PinnedSectionListView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/CouponActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->listView:Lde/halfbit/pinnedsection/PinnedSectionListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/activity/CouponActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/CouponActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->empty:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/activity/CouponActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/CouponActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->rl_event_banner:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/activity/CouponActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/CouponActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private refresh()V
    .locals 2

    .prologue
    .line 156
    new-instance v1, Lcom/cashwalk/cashwalk/activity/CouponActivity$5;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/CouponActivity$5;-><init>(Lcom/cashwalk/cashwalk/activity/CouponActivity;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getMyCoupon(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 192
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 193
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->finish()V

    .line 198
    const v0, 0x7f050017

    const v1, 0x7f050021

    invoke-virtual {p0, v0, v1}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->overridePendingTransition(II)V

    .line 199
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x19

    const/16 v7, 0x12

    const/4 v4, 0x1

    const v6, -0xc7c7c8

    const/16 v5, 0x21

    .line 66
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v2, 0x7f040034

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x480000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 71
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->pref:Landroid/content/SharedPreferences;

    .line 73
    const v2, 0x7f1001ba

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lde/halfbit/pinnedsection/PinnedSectionListView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->listView:Lde/halfbit/pinnedsection/PinnedSectionListView;

    .line 74
    const v2, 0x7f1001bb

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->empty:Landroid/widget/LinearLayout;

    .line 75
    const v2, 0x7f1000d6

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->progress:Landroid/widget/ProgressBar;

    .line 76
    const v2, 0x7f1001b9

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 77
    const v2, 0x7f1001bc

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->rl_instagram_event_popup:Landroid/widget/RelativeLayout;

    .line 78
    const v2, 0x7f1001bd

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->rl_go_instagram:Landroid/widget/RelativeLayout;

    .line 79
    const v2, 0x7f1001b8

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->rl_event_banner:Landroid/widget/RelativeLayout;

    .line 80
    const v2, 0x7f1001bf

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->tv_instagram_event_msg:Landroid/widget/TextView;

    .line 82
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 83
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090148

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 85
    .local v1, "eventSps":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v2, v7, v8, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 86
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v2, v7, v8, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 87
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v3, 0x3b

    const/16 v4, 0x44

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 88
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x3b

    const/16 v4, 0x44

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 89
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->tv_instagram_event_msg:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->rl_instagram_event_popup:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/cashwalk/cashwalk/activity/CouponActivity$1;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/CouponActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/CouponActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->rl_go_instagram:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/cashwalk/cashwalk/activity/CouponActivity$2;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/CouponActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/CouponActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->rl_event_banner:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/cashwalk/cashwalk/activity/CouponActivity$3;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/CouponActivity$3;-><init>(Lcom/cashwalk/cashwalk/activity/CouponActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->listView:Lde/halfbit/pinnedsection/PinnedSectionListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lde/halfbit/pinnedsection/PinnedSectionListView;->setShadowVisible(Z)V

    .line 123
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v3, Lcom/cashwalk/cashwalk/activity/CouponActivity$4;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/CouponActivity$4;-><init>(Lcom/cashwalk/cashwalk/activity/CouponActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 131
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v2

    const-string v3, "coupon_enter"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 145
    packed-switch p1, :pswitch_data_0

    .line 152
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->rl_instagram_event_popup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponActivity;->rl_instagram_event_popup:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 140
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/CouponActivity;->refresh()V

    .line 141
    return-void
.end method
