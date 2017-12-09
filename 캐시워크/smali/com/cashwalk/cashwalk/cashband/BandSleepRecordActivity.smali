.class public Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "BandSleepRecordActivity.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final CHART_ZOOM_LEVEL:F

.field private SELECT_ITEM_INDEX:I

.field private chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

.field private chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

.field private dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

.field private iv_left_btn:Landroid/widget/ImageView;

.field private iv_right_btn:Landroid/widget/ImageView;

.field private li_calendar:Landroid/widget/LinearLayout;

.field private mChartBarEntry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFromDate:Lorg/joda/time/DateTime;

.field private mIsFirstEnter:Z

.field private mSelectDate:Lorg/joda/time/DateTime;

.field private mSleepAllTime:Ljava/lang/String;

.field private mSleepDayCharts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSleepDays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/model/BandSleepGraph;",
            ">;"
        }
    .end annotation
.end field

.field private mSleepDeepTime:Ljava/lang/String;

.field private mSleepEnd:Ljava/lang/String;

.field private mSleepLightTime:Ljava/lang/String;

.field private mSleepStart:Ljava/lang/String;

.field private mToDate:Lorg/joda/time/DateTime;

.field private final mTodayDate:Lorg/joda/time/DateTime;

.field private progress:Landroid/widget/ProgressBar;

.field private rl_calendar:Landroid/widget/RelativeLayout;

.field private tv_calendar_date:Landroid/widget/TextView;

.field private tv_data_empty:Landroid/widget/TextView;

.field private tv_deep_sleep:Landroid/widget/TextView;

.field private tv_end_sleep:Landroid/widget/TextView;

.field private tv_light_sleep:Landroid/widget/TextView;

.field private tv_start_sleep:Landroid/widget/TextView;

.field private tv_total_sleep:Landroid/widget/TextView;

.field private v_calendar_bg:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    .line 58
    const v0, 0x40964d94

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->CHART_ZOOM_LEVEL:F

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->SELECT_ITEM_INDEX:I

    .line 66
    const-string v0, "0\uc2dc 0\ubd84"

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepStart:Ljava/lang/String;

    .line 67
    const-string v0, "0\uc2dc 0\ubd84"

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepEnd:Ljava/lang/String;

    .line 68
    const-string v0, "0\uc2dc\uac04 0\ubd84"

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepAllTime:Ljava/lang/String;

    .line 69
    const-string v0, "0\uc2dc\uac04 0\ubd84"

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepDeepTime:Ljava/lang/String;

    .line 70
    const-string v0, "0\uc2dc\uac04 0\ubd84"

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepLightTime:Ljava/lang/String;

    .line 92
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->withDayOfMonth(I)Lorg/joda/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mFromDate:Lorg/joda/time/DateTime;

    .line 93
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mToDate:Lorg/joda/time/DateTime;

    .line 94
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSelectDate:Lorg/joda/time/DateTime;

    .line 95
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mTodayDate:Lorg/joda/time/DateTime;

    .line 97
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mIsFirstEnter:Z

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)Lorg/joda/time/DateTime;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mFromDate:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)Lorg/joda/time/DateTime;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mToDate:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepDays:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)Lorg/joda/time/DateTime;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mTodayDate:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->setBarChartView()V

    return-void
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->setBarData()V

    return-void
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->setPieChartView()V

    return-void
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->setSleepTextView()V

    return-void
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mIsFirstEnter:Z

    return v0
.end method

