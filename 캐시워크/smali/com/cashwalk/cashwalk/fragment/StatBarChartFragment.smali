.class public Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;
.super Landroid/support/v4/app/Fragment;
.source "StatBarChartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static mInstance:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;


# instance fields
.field private CHART_X_LABEL_COUNT:I

.field private SELECT_TYPE:I

.field private isFrist:Z

.field private isType:I

.field private iv_date_left:Landroid/widget/ImageView;

.field private iv_date_right:Landroid/widget/ImageView;

.field private mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

.field private mChartStartDate:Lorg/joda/time/DateTime;

.field private mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

.field private mMonthData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Stat;",
            ">;"
        }
    .end annotation
.end field

.field private mMonthDay:Lorg/joda/time/DateTime;

.field private mRootView:Landroid/view/View;

.field private mTodayData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Stat;",
            ">;"
        }
    .end annotation
.end field

.field private mWeekData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Stat;",
            ">;"
        }
    .end annotation
.end field

.field private mWeekDay:Lorg/joda/time/DateTime;

.field private pref:Landroid/content/SharedPreferences;

.field private progress:Landroid/widget/ProgressBar;

.field private rl_menu_calorie:Landroid/widget/RelativeLayout;

.field private rl_menu_km:Landroid/widget/RelativeLayout;

.field private rl_menu_speed:Landroid/widget/RelativeLayout;

.field private rl_menu_time:Landroid/widget/RelativeLayout;

.field private rl_step_layout:Landroid/widget/RelativeLayout;

.field private today:Lorg/joda/time/DateTime;

.field private tv_calorie:Landroid/widget/TextView;

.field private tv_chart_x_center:Landroid/widget/TextView;

.field private tv_chart_x_end:Landroid/widget/TextView;

.field private tv_chart_x_start:Landroid/widget/TextView;

.field private tv_chart_x_text:Landroid/widget/TextView;

.field private tv_chart_y_text:Landroid/widget/TextView;

.field private tv_duration:Landroid/widget/TextView;

.field private tv_km:Landroid/widget/TextView;

.field private tv_speed:Landroid/widget/TextView;

.field private tv_step_count:Landroid/widget/TextView;

