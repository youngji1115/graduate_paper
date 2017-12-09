.class public Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "CashBandMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final REQUEST_ENABLE_BT:I = 0x64


# instance fields
.field private ci_promotion:Lme/relex/circleindicator/CircleIndicator;

.field private fl_connect_btn:Landroid/view/View;

.field private isBluetoothConnectReject:Z

.field private iv_band_battery:Landroid/widget/ImageView;

.field private iv_band_icon:Landroid/widget/ImageView;

.field private iv_connect_arrow:Landroid/widget/ImageView;

.field private mBandDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

.field private mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

.field private mPref:Landroid/content/SharedPreferences;

.field private pb_band_loading:Landroid/widget/ProgressBar;

.field private progress_heart:Landroid/widget/ProgressBar;

.field private progress_sleep:Landroid/widget/ProgressBar;

.field private progress_step:Landroid/widget/ProgressBar;

.field private tv_band_battery:Landroid/widget/TextView;

.field private tv_band_connect_time:Landroid/widget/TextView;

.field private tv_band_status:Landroid/widget/TextView;

.field private tv_heartrate_bpm:Landroid/widget/TextView;

.field private tv_sleep_marks_sub:Landroid/widget/TextView;

.field private tv_walk_step:Landroid/widget/TextView;

.field private tv_walk_step_sub:Landroid/widget/TextView;

.field private vp_promotion:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->isBluetoothConnectReject:Z

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->setHeartData()V

    return-void
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->setSleepData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->fl_connect_btn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->iv_connect_arrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->bandDisconnected()V

    return-void
.end method

