.class public Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "BandHeartRateRecordActivity.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final CHART_ZOOM_LEVEL:F

.field private HR_ITEM_COUNT:I

.field private final MIN_DATA_COUNT:I

.field private SELECT_ITEM_INDEX:I

.field private chart_line_heartrate_record:Lcom/github/mikephil/charting/charts/CombinedChart;

.field private dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

.field private endDt:Lorg/joda/time/DateTime;

.field private isRequestTodayMonth:Z

.field private iv_left_btn:Landroid/widget/ImageView;

.field private iv_right_btn:Landroid/widget/ImageView;

.field private li_calendar:Landroid/widget/LinearLayout;

.field private mBarDataHighEntry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mBarDataLowEntry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFromDate:Lorg/joda/time/DateTime;

.field private mLineDataEntry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/model/BandHeart;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectDateTime:Lorg/joda/time/DateTime;

.field private mToDate:Lorg/joda/time/DateTime;

.field private progress:Landroid/widget/ProgressBar;

.field private rl_calendar:Landroid/widget/RelativeLayout;

.field private tv_calendar_date:Landroid/widget/TextView;

.field private tv_heartrate_avg:Landroid/widget/TextView;

.field private tv_heartrate_high:Landroid/widget/TextView;

.field private tv_heartrate_low:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    .line 50
    const v0, 0x40964d94

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->CHART_ZOOM_LEVEL:F

    .line 52
    iput v1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->HR_ITEM_COUNT:I

    .line 53
    iput v1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->SELECT_ITEM_INDEX:I

    .line 54
    const/16 v0, 0xa

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->MIN_DATA_COUNT:I

    .line 74
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mSelectDateTime:Lorg/joda/time/DateTime;

    .line 75
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->isRequestTodayMonth:Z

    .line 77
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->withDayOfMonth(I)Lorg/joda/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mFromDate:Lorg/joda/time/DateTime;

    .line 78
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mToDate:Lorg/joda/time/DateTime;

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;)Lorg/joda/time/DateTime;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->endDt:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mRecordList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->isRequestTodayMonth:Z

    return v0
.end method

