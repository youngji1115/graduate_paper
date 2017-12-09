.class public Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "BandHeartRateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private START_HOUR_VALUE:I

.field private chart_line_heartrate:Lcom/github/mikephil/charting/charts/LineChart;

.field private cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

.field private mHeartDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
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

.field private tv_heartrate_avg:Landroid/widget/TextView;

.field private tv_heartrate_high:Landroid/widget/TextView;

.field private tv_heartrate_low:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->START_HOUR_VALUE:I

    return-void
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->START_HOUR_VALUE:I

    return p1
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mHeartDatas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->refreshViews()V

    return-void
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->tv_calendar_date:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;Lorg/joda/time/DateTime;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;
    .param p1, "x1"    # Lorg/joda/time/DateTime;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->refreshDate(Lorg/joda/time/DateTime;)V

    return-void
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;Lorg/joda/time/DateTime;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;
    .param p1, "x1"    # Lorg/joda/time/DateTime;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->selectDate(Lorg/joda/time/DateTime;)V

    return-void
.end method

.method private hideCalendar()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 349
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->rl_calendar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setVisibility(I)V

    .line 351
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 161
    const v0, 0x7f1000f3

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->chart_line_heartrate:Lcom/github/mikephil/charting/charts/LineChart;

    .line 162
    const v0, 0x7f1000d6

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->progress:Landroid/widget/ProgressBar;

    .line 164
    const v0, 0x7f1000f5

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->tv_heartrate_avg:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f1000f6

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->tv_heartrate_high:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f1000f7

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->tv_heartrate_low:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f1000f2

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->tv_data_empty:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f1000f8

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->rl_calendar:Landroid/widget/RelativeLayout;

    .line 171
    const v0, 0x7f1000ef

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->tv_calendar_date:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->tv_calendar_date:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    const-string v2, "MM\uc6d4 dd\uc77c"

    invoke-virtual {v1, v2}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    const v0, 0x7f1000f9

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    .line 175
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTopbarVisible(Z)V

    .line 176
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    const v1, 0x7f0b008c

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setDateTextAppearance(I)V

    .line 177
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Ljava/util/Calendar;)V

    .line 178
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity$2;-><init>(Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;)V

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setOnMonthChangedListener(Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;)V

    .line 189
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity$3;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity$3;-><init>(Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;)V

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setOnDateChangedListener(Lcom/prolificinteractive/materialcalendarview/OnDateSelectedListener;)V

    .line 203
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->rl_calendar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v0, 0x7f1000f0

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const v0, 0x7f1000ed

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    const v0, 0x7f1000ee

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    return-void
.end method

.method private refreshDate(Lorg/joda/time/DateTime;)V
    .locals 2
    .param p1, "date"    # Lorg/joda/time/DateTime;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    .line 156
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->hideCalendar()V

    .line 157
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->tv_calendar_date:Landroid/widget/TextView;

    const-string v1, "MM\uc6d4 dd\uc77c"

    invoke-virtual {p1, v1}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method

