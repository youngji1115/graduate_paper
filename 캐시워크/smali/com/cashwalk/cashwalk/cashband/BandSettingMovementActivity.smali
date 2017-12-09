.class public Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "BandSettingMovementActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final TIME_VALUES:[Ljava/lang/String;

.field private iv_repeat_arrow:Landroid/widget/ImageView;

.field private iv_term_arrow:Landroid/widget/ImageView;

.field private mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

.field private mDayOfWeekTvList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSetRepeatVisible:Z

.field private mIsSetTermVisible:Z

.field private mPref:Landroid/content/SharedPreferences;

.field private mPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private np_set_end:Landroid/widget/NumberPicker;

.field private np_set_start:Landroid/widget/NumberPicker;

.field private rl_repeat:Landroid/widget/RelativeLayout;

.field private rl_set_repeat:Landroid/widget/RelativeLayout;

.field private rl_set_term:Landroid/widget/RelativeLayout;

.field private rl_term:Landroid/widget/RelativeLayout;

.field private sw_lunch:Landroid/support/v7/widget/SwitchCompat;

.field private sw_movement:Landroid/support/v7/widget/SwitchCompat;

.field private tv_repeat_value:Landroid/widget/TextView;

.field private tv_term_value:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    .line 32
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "00:00"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "01:00"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "02:00"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "03:00"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "04:00"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "05:00"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "06:00"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "07:00"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "08:00"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "09:00"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10:00"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11:00"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12:00"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "13:00"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "14:00"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "15:00"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "16:00"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "17:00"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "18:00"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "19:00"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "20:00"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "21:00"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "22:00"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "23:00"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->TIME_VALUES:[Ljava/lang/String;

    .line 42
    iput-boolean v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mIsSetTermVisible:Z

    .line 43
    iput-boolean v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mIsSetRepeatVisible:Z

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->initView()V

    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    const/high16 v5, 0x60000

    const/16 v4, 0x17

    const/4 v3, 0x0

    .line 96
    const v1, 0x7f10017d

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->np_set_start:Landroid/widget/NumberPicker;

    .line 97
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->np_set_start:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 98
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->np_set_start:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 99
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->np_set_start:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 100
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->np_set_start:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->TIME_VALUES:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->np_set_start:Landroid/widget/NumberPicker;

    const-string v2, "#c7c7c7"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/util/Utils;->setDividerColor(Landroid/widget/NumberPicker;I)V

    .line 103
    const v1, 0x7f10017e

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->np_set_end:Landroid/widget/NumberPicker;

    .line 104
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->np_set_end:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 105
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->np_set_end:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 106
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->np_set_end:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 107
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->np_set_end:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->TIME_VALUES:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->np_set_end:Landroid/widget/NumberPicker;

    const-string v2, "#c7c7c7"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/util/Utils;->setDividerColor(Landroid/widget/NumberPicker;I)V

    .line 110
    const v1, 0x7f100177

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->rl_term:Landroid/widget/RelativeLayout;

    .line 111
    const v1, 0x7f10017b

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->rl_set_term:Landroid/widget/RelativeLayout;

    .line 112
    const v1, 0x7f10017f

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->rl_repeat:Landroid/widget/RelativeLayout;

    .line 113
    const v1, 0x7f100183

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->rl_set_repeat:Landroid/widget/RelativeLayout;

    .line 115
    const v1, 0x7f100179

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->tv_term_value:Landroid/widget/TextView;

    .line 116
    const v1, 0x7f100181

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->tv_repeat_value:Landroid/widget/TextView;

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mDayOfWeekTvList:Ljava/util/ArrayList;

    .line 119
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mDayOfWeekTvList:Ljava/util/ArrayList;

    const v1, 0x7f100184

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mDayOfWeekTvList:Ljava/util/ArrayList;

    const v1, 0x7f100185

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mDayOfWeekTvList:Ljava/util/ArrayList;

    const v1, 0x7f100186

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mDayOfWeekTvList:Ljava/util/ArrayList;

    const v1, 0x7f100187

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mDayOfWeekTvList:Ljava/util/ArrayList;

    const v1, 0x7f100188

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mDayOfWeekTvList:Ljava/util/ArrayList;

    const v1, 0x7f100189

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mDayOfWeekTvList:Ljava/util/ArrayList;

    const v1, 0x7f10018a

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mDayOfWeekTvList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    .local v0, "v":Landroid/widget/TextView;
    const v2, 0x7f0f0080

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 132
    .end local v0    # "v":Landroid/widget/TextView;
    :cond_0
    const v1, 0x7f10017a

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->iv_term_arrow:Landroid/widget/ImageView;

    .line 133
    const v1, 0x7f100182

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->iv_repeat_arrow:Landroid/widget/ImageView;

    .line 135
    const v1, 0x7f100176

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->sw_movement:Landroid/support/v7/widget/SwitchCompat;

    .line 136
    const v1, 0x7f10018c

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->sw_lunch:Landroid/support/v7/widget/SwitchCompat;

    .line 137
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->sw_movement:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 138
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->sw_lunch:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 140
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->rl_term:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->rl_repeat:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->setValues()V

    .line 144
    return-void