.method static synthetic access$802(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mIsFirstEnter:Z

    return p1
.end method

.method static synthetic access$900(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->setPieData(FF)V

    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 263
    const v0, 0x7f1000d6

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->progress:Landroid/widget/ProgressBar;

    .line 265
    const v0, 0x7f1000f2

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->tv_data_empty:Landroid/widget/TextView;

    .line 266
    const v0, 0x7f1001a4

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->tv_total_sleep:Landroid/widget/TextView;

    .line 267
    const v0, 0x7f1001a8

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->tv_light_sleep:Landroid/widget/TextView;

    .line 268
    const v0, 0x7f1001aa

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->tv_deep_sleep:Landroid/widget/TextView;

    .line 269
    const v0, 0x7f1001ae

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->tv_start_sleep:Landroid/widget/TextView;

    .line 270
    const v0, 0x7f1001af

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->tv_end_sleep:Landroid/widget/TextView;

    .line 272
    const v0, 0x7f1000f0

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->iv_right_btn:Landroid/widget/ImageView;

    .line 273
    const v0, 0x7f1000ed

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->iv_left_btn:Landroid/widget/ImageView;

    .line 274
    const v0, 0x7f1000ee

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->li_calendar:Landroid/widget/LinearLayout;

    .line 276
    const v0, 0x7f1000f8

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->rl_calendar:Landroid/widget/RelativeLayout;

    .line 277
    const v0, 0x7f1000fc

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    .line 278
    const v0, 0x7f1001b1

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->v_calendar_bg:Landroid/view/View;

    .line 280
    const v0, 0x7f1000ef

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->tv_calendar_date:Landroid/widget/TextView;

    .line 282
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->v_calendar_bg:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->iv_right_btn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->iv_left_btn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->li_calendar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    return-void
.end method

.method private requestData()V
    .locals 4

    .prologue
    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepDayCharts:Ljava/util/ArrayList;

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepDays:Ljava/util/ArrayList;

    .line 121
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 122
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->tv_calendar_date:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSelectDate:Lorg/joda/time/DateTime;

    const-string/jumbo v3, "yyyy\ub144 MM\uc6d4"

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSelectDate:Lorg/joda/time/DateTime;

    const-string/jumbo v2, "yyyy\ub144 MM\uc6d4"

    invoke-virtual {v1, v2}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mTodayDate:Lorg/joda/time/DateTime;

    const-string/jumbo v3, "yyyy\ub144 MM\uc6d4"

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->setTodayRecord()V

    .line 127
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mTodayDate:Lorg/joda/time/DateTime;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mToDate:Lorg/joda/time/DateTime;

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mFromDate:Lorg/joda/time/DateTime;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-virtual {v1, v2}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mToDate:Lorg/joda/time/DateTime;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity$1;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity$1;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)V

    invoke-static {v1, v2, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getCashBandSleepRecordData(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 182
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 183
    return-void
.end method

.method private setBarChartView()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 290
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 291
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 292
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setDoubleTapToZoomEnabled(Z)V

    .line 293
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 294
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 295
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/charts/BarChart;->setDragEnabled(Z)V

    .line 296
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/charts/BarChart;->setTouchEnabled(Z)V

    .line 297
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/BarChart;->highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 299
    iget v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->SELECT_ITEM_INDEX:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    move v0, v3

    .line 300
    .local v0, "moveIndex":I
    :goto_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    int-to-float v5, v0

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/BarChart;->moveViewToX(F)V

    .line 301
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 302
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4, p0}, Lcom/github/mikephil/charting/charts/BarChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 305
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    .line 306
    .local v2, "y":Lcom/github/mikephil/charting/components/YAxis;
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 307
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 308
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 309
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 312
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    .line 313
    .local v1, "x":Lcom/github/mikephil/charting/components/XAxis;
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 314
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 315
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/components/XAxis;->setXOffset(F)V

    .line 316
    new-instance v3, Lcom/cashwalk/cashwalk/cashband/chartutil/SleepDateValueFormatter;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSelectDate:Lorg/joda/time/DateTime;

    invoke-direct {v3, v4}, Lcom/cashwalk/cashwalk/cashband/chartutil/SleepDateValueFormatter;-><init>(Lorg/joda/time/DateTime;)V

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;)V

    .line 317
    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/components/XAxis;->setDrawLabels(Z)V

    .line 318
    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 319
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 320
    return-void

    .line 299
    .end local v0    # "moveIndex":I
    .end local v1    # "x":Lcom/github/mikephil/charting/components/XAxis;
    .end local v2    # "y":Lcom/github/mikephil/charting/components/YAxis;
    :cond_0
    iget v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->SELECT_ITEM_INDEX:I

    add-int/lit8 v0, v4, -0x4

    goto :goto_0
.end method

.method private setBarData()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 323
    const/4 v3, 0x1

    .line 324
    .local v3, "isDataEmpty":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mChartBarEntry:Ljava/util/ArrayList;

    .line 326
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepDays:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 327
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepDays:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    .line 328
    .local v0, "data":Lcom/cashwalk/cashwalk/model/BandSleepGraph;
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mChartBarEntry:Ljava/util/ArrayList;

    new-instance v6, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v7, v2

    new-array v8, v12, [F

    iget v9, v0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeHigh:I

    int-to-float v9, v9

    aput v9, v8, v10

    iget v9, v0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeLow:I

    int-to-float v9, v9

    aput v9, v8, v11

    invoke-direct {v6, v7, v8}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(F[F)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    iget v5, v0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeHigh:I

    if-nez v5, :cond_0

    iget v5, v0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeLow:I

    if-eqz v5, :cond_1

    .line 331
    :cond_0
    const/4 v3, 0x0

    .line 326
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    .end local v0    # "data":Lcom/cashwalk/cashwalk/model/BandSleepGraph;
    :cond_2
    if-eqz v3, :cond_3

    .line 336
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->tv_data_empty:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    :goto_1
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    .line 344
    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 345
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v5, v10}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 346
    .local v4, "set1":Lcom/github/mikephil/charting/data/BarDataSet;
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mChartBarEntry:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/data/BarDataSet;->setValues(Ljava/util/List;)V

    .line 347
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarData;->notifyDataChanged()V

    .line 348
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/BarChart;->notifyDataSetChanged()V

    .line 363
    :goto_2
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5, v11}, Lcom/github/mikephil/charting/charts/BarChart;->setFitBars(Z)V

    .line 364
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 365
    return-void

    .line 338
    .end local v4    # "set1":Lcom/github/mikephil/charting/data/BarDataSet;
    :cond_3
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->tv_data_empty:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 350
    :cond_4
    new-instance v4, Lcom/github/mikephil/charting/data/BarDataSet;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mChartBarEntry:Ljava/util/ArrayList;

    const-string v6, "BarDataSet"

    invoke-direct {v4, v5, v6}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 351
    .restart local v4    # "set1":Lcom/github/mikephil/charting/data/BarDataSet;
    invoke-virtual {v4, v10}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawIcons(Z)V

    .line 352
    new-array v5, v12, [I

    const-string v6, "#834496"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v10

    const-string v6, "#E6DAEA"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v11

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 354
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v1, "dataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    .line 358
    .local v0, "data":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v0, v10}, Lcom/github/mikephil/charting/data/BarData;->setValueTextColor(I)V

    .line 359
    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    .line 360
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    goto :goto_2
.end method

.method private setPieChartView()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 368
    const v0, 0x7f1001a5

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/PieChart;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    .line 369
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setUsePercentValues(Z)V

    .line 370
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setExtraOffsets(FFFF)V

    .line 372
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawHoleEnabled(Z)V

    .line 373
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleRadius(F)V

    .line 374
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleColor(I)V

    .line 376
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleRadius(F)V

    .line 377
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleColor(I)V

    .line 379
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawCenterText(Z)V

    .line 380
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setRotationAngle(F)V

    .line 381
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setRotationEnabled(Z)V

    .line 382
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setHighlightPerTapEnabled(Z)V

    .line 383
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 384
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 385
    return-void
.end method

.method private setPieData(FF)V
    .locals 6
    .param p1, "light"    # F
    .param p2, "deep"    # F

    .prologue
    const/4 v5, 0x0

    .line 388
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/PieEntry;>;"
    new-instance v3, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v3, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v1, Lcom/github/mikephil/charting/data/PieDataSet;

    const-string v3, "Election Results"

    invoke-direct {v1, v2, v3}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 393
    .local v1, "dataSet":Lcom/github/mikephil/charting/data/PieDataSet;
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/data/PieDataSet;->setDrawIcons(Z)V

    .line 394
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/PieDataSet;->setSliceSpace(F)V

    .line 395
    const/4 v3, 0x2

    new-array v3, v3, [I

    const-string v4, "#834496"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v5

    const/4 v4, 0x1

    const-string v5, "#E6DAEA"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/PieDataSet;->setColors([I)V

    .line 397
    new-instance v0, Lcom/github/mikephil/charting/data/PieData;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/data/PieData;-><init>(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    .line 398
    .local v0, "data":Lcom/github/mikephil/charting/data/PieData;
    new-instance v3, Lcom/cashwalk/cashwalk/cashband/chartutil/PieChartFormatter;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/cashband/chartutil/PieChartFormatter;-><init>()V

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/PieData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IValueFormatter;)V

    .line 399
    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/PieData;->setValueTextSize(F)V

    .line 400
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/PieData;->setValueTextColor(I)V

    .line 402
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 403
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    .line 404
    return-void
.end method

.method private setSleepTextView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 244
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepDays:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepDays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepDays:Ljava/util/ArrayList;

    iget v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->SELECT_ITEM_INDEX:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    .line 249
    .local v0, "graph":Lcom/cashwalk/cashwalk/model/BandSleepGraph;
    iget v1, v0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeStart:I

    invoke-static {v1, v4}, Lcom/cashwalk/cashwalk/util/Utils;->minuteToTimeString(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepStart:Ljava/lang/String;

    .line 250
    iget v1, v0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeEnd:I

    invoke-static {v1, v4}, Lcom/cashwalk/cashwalk/util/Utils;->minuteToTimeString(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepEnd:Ljava/lang/String;

    .line 251
    iget v1, v0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeAll:I

    invoke-static {v1, v3}, Lcom/cashwalk/cashwalk/util/Utils;->minuteToTimeString(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepAllTime:Ljava/lang/String;

    .line 252
    iget v1, v0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeHigh:I

    invoke-static {v1, v3}, Lcom/cashwalk/cashwalk/util/Utils;->minuteToTimeString(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepDeepTime:Ljava/lang/String;

    .line 253
    iget v1, v0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeLow:I

    invoke-static {v1, v3}, Lcom/cashwalk/cashwalk/util/Utils;->minuteToTimeString(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepLightTime:Ljava/lang/String;

    .line 255
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->tv_total_sleep:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepAllTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->tv_light_sleep:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepLightTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->tv_deep_sleep:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepDeepTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->tv_start_sleep:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepStart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->tv_end_sleep:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepEnd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setTodayRecord()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 186
    iget-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mTodayDate:Lorg/joda/time/DateTime;

    invoke-virtual {v9}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v9

    invoke-virtual {v9}, Lorg/joda/time/DateTime$Property;->withMaximumValue()Lorg/joda/time/DateTime;

    move-result-object v4

    .line 187
    .local v4, "lastDayOfMonth":Lorg/joda/time/DateTime;
    iget-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mTodayDate:Lorg/joda/time/DateTime;

    const-string/jumbo v10, "yyyy-MM-dd"

    invoke-virtual {v9, v10}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, "nowDayOfMonth":Ljava/lang/String;
    const/4 v2, 0x0

    .line 190
    .local v2, "isAdd":Z
    new-instance v0, Lcom/cashwalk/cashwalk/util/BandDBHelper;

    const/4 v9, 0x0

    invoke-direct {v0, p0, v9}, Lcom/cashwalk/cashwalk/util/BandDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 191
    .local v0, "dbHelper":Lcom/cashwalk/cashwalk/util/BandDBHelper;
    iget-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mTodayDate:Lorg/joda/time/DateTime;

    const-string/jumbo v10, "yyyy-MM-dd"

    invoke-virtual {v9, v10}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->selectSleepFromDate(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 193
    .local v8, "todayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/BandSleep;>;"
    new-instance v7, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;

    invoke-direct {v7, v8}, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;-><init>(Ljava/util/ArrayList;)V

    .line 194
    .local v7, "sdm":Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;
    invoke-virtual {v7}, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;->getGraphData()Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    move-result-object v1

    .line 196
    .local v1, "graphData":Lcom/cashwalk/cashwalk/model/BandSleepGraph;
    if-eqz v1, :cond_2

    .line 197
    :goto_0
    if-nez v2, :cond_1

    .line 198
    const-string/jumbo v9, "yyyy-MM-dd"

    invoke-virtual {v4, v9}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 199
    iget-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepDays:Ljava/util/ArrayList;

    invoke-virtual {v9, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 200
    const/4 v2, 0x1

    .line 205
    :goto_1
    invoke-virtual {v4, v12}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v4

    goto :goto_0

    .line 202
    :cond_0
    iget-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepDays:Ljava/util/ArrayList;

    new-instance v10, Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    invoke-direct {v10}, Lcom/cashwalk/cashwalk/model/BandSleepGraph;-><init>()V

    invoke-virtual {v9, v11, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 208
    :cond_1
    iget v9, v1, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeStart:I

    invoke-static {v9, v12}, Lcom/cashwalk/cashwalk/util/Utils;->minuteToTimeString(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepStart:Ljava/lang/String;

    .line 209
    iget v9, v1, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeEnd:I

    invoke-static {v9, v12}, Lcom/cashwalk/cashwalk/util/Utils;->minuteToTimeString(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepEnd:Ljava/lang/String;

    .line 210
    iget v9, v1, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeAll:I

    invoke-static {v9, v11}, Lcom/cashwalk/cashwalk/util/Utils;->minuteToTimeString(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepAllTime:Ljava/lang/String;

    .line 211
    iget v9, v1, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeHigh:I

    invoke-static {v9, v11}, Lcom/cashwalk/cashwalk/util/Utils;->minuteToTimeString(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepDeepTime:Ljava/lang/String;

    .line 212
    iget v9, v1, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeLow:I

    invoke-static {v9, v11}, Lcom/cashwalk/cashwalk/util/Utils;->minuteToTimeString(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepLightTime:Ljava/lang/String;

    .line 214
    iget-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mTodayDate:Lorg/joda/time/DateTime;

    invoke-virtual {v9}, Lorg/joda/time/DateTime;->getDayOfMonth()I

    move-result v9

    iput v9, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->SELECT_ITEM_INDEX:I

    .line 215
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->setBarChartView()V

    .line 216
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->setBarData()V

    .line 217
    iget v9, v1, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeLow:I

    int-to-float v9, v9

    iget v10, v1, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeHigh:I

    int-to-float v10, v10

    invoke-direct {p0, v9, v10}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->setPieData(FF)V

    .line 241
    :goto_2
    return-void

    .line 220
    :cond_2
    const/4 v3, 0x0

    .line 221
    .local v3, "lastDay":I
    iget-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mTodayDate:Lorg/joda/time/DateTime;

    invoke-virtual {v9}, Lorg/joda/time/DateTime;->getDayOfMonth()I

    move-result v5

    .line 223
    .local v5, "nowDay":I
    :cond_3
    :goto_3
    if-nez v2, :cond_5

    .line 225
    invoke-virtual {v4}, Lorg/joda/time/DateTime;->getDayOfMonth()I

    move-result v3

    .line 227
    if-gt v5, v3, :cond_4

    .line 228
    iget-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSleepDays:Ljava/util/ArrayList;

    new-instance v10, Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    invoke-direct {v10}, Lcom/cashwalk/cashwalk/model/BandSleepGraph;-><init>()V

    invoke-virtual {v9, v11, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 229
    invoke-virtual {v4, v12}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v4

    .line 232
    :cond_4
    if-ne v5, v3, :cond_3

    .line 233
    const/4 v2, 0x1

    goto :goto_3

    .line 238
    :cond_5
    iget-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mTodayDate:Lorg/joda/time/DateTime;

    const-string v10, "dd"

    invoke-virtual {v9, v10}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->SELECT_ITEM_INDEX:I

    .line 239
    invoke-direct {p0, v13, v13}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->setPieData(FF)V

    goto :goto_2
.end method


# virtual methods
.method public hideCalendar()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 413
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->rl_calendar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->v_calendar_bg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 416
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 477
    :goto_0
    return-void

    .line 440
    :sswitch_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->hideCalendar()V

    .line 441
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSelectDate:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->withYear(I)Lorg/joda/time/DateTime;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->withMonthOfYear(I)Lorg/joda/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSelectDate:Lorg/joda/time/DateTime;

    .line 442
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime$Property;->withMinimumValue()Lorg/joda/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mFromDate:Lorg/joda/time/DateTime;

    .line 443
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime$Property;->withMaximumValue()Lorg/joda/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mToDate:Lorg/joda/time/DateTime;

    .line 444
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->requestData()V

    .line 445
    iput v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->SELECT_ITEM_INDEX:I

    goto :goto_0

    .line 450
    :sswitch_1
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->showCalendar()V

    .line 451
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->setYear(I)V

    .line 452
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getMonthOfYear()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->setMonth(I)V

    goto :goto_0

    .line 456
    :sswitch_2
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->hideCalendar()V

    .line 457
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v0, v2}, Lorg/joda/time/DateTime;->plusMonths(I)Lorg/joda/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSelectDate:Lorg/joda/time/DateTime;

    .line 458
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime$Property;->withMinimumValue()Lorg/joda/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mFromDate:Lorg/joda/time/DateTime;

    .line 459
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime$Property;->withMaximumValue()Lorg/joda/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mToDate:Lorg/joda/time/DateTime;

    .line 460
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->requestData()V

    .line 461
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->setYear(I)V

    .line 462
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getMonthOfYear()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->setMonth(I)V

    .line 463
    iput v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->SELECT_ITEM_INDEX:I

    goto/16 :goto_0

    .line 467
    :sswitch_3
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->hideCalendar()V

    .line 468
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v0, v2}, Lorg/joda/time/DateTime;->minusMonths(I)Lorg/joda/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSelectDate:Lorg/joda/time/DateTime;

    .line 469
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime$Property;->withMinimumValue()Lorg/joda/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mFromDate:Lorg/joda/time/DateTime;

    .line 470
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime$Property;->withMaximumValue()Lorg/joda/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mToDate:Lorg/joda/time/DateTime;

    .line 471
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->requestData()V

    .line 472
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->setYear(I)V

    .line 473
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getMonthOfYear()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->setMonth(I)V

    .line 474
    iput v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->SELECT_ITEM_INDEX:I

    goto/16 :goto_0

    .line 438
    :sswitch_data_0
    .sparse-switch
        0x7f1000ed -> :sswitch_3
        0x7f1000ee -> :sswitch_1
        0x7f1000f0 -> :sswitch_2
        0x7f1001b1 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v0, 0x7f04002f

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->setContentView(I)V

    .line 105
    const v0, 0x7f1001ac

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    .line 106
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->chart_bar_stacked:Lcom/github/mikephil/charting/charts/BarChart;

    const v1, 0x40964d94

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/github/mikephil/charting/charts/BarChart;->zoom(FFFF)V

    .line 107
    return-void
.end method

.method public onNothingSelected()V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onResume()V

    .line 112
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->initView()V

    .line 113
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->setPieChartView()V

    .line 114
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->requestData()V

    .line 115
    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 6
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "h"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 420
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v5

    float-to-int v4, v5

    .line 421
    .local v4, "x":I
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->mChartBarEntry:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    .line 422
    .local v0, "barEntry":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v1

    .line 423
    .local v1, "chart":[F
    const/4 v5, 0x0

    aget v2, v1, v5

    .line 424
    .local v2, "high":F
    const/4 v5, 0x1

    aget v3, v1, v5

    .line 426
    .local v3, "low":F
    invoke-direct {p0, v3, v2}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->setPieData(FF)V

    .line 427
    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->SELECT_ITEM_INDEX:I

    .line 428
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->setSleepTextView()V

    .line 429
    return-void
.end method

.method public showCalendar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 407
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->rl_calendar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->v_calendar_bg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 410
    return-void
.end method
