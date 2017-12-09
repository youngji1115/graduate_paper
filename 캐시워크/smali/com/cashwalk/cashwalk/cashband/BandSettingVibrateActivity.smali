.class public Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "BandSettingVibrateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

.field private tv_call_repeat_mode_value:Landroid/widget/TextView;

.field private tv_call_vibrate_mode_value:Landroid/widget/TextView;

.field private tv_movement_repeat_mode_value:Landroid/widget/TextView;

.field private tv_movement_vibrate_mode_value:Landroid/widget/TextView;

.field private tv_msg_repeat_mode_value:Landroid/widget/TextView;

.field private tv_msg_vibrate_mode_value:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->tv_call_repeat_mode_value:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->tv_movement_repeat_mode_value:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->tv_msg_repeat_mode_value:Landroid/widget/TextView;

    return-object v0
.end method

.method private initView()V
    .locals 10

    .prologue
    const/16 v9, 0x21

    const/4 v8, 0x1

    .line 71
    const v5, 0x7f10018f

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 72
    .local v2, "tv_vibrate_set_sub_title":Landroid/widget/TextView;
    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900fb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 74
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const-string v6, "#007aff"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v6, 0xe

    const/16 v7, 0x12

    invoke-virtual {v0, v5, v6, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 75
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const-string v6, "#007aff"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v6, 0x14

    const/16 v7, 0x18

    invoke-virtual {v0, v5, v6, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 76
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 78
    const v5, 0x7f100191

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->tv_call_vibrate_mode_value:Landroid/widget/TextView;

    .line 79
    const v5, 0x7f100193

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->tv_call_repeat_mode_value:Landroid/widget/TextView;

    .line 80
    const v5, 0x7f100195

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->tv_movement_vibrate_mode_value:Landroid/widget/TextView;

    .line 81
    const v5, 0x7f100197

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->tv_movement_repeat_mode_value:Landroid/widget/TextView;

    .line 82
    const v5, 0x7f100199

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->tv_msg_vibrate_mode_value:Landroid/widget/TextView;

    .line 83
    const v5, 0x7f10019b

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->tv_msg_repeat_mode_value:Landroid/widget/TextView;

    .line 85
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v4, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const v5, 0x7f100190

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    const v5, 0x7f100192

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    const v5, 0x7f100194

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    const v5, 0x7f100196

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    const v5, 0x7f100198

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    const v5, 0x7f10019a

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 94
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 97
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 98
    .local v1, "pref":Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->tv_call_vibrate_mode_value:Landroid/widget/TextView;

    const-string v6, "CASHBAND_VIBRATE_CALL_MODE_NAME"

    const-string v7, ""

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->tv_call_repeat_mode_value:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CASHBAND_VIBRATE_CALL_MODE_COUNT"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \ubc88"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->tv_movement_vibrate_mode_value:Landroid/widget/TextView;

    const-string v6, "CASHBAND_VIBRATE_MOVEMENT_MODE_NAME"

    const-string v7, ""

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->tv_movement_repeat_mode_value:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CASHBAND_VIBRATE_MOVEMENT_MODE_COUNT"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \ubc88"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->tv_msg_vibrate_mode_value:Landroid/widget/TextView;

    const-string v6, "CASHBAND_VIBRATE_MSG_MODE_NAME"

    const-string v7, ""

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->tv_msg_repeat_mode_value:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CASHBAND_VIBRATE_MSG_MODE_COUNT"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \ubc88"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method private showRepeatDialog(I)V
    .locals 2
    .param p1, "modeType"    # I

    .prologue
    .line 139
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, "dialog":Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;
    new-instance v1, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$2;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;I)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;->setOnSelectRepeatCount(Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog$OnSelectRepeatCount;)V

    .line 172
    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;->show()V

    .line 173
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f050019

    const v2, 0x7f050017

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 136
    :goto_0
    :pswitch_0
    return-void

    .line 112
    :pswitch_1
    const-string v1, "VIBRATE_MODE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->startActivity(Landroid/content/Intent;)V

    .line 114
    invoke-virtual {p0, v3, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 117
    :pswitch_2
    const-string v1, "VIBRATE_MODE"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->startActivity(Landroid/content/Intent;)V

    .line 119
    invoke-virtual {p0, v3, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 122
    :pswitch_3
    const-string v1, "VIBRATE_MODE"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p0, v3, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 127
    :pswitch_4
    invoke-direct {p0, v4}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->showRepeatDialog(I)V

    goto :goto_0

    .line 130
    :pswitch_5
    invoke-direct {p0, v6}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->showRepeatDialog(I)V

    goto :goto_0

    .line 133
    :pswitch_6
    invoke-direct {p0, v5}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->showRepeatDialog(I)V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x7f100190
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f04002c

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->setContentView(I)V

    .line 44
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onResume()V

    .line 49
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "progress":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090110

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 53
    new-instance v1, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$1;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->connect(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;)V

    .line 67
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->initView()V

    .line 68
    return-void
.end method
