.class public Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;
.super Landroid/support/v4/app/Fragment;
.source "StatLineChartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static mInstance:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;


# instance fields
.field private SELECT_TYPE:I

.field private isFrist:Z

.field isToday:Z

.field private iv_date_left:Landroid/widget/ImageView;

.field private iv_date_right:Landroid/widget/ImageView;

.field private mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

.field private mChartData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Stat;",
            ">;"
        }
    .end annotation
.end field

.field private mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

.field private mRootView:Landroid/view/View;

.field private mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

.field private pref:Landroid/content/SharedPreferences;

.field private progress:Landroid/widget/ProgressBar;

.field private rl_menu_calorie:Landroid/widget/RelativeLayout;

.field private rl_menu_km:Landroid/widget/RelativeLayout;

.field private rl_menu_speed:Landroid/widget/RelativeLayout;

.field private rl_menu_time:Landroid/widget/RelativeLayout;

.field private rl_step_layout:Landroid/widget/RelativeLayout;

.field private today:Lorg/joda/time/DateTime;

.field todayXcount:I

.field private tv_calorie:Landroid/widget/TextView;

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

    .line 86
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 54
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->today:Lorg/joda/time/DateTime;

    .line 61
    iput v1, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->SELECT_TYPE:I

    .line 84
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->isFrist:Z

    .line 433
    iput v1, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->todayXcount:I

    .line 434
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->isToday:Z

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)Lorg/joda/time/DateTime;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->today:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Lorg/joda/time/DateTime;)Lorg/joda/time/DateTime;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;
    .param p1, "x1"    # Lorg/joda/time/DateTime;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->today:Lorg/joda/time/DateTime;

    return-object p1
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->setMenu(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mChartData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mChartData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->drawTodayChart(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)Lcom/cashwalk/cashwalk/util/StepsDBHelper;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->getTodayLocalDBStep(Ljava/util/ArrayList;)V

    return-void
.end method

.method private dayStepUploadCheck()V
    .locals 4

    .prologue
    .line 715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 718
    .local v0, "getTodaySteps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/model/StepsTableModel;>;"
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;->getYesterdaySteps()Ljava/util/ArrayList;

    move-result-object v0

    .line 721
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 722
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/model/StepsTableModel;

    iget-object v2, v3, Lcom/cashwalk/cashwalk/util/model/StepsTableModel;->createAt:Ljava/lang/String;

    .line 723
    .local v2, "yesterdayString":Ljava/lang/String;
    const-string v3, "#### \uc77c\uc77c \uac78\uc74c\uc218 \ub3d9\uae30\ud654 \uc694\uccad"

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 724
    new-instance v3, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$7;

    invoke-direct {v3, p0, v2}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$7;-><init>(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->syncDayStep(Ljava/util/ArrayList;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .line 737
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 741
    .end local v1    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    .end local v2    # "yesterdayString":Ljava/lang/String;
    :goto_0
    return-void

    .line 739
    :cond_0
    const-string v3, "#### \ub3d9\uae30\ud654\ud560 \uc804\uc77c \uac78\uc74c \uc218 \uc5c6\uc74c"

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private drawTodayChart(Ljava/util/ArrayList;)V
    .locals 28
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
    .line 437
    .local p1, "listData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Stat;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_duration:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->today:Lorg/joda/time/DateTime;

    move-object/from16 v23, v0

    const-string v24, "MM\uc6d4 dd\uc77c E\uc694\uc77c"

    invoke-virtual/range {v23 .. v24}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v3, "chartListData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v4, "chartListOrlData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->todayXcount:I

    .line 443
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->isToday:Z

    .line 444
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-eqz v22, :cond_4

    .line 445
    const/16 v18, 0x0

    .line 446
    .local v18, "sum":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/Stat;->records:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_2

    .line 449
    new-instance v15, Lorg/joda/time/DateTime;

    invoke-direct {v15}, Lorg/joda/time/DateTime;-><init>()V

    .line 450
    .local v15, "nowDate":Lorg/joda/time/DateTime;
    const-string v22, "YYYY-MM-dd"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->today:Lorg/joda/time/DateTime;

    move-object/from16 v23, v0

    const-string v24, "YYYY-MM-dd"

    invoke-virtual/range {v23 .. v24}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 451
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->isToday:Z

    .line 452
    const-string v22, "HH"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    if-lt v0, v7, :cond_0

    .line 453
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/Stat;->records:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    add-int v18, v18, v22

    .line 454
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/Stat;->records:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->todayXcount:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->todayXcount:I

    .line 446
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 458
    :cond_0
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 461
    :cond_1
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/Stat;->records:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    add-int v18, v18, v22

    .line 462
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/Stat;->records:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 468
    .end local v15    # "nowDate":Lorg/joda/time/DateTime;
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->setStepsData(I)V

    .line 477
    .end local v18    # "sum":I
    :cond_3
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 478
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v22

    const-string v23, "HEIGHT"

    const/16 v24, 0xaa

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 481
    .local v6, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->SELECT_TYPE:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 483
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v2, "calList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_5

    .line 485
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    div-int/lit8 v22, v22, 0x1e

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 471
    .end local v2    # "calList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "height":I
    .end local v7    # "i":I
    :cond_4
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->setStepsData(I)V

    .line 472
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    const/16 v22, 0x18

    move/from16 v0, v22

    if-ge v7, v0, :cond_3

    .line 473
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 488
    .restart local v2    # "calList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "height":I
    :cond_5
    move-object v3, v2

    .line 526
    .end local v2    # "calList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    :goto_4
    const/4 v13, 0x0

    .line 527
    .local v13, "min":I
    const/16 v11, 0x2710

    .line 530
    .local v11, "max":I
    :try_start_0
    invoke-static {v3}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 531
    invoke-static {v3}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 539
    :goto_5
    const/16 v22, 0xa

    move/from16 v0, v22

    if-le v11, v0, :cond_e

    .line 540
    int-to-double v0, v11

    move-wide/from16 v22, v0

    const-wide v24, 0x3ff199999999999aL    # 1.1

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    .line 541
    .local v20, "value":Ljava/lang/Double;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->intValue()I

    move-result v22

    add-int v11, v11, v22

    .line 547
    .end local v20    # "value":Ljava/lang/Double;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/charts/LineChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/github/mikephil/charting/charts/LineChart;->setDragEnabled(Z)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleEnabled(Z)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v21

    .line 556
    .local v21, "xAxis":Lcom/github/mikephil/charting/components/XAxis;
    sget-object v22, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual/range {v21 .. v22}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 557
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMinimum(F)V

    .line 559
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->isToday:Z

    move/from16 v22, v0

    if-eqz v22, :cond_f

    .line 560
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->isToday:Z

    .line 561
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->todayXcount:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaximum(F)V

    .line 562
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->todayXcount:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    .line 567
    :goto_7
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v10

    .line 570
    .local v10, "leftAxis":Lcom/github/mikephil/charting/components/YAxis;
    invoke-virtual {v10}, Lcom/github/mikephil/charting/components/YAxis;->removeAllLimitLines()V

    .line 571
    int-to-float v0, v11

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 572
    int-to-float v0, v13

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 573
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/github/mikephil/charting/components/YAxis;->setZeroLineColor(I)V

    .line 574
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/github/mikephil/charting/components/YAxis;->setDrawZeroLine(Z)V

    .line 575
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLimitLinesBehindData(Z)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 578
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->setTodayData(Ljava/util/ArrayList;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v9

    .line 581
    .local v9, "l":Lcom/github/mikephil/charting/components/Legend;
    sget-object v22, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/components/Legend;->setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V

    .line 582
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 583
    return-void

    .line 489
    .end local v9    # "l":Lcom/github/mikephil/charting/components/Legend;
    .end local v10    # "leftAxis":Lcom/github/mikephil/charting/components/YAxis;
    .end local v11    # "max":I
    .end local v13    # "min":I
    .end local v21    # "xAxis":Lcom/github/mikephil/charting/components/XAxis;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->SELECT_TYPE:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 491
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v8, "kmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    :goto_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_8

    .line 493
    add-int/lit8 v23, v6, -0x64

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    mul-int v22, v22, v23

    div-int/lit8 v12, v22, 0x64

    .line 494
    .local v12, "meter":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 497
    .end local v12    # "meter":I
    :cond_8
    move-object v3, v8

    .line 498
    goto/16 :goto_4

    .end local v8    # "kmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->SELECT_TYPE:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 500
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v14, "minList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    :goto_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_a

    .line 502
    add-int/lit8 v23, v6, -0x64

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    mul-int v22, v22, v23

    div-int/lit8 v12, v22, 0x64

    .line 503
    .restart local v12    # "meter":I
    int-to-double v0, v12

    move-wide/from16 v22, v0

    const-wide v24, 0x40af400000000000L    # 4000.0

    div-double v22, v22, v24

    const-wide/high16 v24, 0x404e000000000000L    # 60.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v19, v0

    .line 504
    .local v19, "tempMin":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 507
    .end local v12    # "meter":I
    .end local v19    # "tempMin":I
    :cond_a
    move-object v3, v14

    .line 508
    goto/16 :goto_4

    .end local v14    # "minList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->SELECT_TYPE:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 510
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v17, "speedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    :goto_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_d

    .line 512
    add-int/lit8 v23, v6, -0x64

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    mul-int v22, v22, v23

    div-int/lit8 v12, v22, 0x64

    .line 513
    .restart local v12    # "meter":I
    int-to-double v0, v12

    move-wide/from16 v22, v0

    const-wide v24, 0x40af400000000000L    # 4000.0

    div-double v22, v22, v24

    const-wide/high16 v24, 0x404e000000000000L    # 60.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v19, v0

    .line 515
    .restart local v19    # "tempMin":I
    const/16 v16, 0x0

    .line 516
    .local v16, "speed":I
    if-lez v12, :cond_c

    if-lez v19, :cond_c

    .line 517
    int-to-double v0, v12

    move-wide/from16 v22, v0

    int-to-double v0, v12

    move-wide/from16 v24, v0

    const-wide v26, 0x40af400000000000L    # 4000.0

    div-double v24, v24, v26

    const-wide/high16 v26, 0x404e000000000000L    # 60.0

    mul-double v24, v24, v26

    div-double v22, v22, v24

    const-wide/high16 v24, 0x404e000000000000L    # 60.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v16, v0

    .line 519
    :cond_c
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 522
    .end local v12    # "meter":I
    .end local v16    # "speed":I
    .end local v19    # "tempMin":I
    :cond_d
    move-object/from16 v3, v17

    goto/16 :goto_4

    .line 532
    .end local v17    # "speedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v11    # "max":I
    .restart local v13    # "min":I
    :catch_0
    move-exception v5

    .line 533
    .local v5, "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    .line 534
    const/16 v11, 0xf

    goto/16 :goto_5

    .line 543
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_e
    const/4 v13, 0x0

    .line 544
    const/16 v11, 0xf

    goto/16 :goto_6

    .line 564
    .restart local v21    # "xAxis":Lcom/github/mikephil/charting/components/XAxis;
    :cond_f
    const/high16 v22, 0x41c00000    # 24.0f

    invoke-virtual/range {v21 .. v22}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaximum(F)V

    .line 565
    const/16 v22, 0xc

    invoke-virtual/range {v21 .. v22}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(I)V

    goto/16 :goto_7
.end method

.method private getTodayLocalDBStep(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/model/StepsTableModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 691
    .local p1, "getTodaySteps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/model/StepsTableModel;>;"
    const-string v4, "#### \ub85c\uceecDB \uac78\uc74c \uc218 \ud45c\uc2dc"

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 693
    const/4 v3, 0x0

    .line 694
    .local v3, "totalCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 695
    .local v2, "timeArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 696
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/model/StepsTableModel;

    iget v4, v4, Lcom/cashwalk/cashwalk/util/model/StepsTableModel;->steps:I

    add-int/2addr v3, v4

    .line 697
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/model/StepsTableModel;

    iget v4, v4, Lcom/cashwalk/cashwalk/util/model/StepsTableModel;->steps:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 700
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mChartData:Ljava/util/ArrayList;

    .line 701
    new-instance v1, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/util/network/model/Stat;-><init>()V

    .line 702
    .local v1, "tempStat":Lcom/cashwalk/cashwalk/util/network/model/Stat;
    new-instance v4, Lorg/joda/time/DateTime;

    invoke-direct {v4}, Lorg/joda/time/DateTime;-><init>()V

    iput-object v4, v1, Lcom/cashwalk/cashwalk/util/network/model/Stat;->date:Lorg/joda/time/DateTime;

    .line 703
    iput v3, v1, Lcom/cashwalk/cashwalk/util/network/model/Stat;->steps:I

    .line 704
    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/Stat;->records:Ljava/util/ArrayList;

    .line 705
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mChartData:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mChartData:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->drawTodayChart(Ljava/util/ArrayList;)V

    .line 709
    .end local v0    # "i":I
    .end local v1    # "tempStat":Lcom/cashwalk/cashwalk/util/network/model/Stat;
    .end local v2    # "timeArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "totalCount":I
    :cond_1
    return-void
.end method

.method private setMenu(IZ)V
    .locals 4
    .param p1, "postion"    # I
    .param p2, "isRef"    # Z

    .prologue
    const/4 v3, 0x0

    const v2, -0xd0d0e

    const/4 v1, -0x1

    .line 308
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_chart_y_text:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_chart_x_text:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    packed-switch p1, :pswitch_data_0

    .line 392
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_calorie:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 393
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_km:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 394
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 395
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_speed:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 396
    iput v3, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->SELECT_TYPE:I

    .line 398
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_chart_y_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : \uac78\uc74c)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_chart_x_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : \uc2dc\uac04)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    if-eqz p2, :cond_0

    .line 402
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->today:Lorg/joda/time/DateTime;

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->refreshData(Lorg/joda/time/DateTime;)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 314
    :pswitch_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_calorie:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 315
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_km:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 316
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 317
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_speed:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 318
    iput v3, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->SELECT_TYPE:I

    .line 320
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_chart_y_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : \uac78\uc74c)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_chart_x_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : \uc2dc\uac04)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    if-eqz p2, :cond_0

    .line 324
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->today:Lorg/joda/time/DateTime;

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->refreshData(Lorg/joda/time/DateTime;)V

    goto :goto_0

    .line 330
    :pswitch_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_calorie:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 331
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_km:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 332
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 333
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_speed:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 334
    const/4 v0, 0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->SELECT_TYPE:I

    .line 336
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_chart_y_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : kcal)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_chart_x_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : \uc2dc\uac04)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    if-eqz p2, :cond_0

    .line 340
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->today:Lorg/joda/time/DateTime;

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->refreshData(Lorg/joda/time/DateTime;)V

    goto :goto_0

    .line 345
    :pswitch_2
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_calorie:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 346
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_km:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 347
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 348
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_speed:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 349
    const/4 v0, 0x2

    iput v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->SELECT_TYPE:I

    .line 351
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_chart_y_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : m)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_chart_x_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : \uc2dc\uac04)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    if-eqz p2, :cond_0

    .line 355
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->today:Lorg/joda/time/DateTime;

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->refreshData(Lorg/joda/time/DateTime;)V

    goto/16 :goto_0

    .line 360
    :pswitch_3
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_calorie:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 361
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_km:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 362
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 363
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_speed:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 364
    const/4 v0, 0x3

    iput v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->SELECT_TYPE:I

    .line 366
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_chart_y_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : \ubd84)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_chart_x_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : \uc2dc\uac04)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    if-eqz p2, :cond_0

    .line 370
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->today:Lorg/joda/time/DateTime;

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->refreshData(Lorg/joda/time/DateTime;)V

    goto/16 :goto_0

    .line 376
    :pswitch_4
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_calorie:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 377
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_km:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 378
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 379
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_speed:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 380
    const/4 v0, 0x4

    iput v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->SELECT_TYPE:I

    .line 382
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_chart_y_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : km/h)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_chart_x_text:Landroid/widget/TextView;

    const-string v1, "(\ub2e8\uc704 : \uc2dc\uac04)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    if-eqz p2, :cond_0

    .line 386
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->today:Lorg/joda/time/DateTime;

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->refreshData(Lorg/joda/time/DateTime;)V

    goto/16 :goto_0

    .line 311
    nop

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
    .line 643
    const/4 v3, 0x0

    .line 644
    .local v3, "height":I
    const/4 v4, 0x0

    .line 645
    .local v4, "kcal":I
    const/4 v5, 0x0

    .line 646
    .local v5, "meter":I
    const/4 v8, 0x0

    .line 647
    .local v8, "min":I
    const/4 v9, 0x0

    .line 649
    .local v9, "speed":F
    const-string v6, "0"

    .line 650
    .local v6, "meterText":Ljava/lang/String;
    const-string v7, "m"

    .line 657
    .local v7, "meterUnit":Ljava/lang/String;
    if-lez p1, :cond_1

    .line 658
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "HEIGHT"

    const/16 v13, 0xaa

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 659
    div-int/lit8 v4, p1, 0x1e

    .line 660
    add-int/lit8 v11, v3, -0x64

    mul-int v11, v11, p1

    div-int/lit8 v5, v11, 0x64

    .line 661
    int-to-double v12, v5

    const-wide v14, 0x40af400000000000L    # 4000.0

    div-double/2addr v12, v14

    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    mul-double/2addr v12, v14

    double-to-int v8, v12

    .line 663
    if-lez v5, :cond_0

    if-lez v8, :cond_0

    .line 664
    div-int v11, v5, v8

    int-to-float v9, v11

    .line 665
    const/high16 v11, 0x41c00000    # 24.0f

    div-float/2addr v9, v11

    .line 668
    :cond_0
    const/16 v11, 0x3e8

    if-ge v5, v11, :cond_2

    .line 669
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 670
    const-string v7, "m"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_step_count:Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_calorie:Landroid/widget/TextView;

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

    .line 682
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_km:Landroid/widget/TextView;

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

    .line 683
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_time:Landroid/widget/TextView;

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

    .line 685
    const-string v11, "%.2f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 686
    .local v10, "strSpeed":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_speed:Landroid/widget/TextView;

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

    .line 687
    return-void

    .line 672
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

    .line 673
    const-string v7, "km"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 676
    :catch_0
    move-exception v2

    .line 677
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private setTodayData(Ljava/util/ArrayList;)V
    .locals 13
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
    .line 587
    .local p1, "chart_data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v8, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 590
    new-instance v10, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v11, v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    const/4 v12, 0x0

    invoke-direct {v10, v11, v9, v12}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 595
    :cond_0
    iget-object v9, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineData;->getDataSetCount()I

    move-result v9

    if-lez v9, :cond_4

    .line 596
    iget-object v9, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/LineData;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/data/LineData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 597
    .local v6, "set1":Lcom/github/mikephil/charting/data/LineDataSet;
    invoke-virtual {v6, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setValues(Ljava/util/List;)V

    .line 633
    :cond_1
    iget-object v9, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 634
    iget-object v9, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineData;->notifyDataChanged()V

    .line 635
    iget-object v9, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/LineChart;->notifyDataSetChanged()V

    .line 637
    iget-object v9, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/LineChart;->getVisibility()I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/LineChart;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_3

    .line 638
    :cond_2
    iget-object v9, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/charts/LineChart;->setVisibility(I)V

    .line 640
    :cond_3
    return-void

    .line 599
    .end local v6    # "set1":Lcom/github/mikephil/charting/data/LineDataSet;
    :cond_4
    new-instance v6, Lcom/github/mikephil/charting/data/LineDataSet;

    const/4 v9, 0x0

    invoke-direct {v6, v8, v9}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 600
    .restart local v6    # "set1":Lcom/github/mikephil/charting/data/LineDataSet;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawIcons(Z)V

    .line 601
    const v9, -0xa1afb0

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 602
    const v9, -0xa1afb0

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 603
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 604
    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleRadius(F)V

    .line 605
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 606
    const/high16 v9, 0x41100000    # 9.0f

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTextSize(F)V

    .line 607
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    .line 608
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setFormLineWidth(F)V

    .line 609
    new-instance v9, Landroid/graphics/DashPathEffect;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setFormLineDashEffect(Landroid/graphics/DashPathEffect;)V

    .line 610
    const/high16 v9, 0x41700000    # 15.0f

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setFormSize(F)V

    .line 612
    invoke-static {}, Lcom/github/mikephil/charting/utils/Utils;->getSDKInt()I

    move-result v9

    const/16 v10, 0x12

    if-lt v9, v10, :cond_5

    .line 613
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const v10, 0x7f0200df

    invoke-static {v9, v10}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 614
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 620
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 621
    .local v1, "dataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;>;"
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    new-instance v0, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;)V

    .line 624
    .local v0, "data":Lcom/github/mikephil/charting/data/LineData;
    iget-object v9, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 626
    iget-object v9, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/LineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v7

    .line 627
    .local v7, "sets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .local v4, "iSet":Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;
    move-object v5, v4

    .line 628
    check-cast v5, Lcom/github/mikephil/charting/data/LineDataSet;

    .line 629
    .local v5, "set":Lcom/github/mikephil/charting/data/LineDataSet;
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/LineDataSet;->isDrawValuesEnabled()Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v5, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    goto :goto_2

    .line 617
    .end local v0    # "data":Lcom/github/mikephil/charting/data/LineData;
    .end local v1    # "dataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;>;"
    .end local v4    # "iSet":Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;
    .end local v5    # "set":Lcom/github/mikephil/charting/data/LineDataSet;
    .end local v7    # "sets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;>;"
    :cond_5
    const v9, 0x335e5050

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillColor(I)V

    goto :goto_1

    .line 629
    .restart local v0    # "data":Lcom/github/mikephil/charting/data/LineData;
    .restart local v1    # "dataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;>;"
    .restart local v4    # "iSet":Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;
    .restart local v5    # "set":Lcom/github/mikephil/charting/data/LineDataSet;
    .restart local v7    # "sets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;>;"
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 609
    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private syncLocalDB(Lorg/joda/time/DateTime;)V
    .locals 4
    .param p1, "setDate"    # Lorg/joda/time/DateTime;

    .prologue
    const/4 v3, 0x0

    .line 255
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1}, Lorg/joda/time/DateTime;-><init>()V

    .line 256
    .local v1, "setToday":Lorg/joda/time/DateTime;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 257
    new-instance v2, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$6;

    invoke-direct {v2, p0, p1}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$6;-><init>(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Lorg/joda/time/DateTime;)V

    invoke-static {v1, v1, v3, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getTodayStat(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;ZLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 303
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 304
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 410
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 412
    .local v0, "getId":I
    sparse-switch v0, :sswitch_data_0

    .line 430
    :goto_0
    return-void

    .line 414
    :sswitch_0
    invoke-direct {p0, v2, v2}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->setMenu(IZ)V

    goto :goto_0

    .line 418
    :sswitch_1
    const/4 v1, 0x2

    invoke-direct {p0, v1, v2}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->setMenu(IZ)V

    goto :goto_0

    .line 422
    :sswitch_2
    const/4 v1, 0x3

    invoke-direct {p0, v1, v2}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->setMenu(IZ)V

    goto :goto_0

    .line 426
    :sswitch_3
    const/4 v1, 0x4

    invoke-direct {p0, v1, v2}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->setMenu(IZ)V

    goto :goto_0

    .line 412
    :sswitch_data_0
    .sparse-switch
        0x7f1003e8 -> :sswitch_0
        0x7f1003eb -> :sswitch_1
        0x7f1003ee -> :sswitch_2
        0x7f1003f1 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    sput-object p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mInstance:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mChartData:Ljava/util/ArrayList;

    .line 96
    sget-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    sput-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    .line 99
    :cond_0
    sget-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->StepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    .line 100
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    const v0, 0x7f0400a1

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mRootView:Landroid/view/View;

    .line 106
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->pref:Landroid/content/SharedPreferences;

    .line 107
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 108
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 109
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_calorie:Landroid/widget/RelativeLayout;

    .line 110
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_km:Landroid/widget/RelativeLayout;

    .line 111
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_time:Landroid/widget/RelativeLayout;

    .line 112
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_speed:Landroid/widget/RelativeLayout;

    .line 113
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_calorie:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_km:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_time:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_speed:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_step_count:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_duration:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_chart_y_text:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_chart_x_text:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->iv_date_left:Landroid/widget/ImageView;

    .line 122
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->iv_date_right:Landroid/widget/ImageView;

    .line 123
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1003e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_step_layout:Landroid/widget/RelativeLayout;

    .line 124
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1000d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->progress:Landroid/widget/ProgressBar;

    .line 126
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    new-instance v1, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$1;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$1;-><init>(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 150
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_step_layout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$2;-><init>(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->iv_date_left:Landroid/widget/ImageView;

    new-instance v1, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$3;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$3;-><init>(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->iv_date_right:Landroid/widget/ImageView;

    new-instance v1, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$4;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$4;-><init>(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_calorie:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_km:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_time:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->rl_menu_speed:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->isFrist:Z

    if-nez v0, :cond_0

    .line 188
    invoke-direct {p0, v3, v4}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->setMenu(IZ)V

    .line 189
    iput-boolean v4, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->isFrist:Z

    .line 190
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->dayStepUploadCheck()V

    .line 200
    :goto_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mRootView:Landroid/view/View;

    return-object v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mChartData:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mChartData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mChartData:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->drawTodayChart(Ljava/util/ArrayList;)V

    .line 194
    iget v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->SELECT_TYPE:I

    invoke-direct {p0, v0, v3}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->setMenu(IZ)V

    goto :goto_0

    .line 196
    :cond_1
    iget v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->SELECT_TYPE:I

    invoke-direct {p0, v0, v4}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->setMenu(IZ)V

    goto :goto_0
.end method

.method public refreshData(Lorg/joda/time/DateTime;)V
    .locals 7
    .param p1, "setDate"    # Lorg/joda/time/DateTime;

    .prologue
    const/4 v6, 0x0

    .line 206
    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2}, Lorg/joda/time/DateTime;-><init>()V

    .line 208
    .local v2, "setToday":Lorg/joda/time/DateTime;
    if-eqz p1, :cond_2

    .line 210
    const-string v4, "YYYY-MM-dd"

    invoke-virtual {v2, v4}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "YYYY-MM-dd"

    invoke-virtual {p1, v5}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 211
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;->getTodaySteps()Ljava/util/ArrayList;

    move-result-object v0

    .line 212
    .local v0, "getLocalData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/model/StepsTableModel;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->getTodayLocalDBStep(Ljava/util/ArrayList;)V

    .line 249
    .end local v0    # "getLocalData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/model/StepsTableModel;>;"
    :goto_0
    return-void

    .line 218
    .restart local v0    # "getLocalData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/model/StepsTableModel;>;"
    :cond_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "steps"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 219
    .local v3, "stepsBefore":I
    if-lez v3, :cond_1

    .line 220
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->syncLocalDB(Lorg/joda/time/DateTime;)V

    goto :goto_0

    .line 226
    .end local v0    # "getLocalData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/model/StepsTableModel;>;"
    .end local v3    # "stepsBefore":I
    :cond_1
    move-object v2, p1

    .line 229
    :cond_2
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->tv_duration:Landroid/widget/TextView;

    const-string v5, "MM\uc6d4 dd\uc77c E\uc694\uc77c"

    invoke-virtual {v2, v5}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 231
    new-instance v4, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$5;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$5;-><init>(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)V

    invoke-static {v2, v2, v6, v4}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getTodayStat(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;ZLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .line 248
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method
