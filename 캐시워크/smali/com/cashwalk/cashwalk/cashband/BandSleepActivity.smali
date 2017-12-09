.class public Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "BandSleepActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final HIGH_VALUE:I

.field private final LOW_VALUE:I

.field private chart_bar_sleep_high:Lcom/github/mikephil/charting/charts/BarChart;

.field private chart_bar_sleep_low:Lcom/github/mikephil/charting/charts/BarChart;

.field private chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

.field private cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

.field private mGraphData:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

.field private mGraphDrawData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNowSelectDate:Lorg/joda/time/DateTime;

.field private mRecordMenu:Landroid/view/MenuItem;

.field private progress:Landroid/widget/ProgressBar;

.field private rl_calendar:Landroid/widget/RelativeLayout;

.field private tv_calendar_date:Landroid/widget/TextView;

.field private tv_data_empty:Landroid/widget/TextView;

.field private tv_deep_sleep:Landroid/widget/TextView;

.field private tv_end_time:Landroid/widget/TextView;

.field private tv_light_sleep:Landroid/widget/TextView;

.field private tv_start_time:Landroid/widget/TextView;

.field private tv_total_sleep:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    .line 64
    const/4 v0, 0x5

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->HIGH_VALUE:I

    .line 65
    const/4 v0, 0x3

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->LOW_VALUE:I

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;)Lcom/cashwalk/cashwalk/model/BandSleepGraph;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mGraphData:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    return-object v0
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;Lcom/cashwalk/cashwalk/model/BandSleepGraph;)Lcom/cashwalk/cashwalk/model/BandSleepGraph;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mGraphData:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    return-object p1
.end method

.method static synthetic access$102(Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mGraphDrawData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->refreshViews()V

    return-void
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->tv_calendar_date:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;Lorg/joda/time/DateTime;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;
    .param p1, "x1"    # Lorg/joda/time/DateTime;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->refreshDate(Lorg/joda/time/DateTime;)V

    return-void
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;Lorg/joda/time/DateTime;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;
    .param p1, "x1"    # Lorg/joda/time/DateTime;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->selectDate(Lorg/joda/time/DateTime;)V

    return-void
.end method

.method private hideCalendar()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 401
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->rl_calendar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setVisibility(I)V

    .line 403
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const v1, 0x7f1000ef

    .line 228
    const v0, 0x7f1000d6

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->progress:Landroid/widget/ProgressBar;

    .line 230
    const v0, 0x7f1000f2

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->tv_data_empty:Landroid/widget/TextView;

    .line 231
    const v0, 0x7f1001a2

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->tv_start_time:Landroid/widget/TextView;

    .line 232
    const v0, 0x7f1001a3

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->tv_end_time:Landroid/widget/TextView;

    .line 233
    const v0, 0x7f1001a4

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->tv_total_sleep:Landroid/widget/TextView;

    .line 234
    const v0, 0x7f1001a8

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->tv_light_sleep:Landroid/widget/TextView;

    .line 235
    const v0, 0x7f1001aa

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->tv_deep_sleep:Landroid/widget/TextView;

    .line 238
    const v0, 0x7f1001a5

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/PieChart;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    .line 239
    const v0, 0x7f10019f

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_low:Lcom/github/mikephil/charting/charts/BarChart;

    .line 240
    const v0, 0x7f1001a0

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_high:Lcom/github/mikephil/charting/charts/BarChart;

    .line 243
    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->tv_calendar_date:Landroid/widget/TextView;

    .line 244
    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->tv_calendar_date:Landroid/widget/TextView;

    .line 245
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->tv_calendar_date:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    const-string v2, "MM\uc6d4 dd\uc77c"

    invoke-virtual {v1, v2}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    const v0, 0x7f1000f8

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->rl_calendar:Landroid/widget/RelativeLayout;

    .line 248
    const v0, 0x7f1000f9

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    .line 249
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTopbarVisible(Z)V

    .line 250
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    const v1, 0x7f0b008c

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setDateTextAppearance(I)V

    .line 251
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Ljava/util/Calendar;)V

    .line 252
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity$2;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;)V

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setOnMonthChangedListener(Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;)V

    .line 263
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity$3;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity$3;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;)V

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setOnDateChangedListener(Lcom/prolificinteractive/materialcalendarview/OnDateSelectedListener;)V

    .line 276
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->rl_calendar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    const v0, 0x7f1000f0

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    const v0, 0x7f1000ed

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    const v0, 0x7f1000ee

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    return-void
.end method