.method static synthetic access$1300(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->iv_band_battery:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_band_battery:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->requestBluetoothEnable()V

    return-void
.end method

.method static synthetic access$1600(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->progress_step:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Lcom/cashwalk/cashwalk/util/BandDBHelper;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mBandDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_walk_step:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_walk_step_sub:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->bluetoothConnect(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->setDeviceInfo(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->setStepData()V

    return-void
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->initPedometerMode()V

    return-void
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->initVibrateMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->saveHeartDataInServer()V

    return-void
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->saveSleepDataInServer()V

    return-void
.end method

.method static synthetic access$900(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->saveBandAuthInServer()V

    return-void
.end method

.method private allowNotiPermission()V
    .locals 5

    .prologue
    .line 103
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "CASHBAND_FIRST_ENTER"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 105
    .local v1, "isFirstEnter":Z
    if-eqz v1, :cond_0

    .line 106
    new-instance v2, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;->checkAndShow()V

    .line 107
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "CASHBAND_FIRST_ENTER"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private bandConnected(Ljava/lang/String;)V
    .locals 7
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 676
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->pb_band_loading:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 677
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_band_connect_time:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090118

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, "statusStr":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 681
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, 0x7f0f0047

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 682
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_band_status:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_band_status:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 685
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->iv_band_icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 686
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->iv_band_icon:Landroid/widget/ImageView;

    const v3, 0x7f02013b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 687
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->iv_band_icon:Landroid/widget/ImageView;

    new-instance v3, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$9;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$9;-><init>(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    return-void
.end method

.method private bandConnecting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 658
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->iv_band_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 659
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->iv_band_icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->pb_band_loading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 661
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_band_connect_time:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_walk_step:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 664
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_walk_step_sub:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 665
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_sleep_marks_sub:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_heartrate_bpm:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->progress_step:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->progress_sleep:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 670
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->progress_heart:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 672
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_band_status:Landroid/widget/TextView;

    const v1, 0x7f09011b

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    return-void
.end method

.method private bandDisconnected()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 644
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->iv_band_icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->iv_band_icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->iv_band_icon:Landroid/widget/ImageView;

    const v1, 0x7f020140

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 647
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->pb_band_loading:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 648
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_band_connect_time:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 650
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->progress_step:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->progress_sleep:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 652
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->progress_heart:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_band_status:Landroid/widget/TextView;

    const v1, 0x7f09011c

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    return-void
.end method

.method private bluetoothConnect(Z)V
    .locals 3
    .param p1, "isRefresh"    # Z

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->bandConnecting()V

    .line 176
    invoke-static {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    if-eqz v0, :cond_2

    .line 179
    invoke-direct {p0, v2}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->setDeviceInfo(Z)V

    .line 180
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->setStepData()V

    .line 181
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->getBandTimeSync()V

    .line 182
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->setWeather()V

    .line 184
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$1;-><init>(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->getHeartData(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;)V

    .line 191
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->setSleepData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$2;-><init>(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->get3BVersion(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;)V

    .line 200
    :cond_0
    if-eqz p1, :cond_1

    .line 201
    const-string/jumbo v0, "\uc0c8\ub85c\uace0\uce68 \ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->fl_connect_btn:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->iv_connect_arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    :goto_0
    return-void

    .line 209
    :cond_2
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;-><init>(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->connect(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;)V

    goto :goto_0
.end method

.method private initPedometerMode()V
    .locals 8

    .prologue
    const/16 v7, 0xff

    const/4 v6, 0x0

    .line 431
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 433
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v5, "CASHBAND_MOVEMENT_DAY_OF_WEEK"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 434
    .local v0, "dayOfWeek":I
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v5, "CASHBAND_MOVEMENT_START_TIME"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 435
    .local v3, "startTime":I
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v5, "CASHBAND_MOVEMENT_END_TIME"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 437
    .local v2, "endTime":I
    if-ne v0, v7, :cond_0

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    .line 439
    const-string v4, "CASHBAND_MOVEMENT_IS_ON"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 440
    const-string v4, "CASHBAND_MOVEMENT_LUNCH"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 441
    const-string v4, "CASHBAND_MOVEMENT_START_TIME"

    const/16 v5, 0x8

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 442
    const-string v4, "CASHBAND_MOVEMENT_END_TIME"

    const/16 v5, 0x17

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 443
    const-string v4, "CASHBAND_MOVEMENT_DAY_OF_WEEK"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 444
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 445
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->setPedometer()V

    .line 447
    :cond_0
    return-void
.end method

.method private initVibrateMode()V
    .locals 14

    .prologue
    .line 450
    const/4 v4, 0x0

    .line 452
    .local v4, "isDataEmpty":Z
    iget-object v11, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 455
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v11, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v12, "CASHBAND_VIBRATE_CALL_MODE"

    const/4 v13, -0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 456
    .local v0, "callMode":I
    iget-object v11, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v12, "CASHBAND_VIBRATE_MOVEMENT_MODE"

    const/4 v13, -0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 457
    .local v5, "movementMode":I
    iget-object v11, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v12, "CASHBAND_VIBRATE_MSG_MODE"

    const/4 v13, -0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 459
    .local v8, "msgMode":I
    const/4 v11, -0x1

    if-ne v0, v11, :cond_0

    .line 460
    const-string v11, "CASHBAND_VIBRATE_CALL_MODE"

    const/4 v12, 0x5

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 461
    const/4 v4, 0x1

    .line 463
    :cond_0
    const/4 v11, -0x1

    if-ne v5, v11, :cond_1

    .line 464
    const-string v11, "CASHBAND_VIBRATE_MOVEMENT_MODE"

    const/4 v12, 0x0

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 465
    const/4 v4, 0x1

    .line 467
    :cond_1
    const/4 v11, -0x1

    if-ne v8, v11, :cond_2

    .line 468
    const-string v11, "CASHBAND_VIBRATE_MSG_MODE"

    const/4 v12, 0x2

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 469
    const/4 v4, 0x1

    .line 473
    :cond_2
    iget-object v11, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v12, "CASHBAND_VIBRATE_CALL_MODE_NAME"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "callModeName":Ljava/lang/String;
    iget-object v11, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v12, "CASHBAND_VIBRATE_MOVEMENT_MODE_NAME"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 475
    .local v7, "movementModeName":Ljava/lang/String;
    iget-object v11, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v12, "CASHBAND_VIBRATE_MSG_MODE_NAME"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 477
    .local v10, "msgModeName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 478
    const-string v11, "CASHBAND_VIBRATE_CALL_MODE_NAME"

    const-string v12, "Lighthouse"

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 479
    const/4 v4, 0x1

    .line 481
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 482
    const-string v11, "CASHBAND_VIBRATE_MOVEMENT_MODE_NAME"

    const-string v12, "Wave"

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 483
    const/4 v4, 0x1

    .line 485
    :cond_4
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 486
    const-string v11, "CASHBAND_VIBRATE_MSG_MODE_NAME"

    const-string v12, "Staccato"

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 487
    const/4 v4, 0x1

    .line 491
    :cond_5
    iget-object v11, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v12, "CASHBAND_VIBRATE_CALL_MODE_COUNT"

    const/4 v13, -0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 492
    .local v1, "callModeCount":I
    iget-object v11, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v12, "CASHBAND_VIBRATE_MOVEMENT_MODE_COUNT"

    const/4 v13, -0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 493
    .local v6, "movementModeCount":I
    iget-object v11, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v12, "CASHBAND_VIBRATE_MSG_MODE_COUNT"

    const/4 v13, -0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 495
    .local v9, "msgModeCount":I
    const/4 v11, -0x1

    if-ne v1, v11, :cond_6

    .line 496
    const-string v11, "CASHBAND_VIBRATE_CALL_MODE_COUNT"

    const/4 v12, 0x3

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 497
    const/4 v4, 0x1

    .line 499
    :cond_6
    const/4 v11, -0x1

    if-ne v6, v11, :cond_7

    .line 500
    const-string v11, "CASHBAND_VIBRATE_MOVEMENT_MODE_COUNT"

    const/4 v12, 0x1

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 501
    const/4 v4, 0x1

    .line 503
    :cond_7
    const/4 v11, -0x1

    if-ne v9, v11, :cond_8

    .line 504
    const-string v11, "CASHBAND_VIBRATE_MSG_MODE_COUNT"

    const/4 v12, 0x1

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 505
    const/4 v4, 0x1

    .line 508
    :cond_8
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 510
    if-eqz v4, :cond_9

    .line 511
    iget-object v11, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    invoke-virtual {v11}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->setVibrate()V

    .line 513
    :cond_9
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 130
    const v1, 0x7f1000fd

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v1, 0x7f100109

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v1, 0x7f10010b

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v1, 0x7f100111

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v1, 0x7f100117

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v1, 0x7f10011c

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v1, 0x7f10011f

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v1, 0x7f100122

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v1, 0x7f100125

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v1, 0x7f1000fe

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->pb_band_loading:Landroid/widget/ProgressBar;

    .line 141
    const v1, 0x7f10010e

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->progress_step:Landroid/widget/ProgressBar;

    .line 142
    const v1, 0x7f100114

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->progress_sleep:Landroid/widget/ProgressBar;

    .line 143
    const v1, 0x7f100118

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->progress_heart:Landroid/widget/ProgressBar;

    .line 145
    const v1, 0x7f100108

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->fl_connect_btn:Landroid/view/View;

    .line 146
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->fl_connect_btn:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v1, 0x7f1000ff

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->iv_band_icon:Landroid/widget/ImageView;

    .line 149
    const v1, 0x7f100103

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->iv_band_battery:Landroid/widget/ImageView;

    .line 150
    const v1, 0x7f100105

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->iv_connect_arrow:Landroid/widget/ImageView;

    .line 152
    const v1, 0x7f100101

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_band_status:Landroid/widget/TextView;

    .line 153
    const v1, 0x7f100102

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_band_connect_time:Landroid/widget/TextView;

    .line 154
    const v1, 0x7f100104

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_band_battery:Landroid/widget/TextView;

    .line 156
    const v1, 0x7f10010f

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_walk_step:Landroid/widget/TextView;

    .line 157
    const v1, 0x7f100110

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_walk_step_sub:Landroid/widget/TextView;

    .line 158
    const v1, 0x7f100115

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_sleep_marks_sub:Landroid/widget/TextView;

    .line 159
    const v1, 0x7f10011b

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_heartrate_bpm:Landroid/widget/TextView;

    .line 161
    const v1, 0x7f100106

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->vp_promotion:Landroid/support/v4/view/ViewPager;

    .line 162
    const v1, 0x7f100107

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lme/relex/circleindicator/CircleIndicator;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->ci_promotion:Lme/relex/circleindicator/CircleIndicator;

    .line 164
    new-instance v0, Lcom/cashwalk/cashwalk/adapter/PromotionListAdapter;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/adapter/PromotionListAdapter;-><init>()V

    .line 166
    .local v0, "adapter":Lcom/cashwalk/cashwalk/adapter/PromotionListAdapter;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->vp_promotion:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 167
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->ci_promotion:Lme/relex/circleindicator/CircleIndicator;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->vp_promotion:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 169
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->bandDisconnected()V

    .line 170
    return-void
.end method

.method private intentBrowser(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 697
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 698
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 699
    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 700
    return-void
.end method

.method private requestBluetoothEnable()V
    .locals 3

    .prologue
    .line 425
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->pb_band_loading:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 426
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v0, "bluetoothIntent":Landroid/content/Intent;
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 428
    return-void
.end method

.method private saveBandAuthInServer()V
    .locals 5

    .prologue
    .line 707
    invoke-static {p0}, Lcom/cashwalk/cashwalk/util/Utils;->isCashWatchUser(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 708
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 709
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "IS_CASHWATCH_USER"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 710
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 713
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "CASHBAND_MAC"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, "mac":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 716
    new-instance v2, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$10;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$10;-><init>(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->setCashBandUserAuth(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    .line 728
    :cond_1
    return-void
.end method

.method private saveHeartDataInServer()V
    .locals 20

    .prologue
    .line 519
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mBandDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->selectHeartDataStatus(I)Ljava/util/ArrayList;

    move-result-object v12

    .line 520
    .local v12, "notSendList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/BandHeart;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 522
    .local v8, "dateArr":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/cashwalk/cashwalk/model/BandHeart;>;"
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/cashwalk/cashwalk/model/BandHeart;

    .line 524
    .local v16, "variationData":Lcom/cashwalk/cashwalk/model/BandHeart;
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/cashwalk/cashwalk/model/BandHeart;->date:Ljava/lang/String;

    new-instance v6, Lorg/joda/time/DateTime;

    invoke-direct {v6}, Lorg/joda/time/DateTime;-><init>()V

    const-string/jumbo v18, "yyyy-MM-dd"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 526
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mBandDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/cashwalk/cashwalk/model/BandHeart;->date:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->selectHeartFromDate(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 528
    .local v13, "oneDayHearts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/BandHeart;>;"
    const/16 v1, 0x18

    new-array v10, v1, [I

    .line 529
    .local v10, "hourData":[I
    const/4 v2, 0x0

    .line 530
    .local v2, "max":I
    const/16 v3, 0x3e8

    .line 531
    .local v3, "min":I
    const/4 v4, 0x0

    .line 532
    .local v4, "avg":I
    const/4 v15, 0x0

    .line 533
    .local v15, "sum":I
    const/4 v9, 0x0

    .line 535
    .local v9, "fullCnt":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_4

    .line 536
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/model/BandHeart;

    iget v7, v1, Lcom/cashwalk/cashwalk/model/BandHeart;->avg:I

    .line 538
    .local v7, "avgVal":I
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/model/BandHeart;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/model/BandHeart;->hour:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v7, v10, v1

    .line 540
    if-eqz v7, :cond_1

    const/16 v1, 0xff

    if-ne v7, v1, :cond_2

    .line 535
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 542
    :cond_2
    add-int/2addr v15, v7

    .line 543
    add-int/lit8 v9, v9, 0x1

    .line 546
    if-le v7, v2, :cond_3

    .line 547
    move v2, v7

    .line 551
    :cond_3
    if-ge v7, v3, :cond_1

    .line 552
    move v3, v7

    goto :goto_2

    .line 557
    .end local v7    # "avgVal":I
    :cond_4
    if-eqz v15, :cond_5

    .line 558
    div-int v4, v15, v9

    .line 561
    :cond_5
    const-string v5, ""

    .line 562
    .local v5, "hourStrData":Ljava/lang/String;
    array-length v6, v10

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v6, :cond_6

    aget v11, v10, v1

    .line 563
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 564
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 566
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 568
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/model/BandHeart;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/model/BandHeart;->date:Ljava/lang/String;

    new-instance v6, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v13}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$6;-><init>(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;Ljava/util/ArrayList;)V

    invoke-static/range {v1 .. v6}, Lcom/cashwalk/cashwalk/util/network/RestClient;->setCashBandHeartData(Ljava/lang/String;IIILjava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v14

    .line 578
    .local v14, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto/16 :goto_0

    .line 581
    .end local v2    # "max":I
    .end local v3    # "min":I
    .end local v4    # "avg":I
    .end local v5    # "hourStrData":Ljava/lang/String;
    .end local v9    # "fullCnt":I
    .end local v10    # "hourData":[I
    .end local v11    # "i":I
    .end local v13    # "oneDayHearts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/BandHeart;>;"
    .end local v14    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    .end local v15    # "sum":I
    .end local v16    # "variationData":Lcom/cashwalk/cashwalk/model/BandHeart;
    :cond_7
    return-void
.end method

.method private saveSleepDataInServer()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 587
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mBandDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    invoke-virtual {v7, v11}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->selectSleepDataStatus(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 588
    .local v2, "notSendList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/BandSleep;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 590
    .local v0, "dateArr":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/cashwalk/cashwalk/model/BandSleep;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cashwalk/cashwalk/model/BandSleep;

    .line 591
    .local v6, "variationData":Lcom/cashwalk/cashwalk/model/BandSleep;
    iget-object v7, v6, Lcom/cashwalk/cashwalk/model/BandSleep;->saveTime:Ljava/lang/String;

    new-instance v9, Lorg/joda/time/DateTime;

    invoke-direct {v9}, Lorg/joda/time/DateTime;-><init>()V

    const-string/jumbo v10, "yyyy-MM-dd"

    invoke-virtual {v9, v10}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 593
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mBandDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    iget-object v9, v6, Lcom/cashwalk/cashwalk/model/BandSleep;->saveTime:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->selectSleepFromDate(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 595
    .local v3, "oneDaySleeps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/BandSleep;>;"
    new-instance v5, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;

    invoke-direct {v5, v3}, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;-><init>(Ljava/util/ArrayList;)V

    .line 596
    .local v5, "sdm":Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;
    invoke-virtual {v5}, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;->getGraphData()Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    move-result-object v1

    .line 598
    .local v1, "graphData":Lcom/cashwalk/cashwalk/model/BandSleepGraph;
    if-eqz v1, :cond_0

    .line 599
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cashwalk/cashwalk/model/BandSleep;

    iget-object v7, v7, Lcom/cashwalk/cashwalk/model/BandSleep;->saveTime:Ljava/lang/String;

    new-instance v9, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$7;

    invoke-direct {v9, p0, v3}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$7;-><init>(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;Ljava/util/ArrayList;)V

    invoke-static {v1, v7, v9}, Lcom/cashwalk/cashwalk/util/network/RestClient;->setCashBandSleepData(Lcom/cashwalk/cashwalk/model/BandSleepGraph;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v4

    .line 609
    .local v4, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v7}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    .line 612
    .end local v1    # "graphData":Lcom/cashwalk/cashwalk/model/BandSleepGraph;
    .end local v3    # "oneDaySleeps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/BandSleep;>;"
    .end local v4    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    .end local v5    # "sdm":Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;
    .end local v6    # "variationData":Lcom/cashwalk/cashwalk/model/BandSleep;
    :cond_1
    return-void
.end method

.method private setDefaultNotiApp()V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, "pm":Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;
    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->isAppDBEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->setDefaultApps()V

    .line 118
    :cond_0
    return-void
.end method

.method private setDeviceInfo(Z)V
    .locals 7
    .param p1, "isNewData"    # Z

    .prologue
    .line 279
    invoke-static {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getLeDevice()Lcom/zeroner/android_zeroner_ble/model/WristBand;

    move-result-object v0

    .line 281
    .local v0, "bandInfo":Lcom/zeroner/android_zeroner_ble/model/WristBand;
    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/model/WristBand;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->bandConnected(Ljava/lang/String;)V

    .line 283
    if-eqz p1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_band_connect_time:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090119

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Lorg/joda/time/DateTime;

    invoke-direct {v5}, Lorg/joda/time/DateTime;-><init>()V

    const-string v6, "HH:mm"

    invoke-virtual {v5, v6}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    new-instance v2, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$4;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$4;-><init>(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->getBattery(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;)V

    .line 305
    return-void
.end method

.method private setHeartData()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 355
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->progress_heart:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 357
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mBandDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->selectHeartTodayResult()Ljava/util/ArrayList;

    move-result-object v3

    .line 358
    .local v3, "todayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/BandHeart;>;"
    const/4 v1, 0x0

    .line 359
    .local v1, "tempSum":I
    const/4 v0, 0x0

    .line 361
    .local v0, "tempSize":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/model/BandHeart;

    .line 362
    .local v2, "today":Lcom/cashwalk/cashwalk/model/BandHeart;
    iget v5, v2, Lcom/cashwalk/cashwalk/model/BandHeart;->avg:I

    if-eqz v5, :cond_0

    .line 363
    iget v5, v2, Lcom/cashwalk/cashwalk/model/BandHeart;->avg:I

    add-int/2addr v1, v5

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    .end local v2    # "today":Lcom/cashwalk/cashwalk/model/BandHeart;
    :cond_1
    if-eqz v1, :cond_2

    .line 369
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_heartrate_bpm:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_heartrate_bpm:Landroid/widget/TextView;

    .line 372
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090113

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    div-int v7, v1, v0

    .line 373
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 371
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 370
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    :cond_2
    return-void
.end method

.method private setSleepData()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 337
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->progress_sleep:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 339
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mBandDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    new-instance v6, Lorg/joda/time/DateTime;

    invoke-direct {v6}, Lorg/joda/time/DateTime;-><init>()V

    const-string/jumbo v7, "yyyy-MM-dd"

    invoke-virtual {v6, v7}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->selectSleepFromDate(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 341
    .local v2, "todayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/BandSleep;>;"
    new-instance v1, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;

    invoke-direct {v1, v2}, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;-><init>(Ljava/util/ArrayList;)V

    .line 342
    .local v1, "sdm":Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;
    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;->getGraphData()Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    move-result-object v0

    .line 344
    .local v0, "graphData":Lcom/cashwalk/cashwalk/model/BandSleepGraph;
    if-nez v0, :cond_0

    .line 350
    :goto_0
    return v3

    .line 347
    :cond_0
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_sleep_marks_sub:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->tv_sleep_marks_sub:Landroid/widget/TextView;

    .line 349
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090115

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    iget v8, v0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeAll:I

    invoke-static {v8, v3}, Lcom/cashwalk/cashwalk/util/Utils;->minuteToTimeString(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 348
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v3, v4

    .line 350
    goto :goto_0
.end method

.method private setStepData()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$5;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$5;-><init>(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->getDailyData(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;)V

    .line 334
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 632
    invoke-super {p0, p1, p2, p3}, Lcom/cashwalk/cashwalk/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 633
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 634
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 635
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->bluetoothConnect(Z)V

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->isBluetoothConnectReject:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v3, 0x7f050019

    const v2, 0x7f050017

    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 422
    :goto_0
    return-void

    .line 385
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 386
    invoke-virtual {p0, v3, v2}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 389
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/cashband/BandNotiMainAppActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 390
    invoke-virtual {p0, v3, v2}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 393
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/activity/StatActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 394
    invoke-virtual {p0, v3, v2}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 397
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 398
    invoke-virtual {p0, v3, v2}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 401
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 402
    invoke-virtual {p0, v3, v2}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 405
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/cashband/BandHowToUseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 406
    invoke-virtual {p0, v3, v2}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 409
    :sswitch_6
    const-string v0, "http://pf.kakao.com/_axhxfCxl"

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->intentBrowser(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0, v3, v2}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 413
    :sswitch_7
    const-string v0, "http://cafe.naver.com/cantsb"

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->intentBrowser(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0, v3, v2}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 417
    :sswitch_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 418
    invoke-virtual {p0, v3, v2}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 381
    :sswitch_data_0
    .sparse-switch
        0x7f1000fd -> :sswitch_0
        0x7f100108 -> :sswitch_0
        0x7f100109 -> :sswitch_1
        0x7f10010b -> :sswitch_2
        0x7f100111 -> :sswitch_3
        0x7f100117 -> :sswitch_4
        0x7f10011c -> :sswitch_5
        0x7f10011f -> :sswitch_6
        0x7f100122 -> :sswitch_7
        0x7f100125 -> :sswitch_8
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->setContentView(I)V

    .line 93
    new-instance v0, Lcom/cashwalk/cashwalk/util/BandDBHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cashwalk/cashwalk/util/BandDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mBandDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    .line 94
    invoke-static {p0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->mPref:Landroid/content/SharedPreferences;

    .line 96
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->allowNotiPermission()V

    .line 97
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->initView()V

    .line 98
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->setDefaultNotiApp()V

    .line 99
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandAlarmUtil;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandAlarmUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandAlarmUtil;->start()V

    .line 100
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 616
    const-string/jumbo v1, "\uce74\uba54\ub77c"

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 617
    .local v0, "cameraMenu":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 618
    const v1, 0x7f020097

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 619
    new-instance v1, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$8;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$8;-><init>(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 627
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onResume()V

    .line 123
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->isBluetoothConnectReject:Z

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->bluetoothConnect(Z)V

    .line 126
    :cond_0
    return-void
.end method