.method static synthetic access$202(Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->isRequestTodayMonth:Z

    return p1
.end method

.method static synthetic access$302(Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->SELECT_ITEM_INDEX:I

    return p1
.end method

.method static synthetic access$402(Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->HR_ITEM_COUNT:I

    return p1
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->setChartView()V

    return-void
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->setBpmTextView(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private generateBarData()Lcom/github/mikephil/charting/data/BarData;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 384
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mBarDataLowEntry:Ljava/util/List;

    .line 385
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mBarDataHighEntry:Ljava/util/List;

    .line 387
    iget v9, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->HR_ITEM_COUNT:I

    const/16 v10, 0xa

    if-ge v9, v10, :cond_1

    .line 388
    iget v9, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->HR_ITEM_COUNT:I

    rsub-int/lit8 v8, v9, 0xa

    .line 390
    .local v8, "tempSize":I
    const/4 v5, 0x0

    .line 392
    .local v5, "index":I
    :goto_0
    if-ge v5, v8, :cond_0

    .line 393
    iget-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mBarDataLowEntry:Ljava/util/List;

    new-instance v10, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v11, v5

    invoke-direct {v10, v11, v12}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mBarDataHighEntry:Ljava/util/List;

    new-instance v10, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v11, v5

    invoke-direct {v10, v11, v12}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 398
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v9, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->HR_ITEM_COUNT:I

    if-ge v4, v9, :cond_2

    .line 399
    iget-object v10, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mBarDataLowEntry:Ljava/util/List;

    new-instance v11, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v12, v5

    iget-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mRecordList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cashwalk/cashwalk/model/BandHeart;

    iget v9, v9, Lcom/cashwalk/cashwalk/model/BandHeart;->min:I

    int-to-float v9, v9

    invoke-direct {v11, v12, v9}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v10, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mBarDataHighEntry:Ljava/util/List;

    new-instance v11, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v12, v5

    iget-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mRecordList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cashwalk/cashwalk/model/BandHeart;

    iget v9, v9, Lcom/cashwalk/cashwalk/model/BandHeart;->max:I

    int-to-float v9, v9

    invoke-direct {v11, v12, v9}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    add-int/lit8 v5, v5, 0x1

    .line 398
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 406
    .end local v4    # "i":I
    .end local v5    # "index":I
    .end local v8    # "tempSize":I
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "index":I
    :goto_2
    iget v9, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->HR_ITEM_COUNT:I

    if-ge v5, v9, :cond_2

    .line 407
    iget-object v10, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mBarDataLowEntry:Ljava/util/List;

    new-instance v11, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v12, v5

    iget-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mRecordList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cashwalk/cashwalk/model/BandHeart;

    iget v9, v9, Lcom/cashwalk/cashwalk/model/BandHeart;->min:I

    int-to-float v9, v9

    invoke-direct {v11, v12, v9}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v10, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mBarDataHighEntry:Ljava/util/List;

    new-instance v11, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v12, v5

    iget-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mRecordList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cashwalk/cashwalk/model/BandHeart;

    iget v9, v9, Lcom/cashwalk/cashwalk/model/BandHeart;->max:I

    int-to-float v9, v9

    invoke-direct {v11, v12, v9}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 413
    :cond_2
    new-instance v6, Lcom/github/mikephil/charting/data/BarDataSet;

    iget-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mBarDataLowEntry:Ljava/util/List;

    const-string v10, "Bar 1"

    invoke-direct {v6, v9, v10}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 414
    .local v6, "set1":Lcom/github/mikephil/charting/data/BarDataSet;
    const-string v9, "#FFDDDD"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/BarDataSet;->setColor(I)V

    .line 415
    invoke-virtual {v6, v13}, Lcom/github/mikephil/charting/data/BarDataSet;->setValueTextColor(I)V

    .line 416
    sget-object v9, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/BarDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 417
    invoke-virtual {v6, v13}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightAlpha(I)V

    .line 419
    new-instance v7, Lcom/github/mikephil/charting/data/BarDataSet;

    iget-object v9, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mBarDataHighEntry:Ljava/util/List;

    const-string v10, "Bar 2"

    invoke-direct {v7, v9, v10}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 420
    .local v7, "set2":Lcom/github/mikephil/charting/data/BarDataSet;
    new-array v9, v14, [I

    const-string v10, "#ff5656"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    aput v10, v9, v13

    invoke-virtual {v7, v9}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 421
    invoke-virtual {v7, v13}, Lcom/github/mikephil/charting/data/BarDataSet;->setValueTextColor(I)V

    .line 422
    sget-object v9, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v7, v9}, Lcom/github/mikephil/charting/data/BarDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 423
    invoke-virtual {v7, v13}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighLightAlpha(I)V

    .line 425
    const v3, 0x3ecccccd    # 0.4f

    .line 426
    .local v3, "groupSpace":F
    const v0, 0x3dcccccd    # 0.1f

    .line 427
    .local v0, "barSpace":F
    const v1, 0x3e4ccccd    # 0.2f

    .line 429
    .local v1, "barWidth":F
    new-instance v2, Lcom/github/mikephil/charting/data/BarData;

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    aput-object v6, v9, v13

    aput-object v7, v9, v14

    invoke-direct {v2, v9}, Lcom/github/mikephil/charting/data/BarData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V

    .line 430
    .local v2, "d":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    .line 432
    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual {v2, v9, v3, v0}, Lcom/github/mikephil/charting/data/BarData;->groupBars(FFF)V

    .line 434
    return-object v2
.end method

.method private generateLineData()Lcom/github/mikephil/charting/data/LineData;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 344
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mLineDataEntry:Ljava/util/ArrayList;

    .line 346
    iget v5, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->HR_ITEM_COUNT:I

    const/16 v6, 0xa

    if-ge v5, v6, :cond_1

    .line 347
    iget v5, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->HR_ITEM_COUNT:I

    rsub-int/lit8 v4, v5, 0xa

    .line 348
    .local v4, "tempSize":I
    const/4 v2, 0x0

    .line 350
    .local v2, "index":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 351
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mLineDataEntry:Ljava/util/ArrayList;

    new-instance v6, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v7, v2

    add-float/2addr v7, v9

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v5, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->HR_ITEM_COUNT:I

    if-ge v1, v5, :cond_2

    .line 356
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mLineDataEntry:Ljava/util/ArrayList;

    new-instance v7, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v5, v2

    add-float v8, v5, v9

    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mRecordList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cashwalk/cashwalk/model/BandHeart;

    iget v5, v5, Lcom/cashwalk/cashwalk/model/BandHeart;->avg:I

    int-to-float v5, v5

    invoke-direct {v7, v8, v5}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    add-int/lit8 v2, v2, 0x1

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 361
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v4    # "tempSize":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "index":I
    :goto_2
    iget v5, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->HR_ITEM_COUNT:I

    if-ge v2, v5, :cond_2

    .line 362
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mLineDataEntry:Ljava/util/ArrayList;

    new-instance v7, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v5, v2

    add-float v8, v5, v9

    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mRecordList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cashwalk/cashwalk/model/BandHeart;

    iget v5, v5, Lcom/cashwalk/cashwalk/model/BandHeart;->avg:I

    int-to-float v5, v5

    invoke-direct {v7, v8, v5}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 365
    :cond_2
    new-instance v3, Lcom/github/mikephil/charting/data/LineDataSet;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mLineDataEntry:Ljava/util/ArrayList;

    const-string v6, "Line DataSet"

    invoke-direct {v3, v5, v6}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 367
    .local v3, "set":Lcom/github/mikephil/charting/data/LineDataSet;
    invoke-virtual {v3, v10}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHighlightIndicators(Z)V

    .line 368
    const-string v5, "#ff8f8f"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 369
    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 370
    const-string v5, "#ff8f8f"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 371
    const/high16 v5, 0x40a00000    # 5.0f

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleRadius(F)V

    .line 372
    const/high16 v5, 0x40600000    # 3.5f

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleHoleRadius(F)V

    .line 373
    sget-object v5, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->LINEAR:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 374
    invoke-virtual {v3, v10}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 375
    sget-object v5, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 377
    new-instance v0, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {v0}, Lcom/github/mikephil/charting/data/LineData;-><init>()V

    .line 378
    .local v0, "d":Lcom/github/mikephil/charting/data/LineData;
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/LineData;->addDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 380
    return-object v0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 251
    const v0, 0x7f1000d6

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->progress:Landroid/widget/ProgressBar;

    .line 252
    const v0, 0x7f1000f5

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->tv_heartrate_avg:Landroid/widget/TextView;

    .line 253
    const v0, 0x7f1000f6

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->tv_heartrate_high:Landroid/widget/TextView;

    .line 254
    const v0, 0x7f1000f7

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->tv_heartrate_low:Landroid/widget/TextView;

    .line 256
    const v0, 0x7f1000f0

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->iv_right_btn:Landroid/widget/ImageView;

    .line 257
    const v0, 0x7f1000ed

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->iv_left_btn:Landroid/widget/ImageView;

    .line 258
    const v0, 0x7f1000ee

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->li_calendar:Landroid/widget/LinearLayout;

    .line 260
    const v0, 0x7f1000f8

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->rl_calendar:Landroid/widget/RelativeLayout;

    .line 261
    const v0, 0x7f1000fc

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    .line 263
    const v0, 0x7f1000ef

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->tv_calendar_date:Landroid/widget/TextView;

    .line 265
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->rl_calendar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->iv_right_btn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->iv_left_btn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->li_calendar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    return-void
.end method

.method private requestData()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->initView()V

    .line 98
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mFromDate:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mToDate:Lorg/joda/time/DateTime;

    invoke-direct {p0, v0, v1}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->requestData(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)V

    .line 99
    return-void
.end method

.method private requestData(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)V
    .locals 6
    .param p1, "startDate"    # Lorg/joda/time/DateTime;
    .param p2, "endDate"    # Lorg/joda/time/DateTime;

    .prologue
    .line 180
    iput-object p2, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->endDt:Lorg/joda/time/DateTime;

    .line 181
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 183
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->tv_calendar_date:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mSelectDateTime:Lorg/joda/time/DateTime;

    const-string/jumbo v5, "yyyy\ub144 MM\uc6d4"

    invoke-virtual {v4, v5}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2}, Lorg/joda/time/DateTime;-><init>()V

    .line 186
    .local v2, "todayDateTime":Lorg/joda/time/DateTime;
    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "today":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mRecordList:Ljava/util/ArrayList;

    .line 189
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->endDt:Lorg/joda/time/DateTime;

    const-string/jumbo v4, "yyyy-MM"

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "yyyy-MM"

    invoke-virtual {v2, v4}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    invoke-direct {p0, v2}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->setTodayRecord(Lorg/joda/time/DateTime;)V

    .line 191
    iput-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->endDt:Lorg/joda/time/DateTime;

    .line 192
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->isRequestTodayMonth:Z

    .line 195
    :cond_0
    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-virtual {p1, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->endDt:Lorg/joda/time/DateTime;

    const-string/jumbo v5, "yyyy-MM-dd"

    invoke-virtual {v4, v5}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity$1;

    invoke-direct {v5, p0, p1, v1}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity$1;-><init>(Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;Lorg/joda/time/DateTime;Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getCashBandHeartRecordData(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 247
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 248
    return-void
.end method

.method private setBpmTextView(I)V
    .locals 10
    .param p1, "clickIdx"    # I

    .prologue
    const v9, 0x7f090113

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 439
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 440
    iget v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->SELECT_ITEM_INDEX:I

    if-nez v3, :cond_0

    .line 441
    const/4 p1, 0x0

    .line 449
    :goto_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mLineDataEntry:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v3

    float-to-int v0, v3

    .line 450
    .local v0, "avg":I
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mBarDataLowEntry:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 451
    .local v2, "low":I
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mBarDataHighEntry:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 453
    .local v1, "high":I
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->tv_heartrate_avg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->tv_heartrate_high:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->tv_heartrate_low:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    return-void

    .line 443
    .end local v0    # "avg":I
    .end local v1    # "high":I
    .end local v2    # "low":I
    :cond_0
    iget v3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->SELECT_ITEM_INDEX:I

    add-int/lit8 p1, v3, -0x1

    goto :goto_0

    .line 446
    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method private setChartView()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 273
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->chart_line_heartrate_record:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v4, v7}, Lcom/github/mikephil/charting/charts/CombinedChart;->setVisibility(I)V

    .line 275
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->chart_line_heartrate_record:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v4, v8}, Lcom/github/mikephil/charting/charts/CombinedChart;->setTouchEnabled(Z)V

    .line 276
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->chart_line_heartrate_record:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/CombinedChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 277
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->chart_line_heartrate_record:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/CombinedChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 278
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->chart_line_heartrate_record:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v4, v7}, Lcom/github/mikephil/charting/charts/CombinedChart;->setDoubleTapToZoomEnabled(Z)V

    .line 279
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->chart_line_heartrate_record:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v4, v7}, Lcom/github/mikephil/charting/charts/CombinedChart;->setScaleEnabled(Z)V

    .line 280
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->chart_line_heartrate_record:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v4, v7}, Lcom/github/mikephil/charting/charts/CombinedChart;->setPinchZoom(Z)V

    .line 281
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->chart_line_heartrate_record:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v4, p0}, Lcom/github/mikephil/charting/charts/CombinedChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 282
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->chart_line_heartrate_record:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v4, v7}, Lcom/github/mikephil/charting/charts/CombinedChart;->setHighlightFullBarEnabled(Z)V

    .line 283
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->chart_line_heartrate_record:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v4, v8}, Lcom/github/mikephil/charting/charts/CombinedChart;->setDragEnabled(Z)V

    .line 285
    iget v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->SELECT_ITEM_INDEX:I

    if-nez v4, :cond_0

    .line 286
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->chart_line_heartrate_record:Lcom/github/mikephil/charting/charts/CombinedChart;

    iget v5, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->SELECT_ITEM_INDEX:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/CombinedChart;->moveViewToX(F)V

    .line 292
    :goto_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->chart_line_heartrate_record:Lcom/github/mikephil/charting/charts/CombinedChart;

    new-array v5, v10, [Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    sget-object v6, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->BAR:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v6, v5, v7

    sget-object v6, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->LINE:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/CombinedChart;->setDrawOrder([Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;)V

    .line 298
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->chart_line_heartrate_record:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/CombinedChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v1

    .line 299
    .local v1, "l":Lcom/github/mikephil/charting/components/Legend;
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 302
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->chart_line_heartrate_record:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/CombinedChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v2

    .line 303
    .local v2, "xAxis":Lcom/github/mikephil/charting/components/XAxis;
    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 304
    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 305
    new-instance v4, Lcom/cashwalk/cashwalk/cashband/chartutil/HeartDateValueFormatter;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mSelectDateTime:Lorg/joda/time/DateTime;

    invoke-direct {v4, v5}, Lcom/cashwalk/cashwalk/cashband/chartutil/HeartDateValueFormatter;-><init>(Lorg/joda/time/DateTime;)V

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;)V

    .line 306
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 308
    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 309
    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 310
    const-string v4, "#c7c7c7"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 311
    const-string v4, "#979797"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/XAxis;->setAxisLineColor(I)V

    .line 312
    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/XAxis;->setAxisLineWidth(F)V

    .line 314
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->chart_line_heartrate_record:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/CombinedChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 316
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->chart_line_heartrate_record:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/CombinedChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    .line 317
    .local v3, "yAxis":Lcom/github/mikephil/charting/components/YAxis;
    invoke-virtual {v3, v9}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 318
    const/high16 v4, 0x43480000    # 200.0f

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 319
    invoke-virtual {v3, v8}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 320
    new-instance v4, Landroid/graphics/DashPathEffect;

    new-array v5, v10, [F

    fill-array-data v5, :array_0

    invoke-direct {v4, v5, v9}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/YAxis;->setGridDashedLine(Landroid/graphics/DashPathEffect;)V

    .line 321
    const-string v4, "#979797"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/YAxis;->setGridColor(I)V

    .line 322
    invoke-virtual {v3, v7}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 323
    const-string v4, "#c7c7c7"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 326
    new-instance v0, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-direct {v0}, Lcom/github/mikephil/charting/data/CombinedData;-><init>()V

    .line 328
    .local v0, "data":Lcom/github/mikephil/charting/data/CombinedData;
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->generateLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/CombinedData;->setData(Lcom/github/mikephil/charting/data/LineData;)V

    .line 329
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->generateBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/CombinedData;->setData(Lcom/github/mikephil/charting/data/BarData;)V

    .line 331
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CombinedData;->getXMax()F

    move-result v4

    const/high16 v5, 0x3e800000    # 0.25f

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaximum(F)V

    .line 333
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->chart_line_heartrate_record:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->setData(Lcom/github/mikephil/charting/data/CombinedData;)V

    .line 334
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->chart_line_heartrate_record:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/CombinedChart;->invalidate()V

    .line 335
    return-void

    .line 288
    .end local v0    # "data":Lcom/github/mikephil/charting/data/CombinedData;
    .end local v1    # "l":Lcom/github/mikephil/charting/components/Legend;
    .end local v2    # "xAxis":Lcom/github/mikephil/charting/components/XAxis;
    .end local v3    # "yAxis":Lcom/github/mikephil/charting/components/YAxis;
    :cond_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->chart_line_heartrate_record:Lcom/github/mikephil/charting/charts/CombinedChart;

    iget v5, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->SELECT_ITEM_INDEX:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/CombinedChart;->moveViewToX(F)V

    goto/16 :goto_0

    .line 320
    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private setTodayRecord(Lorg/joda/time/DateTime;)V
    .locals 17
    .param p1, "todayDateTime"    # Lorg/joda/time/DateTime;

    .prologue
    .line 102
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mRecordList:Ljava/util/ArrayList;

    .line 103
    new-instance v1, Lcom/cashwalk/cashwalk/util/BandDBHelper;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v14}, Lcom/cashwalk/cashwalk/util/BandDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 104
    .local v1, "dbHelper":Lcom/cashwalk/cashwalk/util/BandDBHelper;
    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->selectHeartTodayResult()Ljava/util/ArrayList;

    move-result-object v13

    .line 106
    .local v13, "todayRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/BandHeart;>;"
    const/4 v11, 0x0

    .line 107
    .local v11, "sum":I
    const/4 v2, 0x0

    .line 108
    .local v2, "fullCnt":I
    const/4 v3, 0x0

    .line 109
    .local v3, "high":I
    const/16 v8, 0x3e8

    .line 111
    .local v8, "low":I
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/model/BandHeart;

    .line 112
    .local v4, "hourData":Lcom/cashwalk/cashwalk/model/BandHeart;
    iget v15, v4, Lcom/cashwalk/cashwalk/model/BandHeart;->avg:I

    if-eqz v15, :cond_0

    iget v15, v4, Lcom/cashwalk/cashwalk/model/BandHeart;->avg:I

    const/16 v16, 0xff

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 114
    iget v15, v4, Lcom/cashwalk/cashwalk/model/BandHeart;->avg:I

    add-int/2addr v11, v15

    .line 115
    add-int/lit8 v2, v2, 0x1

    .line 118
    iget v15, v4, Lcom/cashwalk/cashwalk/model/BandHeart;->avg:I

    if-le v15, v3, :cond_1

    .line 119
    iget v3, v4, Lcom/cashwalk/cashwalk/model/BandHeart;->avg:I

    .line 122
    :cond_1
    iget v15, v4, Lcom/cashwalk/cashwalk/model/BandHeart;->avg:I

    if-ge v15, v8, :cond_0

    .line 123
    iget v8, v4, Lcom/cashwalk/cashwalk/model/BandHeart;->avg:I

    goto :goto_0

    .line 128
    .end local v4    # "hourData":Lcom/cashwalk/cashwalk/model/BandHeart;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v14

    invoke-virtual {v14}, Lorg/joda/time/DateTime$Property;->withMaximumValue()Lorg/joda/time/DateTime;

    move-result-object v7

    .line 129
    .local v7, "lastDayOfMonth":Lorg/joda/time/DateTime;
    const-string/jumbo v14, "yyyy-MM-dd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 131
    .local v10, "nowDayOfMonth":Ljava/lang/String;
    const/4 v5, 0x0

    .line 133
    .local v5, "isAdd":Z
    if-eqz v11, :cond_4

    .line 134
    new-instance v12, Lcom/cashwalk/cashwalk/model/BandHeart;

    invoke-direct {v12}, Lcom/cashwalk/cashwalk/model/BandHeart;-><init>()V

    .line 135
    .local v12, "today":Lcom/cashwalk/cashwalk/model/BandHeart;
    div-int v14, v11, v2

    iput v14, v12, Lcom/cashwalk/cashwalk/model/BandHeart;->avg:I

    .line 136
    iput v3, v12, Lcom/cashwalk/cashwalk/model/BandHeart;->max:I

    .line 137
    iput v8, v12, Lcom/cashwalk/cashwalk/model/BandHeart;->min:I

    .line 139
    :goto_1
    if-nez v5, :cond_7

    .line 140
    const-string/jumbo v14, "yyyy-MM-dd"

    invoke-virtual {v7, v14}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 141
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mRecordList:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 142
    const/4 v5, 0x1

    .line 147
    :goto_2
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v7

    goto :goto_1

    .line 144
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mRecordList:Ljava/util/ArrayList;

    const/4 v15, 0x0

    new-instance v16, Lcom/cashwalk/cashwalk/model/BandHeart;

    invoke-direct/range {v16 .. v16}, Lcom/cashwalk/cashwalk/model/BandHeart;-><init>()V

    invoke-virtual/range {v14 .. v16}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 152
    .end local v12    # "today":Lcom/cashwalk/cashwalk/model/BandHeart;
    :cond_4
    const/4 v6, 0x0

    .line 153
    .local v6, "lastDay":I
    invoke-virtual/range {p1 .. p1}, Lorg/joda/time/DateTime;->getDayOfMonth()I

    move-result v9

    .line 155
    .local v9, "nowDay":I
    :cond_5
    :goto_3
    if-nez v5, :cond_7

    .line 157
    invoke-virtual {v7}, Lorg/joda/time/DateTime;->getDayOfMonth()I

    move-result v6

    .line 159
    if-gt v9, v6, :cond_6

    .line 160
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mRecordList:Ljava/util/ArrayList;

    const/4 v15, 0x0

    new-instance v16, Lcom/cashwalk/cashwalk/model/BandHeart;

    invoke-direct/range {v16 .. v16}, Lcom/cashwalk/cashwalk/model/BandHeart;-><init>()V

    invoke-virtual/range {v14 .. v16}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 161
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v7

    .line 164
    :cond_6
    if-ne v9, v6, :cond_5

    .line 165
    const/4 v5, 0x1

    goto :goto_3

    .line 171
    .end local v6    # "lastDay":I
    .end local v9    # "nowDay":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mRecordList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->HR_ITEM_COUNT:I

    .line 172
    invoke-direct/range {p0 .. p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->setChartView()V

    .line 173
    invoke-virtual/range {p1 .. p1}, Lorg/joda/time/DateTime;->getDayOfMonth()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->SELECT_ITEM_INDEX:I

    .line 175
    return-void
.end method


# virtual methods
.method public hideCalendar()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 474
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->rl_calendar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->setVisibility(I)V

    .line 476
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 480
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 516
    :goto_0
    return-void

    .line 482
    :sswitch_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->hideCalendar()V

    .line 483
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mSelectDateTime:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->withYear(I)Lorg/joda/time/DateTime;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->withMonthOfYear(I)Lorg/joda/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mSelectDateTime:Lorg/joda/time/DateTime;

    .line 484
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mSelectDateTime:Lorg/joda/time/DateTime;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime$Property;->withMinimumValue()Lorg/joda/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mFromDate:Lorg/joda/time/DateTime;

    .line 485
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mSelectDateTime:Lorg/joda/time/DateTime;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime$Property;->withMaximumValue()Lorg/joda/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mToDate:Lorg/joda/time/DateTime;

    .line 486
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mFromDate:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mToDate:Lorg/joda/time/DateTime;

    invoke-direct {p0, v0, v1}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->requestData(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)V

    goto :goto_0

    .line 491
    :sswitch_1
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->showCalendar()V

    .line 492
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mSelectDateTime:Lorg/joda/time/DateTime;

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->setYear(I)V

    .line 493
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mSelectDateTime:Lorg/joda/time/DateTime;

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getMonthOfYear()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->setMonth(I)V

    goto :goto_0

    .line 497
    :sswitch_2
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->hideCalendar()V

    .line 498
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mSelectDateTime:Lorg/joda/time/DateTime;

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->plusMonths(I)Lorg/joda/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mSelectDateTime:Lorg/joda/time/DateTime;

    .line 499
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mSelectDateTime:Lorg/joda/time/DateTime;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime$Property;->withMinimumValue()Lorg/joda/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mFromDate:Lorg/joda/time/DateTime;

    .line 500
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mSelectDateTime:Lorg/joda/time/DateTime;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime$Property;->withMaximumValue()Lorg/joda/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mToDate:Lorg/joda/time/DateTime;

    .line 501
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mFromDate:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mToDate:Lorg/joda/time/DateTime;

    invoke-direct {p0, v0, v1}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->requestData(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)V

    .line 502
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mSelectDateTime:Lorg/joda/time/DateTime;

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->setYear(I)V

    .line 503
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mSelectDateTime:Lorg/joda/time/DateTime;

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getMonthOfYear()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->setMonth(I)V

    goto/16 :goto_0

    .line 507
    :sswitch_3
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->hideCalendar()V

    .line 508
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mSelectDateTime:Lorg/joda/time/DateTime;

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->minusMonths(I)Lorg/joda/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mSelectDateTime:Lorg/joda/time/DateTime;

    .line 509
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mSelectDateTime:Lorg/joda/time/DateTime;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime$Property;->withMinimumValue()Lorg/joda/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mFromDate:Lorg/joda/time/DateTime;

    .line 510
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mSelectDateTime:Lorg/joda/time/DateTime;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime$Property;->withMaximumValue()Lorg/joda/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mToDate:Lorg/joda/time/DateTime;

    .line 511
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mFromDate:Lorg/joda/time/DateTime;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mToDate:Lorg/joda/time/DateTime;

    invoke-direct {p0, v0, v1}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->requestData(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)V

    .line 512
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mSelectDateTime:Lorg/joda/time/DateTime;

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->setYear(I)V

    .line 513
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->mSelectDateTime:Lorg/joda/time/DateTime;

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getMonthOfYear()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->setMonth(I)V

    goto/16 :goto_0

    .line 480
    :sswitch_data_0
    .sparse-switch
        0x7f1000ed -> :sswitch_3
        0x7f1000ee -> :sswitch_1
        0x7f1000f0 -> :sswitch_2
        0x7f1000f8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->setContentView(I)V

    .line 86
    const v0, 0x7f1000fb

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/CombinedChart;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->chart_line_heartrate_record:Lcom/github/mikephil/charting/charts/CombinedChart;

    .line 87
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->chart_line_heartrate_record:Lcom/github/mikephil/charting/charts/CombinedChart;

    const v1, 0x40964d94

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/github/mikephil/charting/charts/CombinedChart;->zoom(FFFF)V

    .line 88
    return-void
.end method

.method public onNothingSelected()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onResume()V

    .line 93
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->requestData()V

    .line 94
    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 1
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "h"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 460
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->setBpmTextView(I)V

    .line 461
    return-void
.end method

.method public showCalendar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 469
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->rl_calendar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->dp_calendar:Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CustomCalendarView;->setVisibility(I)V

    .line 471
    return-void
.end method