.method private refreshDate(Lorg/joda/time/DateTime;)V
    .locals 2
    .param p1, "date"    # Lorg/joda/time/DateTime;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    .line 174
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->hideCalendar()V

    .line 175
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->tv_calendar_date:Landroid/widget/TextView;

    const-string v1, "MM\uc6d4 dd\uc77c"

    invoke-virtual {p1, v1}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method

.method private refreshTextViewData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->tv_calendar_date:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    const-string v2, "MM\uc6d4 dd\uc77c"

    invoke-virtual {v1, v2}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->tv_total_sleep:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mGraphData:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    iget v1, v1, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeAll:I

    invoke-static {v1, v3}, Lcom/cashwalk/cashwalk/util/Utils;->minuteToTimeString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->tv_deep_sleep:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mGraphData:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    iget v1, v1, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeHigh:I

    invoke-static {v1, v3}, Lcom/cashwalk/cashwalk/util/Utils;->minuteToTimeString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->tv_light_sleep:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mGraphData:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    iget v1, v1, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeLow:I

    invoke-static {v1, v3}, Lcom/cashwalk/cashwalk/util/Utils;->minuteToTimeString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->tv_start_time:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mGraphData:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    iget v1, v1, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeStart:I

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->minuteToTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->tv_end_time:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mGraphData:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    iget v1, v1, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeEnd:I

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->minuteToTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method

