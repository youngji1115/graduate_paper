.class public Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "BandSettingFirmwareActivity.java"


# instance fields
.field private cpv_progress:Lat/grabner/circleprogress/CircleProgressView;

.field private iv_firmware_line_1:Landroid/widget/ImageView;

.field private iv_firmware_line_2:Landroid/widget/ImageView;

.field private li_update_error:Landroid/widget/LinearLayout;

.field private mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

.field private mProgress:Landroid/app/ProgressDialog;

.field private rl_firmware_progress:Landroid/widget/RelativeLayout;

.field private tv_firmware_btn:Landroid/widget/TextView;

.field private tv_firmware_click_here:Landroid/widget/TextView;

.field private tv_firmware_description:Landroid/widget/TextView;

.field private tv_progress_percent:Landroid/widget/TextView;

.field private tv_progress_title:Landroid/widget/TextView;

.field private tv_progress_value:Landroid/widget/TextView;

.field private tv_update_error_1:Landroid/widget/TextView;

.field private tv_update_error_2:Landroid/widget/TextView;

.field private tv_update_error_3:Landroid/widget/TextView;

.field private tv_update_error_4:Landroid/widget/TextView;

.field private tv_update_error_5:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->initView()V

    return-void
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->startUpdate()V

    return-void
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->updateFailed()V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 94
    const v0, 0x7f100166

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->rl_firmware_progress:Landroid/widget/RelativeLayout;

    .line 95
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->rl_firmware_progress:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 96
    const v0, 0x7f10016a

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lat/grabner/circleprogress/CircleProgressView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->cpv_progress:Lat/grabner/circleprogress/CircleProgressView;

    .line 97
    const v0, 0x7f100167

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_title:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f100168

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_value:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f100169

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_percent:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f10016b

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_description:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f10016c

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f10016d

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->iv_firmware_line_1:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f10016f

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->iv_firmware_line_2:Landroid/widget/ImageView;

    .line 104
    const v0, 0x7f10016e

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_click_here:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f100170

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->li_update_error:Landroid/widget/LinearLayout;

    .line 107
    const v0, 0x7f100171

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_update_error_1:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f100172

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_update_error_2:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f100173

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_update_error_3:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f100174

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_update_error_4:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f100175

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_update_error_5:Landroid/widget/TextView;

    .line 113
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->setVersionRecent()V

    .line 115
    return-void
.end method

.method private setRequireUpdate()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 134
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->cpv_progress:Lat/grabner/circleprogress/CircleProgressView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lat/grabner/circleprogress/CircleProgressView;->setValue(F)V

    .line 135
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_title:Landroid/widget/TextView;

    const v3, 0x7f0900d7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 136
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_title:Landroid/widget/TextView;

    const-string v3, "#007aff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_value:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_percent:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_description:Landroid/widget/TextView;

    const v3, 0x7f0900d6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_description:Landroid/widget/TextView;

    const-string v3, "#c7c7c7"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    const v3, 0x7f0900d5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 142
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    const v3, 0x7f020084

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 144
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 145
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    new-instance v3, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$2;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$2;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->iv_firmware_line_1:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_click_here:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_click_here:Landroid/widget/TextView;

    const v3, 0x7f0900c8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 155
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_click_here:Landroid/widget/TextView;

    const-string v3, "#197cf3"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 157
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$3;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$3;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;)V

    .line 164
    .local v0, "mTransform":Landroid/text/util/Linkify$TransformFilter;
    const-string/jumbo v2, "\uc5ec\uae30\ub97c \ub204\ub974\uc138\uc694"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 165
    .local v1, "pattern1":Ljava/util/regex/Pattern;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_click_here:Landroid/widget/TextView;

    const-string v3, "http://google.com"

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 167
    return-void
.end method

.method private setVersionRecent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 118
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->cpv_progress:Lat/grabner/circleprogress/CircleProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lat/grabner/circleprogress/CircleProgressView;->setValue(F)V

    .line 119
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_title:Landroid/widget/TextView;

    const v1, 0x7f0900d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_title:Landroid/widget/TextView;

    const-string v1, "#007aff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_value:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_percent:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_description:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3}, Lorg/joda/time/DateTime;-><init>()V

    const-string/jumbo v4, "yyyy.MM.dd"

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_description:Landroid/widget/TextView;

    const-string v1, "#c7c7c7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    const v1, 0x7f0900d2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 126
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    const-string v1, "#c7c7c7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 128
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 129
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->iv_firmware_line_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_click_here:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    return-void
.end method