.field private tv_time:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->isType:I

    .line 48
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->today:Lorg/joda/time/DateTime;

    .line 49
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mWeekDay:Lorg/joda/time/DateTime;

    .line 50
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mMonthDay:Lorg/joda/time/DateTime;

    .line 52
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mChartStartDate:Lorg/joda/time/DateTime;

    .line 56
    iput v1, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->SELECT_TYPE:I

    .line 57
    const/4 v0, 0x7

    iput v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->CHART_X_LABEL_COUNT:I

    .line 87
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->isFrist:Z

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    .prologue
    .line 43
    iget v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->isType:I

    return v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Lorg/joda/time/DateTime;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mWeekDay:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method static synthetic access$102(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;Lorg/joda/time/DateTime;)Lorg/joda/time/DateTime;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;
    .param p1, "x1"    # Lorg/joda/time/DateTime;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mWeekDay:Lorg/joda/time/DateTime;

    return-object p1
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;ILorg/joda/time/DateTime;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/joda/time/DateTime;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->refreshData(ILorg/joda/time/DateTime;)V

    return-void
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Lorg/joda/time/DateTime;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mMonthDay:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method static synthetic access$302(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;Lorg/joda/time/DateTime;)Lorg/joda/time/DateTime;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;
    .param p1, "x1"    # Lorg/joda/time/DateTime;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mMonthDay:Lorg/joda/time/DateTime;

    return-object p1
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->setMenu(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$602(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;Lorg/joda/time/DateTime;)Lorg/joda/time/DateTime;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;
    .param p1, "x1"    # Lorg/joda/time/DateTime;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mChartStartDate:Lorg/joda/time/DateTime;

    return-object p1
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mWeekData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mWeekData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->drawBarChart(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mMonthData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mMonthData:Ljava/util/ArrayList;

    return-object p1
.end method

.method private drawBarChart(Ljava/util/ArrayList;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Stat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, "listData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Stat;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->isType:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mWeekDay:Lorg/joda/time/DateTime;

    move-object/from16 v18, v0

    new-instance v19, Lorg/joda/time/DateTime;

    invoke-direct/range {v19 .. v19}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual/range {v18 .. v19}, Lorg/joda/time/DateTime;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_duration:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mWeekDay:Lorg/joda/time/DateTime;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lorg/joda/time/DateTime;->withDayOfWeek(I)Lorg/joda/time/DateTime;

    move-result-object v20

    const-string v21, "MM\uc6d4 dd\uc77c"

    invoke-virtual/range {v20 .. v21}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ~ "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mWeekDay:Lorg/joda/time/DateTime;

    move-object/from16 v20, v0

    const-string v21, "MM\uc6d4 dd\uc77c"

    invoke-virtual/range {v20 .. v21}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    :cond_0
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .local v3, "chartListData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-eqz v18, :cond_4

    .line 517
    const/4 v15, 0x0

    .line 518
    .local v15, "totalSteps":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_3

    .line 520
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/cashwalk/cashwalk/util/network/model/Stat;->steps:I

    move/from16 v18, v0

    add-int v15, v15, v18

    .line 521
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/cashwalk/cashwalk/util/network/model/Stat;->steps:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 507
    .end local v3    # "chartListData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "i":I
    .end local v15    # "totalSteps":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_duration:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mWeekDay:Lorg/joda/time/DateTime;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lorg/joda/time/DateTime;->withDayOfWeek(I)Lorg/joda/time/DateTime;

    move-result-object v20

    const-string v21, "MM\uc6d4 dd\uc77c"

    invoke-virtual/range {v20 .. v21}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ~ "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mWeekDay:Lorg/joda/time/DateTime;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mWeekDay:Lorg/joda/time/DateTime;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/joda/time/DateTime;->dayOfWeek()Lorg/joda/time/DateTime$Property;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/joda/time/DateTime$Property;->getMaximumValue()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lorg/joda/time/DateTime;->withDayOfWeek(I)Lorg/joda/time/DateTime;

    move-result-object v20

    const-string v21, "MM\uc6d4 dd\uc77c"

    invoke-virtual/range {v20 .. v21}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 510
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->isType:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_duration:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mMonthDay:Lorg/joda/time/DateTime;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/joda/time/DateTime;->getMonthOfYear()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f090215

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 523
    .restart local v3    # "chartListData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v5    # "i":I
    .restart local v15    # "totalSteps":I
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->setStepsData(I)V

    .line 529
    .end local v5    # "i":I
    .end local v15    # "totalSteps":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "HEIGHT"

    const/16 v20, 0xaa

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 530
    .local v4, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->SELECT_TYPE:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 532
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v2, "calList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_5

    .line 534
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    div-int/lit8 v18, v18, 0x1e

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 526
    .end local v2    # "calList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "height":I
    .end local v5    # "i":I
    :cond_4
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->setStepsData(I)V

    goto :goto_2

    .line 537
    .restart local v2    # "calList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "height":I
    .restart local v5    # "i":I
    :cond_5
    move-object v3, v2

    .line 575
    .end local v2    # "calList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "i":I
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawBarShadow(Z)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawValueAboveBar(Z)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightFullBarEnabled(Z)V

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/github/mikephil/charting/charts/BarChart;->setHorizontalScrollBarEnabled(Z)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/github/mikephil/charting/charts/BarChart;->setTouchEnabled(Z)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/github/mikephil/charting/charts/BarChart;->setDragEnabled(Z)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 587
    new-instance v17, Lcom/cashwalk/cashwalk/util/DayAxisValueFormatter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mChartStartDate:Lorg/joda/time/DateTime;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->isType:I

    move/from16 v20, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-direct/range {v17 .. v21}, Lcom/cashwalk/cashwalk/util/DayAxisValueFormatter;-><init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;Lorg/joda/time/DateTime;II)V

    .line 588
    .local v17, "xAxisFormatter":Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v16

    .line 589
    .local v16, "xAxis":Lcom/github/mikephil/charting/components/XAxis;
    sget-object v18, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 590
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 591
    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 592
    invoke-virtual/range {v16 .. v17}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;)V

    .line 593
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->isType:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_x_start:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mChartStartDate:Lorg/joda/time/DateTime;

    move-object/from16 v19, v0

    const-string v20, "MM/dd"

    invoke-virtual/range {v19 .. v20}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_x_center:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, "15"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_x_end:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mMonthDay:Lorg/joda/time/DateTime;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/joda/time/DateTime$Property;->withMaximumValue()Lorg/joda/time/DateTime;

    move-result-object v19

    const-string v20, "dd"

    invoke-virtual/range {v19 .. v20}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_x_start:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_x_center:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_x_end:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 602
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawLabels(Z)V

    .line 611
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v8

    .line 612
    .local v8, "leftAxis":Lcom/github/mikephil/charting/components/YAxis;
    const/16 v18, 0x8

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 613
    sget-object v18, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/github/mikephil/charting/components/YAxis;->setPosition(Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;)V

    .line 614
    const/high16 v18, 0x41700000    # 15.0f

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/github/mikephil/charting/components/YAxis;->setSpaceTop(F)V

    .line 615
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v11

    .line 618
    .local v11, "rightAxis":Lcom/github/mikephil/charting/components/YAxis;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v7

    .line 621
    .local v7, "l":Lcom/github/mikephil/charting/components/Legend;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 623
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->setData(Ljava/util/ArrayList;)V

    .line 625
    return-void

    .line 538
    .end local v7    # "l":Lcom/github/mikephil/charting/components/Legend;
    .end local v8    # "leftAxis":Lcom/github/mikephil/charting/components/YAxis;
    .end local v11    # "rightAxis":Lcom/github/mikephil/charting/components/YAxis;
    .end local v16    # "xAxis":Lcom/github/mikephil/charting/components/XAxis;
    .end local v17    # "xAxisFormatter":Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->SELECT_TYPE:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 540
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v6, "kmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_8

    .line 542
    add-int/lit8 v19, v4, -0x64

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    mul-int v18, v18, v19

    div-int/lit8 v9, v18, 0x64

    .line 543
    .local v9, "meter":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 546
    .end local v9    # "meter":I
    :cond_8
    move-object v3, v6

    .line 547
    goto/16 :goto_4

    .end local v5    # "i":I
    .end local v6    # "kmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->SELECT_TYPE:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 549
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v10, "minList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_a

    .line 551
    add-int/lit8 v19, v4, -0x64

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    mul-int v18, v18, v19

    div-int/lit8 v9, v18, 0x64

    .line 552
    .restart local v9    # "meter":I
    int-to-double v0, v9

    move-wide/from16 v18, v0

    const-wide v20, 0x40af400000000000L    # 4000.0

    div-double v18, v18, v20

    const-wide/high16 v20, 0x404e000000000000L    # 60.0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v14, v0

    .line 553
    .local v14, "tempMin":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 556
    .end local v9    # "meter":I
    .end local v14    # "tempMin":I
    :cond_a
    move-object v3, v10

    .line 557
    goto/16 :goto_4

    .end local v5    # "i":I
    .end local v10    # "minList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->SELECT_TYPE:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 559
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v13, "speedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_d

    .line 561
    add-int/lit8 v19, v4, -0x64

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    mul-int v18, v18, v19

    div-int/lit8 v9, v18, 0x64

    .line 562
    .restart local v9    # "meter":I
    int-to-double v0, v9

    move-wide/from16 v18, v0

    const-wide v20, 0x40af400000000000L    # 4000.0

    div-double v18, v18, v20

    const-wide/high16 v20, 0x404e000000000000L    # 60.0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v14, v0

    .line 564
    .restart local v14    # "tempMin":I
    const/4 v12, 0x0

    .line 565
    .local v12, "speed":I
    if-lez v9, :cond_c

    if-lez v14, :cond_c

    .line 566
    int-to-double v0, v9

    move-wide/from16 v18, v0

    int-to-double v0, v9

    move-wide/from16 v20, v0

    const-wide v22, 0x40af400000000000L    # 4000.0

    div-double v20, v20, v22

    const-wide/high16 v22, 0x404e000000000000L    # 60.0

    mul-double v20, v20, v22

    div-double v18, v18, v20

    const-wide/high16 v20, 0x404e000000000000L    # 60.0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    div-int/lit16 v12, v0, 0x3e8

    .line 568
    :cond_c
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 571
    .end local v9    # "meter":I
    .end local v12    # "speed":I
    .end local v14    # "tempMin":I
    :cond_d
    move-object v3, v13

    goto/16 :goto_4

    .line 604
    .end local v5    # "i":I
    .end local v13    # "speedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v16    # "xAxis":Lcom/github/mikephil/charting/components/XAxis;
    .restart local v17    # "xAxisFormatter":Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_x_start:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_x_center:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_x_end:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 607
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawLabels(Z)V

    .line 608
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->CHART_X_LABEL_COUNT:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    goto/16 :goto_5
.end method

.method private refreshData(ILorg/joda/time/DateTime;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "setToDate"    # Lorg/joda/time/DateTime;

    .prologue
    const/4 v7, 0x1

    .line 257
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->progress:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 260
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1}, Lorg/joda/time/DateTime;-><init>()V

    .line 261
    .local v1, "setToday":Lorg/joda/time/DateTime;
    const/4 v2, 0x0

    .line 262
    .local v2, "toDate":Lorg/joda/time/DateTime;
    if-ne p1, v7, :cond_2

    .line 265
    const/4 v3, 0x7

    iput v3, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->CHART_X_LABEL_COUNT:I

    .line 285
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mWeekDay:Lorg/joda/time/DateTime;

    invoke-virtual {v3, v7}, Lorg/joda/time/DateTime;->withDayOfWeek(I)Lorg/joda/time/DateTime;

    move-result-object v1

    .line 286
    move-object v2, p2

    .line 288
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mWeekDay:Lorg/joda/time/DateTime;

    new-instance v4, Lorg/joda/time/DateTime;

    invoke-direct {v4}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 289
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_duration:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mWeekDay:Lorg/joda/time/DateTime;

    invoke-virtual {v5, v7}, Lorg/joda/time/DateTime;->withDayOfWeek(I)Lorg/joda/time/DateTime;

    move-result-object v5

    const-string v6, "MM\uc6d4 dd\uc77c"

    invoke-virtual {v5, v6}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ~ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mWeekDay:Lorg/joda/time/DateTime;

    const-string v6, "MM\uc6d4 dd\uc77c"

    invoke-virtual {v5, v6}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :cond_0
    :goto_0
    new-instance v3, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$5;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$5;-><init>(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)V

    invoke-static {v1, v2, v7, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getStat(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;ZLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 371
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 372
    return-void

    .line 291
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :cond_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_duration:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mWeekDay:Lorg/joda/time/DateTime;

    invoke-virtual {v5, v7}, Lorg/joda/time/DateTime;->withDayOfWeek(I)Lorg/joda/time/DateTime;

    move-result-object v5

    const-string v6, "MM\uc6d4 dd\uc77c"

    invoke-virtual {v5, v6}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ~ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mWeekDay:Lorg/joda/time/DateTime;

    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mWeekDay:Lorg/joda/time/DateTime;

    invoke-virtual {v6}, Lorg/joda/time/DateTime;->dayOfWeek()Lorg/joda/time/DateTime$Property;

    move-result-object v6

    invoke-virtual {v6}, Lorg/joda/time/DateTime$Property;->getMaximumValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/joda/time/DateTime;->withDayOfWeek(I)Lorg/joda/time/DateTime;

    move-result-object v5

    const-string v6, "MM\uc6d4 dd\uc77c"

    invoke-virtual {v5, v6}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 294
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 297
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mMonthDay:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/DateTime$Property;->withMinimumValue()Lorg/joda/time/DateTime;

    move-result-object v1

    .line 298
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mMonthDay:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/DateTime$Property;->withMaximumValue()Lorg/joda/time/DateTime;

    move-result-object v2

    .line 300
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mMonthDay:Lorg/joda/time/DateTime;

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/DateTime$Property;->withMaximumValue()Lorg/joda/time/DateTime;

    move-result-object v3

    const-string v4, "dd"

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->CHART_X_LABEL_COUNT:I

    .line 301
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_duration:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mMonthDay:Lorg/joda/time/DateTime;

    invoke-virtual {v5}, Lorg/joda/time/DateTime;->getMonthOfYear()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f090215

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private setData(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "chart_data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .line 629
    const/high16 v5, 0x3f800000    # 1.0f

    .line 631
    .local v5, "start":F
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v6, "yVals1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/BarEntry;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 633
    new-instance v8, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v9, v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v8, v9, v7}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 638
    :cond_0
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 639
    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 640
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v7, v10}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/BarDataSet;

    .line 641
    .local v4, "set1":Lcom/github/mikephil/charting/data/BarDataSet;
    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/data/BarDataSet;->setValues(Ljava/util/List;)V

    .line 642
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarData;->notifyDataChanged()V

    .line 643
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/BarChart;->notifyDataSetChanged()V

    .line 661
    :goto_1
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarData;->getDataSets()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 662
    .local v3, "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    invoke-interface {v3, v10}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setDrawValues(Z)V

    goto :goto_2

    .line 645
    .end local v3    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .end local v4    # "set1":Lcom/github/mikephil/charting/data/BarDataSet;
    :cond_1
    new-instance v4, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v7, ""

    invoke-direct {v4, v6, v7}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 647
    .restart local v4    # "set1":Lcom/github/mikephil/charting/data/BarDataSet;
    invoke-virtual {v4, v10}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawIcons(Z)V

    .line 649
    const/4 v7, 0x1

    new-array v7, v7, [I

    const v8, -0xa1afb0

    aput v8, v7, v10

    invoke-virtual {v4, v7}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors([I)V

    .line 651
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .local v1, "dataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    new-instance v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;)V

    .line 655
    .local v0, "data":Lcom/github/mikephil/charting/data/BarData;
    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/data/BarData;->setValueTextSize(F)V

    .line 656
    const v7, 0x3f666666    # 0.9f

    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    .line 658
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v7, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    goto :goto_1

    .line 665
    .end local v0    # "data":Lcom/github/mikephil/charting/data/BarData;
    .end local v1    # "dataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    :cond_2
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 666
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/BarChart;->notifyDataSetChanged()V

    .line 667
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/BarChart;->getVisibility()I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_3

    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/BarChart;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_4

    .line 668
    :cond_3
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v7, v10}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 670
    :cond_4
    return-void
.end method

.method private setMenu(IZ)V
    .locals 5
    .param p1, "postion"    # I
    .param p2, "isRef"    # Z

    .prologue
    const/4 v4, 0x0

    const v3, -0xd0d0e

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 377
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_y_text:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_x_text:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    packed-switch p1, :pswitch_data_0

    .line 459
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_calorie:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 460
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_km:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 461
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 462
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_speed:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 463
    iput v4, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->SELECT_TYPE:I

    .line 465
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_y_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : \uac78\uc74c)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_x_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : \uc77c)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    if-eqz p2, :cond_0

    .line 469
    iget v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->isType:I

    invoke-direct {p0, v0, v2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->refreshData(ILorg/joda/time/DateTime;)V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 383
    :pswitch_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_calorie:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 384
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_km:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 385
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 386
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_speed:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 387
    iput v4, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->SELECT_TYPE:I

    .line 389
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_y_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : \uac78\uc74c)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_x_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : \uc77c)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    if-eqz p2, :cond_0

    .line 393
    iget v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->isType:I

    invoke-direct {p0, v0, v2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->refreshData(ILorg/joda/time/DateTime;)V

    goto :goto_0

    .line 398
    :pswitch_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_calorie:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 399
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_km:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 400
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 401
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_speed:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 402
    const/4 v0, 0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->SELECT_TYPE:I

    .line 404
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_y_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : kcal)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_x_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : \uc77c)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    if-eqz p2, :cond_0

    .line 408
    iget v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->isType:I

    invoke-direct {p0, v0, v2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->refreshData(ILorg/joda/time/DateTime;)V

    goto :goto_0

    .line 413
    :pswitch_2
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_calorie:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 414
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_km:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 415
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 416
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_speed:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 417
    const/4 v0, 0x2

    iput v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->SELECT_TYPE:I

    .line 419
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_y_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : m)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_x_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : \uc77c)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    if-eqz p2, :cond_0

    .line 423
    iget v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->isType:I

    invoke-direct {p0, v0, v2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->refreshData(ILorg/joda/time/DateTime;)V

    goto/16 :goto_0

    .line 428
    :pswitch_3
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_calorie:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 429
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_km:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 430
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 431
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_speed:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 432
    const/4 v0, 0x3

    iput v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->SELECT_TYPE:I

    .line 434
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_y_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : \ubd84)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_x_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : \uc77c)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    if-eqz p2, :cond_0

    .line 438
    iget v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->isType:I

    invoke-direct {p0, v0, v2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->refreshData(ILorg/joda/time/DateTime;)V

    goto/16 :goto_0

    .line 444
    :pswitch_4
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_calorie:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 445
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_km:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 446
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 447
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_speed:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 448
    const/4 v0, 0x4

    iput v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->SELECT_TYPE:I

    .line 450
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_y_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : km/h)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_x_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : \uc77c)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    if-eqz p2, :cond_0

    .line 454
    iget v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->isType:I

    invoke-direct {p0, v0, v2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->refreshData(ILorg/joda/time/DateTime;)V

    goto/16 :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setStepsData(I)V
    .locals 18
    .param p1, "steps"    # I

    .prologue
    .line 673
    const/4 v3, 0x0

    .line 674
    .local v3, "height":I
    const/4 v4, 0x0

    .line 675
    .local v4, "kcal":I
    const/4 v5, 0x0

    .line 676
    .local v5, "meter":I
    const/4 v8, 0x0

    .line 677
    .local v8, "min":I
    const/4 v9, 0x0

    .line 679
    .local v9, "speed":F
    const-string v6, "0"

    .line 680
    .local v6, "meterText":Ljava/lang/String;
    const-string v7, "m"

    .line 683
    .local v7, "meterUnit":Ljava/lang/String;
    if-lez p1, :cond_1

    .line 684
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "HEIGHT"

    const/16 v13, 0xaa

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 685
    div-int/lit8 v4, p1, 0x1e

    .line 686
    add-int/lit8 v11, v3, -0x64

    mul-int v11, v11, p1

    div-int/lit8 v5, v11, 0x64

    .line 687
    int-to-double v12, v5

    const-wide v14, 0x40af400000000000L    # 4000.0

    div-double/2addr v12, v14

    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    mul-double/2addr v12, v14

    double-to-int v8, v12

    .line 689
    if-lez v5, :cond_0

    if-lez v8, :cond_0

    .line 690
    div-int v11, v5, v8

    int-to-float v9, v11

    .line 691
    const/high16 v11, 0x41c00000    # 24.0f

    div-float/2addr v9, v11

    .line 694
    :cond_0
    const/16 v11, 0x3e8

    if-ge v5, v11, :cond_2

    .line 695
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 696
    const-string v7, "m"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_step_count:Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_calorie:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " kcal"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_km:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_time:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \ubd84"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    const-string v11, "%.2f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 712
    .local v10, "strSpeed":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_speed:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " km/h"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    return-void

    .line 698
    .end local v10    # "strSpeed":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v11, "%.2f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    int-to-double v14, v5

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 699
    const-string v7, "km"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 702
    :catch_0
    move-exception v2

    .line 703
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 477
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 479
    .local v0, "getId":I
    sparse-switch v0, :sswitch_data_0

    .line 497
    :goto_0
    return-void

    .line 481
    :sswitch_0
    invoke-direct {p0, v2, v2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->setMenu(IZ)V

    goto :goto_0

    .line 485
    :sswitch_1
    const/4 v1, 0x2

    invoke-direct {p0, v1, v2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->setMenu(IZ)V

    goto :goto_0

    .line 489
    :sswitch_2
    const/4 v1, 0x3

    invoke-direct {p0, v1, v2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->setMenu(IZ)V

    goto :goto_0

    .line 493
    :sswitch_3
    const/4 v1, 0x4

    invoke-direct {p0, v1, v2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->setMenu(IZ)V

    goto :goto_0

    .line 479
    :sswitch_data_0
    .sparse-switch
        0x7f1003e8 -> :sswitch_0
        0x7f1003eb -> :sswitch_1
        0x7f1003ee -> :sswitch_2
        0x7f1003f1 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    sput-object p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mInstance:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    .line 103
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 108
    const v0, 0x7f0400a1

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    .line 110
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->pref:Landroid/content/SharedPreferences;

    .line 111
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 112
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 113
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_calorie:Landroid/widget/RelativeLayout;

    .line 114
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_km:Landroid/widget/RelativeLayout;

    .line 115
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_time:Landroid/widget/RelativeLayout;

    .line 116
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_speed:Landroid/widget/RelativeLayout;

    .line 117
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_calorie:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_km:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_time:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_speed:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_step_count:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_duration:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->iv_date_left:Landroid/widget/ImageView;

    .line 124
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->iv_date_right:Landroid/widget/ImageView;

    .line 125
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_step_layout:Landroid/widget/RelativeLayout;

    .line 126
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_y_text:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_x_text:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_x_start:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_x_center:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->tv_chart_x_end:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1000d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->progress:Landroid/widget/ProgressBar;

    .line 134
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v1, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;-><init>(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_step_layout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$2;-><init>(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->iv_date_left:Landroid/widget/ImageView;

    new-instance v1, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$3;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$3;-><init>(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->iv_date_right:Landroid/widget/ImageView;

    new-instance v1, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$4;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$4;-><init>(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_calorie:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_km:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->rl_menu_speed:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->isFrist:Z

    if-nez v0, :cond_0

    .line 229
    invoke-direct {p0, v4, v3}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->setMenu(IZ)V

    .line 230
    iput-boolean v3, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->isFrist:Z

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mRootView:Landroid/view/View;

    return-object v0

    .line 232
    :cond_0
    iget v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->isType:I

    if-ne v0, v3, :cond_2

    .line 233
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mWeekData:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mWeekData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mWeekData:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->drawBarChart(Ljava/util/ArrayList;)V

    .line 235
    iget v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->SELECT_TYPE:I

    invoke-direct {p0, v0, v4}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->setMenu(IZ)V

    goto :goto_0

    .line 237
    :cond_1
    iget v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->SELECT_TYPE:I

    invoke-direct {p0, v0, v3}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->setMenu(IZ)V

    goto :goto_0

    .line 239
    :cond_2
    iget v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->isType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 240
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mMonthData:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mMonthData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->mMonthData:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->drawBarChart(Ljava/util/ArrayList;)V

    .line 242
    iget v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->SELECT_TYPE:I

    invoke-direct {p0, v0, v4}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->setMenu(IZ)V

    goto :goto_0

    .line 244
    :cond_3
    iget v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->SELECT_TYPE:I

    invoke-direct {p0, v0, v3}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->setMenu(IZ)V

    goto :goto_0

    .line 247
    :cond_4
    invoke-direct {p0, v4, v3}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->setMenu(IZ)V

    goto :goto_0
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->isType:I

    .line 96
    return-void
.end method