.method private refreshViews()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mGraphDrawData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mGraphDrawData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->tv_data_empty:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_low:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_high:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 156
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->setBarChartView()V

    .line 157
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->setLowData()V

    .line 158
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->setHighData()V

    .line 159
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->setPieChartView()V

    .line 160
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mGraphData:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    iget v0, v0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeLow:I

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mGraphData:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    iget v1, v1, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeHigh:I

    invoke-direct {p0, v0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->setPieData(II)V

    .line 161
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->refreshTextViewData()V

    .line 170
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->tv_data_empty:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_low:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_high:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    goto :goto_0
.end method

.method private selectDate(Lorg/joda/time/DateTime;)V
    .locals 7
    .param p1, "selectDateTime"    # Lorg/joda/time/DateTime;

    .prologue
    .line 104
    new-instance v4, Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    invoke-direct {v4}, Lcom/cashwalk/cashwalk/model/BandSleepGraph;-><init>()V

    iput-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mGraphData:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    .line 105
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mGraphDrawData:Ljava/util/ArrayList;

    .line 107
    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-virtual {p1, v4}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/joda/time/DateTime;

    invoke-direct {v5}, Lorg/joda/time/DateTime;-><init>()V

    const-string/jumbo v6, "yyyy-MM-dd"

    invoke-virtual {v5, v6}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    new-instance v0, Lcom/cashwalk/cashwalk/util/BandDBHelper;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/cashwalk/cashwalk/util/BandDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 110
    .local v0, "dbHelper":Lcom/cashwalk/cashwalk/util/BandDBHelper;
    new-instance v4, Lorg/joda/time/DateTime;

    invoke-direct {v4}, Lorg/joda/time/DateTime;-><init>()V

    const-string/jumbo v5, "yyyy-MM-dd"

    invoke-virtual {v4, v5}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->selectSleepFromDate(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 112
    .local v3, "todayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/BandSleep;>;"
    new-instance v2, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;

    invoke-direct {v2, v3}, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;-><init>(Ljava/util/ArrayList;)V

    .line 113
    .local v2, "sdm":Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;
    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;->getGraphData()Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    move-result-object v4

    iput-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mGraphData:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    .line 114
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mGraphData:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    if-eqz v4, :cond_0

    .line 115
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mGraphData:Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->record:Lorg/json/JSONArray;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;->convertDrawData(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mGraphDrawData:Ljava/util/ArrayList;

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->refreshViews()V

    .line 147
    .end local v0    # "dbHelper":Lcom/cashwalk/cashwalk/util/BandDBHelper;
    .end local v2    # "sdm":Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;
    .end local v3    # "todayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/BandSleep;>;"
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 123
    new-instance v4, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity$1;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity$1;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;)V

    invoke-static {p1, v4}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getCashBandSleepDayData(Lorg/joda/time/DateTime;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .line 144
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method private setBarChartView()V
    .locals 9

    .prologue
    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 285
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_low:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setTouchEnabled(Z)V

    .line 286
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_low:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 287
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_low:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 288
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_low:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setDoubleTapToZoomEnabled(Z)V

    .line 289
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_low:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 290
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_low:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 291
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_low:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setDragEnabled(Z)V

    .line 292
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_low:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4, v6, v7, v6, v6}, Lcom/github/mikephil/charting/charts/BarChart;->zoom(FFFF)V

    .line 293
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_low:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 296
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_low:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    .line 297
    .local v1, "lowY":Lcom/github/mikephil/charting/components/YAxis;
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 298
    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 299
    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 300
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 301
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 304
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_low:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    .line 305
    .local v0, "highX":Lcom/github/mikephil/charting/components/XAxis;
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 306
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawLabels(Z)V

    .line 307
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 308
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/XAxis;->setXOffset(F)V

    .line 311
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_high:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setTouchEnabled(Z)V

    .line 312
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_high:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 313
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_high:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 314
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_high:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setDoubleTapToZoomEnabled(Z)V

    .line 315
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_high:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 316
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_high:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 317
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_high:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setDragEnabled(Z)V

    .line 318
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_high:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4, v6, v7, v6, v6}, Lcom/github/mikephil/charting/charts/BarChart;->zoom(FFFF)V

    .line 319
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_high:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 322
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_high:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    .line 323
    .local v3, "yAxis":Lcom/github/mikephil/charting/components/YAxis;
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 324
    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 325
    invoke-virtual {v3, v8}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 326
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 327
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 330
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_high:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v2

    .line 331
    .local v2, "xAxis":Lcom/github/mikephil/charting/components/XAxis;
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 332
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawLabels(Z)V

    .line 333
    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 334
    const-string v4, "#979797"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/XAxis;->setAxisLineColor(I)V

    .line 335
    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/XAxis;->setAxisLineWidth(F)V

    .line 336
    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/components/XAxis;->setXOffset(F)V

    .line 337
    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 339
    return-void
.end method

.method private setHighData()V
    .locals 12

    .prologue
    const/16 v11, 0xff

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 367
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v2, "entry":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mGraphDrawData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 369
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mGraphDrawData:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 370
    .local v5, "sleepType":I
    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 371
    new-instance v6, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v7, v3

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-direct {v6, v7, v8}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 373
    :cond_0
    new-instance v6, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v7, v3

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 377
    .end local v5    # "sleepType":I
    :cond_1
    new-instance v4, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v6, "label"

    invoke-direct {v4, v2, v6}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 378
    .local v4, "set":Lcom/github/mikephil/charting/data/BarDataSet;
    invoke-virtual {v4, v9}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawIcons(Z)V

    .line 379
    new-array v6, v9, [I

    const-string v7, "#834496"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v10

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 380
    invoke-virtual {v4, v9}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 381
    invoke-static {v10, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightColor(I)V

    .line 383
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v1, "dataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    .line 387
    .local v0, "data":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v0, v10}, Lcom/github/mikephil/charting/data/BarData;->setValueTextColor(I)V

    .line 388
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    .line 390
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_high:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 391
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_high:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/charts/BarChart;->setFitBars(Z)V

    .line 392
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_high:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 393
    return-void
.end method

.method private setLowData()V
    .locals 11

    .prologue
    const/16 v10, 0xff

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 343
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v2, "entry":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mGraphDrawData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 345
    new-instance v5, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v6, v3

    const/high16 v7, 0x40400000    # 3.0f

    invoke-direct {v5, v6, v7}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 348
    :cond_0
    new-instance v4, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v5, "label"

    invoke-direct {v4, v2, v5}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 349
    .local v4, "set":Lcom/github/mikephil/charting/data/BarDataSet;
    invoke-virtual {v4, v8}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawIcons(Z)V

    .line 350
    new-array v5, v8, [I

    const-string v6, "#E6DAEA"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 351
    invoke-virtual {v4, v8}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 352
    invoke-static {v9, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightColor(I)V

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
    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/data/BarData;->setValueTextColor(I)V

    .line 359
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    .line 361
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_low:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 362
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_low:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5, v8}, Lcom/github/mikephil/charting/charts/BarChart;->setFitBars(Z)V

    .line 363
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_bar_sleep_low:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 364
    return-void
.end method

.method private setPieChartView()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setUsePercentValues(Z)V

    .line 210
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setExtraOffsets(FFFF)V

    .line 212
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawHoleEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleRadius(F)V

    .line 214
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleColor(I)V

    .line 216
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleRadius(F)V

    .line 217
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleColor(I)V

    .line 219
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawCenterText(Z)V

    .line 220
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setRotationAngle(F)V

    .line 221
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setRotationEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setHighlightPerTapEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 225
    return-void
.end method

.method private setPieData(II)V
    .locals 7
    .param p1, "light"    # I
    .param p2, "deep"    # I

    .prologue
    const/4 v6, 0x0

    .line 190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/PieEntry;>;"
    new-instance v3, Lcom/github/mikephil/charting/data/PieEntry;

    int-to-float v4, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v3, Lcom/github/mikephil/charting/data/PieEntry;

    int-to-float v4, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v1, Lcom/github/mikephil/charting/data/PieDataSet;

    const-string v3, "Election Results"

    invoke-direct {v1, v2, v3}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 195
    .local v1, "dataSet":Lcom/github/mikephil/charting/data/PieDataSet;
    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/data/PieDataSet;->setDrawIcons(Z)V

    .line 196
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/PieDataSet;->setSliceSpace(F)V

    .line 197
    const/4 v3, 0x2

    new-array v3, v3, [I

    const-string v4, "#834496"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v6

    const/4 v4, 0x1

    const-string v5, "#E6DAEA"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/data/PieDataSet;->setColors([I)V

    .line 199
    new-instance v0, Lcom/github/mikephil/charting/data/PieData;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/data/PieData;-><init>(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    .line 200
    .local v0, "data":Lcom/github/mikephil/charting/data/PieData;
    new-instance v3, Lcom/cashwalk/cashwalk/cashband/chartutil/PieChartFormatter;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/cashband/chartutil/PieChartFormatter;-><init>()V

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/PieData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IValueFormatter;)V

    .line 201
    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/PieData;->setValueTextSize(F)V

    .line 202
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/PieData;->setValueTextColor(I)V

    .line 204
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 205
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->chart_pie:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    .line 206
    return-void
.end method

.method private showCalendar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 396
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->rl_calendar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setVisibility(I)V

    .line 398
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 407
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 446
    :goto_0
    return-void

    .line 409
    :sswitch_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->hideCalendar()V

    goto :goto_0

    .line 414
    :sswitch_1
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->showCalendar()V

    .line 416
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 417
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getYear()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 418
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getMonthOfYear()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 419
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getDayOfMonth()I

    move-result v3

    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 420
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v3, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setCurrentDate(Ljava/util/Calendar;)V

    goto :goto_0

    .line 423
    .end local v0    # "cal":Ljava/util/Calendar;
    :sswitch_2
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object v3

    iput-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    .line 425
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 426
    .local v2, "right":Ljava/util/Calendar;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getYear()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 427
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getMonthOfYear()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 428
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getDayOfMonth()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 429
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v3, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Ljava/util/Calendar;)V

    .line 430
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-direct {p0, v3}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->refreshDate(Lorg/joda/time/DateTime;)V

    .line 431
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-direct {p0, v3}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->selectDate(Lorg/joda/time/DateTime;)V

    goto :goto_0

    .line 435
    .end local v2    # "right":Ljava/util/Calendar;
    :sswitch_3
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v3

    iput-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    .line 437
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 438
    .local v1, "left":Ljava/util/Calendar;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getYear()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 439
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getMonthOfYear()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 440
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getDayOfMonth()I

    move-result v3

    invoke-virtual {v1, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 441
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v3, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Ljava/util/Calendar;)V

    .line 442
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-direct {p0, v3}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->refreshDate(Lorg/joda/time/DateTime;)V

    .line 443
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-direct {p0, v3}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->selectDate(Lorg/joda/time/DateTime;)V

    goto/16 :goto_0

    .line 407
    :sswitch_data_0
    .sparse-switch
        0x7f1000ed -> :sswitch_3
        0x7f1000ee -> :sswitch_1
        0x7f1000f0 -> :sswitch_2
        0x7f1000f8 -> :sswitch_0
    .end sparse-switch
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
    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->setContentView(I)V

    .line 93
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    .line 94
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->initView()V

    .line 95
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 450
    const-string/jumbo v0, "\uae30\ub85d"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mRecordMenu:Landroid/view/MenuItem;

    .line 451
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mRecordMenu:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 452
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mRecordMenu:Landroid/view/MenuItem;

    const v1, 0x7f0200b9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 453
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mRecordMenu:Landroid/view/MenuItem;

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity$4;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity$4;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 461
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->selectDate(Lorg/joda/time/DateTime;)V

    .line 101
    return-void
.end method
