.class public Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "BandSettingVibrateModeActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$OnItemClickListener;


# static fields
.field public static final CALL_VIBRATE_MODE:I = 0x0

.field public static final MOVEMENT_VIBRATE_MODE:I = 0x2

.field public static final MSG_VIBRATE_MODE:I = 0x1

.field public static final VIBRATE_MODE:Ljava/lang/String; = "VIBRATE_MODE"


# instance fields
.field private mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

.field private mModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/model/VibrateMode;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveMenu:Landroid/view/MenuItem;

.field private mSelectType:I

.field private mSelectedMode:Lcom/cashwalk/cashwalk/model/VibrateMode;

.field private mVibrateAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;

.field private tv_mode_description:Landroid/widget/TextView;

.field private tv_mode_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mSelectType:I

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;)Lcom/cashwalk/cashwalk/model/VibrateMode;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mSelectedMode:Lcom/cashwalk/cashwalk/model/VibrateMode;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;

    .prologue
    .line 30
    iget v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mSelectType:I

    return v0
.end method

.method private getSelectedModeName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    .local v0, "pref":Landroid/content/SharedPreferences;
    iget v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mSelectType:I

    packed-switch v2, :pswitch_data_0

    .line 108
    :goto_0
    return-object v1

    .line 101
    :pswitch_0
    const-string v2, "CASHBAND_VIBRATE_CALL_MODE_NAME"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 103
    :pswitch_1
    const-string v2, "CASHBAND_VIBRATE_MSG_MODE_NAME"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 105
    :pswitch_2
    const-string v2, "CASHBAND_VIBRATE_MOVEMENT_MODE_NAME"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "VIBRATE_MODE"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mSelectType:I

    .line 83
    const v2, 0x7f10019c

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->tv_mode_title:Landroid/widget/TextView;

    .line 84
    const v2, 0x7f10019d

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->tv_mode_description:Landroid/widget/TextView;

    .line 86
    const v2, 0x7f10019e

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    .line 87
    .local v1, "rv_vibrate_modes":Landroid/support/v7/widget/RecyclerView;
    new-instance v2, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->getSelectedModeName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mVibrateAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;

    .line 88
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mVibrateAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;

    invoke-virtual {v2, p0}, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;->setOnItemClickListener(Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter$OnItemClickListener;)V

    .line 90
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mVibrateAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 91
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 93
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->setTitle()V

    .line 94
    return-void
.end method

.method private setModes()V
    .locals 4

    .prologue
    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mModes:Ljava/util/ArrayList;

    .line 135
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mModes:Ljava/util/ArrayList;

    new-instance v1, Lcom/cashwalk/cashwalk/model/VibrateMode;

    const-string v2, "Wave"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/cashwalk/cashwalk/model/VibrateMode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mModes:Ljava/util/ArrayList;

    new-instance v1, Lcom/cashwalk/cashwalk/model/VibrateMode;

    const-string v2, "Staccato"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/cashwalk/cashwalk/model/VibrateMode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mModes:Ljava/util/ArrayList;

    new-instance v1, Lcom/cashwalk/cashwalk/model/VibrateMode;

    const-string v2, "Heartbeat"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/cashwalk/cashwalk/model/VibrateMode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mModes:Ljava/util/ArrayList;

    new-instance v1, Lcom/cashwalk/cashwalk/model/VibrateMode;

    const-string v2, "Lighthouse"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/cashwalk/cashwalk/model/VibrateMode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mModes:Ljava/util/ArrayList;

    new-instance v1, Lcom/cashwalk/cashwalk/model/VibrateMode;

    const-string v2, "Radiation"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/cashwalk/cashwalk/model/VibrateMode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mModes:Ljava/util/ArrayList;

    new-instance v1, Lcom/cashwalk/cashwalk/model/VibrateMode;

    const-string v2, "Symphony"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/cashwalk/cashwalk/model/VibrateMode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mModes:Ljava/util/ArrayList;

    new-instance v1, Lcom/cashwalk/cashwalk/model/VibrateMode;

    const-string v2, "Fast"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/cashwalk/cashwalk/model/VibrateMode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mVibrateAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mModes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/adapter/VibrateListAdapter;->setList(Ljava/util/List;)V

    .line 144
    return-void
.end method

.method private setTitle()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "subTitle":Ljava/lang/String;
    iget v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mSelectType:I

    packed-switch v1, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 116
    :pswitch_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->tv_mode_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->tv_mode_description:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->tv_mode_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->tv_mode_description:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 126
    :pswitch_2
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->tv_mode_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->tv_mode_description:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f04002d

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->setContentView(I)V

    .line 52
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->initView()V

    .line 53
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->setModes()V

    .line 54
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 159
    const-string/jumbo v0, "\uc800\uc7a5"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mSaveMenu:Landroid/view/MenuItem;

    .line 160
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mSaveMenu:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 161
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mSaveMenu:Landroid/view/MenuItem;

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity$2;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 196
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Lcom/cashwalk/cashwalk/model/VibrateMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/cashwalk/cashwalk/model/VibrateMode;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mSelectedMode:Lcom/cashwalk/cashwalk/model/VibrateMode;

    .line 150
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    invoke-virtual {v0, p1}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->checkVibrate(Lcom/cashwalk/cashwalk/model/VibrateMode;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 58
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onResume()V

    .line 59
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, "progress":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090110

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 63
    new-instance v1, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity$1;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateModeActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->connect(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;)V

    .line 76
    return-void
.end method
