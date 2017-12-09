.class public Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "BandSettingSportActivity.java"


# instance fields
.field private mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

.field private mPref:Landroid/content/SharedPreferences;

.field private mSaveMenu:Landroid/view/MenuItem;

.field private mSelectedCount:I

.field private mSportModeListAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;

.field private mSportModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/model/SportMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSelectedCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private initSportModes()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/model/SportMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModes:Ljava/util/ArrayList;

    .line 86
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModes:Ljava/util/ArrayList;

    new-instance v4, Lcom/cashwalk/cashwalk/model/SportMode;

    const-string/jumbo v5, "\ucd95\uad6c"

    const-string v6, "img_football_"

    const/16 v7, 0x82

    invoke-direct {v4, v5, v6, v7}, Lcom/cashwalk/cashwalk/model/SportMode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModes:Ljava/util/ArrayList;

    new-instance v4, Lcom/cashwalk/cashwalk/model/SportMode;

    const-string/jumbo v5, "\ud14c\ub2c8\uc2a4"

    const-string v6, "img_tennis_"

    const/16 v7, 0x87

    invoke-direct {v4, v5, v6, v7}, Lcom/cashwalk/cashwalk/model/SportMode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModes:Ljava/util/ArrayList;

    new-instance v4, Lcom/cashwalk/cashwalk/model/SportMode;

    const-string/jumbo v5, "\ub18d\uad6c"

    const-string v6, "img_basketball_"

    const/16 v7, 0x81

    invoke-direct {v4, v5, v6, v7}, Lcom/cashwalk/cashwalk/model/SportMode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModes:Ljava/util/ArrayList;

    new-instance v4, Lcom/cashwalk/cashwalk/model/SportMode;

    const-string/jumbo v5, "\ubc30\uad6c"

    const-string v6, "img_volleyball_"

    const/16 v7, 0x84

    invoke-direct {v4, v5, v6, v7}, Lcom/cashwalk/cashwalk/model/SportMode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModes:Ljava/util/ArrayList;

    new-instance v4, Lcom/cashwalk/cashwalk/model/SportMode;

    const-string/jumbo v5, "\ud0c1\uad6c"

    const-string v6, "img_tabletennis_"

    const/16 v7, 0x85

    invoke-direct {v4, v5, v6, v7}, Lcom/cashwalk/cashwalk/model/SportMode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModes:Ljava/util/ArrayList;

    new-instance v4, Lcom/cashwalk/cashwalk/model/SportMode;

    const-string/jumbo v5, "\ubca0\ub4dc\ubbfc\ud134"

    const-string v6, "img_badminton_"

    const/16 v7, 0x80

    invoke-direct {v4, v5, v6, v7}, Lcom/cashwalk/cashwalk/model/SportMode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModes:Ljava/util/ArrayList;

    new-instance v4, Lcom/cashwalk/cashwalk/model/SportMode;

    const-string/jumbo v5, "\ubcfc\ub9c1"

    const-string v6, "img_bowling_"

    const/16 v7, 0x86

    invoke-direct {v4, v5, v6, v7}, Lcom/cashwalk/cashwalk/model/SportMode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModes:Ljava/util/ArrayList;

    new-instance v4, Lcom/cashwalk/cashwalk/model/SportMode;

    const-string/jumbo v5, "\uc904\ub118\uae30"

    const-string v6, "img_ropeskipping_"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lcom/cashwalk/cashwalk/model/SportMode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModes:Ljava/util/ArrayList;

    new-instance v4, Lcom/cashwalk/cashwalk/model/SportMode;

    const-string/jumbo v5, "\ud5ec\uc2a4"

    const-string v6, "img_fitness_"

    const/16 v7, 0x8c

    invoke-direct {v4, v5, v6, v7}, Lcom/cashwalk/cashwalk/model/SportMode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModes:Ljava/util/ArrayList;

    new-instance v4, Lcom/cashwalk/cashwalk/model/SportMode;

    const-string/jumbo v5, "\uc2a4\ucf00\uc774\ud2b8"

    const-string v6, "img_skate_"

    const/16 v7, 0x8a

    invoke-direct {v4, v5, v6, v7}, Lcom/cashwalk/cashwalk/model/SportMode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModes:Ljava/util/ArrayList;

    new-instance v4, Lcom/cashwalk/cashwalk/model/SportMode;

    const-string/jumbo v5, "\ud074\ub77c\uc774\ubc0d"

    const-string v6, "img_rockclimbing_"

    const/16 v7, 0x8b

    invoke-direct {v4, v5, v6, v7}, Lcom/cashwalk/cashwalk/model/SportMode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModes:Ljava/util/ArrayList;

    new-instance v4, Lcom/cashwalk/cashwalk/model/SportMode;

    const-string/jumbo v5, "\uc2a4\ud0a4"

    const-string v6, "img_ski_"

    const/16 v7, 0x89

    invoke-direct {v4, v5, v6, v7}, Lcom/cashwalk/cashwalk/model/SportMode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModes:Ljava/util/ArrayList;

    new-instance v4, Lcom/cashwalk/cashwalk/model/SportMode;

    const-string/jumbo v5, "\uc5d0\uc5b4\ub85c\ube45"

    const-string v6, "img_aerobics_"

    const/16 v7, 0x8f

    invoke-direct {v4, v5, v6, v7}, Lcom/cashwalk/cashwalk/model/SportMode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModes:Ljava/util/ArrayList;

    new-instance v4, Lcom/cashwalk/cashwalk/model/SportMode;

    const-string/jumbo v5, "\ub4f1\uc0b0"

    const-string v6, "img_climbing_"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/cashwalk/cashwalk/model/SportMode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModes:Ljava/util/ArrayList;

    new-instance v4, Lcom/cashwalk/cashwalk/model/SportMode;

    const-string/jumbo v5, "\uc790\uc804\uac70"

    const-string v6, "img_bike_"

    const/16 v7, 0x88

    invoke-direct {v4, v5, v6, v7}, Lcom/cashwalk/cashwalk/model/SportMode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModes:Ljava/util/ArrayList;

    new-instance v4, Lcom/cashwalk/cashwalk/model/SportMode;

    const-string/jumbo v5, "\ub304\uc2a4"

    const-string v6, "img_dance_"

    const/16 v7, 0x8d

    invoke-direct {v4, v5, v6, v7}, Lcom/cashwalk/cashwalk/model/SportMode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModes:Ljava/util/ArrayList;

    new-instance v4, Lcom/cashwalk/cashwalk/model/SportMode;

    const-string/jumbo v5, "\uc218\uc601"

    const-string v6, "img_swimming_"

    const/16 v7, 0x83

    invoke-direct {v4, v5, v6, v7}, Lcom/cashwalk/cashwalk/model/SportMode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModes:Ljava/util/ArrayList;

    new-instance v4, Lcom/cashwalk/cashwalk/model/SportMode;

    const-string/jumbo v5, "\ud50c\ub7ad\ud06c"

    const-string v6, "img_plank_"

    const/16 v7, 0x8e

    invoke-direct {v4, v5, v6, v7}, Lcom/cashwalk/cashwalk/model/SportMode;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "CASHBAND_SETTING_SPORT_MODE_ITEM"

    const-string v5, "[]"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "arr":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 108
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/model/SportMode;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/cashwalk/cashwalk/model/SportMode;->isSelect:Z

    .line 109
    iget v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSelectedCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSelectedCount:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 115
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModes:Ljava/util/ArrayList;

    return-object v3
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    const v1, 0x7f10018d

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 74
    .local v0, "rv_sport_mode":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 75
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 76
    new-instance v1, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModeListAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;

    .line 77
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModeListAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->initSportModes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->setList(Ljava/util/ArrayList;)V

    .line 78
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModeListAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;

    iget v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSelectedCount:I

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;->setSelectCount(I)V

    .line 80
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 81
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSportModeListAdapter:Lcom/cashwalk/cashwalk/cashband/adapter/SportModeListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 82
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f04002a

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->setContentView(I)V

    .line 46
    invoke-static {p0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mPref:Landroid/content/SharedPreferences;

    .line 47
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->initView()V

    .line 48
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 120
    const-string/jumbo v0, "\uc800\uc7a5"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSaveMenu:Landroid/view/MenuItem;

    .line 121
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSaveMenu:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 122
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->mSaveMenu:Landroid/view/MenuItem;

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$2;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 159
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onResume()V

    .line 53
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, "progress":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090110

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 57
    new-instance v1, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$1;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->connect(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;)V

    .line 70
    return-void
.end method