.method private refreshViews()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mHeartDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mHeartDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->chart_line_heartrate:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->tv_data_empty:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->setChartData()V

    .line 150
    :goto_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->setChartView()V

    .line 151
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->setBpmView()V

    .line 152
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->chart_line_heartrate:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->tv_data_empty:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private selectDate(Lorg/joda/time/DateTime;)V
    .locals 8
    .param p1, "selectDateTime"    # Lorg/joda/time/DateTime;

    .prologue
    const/4 v7, 0x0

    .line 86
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mHeartDatas:Ljava/util/List;

    .line 88
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

    if-eqz v4, :cond_2

    .line 90
    new-instance v0, Lcom/cashwalk/cashwalk/util/BandDBHelper;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/cashwalk/cashwalk/util/BandDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 91
    .local v0, "dbHelper":Lcom/cashwalk/cashwalk/util/BandDBHelper;
    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->selectHeartTodayResult()Ljava/util/ArrayList;

    move-result-object v3

    .line 93
    .local v3, "todayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/BandHeart;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/model/BandHeart;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/model/BandHeart;->hour:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->START_HOUR_VALUE:I

    .line 96
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 97
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/model/BandHeart;

    iget v4, v4, Lcom/cashwalk/cashwalk/model/BandHeart;->avg:I

    if-eqz v4, :cond_0

    .line 98
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mHeartDatas:Ljava/util/List;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/model/BandHeart;

    iget v4, v4, Lcom/cashwalk/cashwalk/model/BandHeart;->avg:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 96
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mHeartDatas:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 105
    .end local v1    # "j":I
    :cond_1
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->refreshViews()V

    .line 138
    .end local v0    # "dbHelper":Lcom/cashwalk/cashwalk/util/BandDBHelper;
    .end local v3    # "todayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/BandHeart;>;"
    :goto_2
    return-void

    .line 108
    :cond_2
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 110
    new-instance v4, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity$1;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity$1;-><init>(Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;)V

    invoke-static {p1, v4}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getCashBandHeartDayData(Lorg/joda/time/DateTime;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v2

    .line 136
    .local v2, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_2
.end method

.method private setBpmView()V
    .locals 13

    .prologue
    const v12, 0x7f090113

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 248
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mHeartDatas:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mHeartDatas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 249
    :cond_0
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->tv_heartrate_avg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->tv_heartrate_high:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->tv_heartrate_low:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    :goto_0
    return-void

    .line 255
    :cond_1
    const/4 v5, 0x0

    .line 256
    .local v5, "validSize":I
    const/4 v1, 0x0

    .line 257
    .local v1, "high":I
    const/16 v2, 0x3e8

    .line 258
    .local v2, "low":I
    const/4 v3, 0x0

    .line 259
    .local v3, "tempSum":I
    const/4 v0, 0x0

    .line 261
    .local v0, "avg":I
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mHeartDatas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 262
    .local v4, "val":I
    if-eqz v4, :cond_2

    .line 266
    add-int/2addr v3, v4

    .line 269
    if-le v4, v1, :cond_3

    .line 270
    move v1, v4

    .line 274
    :cond_3
    if-ge v4, v2, :cond_4

    .line 275
    move v2, v4

    .line 278
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 279
    goto :goto_1

    .line 281
    .end local v4    # "val":I
    :cond_5
    if-eqz v3, :cond_6

    .line 282
    div-int v0, v3, v5

    .line 285
    :cond_6
    const/16 v6, 0x3e8

    if-ne v2, v6, :cond_7

    .line 286
    const/4 v2, 0x0

    .line 289
    :cond_7
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->tv_heartrate_avg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->tv_heartrate_high:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->tv_heartrate_low:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setChartData()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 295
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v7, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mHeartDatas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 298
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mHeartDatas:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 299
    .local v5, "rate":I
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    iget v9, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->START_HOUR_VALUE:I

    add-int/2addr v9, v4

    int-to-float v9, v9

    int-to-float v10, v5

    invoke-direct {v8, v9, v10}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 304
    .end local v5    # "rate":I
    :cond_0
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->chart_line_heartrate:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->chart_line_heartrate:Lcom/github/mikephil/charting/charts/LineChart;

    .line 305
    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/LineData;->getDataSetCount()I

    move-result v8

    if-lez v8, :cond_1

    .line 307
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->chart_line_heartrate:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v8, v11}, Lcom/github/mikephil/charting/data/LineData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 308
    .local v6, "set1":Lcom/github/mikephil/charting/data/LineDataSet;
    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setValues(Ljava/util/List;)V

    .line 309
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->chart_line_heartrate:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/LineData;->notifyDataChanged()V

    .line 310
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->chart_line_heartrate:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/LineChart;->notifyDataSetChanged()V

    .line 311
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->chart_line_heartrate:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 341
    :goto_1
    return-void

    .line 316
    .end local v6    # "set1":Lcom/github/mikephil/charting/data/LineDataSet;
    :cond_1
    new-instance v6, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v8, "heartrate"

    invoke-direct {v6, v7, v8}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 317
    .restart local v6    # "set1":Lcom/github/mikephil/charting/data/LineDataSet;
    invoke-virtual {v6, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTextColor(I)V

    .line 318
    invoke-virtual {v6, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawIcons(Z)V

    .line 319
    const-string v8, "#ff5656"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 320
    invoke-virtual {v6, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 321
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 323
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v1, "baseEntry":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    invoke-direct {v8, v12, v12}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance v0, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v8, "TEST"

    invoke-direct {v0, v1, v8}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 326
    .local v0, "base":Lcom/github/mikephil/charting/data/LineDataSet;
    invoke-virtual {v0, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawIcons(Z)V

    .line 327
    invoke-virtual {v0, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 328
    invoke-virtual {v0, v11}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 330
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v3, "dataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;>;"
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v2, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {v2, v3}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;)V

    .line 338
    .local v2, "data":Lcom/github/mikephil/charting/data/LineData;
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->chart_line_heartrate:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v8, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    goto :goto_1
.end method

.method private setChartView()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 212
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->chart_line_heartrate:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    .line 213
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->chart_line_heartrate:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 214
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->chart_line_heartrate:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 215
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->chart_line_heartrate:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setDoubleTapToZoomEnabled(Z)V

    .line 216
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->chart_line_heartrate:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleEnabled(Z)V

    .line 217
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->chart_line_heartrate:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    .line 218
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->chart_line_heartrate:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setDragEnabled(Z)V

    .line 221
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->chart_line_heartrate:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    .line 222
    .local v0, "l":Lcom/github/mikephil/charting/components/Legend;
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 224
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->chart_line_heartrate:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    .line 225
    .local v1, "xAxis":Lcom/github/mikephil/charting/components/XAxis;
    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 226
    const/16 v3, 0x8

    invoke-virtual {v1, v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(IZ)V

    .line 227
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 228
    new-instance v3, Lcom/cashwalk/cashwalk/cashband/chartutil/TimeAxisValueFormatter;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/cashband/chartutil/TimeAxisValueFormatter;-><init>()V

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;)V

    .line 229
    const-string v3, "#c7c7c7"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 230
    const-string v3, "#979797"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setAxisLineColor(I)V

    .line 231
    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setAxisLineWidth(F)V

    .line 232
    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaximum(F)V

    .line 233
    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/components/XAxis;->setXOffset(F)V

    .line 235
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->chart_line_heartrate:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 237
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->chart_line_heartrate:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    .line 238
    .local v2, "yAxis":Lcom/github/mikephil/charting/components/YAxis;
    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 239
    const/high16 v3, 0x43480000    # 200.0f

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 240
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 241
    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-direct {v3, v4, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/YAxis;->setGridDashedLine(Landroid/graphics/DashPathEffect;)V

    .line 242
    const-string v3, "#979797"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/YAxis;->setGridColor(I)V

    .line 243
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 244
    const-string v3, "#c7c7c7"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 245
    return-void

    .line 241
    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private showCalendar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 344
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->rl_calendar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setVisibility(I)V

    .line 346
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

    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 394
    :goto_0
    return-void

    .line 357
    :sswitch_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->hideCalendar()V

    goto :goto_0

    .line 362
    :sswitch_1
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->showCalendar()V

    .line 364
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 365
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getYear()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 366
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getMonthOfYear()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 367
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getDayOfMonth()I

    move-result v3

    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 368
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v3, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setCurrentDate(Ljava/util/Calendar;)V

    goto :goto_0

    .line 371
    .end local v0    # "cal":Ljava/util/Calendar;
    :sswitch_2
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object v3

    iput-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    .line 373
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 374
    .local v2, "right":Ljava/util/Calendar;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getYear()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 375
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getMonthOfYear()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 376
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getDayOfMonth()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 377
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v3, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Ljava/util/Calendar;)V

    .line 378
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-direct {p0, v3}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->refreshDate(Lorg/joda/time/DateTime;)V

    .line 379
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-direct {p0, v3}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->selectDate(Lorg/joda/time/DateTime;)V

    goto :goto_0

    .line 383
    .end local v2    # "right":Ljava/util/Calendar;
    :sswitch_3
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v3

    iput-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    .line 385
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 386
    .local v1, "left":Ljava/util/Calendar;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getYear()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 387
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getMonthOfYear()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 388
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getDayOfMonth()I

    move-result v3

    invoke-virtual {v1, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 389
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->cv_calendar:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v3, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Ljava/util/Calendar;)V

    .line 390
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-direct {p0, v3}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->refreshDate(Lorg/joda/time/DateTime;)V

    .line 391
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-direct {p0, v3}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->selectDate(Lorg/joda/time/DateTime;)V

    goto/16 :goto_0

    .line 355
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
    .line 73
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->setContentView(I)V

    .line 75
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    .line 76
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->initView()V

    .line 77
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 398
    const-string/jumbo v0, "\uae30\ub85d"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mRecordMenu:Landroid/view/MenuItem;

    .line 399
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mRecordMenu:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 400
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mRecordMenu:Landroid/view/MenuItem;

    const v1, 0x7f0200b9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 401
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mRecordMenu:Landroid/view/MenuItem;

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity$4;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity$4;-><init>(Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 409
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onResume()V

    .line 82
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->mNowSelectDate:Lorg/joda/time/DateTime;

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->selectDate(Lorg/joda/time/DateTime;)V

    .line 83
    return-void
.end method