.method private startUpdate()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 171
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->cpv_progress:Lat/grabner/circleprogress/CircleProgressView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lat/grabner/circleprogress/CircleProgressView;->setValue(F)V

    .line 172
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_title:Landroid/widget/TextView;

    const v4, 0x7f0900da

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 173
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_title:Landroid/widget/TextView;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 174
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_title:Landroid/widget/TextView;

    const-string v4, "#c7c7c7"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_value:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_percent:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_value:Landroid/widget/TextView;

    const-string v4, "#007aff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_percent:Landroid/widget/TextView;

    const-string v4, "#007aff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_percent:Landroid/widget/TextView;

    const-string v4, " %"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_description:Landroid/widget/TextView;

    const v4, 0x7f0900d9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 182
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_description:Landroid/widget/TextView;

    const-string v4, "#c7c7c7"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    const v4, 0x7f0900d8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 184
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    const v4, 0x7f020083

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 186
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 189
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x39

    if-gt v1, v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->cpv_progress:Lat/grabner/circleprogress/CircleProgressView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Lat/grabner/circleprogress/CircleProgressView;->setValueAnimated(F)V

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "progressValue":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 194
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 195
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_value:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_value:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v2    # "progressValue":Ljava/lang/String;
    :cond_0
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$4;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$4;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    return-void
.end method

.method private updateFailed()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 208
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_title:Landroid/widget/TextView;

    const v4, 0x7f0900cf

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 209
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_title:Landroid/widget/TextView;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 210
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_title:Landroid/widget/TextView;

    const-string v4, "#ff0000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_value:Landroid/widget/TextView;

    const-string v4, "#80c7c7c7"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_percent:Landroid/widget/TextView;

    const-string v4, "#80c7c7c7"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_percent:Landroid/widget/TextView;

    const-string v4, " %"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const v3, 0x7f0900c9

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 217
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "#ff0000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x14

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v7, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 218
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_description:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_description:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_description:Landroid/widget/TextView;

    const-string v4, "#007aff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    const-string/jumbo v4, "\uc5c5\ub370\uc774\ud2b8 \uc7ac\uc2dc\ub3c4"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    const v4, 0x7f020084

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 225
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 226
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    new-instance v4, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$5;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$5;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->iv_firmware_line_2:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->li_update_error:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_update_error_1:Landroid/widget/TextView;

    const v4, 0x7f0900ca

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 237
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_update_error_2:Landroid/widget/TextView;

    const v4, 0x7f0900cb

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 238
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_update_error_3:Landroid/widget/TextView;

    const v4, 0x7f0900cc

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 239
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_update_error_4:Landroid/widget/TextView;

    const v4, 0x7f0900cd

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 240
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_update_error_5:Landroid/widget/TextView;

    const v4, 0x7f0900ce

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 242
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_update_error_1:Landroid/widget/TextView;

    const-string v4, "#197cf3"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 243
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_update_error_2:Landroid/widget/TextView;

    const-string v4, "#197cf3"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 244
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_update_error_3:Landroid/widget/TextView;

    const-string v4, "#197cf3"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 245
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_update_error_4:Landroid/widget/TextView;

    const-string v4, "#197cf3"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 246
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_update_error_5:Landroid/widget/TextView;

    const-string v4, "#197cf3"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 248
    new-instance v1, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$6;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$6;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;)V

    .line 255
    .local v1, "mTransform":Landroid/text/util/Linkify$TransformFilter;
    const-string/jumbo v3, "\ud574\uacb0\ud558\uae30"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 256
    .local v2, "pattern":Ljava/util/regex/Pattern;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_update_error_2:Landroid/widget/TextView;

    const-string v4, "http://google.com"

    invoke-static {v3, v2, v4, v6, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 257
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_update_error_3:Landroid/widget/TextView;

    const-string v4, "http://google.com"

    invoke-static {v3, v2, v4, v6, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 258
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_update_error_4:Landroid/widget/TextView;

    const-string v4, "http://google.com"

    invoke-static {v3, v2, v4, v6, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 259
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_update_error_5:Landroid/widget/TextView;

    const-string v4, "http://google.com"

    invoke-static {v3, v2, v4, v6, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 261
    return-void
.end method

.method private updateSuccess()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_title:Landroid/widget/TextView;

    const v1, 0x7f0900dc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 265
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_title:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 266
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_title:Landroid/widget/TextView;

    const-string v1, "#007aff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_value:Landroid/widget/TextView;

    const-string v1, "#80c7c7c7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_percent:Landroid/widget/TextView;

    const-string v1, "#80c7c7c7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_progress_percent:Landroid/widget/TextView;

    const-string v1, " %"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_description:Landroid/widget/TextView;

    const v1, 0x7f0900db

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 272
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_description:Landroid/widget/TextView;

    const-string v1, "#007aff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    const v1, 0x7f020084

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 276
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 277
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->tv_firmware_btn:Landroid/widget/TextView;

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$7;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$7;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f040028

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->setContentView(I)V

    .line 65
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->mProgress:Landroid/app/ProgressDialog;

    .line 66
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onResume()V

    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 75
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$1;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->connect(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;)V

    .line 91
    return-void
.end method