.end method

.method private setRepeatDayOfWeekView()V
    .locals 9

    .prologue
    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v1, "movementCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/BandMovementCode;>;"
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mDayOfWeekTvList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 314
    .local v4, "view":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v6

    const v7, 0x7f0f007f

    invoke-static {p0, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 315
    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 317
    :pswitch_0
    new-instance v6, Lcom/cashwalk/cashwalk/model/BandMovementCode;

    const-string/jumbo v7, "\uc6d4"

    const/16 v8, 0xc0

    invoke-direct {v6, v7, v8}, Lcom/cashwalk/cashwalk/model/BandMovementCode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 320
    :pswitch_1
    new-instance v6, Lcom/cashwalk/cashwalk/model/BandMovementCode;

    const-string/jumbo v7, "\ud654"

    const/16 v8, 0xa0

    invoke-direct {v6, v7, v8}, Lcom/cashwalk/cashwalk/model/BandMovementCode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    :pswitch_2
    new-instance v6, Lcom/cashwalk/cashwalk/model/BandMovementCode;

    const-string/jumbo v7, "\uc218"

    const/16 v8, 0x90

    invoke-direct {v6, v7, v8}, Lcom/cashwalk/cashwalk/model/BandMovementCode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 326
    :pswitch_3
    new-instance v6, Lcom/cashwalk/cashwalk/model/BandMovementCode;

    const-string/jumbo v7, "\ubaa9"

    const/16 v8, 0x88

    invoke-direct {v6, v7, v8}, Lcom/cashwalk/cashwalk/model/BandMovementCode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :pswitch_4
    new-instance v6, Lcom/cashwalk/cashwalk/model/BandMovementCode;

    const-string/jumbo v7, "\uae08"

    const/16 v8, 0x84

    invoke-direct {v6, v7, v8}, Lcom/cashwalk/cashwalk/model/BandMovementCode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :pswitch_5
    new-instance v6, Lcom/cashwalk/cashwalk/model/BandMovementCode;

    const-string/jumbo v7, "\ud1a0"

    const/16 v8, 0x82

    invoke-direct {v6, v7, v8}, Lcom/cashwalk/cashwalk/model/BandMovementCode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    :pswitch_6
    new-instance v6, Lcom/cashwalk/cashwalk/model/BandMovementCode;

    const-string/jumbo v7, "\uc77c"

    const/16 v8, 0x81

    invoke-direct {v6, v7, v8}, Lcom/cashwalk/cashwalk/model/BandMovementCode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 342
    .end local v4    # "view":Landroid/widget/TextView;
    :cond_1
    const-string v3, ""

    .line 343
    .local v3, "repeatDays":Ljava/lang/String;
    const/4 v2, 0x0

    .line 344
    .local v2, "repeatCode":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/model/BandMovementCode;

    .line 345
    .local v0, "movementCode":Lcom/cashwalk/cashwalk/model/BandMovementCode;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/cashwalk/cashwalk/model/BandMovementCode;->dayOfWeek:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 346
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 347
    iget v6, v0, Lcom/cashwalk/cashwalk/model/BandMovementCode;->dayOfWeekCode:I

    or-int/2addr v2, v6

    .line 348
    goto :goto_1

    .line 350
    .end local v0    # "movementCode":Lcom/cashwalk/cashwalk/model/BandMovementCode;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 351
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 352
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->tv_repeat_value:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    :cond_3
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "CASHBAND_MOVEMENT_DAY_OF_WEEK"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 356
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 357
    return-void

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x7f100184
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private setValues()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const v11, 0x7f0f007f

    .line 147
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v9, "CASHBAND_MOVEMENT_IS_ON"

    invoke-interface {v8, v9, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 148
    .local v5, "isPedometerOn":Z
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v9, "CASHBAND_MOVEMENT_LUNCH"

    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 149
    .local v4, "isLunchMode":Z
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v9, "CASHBAND_MOVEMENT_DAY_OF_WEEK"

    const/16 v10, 0xff

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 150
    .local v0, "dayOfWeek":I
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v9, "CASHBAND_MOVEMENT_START_TIME"

    const/16 v10, 0x8

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 151
    .local v7, "startTime":I
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v9, "CASHBAND_MOVEMENT_END_TIME"

    const/16 v10, 0x17

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 153
    .local v3, "endTime":I
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->sw_movement:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v8, v5}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 154
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->sw_lunch:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v8, v4}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 156
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->TIME_VALUES:[Ljava/lang/String;

    aget-object v6, v8, v7

    .line 157
    .local v6, "startStr":Ljava/lang/String;
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->TIME_VALUES:[Ljava/lang/String;

    aget-object v2, v8, v3

    .line 158
    .local v2, "endStr":Ljava/lang/String;
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->tv_term_value:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->np_set_start:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v7}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 160
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->np_set_end:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 162
    const-string v1, ""

    .line 163
    .local v1, "dayOfWeekStr":Ljava/lang/String;
    and-int/lit16 v8, v0, 0xc0

    const/16 v9, 0xc0

    if-ne v8, v9, :cond_0

    .line 164
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\uc6d4"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mDayOfWeekTvList:Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {p0, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    :cond_0
    and-int/lit16 v8, v0, 0xa0

    const/16 v9, 0xa0

    if-ne v8, v9, :cond_1

    .line 170
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\ud654"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mDayOfWeekTvList:Ljava/util/ArrayList;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {p0, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    :cond_1
    and-int/lit16 v8, v0, 0x90

    const/16 v9, 0x90

    if-ne v8, v9, :cond_2

    .line 176
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\uc218"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mDayOfWeekTvList:Ljava/util/ArrayList;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {p0, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    :cond_2
    and-int/lit16 v8, v0, 0x88

    const/16 v9, 0x88

    if-ne v8, v9, :cond_3

    .line 182
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\ubaa9"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mDayOfWeekTvList:Ljava/util/ArrayList;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {p0, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    :cond_3
    and-int/lit16 v8, v0, 0x84

    const/16 v9, 0x84

    if-ne v8, v9, :cond_4

    .line 188
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\uae08"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mDayOfWeekTvList:Ljava/util/ArrayList;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {p0, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    :cond_4
    and-int/lit16 v8, v0, 0x82

    const/16 v9, 0x82

    if-ne v8, v9, :cond_5

    .line 194
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\ud1a0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mDayOfWeekTvList:Ljava/util/ArrayList;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {p0, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    :cond_5
    and-int/lit16 v8, v0, 0x81

    const/16 v9, 0x81

    if-ne v8, v9, :cond_6

    .line 200
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\uc77c"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mDayOfWeekTvList:Ljava/util/ArrayList;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {p0, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v1, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 206
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->tv_repeat_value:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 211
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 227
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 225
    :goto_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 226
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->setPedometer()V

    goto :goto_0

    .line 218
    :sswitch_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "CASHBAND_MOVEMENT_IS_ON"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 221
    :sswitch_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "CASHBAND_MOVEMENT_LUNCH"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 216
    :sswitch_data_0
    .sparse-switch
        0x7f100176 -> :sswitch_0
        0x7f10018c -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v8, 0x7f020145

    const/16 v5, 0x8

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 308
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 233
    :pswitch_1
    iget-boolean v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mIsSetTermVisible:Z

    if-eqz v3, :cond_3

    .line 234
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    if-nez v3, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090112

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 239
    :cond_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->np_set_start:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getValue()I

    move-result v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->np_set_end:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getValue()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 240
    const-string/jumbo v3, "\uc2dc\uc791\uc2dc\uac04\uc740 \ub05d\uc2dc\uac04\uc744 \ucd08\uacfc\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 244
    :cond_2
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->rl_set_term:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 245
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->TIME_VALUES:[Ljava/lang/String;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->np_set_start:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getValue()I

    move-result v4

    aget-object v2, v3, v4

    .line 246
    .local v2, "startStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->TIME_VALUES:[Ljava/lang/String;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->np_set_end:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getValue()I

    move-result v4

    aget-object v1, v3, v4

    .line 247
    .local v1, "endStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->tv_term_value:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->iv_term_arrow:Landroid/widget/ImageView;

    const v4, 0x7f020188

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 253
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "CASHBAND_MOVEMENT_START_TIME"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 254
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "CASHBAND_MOVEMENT_END_TIME"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 255
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->setPedometer()V

    .line 258
    iput-boolean v6, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mIsSetTermVisible:Z

    goto/16 :goto_0

    .line 261
    .end local v1    # "endStr":Ljava/lang/String;
    .end local v2    # "startStr":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->rl_set_term:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 262
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->iv_term_arrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    iput-boolean v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mIsSetTermVisible:Z

    goto/16 :goto_0

    .line 269
    :pswitch_2
    iget-boolean v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mIsSetRepeatVisible:Z

    if-eqz v3, :cond_5

    .line 270
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    if-nez v3, :cond_4

    .line 271
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090112

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 275
    :cond_4
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->rl_set_repeat:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 276
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->iv_repeat_arrow:Landroid/widget/ImageView;

    const v4, 0x7f020188

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->setRepeatDayOfWeekView()V

    .line 279
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->setPedometer()V

    .line 280
    iput-boolean v6, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mIsSetRepeatVisible:Z

    goto/16 :goto_0

    .line 283
    :cond_5
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->rl_set_repeat:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 284
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->iv_repeat_arrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    iput-boolean v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mIsSetRepeatVisible:Z

    goto/16 :goto_0

    .line 297
    :pswitch_3
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mDayOfWeekTvList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 298
    .local v0, "clickTv":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v3, v5, :cond_6

    move-object v3, p1

    .line 299
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    const v5, 0x7f0f0080

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    if-ne v3, v5, :cond_7

    move-object v3, p1

    .line 300
    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0f007f

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_7
    move-object v3, p1

    .line 302
    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0f0080

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 231
    :pswitch_data_0
    .packed-switch 0x7f100177
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f040029

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->setContentView(I)V

    .line 66
    invoke-static {p0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mPref:Landroid/content/SharedPreferences;

    .line 67
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 68
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onResume()V

    .line 73
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "progress":Landroid/app/ProgressDialog;
    const v1, 0x7f090110

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 77
    new-instance v1, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity$1;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->connect(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;)V

    .line 93
    return-void
.end method
