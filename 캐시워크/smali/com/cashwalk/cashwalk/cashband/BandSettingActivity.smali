.class public Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "BandSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DATE_TYPE:I = 0x459

.field private static final METER_TYPE:I = 0x45a

.field private static final TEMP_TYPE:I = 0x458

.field private static final TIME_TYPE:I = 0x457


# instance fields
.field private mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

.field private mIsSelectDate:Z

.field private mIsSelectMeter:Z

.field private mIsSelectTemp:Z

.field private mIsSelectTime:Z

.field private mPref:Landroid/content/SharedPreferences;

.field private mSelectInt:I

.field private mSelectValueDate:[Ljava/lang/String;

.field private mSelectValueMeter:[Ljava/lang/String;

.field private mSelectValueTemp:[Ljava/lang/String;

.field private mSelectValueTime:[Ljava/lang/String;

.field private sw_auto_heart:Landroid/support/v7/widget/SwitchCompat;

.field private sw_auto_sleep:Landroid/support/v7/widget/SwitchCompat;

.field private tv_date_value:Landroid/widget/TextView;

.field private tv_meter_value:Landroid/widget/TextView;

.field private tv_temp_value:Landroid/widget/TextView;

.field private tv_time_value:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    .line 36
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "24\uc2dc\uac04"

    aput-object v1, v0, v2

    const-string v1, "12\uc2dc\uac04"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mSelectValueTime:[Ljava/lang/String;

    .line 37
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "\uc12d\uc528"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\ud654\uc528"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mSelectValueTemp:[Ljava/lang/String;

    .line 38
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "\uc6d4/\uc77c"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\uc77c/\uc6d4"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mSelectValueDate:[Ljava/lang/String;

    .line 39
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "\ubbf8\ud130"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\ub9c8\uc77c"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mSelectValueMeter:[Ljava/lang/String;

    .line 49
    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mIsSelectTime:Z

    .line 50
    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mIsSelectTemp:Z

    .line 51
    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mIsSelectDate:Z

    .line 52
    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mIsSelectMeter:Z

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mSelectInt:I

    return-void
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    return-object p1
.end method

.method static synthetic access$102(Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mSelectInt:I

    return p1
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->setSelectType(I)V

    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 91
    const v2, 0x7f100162

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SwitchCompat;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->sw_auto_heart:Landroid/support/v7/widget/SwitchCompat;

    .line 92
    const v2, 0x7f100165

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SwitchCompat;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->sw_auto_sleep:Landroid/support/v7/widget/SwitchCompat;

    .line 94
    const v2, 0x7f100152

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->tv_time_value:Landroid/widget/TextView;

    .line 95
    const v2, 0x7f100155

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->tv_temp_value:Landroid/widget/TextView;

    .line 96
    const v2, 0x7f100158

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->tv_date_value:Landroid/widget/TextView;

    .line 97
    const v2, 0x7f10015b

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->tv_meter_value:Landroid/widget/TextView;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const v2, 0x7f10014a

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    const v2, 0x7f10014c

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    const v2, 0x7f10014e

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    const v2, 0x7f100150

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    const v2, 0x7f100153

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    const v2, 0x7f100156

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    const v2, 0x7f100159

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    const v2, 0x7f10015c

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    const v2, 0x7f10015e

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    const v2, 0x7f100160

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    const v2, 0x7f100163

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 115
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 118
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->sw_auto_heart:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2, p0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 119
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->sw_auto_sleep:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2, p0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    return-void
.end method

.method private refreshSelectData()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 123
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "CASHBAND_SETTING_SELECT_TIME"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mIsSelectTime:Z

    .line 124
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "CASHBAND_SETTING_SELECT_TEMP"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mIsSelectTemp:Z

    .line 125
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "CASHBAND_SETTING_SELECT_DATE"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mIsSelectDate:Z

    .line 126
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "CASHBAND_SETTING_SELECT_METER"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mIsSelectMeter:Z

    .line 127
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "CASHBAND_SETTING_SELECT_AUTO_HEART"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 128
    .local v0, "isSelectAutoHeart":Z
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "CASHBAND_SETTING_SELECT_AUTO_SLEEP"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 130
    .local v1, "isSelectAutoSleep":Z
    iget-boolean v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mIsSelectTime:Z

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->tv_time_value:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mSelectValueTime:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :goto_0
    iget-boolean v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mIsSelectTemp:Z

    if-eqz v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->tv_temp_value:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mSelectValueTemp:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :goto_1
    iget-boolean v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mIsSelectDate:Z

    if-eqz v2, :cond_2

    .line 143
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->tv_date_value:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mSelectValueDate:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :goto_2
    iget-boolean v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mIsSelectMeter:Z

    if-eqz v2, :cond_3

    .line 149
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->tv_meter_value:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mSelectValueMeter:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :goto_3
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->sw_auto_heart:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 155
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->sw_auto_sleep:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 156
    return-void

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->tv_time_value:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mSelectValueTime:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->tv_temp_value:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mSelectValueTemp:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 145
    :cond_2
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->tv_date_value:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mSelectValueDate:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 151
    :cond_3
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->tv_meter_value:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mSelectValueMeter:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private selectDialog(I)V
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 159
    const-string v3, ""

    .line 160
    .local v3, "dialogTitle":Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    .line 161
    .local v2, "dialogItems":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 163
    .local v1, "checkItem":I
    packed-switch p1, :pswitch_data_0

    .line 186
    :goto_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 187
    .local v0, "alertBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 188
    new-instance v4, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity$2;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity$2;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;)V

    invoke-virtual {v0, v2, v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 195
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090132

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity$3;

    invoke-direct {v5, p0, p1}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity$3;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;I)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090101

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity$4;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity$4;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 209
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 210
    return-void

    .line 165
    .end local v0    # "alertBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    :pswitch_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900c7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 166
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mSelectValueTime:[Ljava/lang/String;

    .line 167
    iget-boolean v6, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mIsSelectTime:Z

    if-nez v6, :cond_0

    move v1, v4

    .line 168
    :goto_1
    goto :goto_0

    :cond_0
    move v1, v5

    .line 167
    goto :goto_1

    .line 170
    :pswitch_1
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 171
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mSelectValueTemp:[Ljava/lang/String;

    .line 172
    iget-boolean v6, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mIsSelectTemp:Z

    if-nez v6, :cond_1

    move v1, v4

    .line 173
    :goto_2
    goto :goto_0

    :cond_1
    move v1, v5

    .line 172
    goto :goto_2

    .line 175
    :pswitch_2
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900c4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 176
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mSelectValueDate:[Ljava/lang/String;

    .line 177
    iget-boolean v6, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mIsSelectDate:Z

    if-nez v6, :cond_2

    move v1, v4

    .line 178
    :goto_3
    goto :goto_0

    :cond_2
    move v1, v5

    .line 177
    goto :goto_3

    .line 180
    :pswitch_3
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900c5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 181
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mSelectValueMeter:[Ljava/lang/String;

    .line 182
    iget-boolean v6, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mIsSelectMeter:Z

    if-nez v6, :cond_3

    move v1, v4

    :goto_4
    goto/16 :goto_0

    :cond_3
    move v1, v5

    goto :goto_4

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x457
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSelectType(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 213
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    if-nez v2, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090112

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 246
    :goto_0
    return-void

    .line 218
    :cond_0
    iget v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mSelectInt:I

    if-ne v2, v3, :cond_1

    .line 219
    iput v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mSelectInt:I

    .line 222
    :cond_1
    iget v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mSelectInt:I

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 224
    .local v1, "isSelect":Z
    :cond_2
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 226
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    packed-switch p1, :pswitch_data_0

    .line 241
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 242
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->setBandDisplayInfo()V

    .line 243
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->setWeather()V

    .line 244
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->refreshSelectData()V

    .line 245
    iput v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mSelectInt:I

    goto :goto_0

    .line 228
    :pswitch_0
    const-string v2, "CASHBAND_SETTING_SELECT_TIME"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 231
    :pswitch_1
    const-string v2, "CASHBAND_SETTING_SELECT_TEMP"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 234
    :pswitch_2
    const-string v2, "CASHBAND_SETTING_SELECT_DATE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 237
    :pswitch_3
    const-string v2, "CASHBAND_SETTING_SELECT_METER"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 226
    :pswitch_data_0
    .packed-switch 0x457
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 250
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    if-nez v1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 269
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 257
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 259
    :pswitch_1
    const-string v1, "CASHBAND_SETTING_SELECT_AUTO_HEART"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 260
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 264
    :pswitch_2
    const-string v1, "CASHBAND_SETTING_SELECT_AUTO_SLEEP"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 265
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->setBandDisplayInfo()V

    goto :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x7f100162
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v3, 0x7f050019

    const v2, 0x7f050017

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 322
    :goto_0
    :pswitch_0
    return-void

    .line 275
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/cashband/BandSettingUnlockActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 276
    invoke-virtual {p0, v3, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 280
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 281
    invoke-virtual {p0, v3, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 285
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 286
    invoke-virtual {p0, v3, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 289
    :pswitch_4
    const/16 v0, 0x457

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->selectDialog(I)V

    goto :goto_0

    .line 293
    :pswitch_5
    const/16 v0, 0x458

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->selectDialog(I)V

    goto :goto_0

    .line 297
    :pswitch_6
    const/16 v0, 0x459

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->selectDialog(I)V

    goto :goto_0

    .line 301
    :pswitch_7
    const/16 v0, 0x45a

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->selectDialog(I)V

    goto :goto_0

    .line 305
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 306
    invoke-virtual {p0, v3, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 310
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 311
    invoke-virtual {p0, v3, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x7f10014a
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f040027

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->setContentView(I)V

    .line 62
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->mPref:Landroid/content/SharedPreferences;

    .line 63
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->initView()V

    .line 64
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onResume()V

    .line 69
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, "progress":Landroid/app/ProgressDialog;
    const v1, 0x7f090110

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 73
    new-instance v1, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity$1;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->connect(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;)V

    .line 87
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->refreshSelectData()V

    .line 88
    return-void
.end method
