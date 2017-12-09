.class public Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;
.super Landroid/support/v4/app/Fragment;
.source "StepBetStatFragment.java"


# instance fields
.field private bottom:Landroid/widget/LinearLayout;

.field private days:[Landroid/widget/TextView;

.field private li:Landroid/view/LayoutInflater;

.field private nicknameView:Landroid/widget/TextView;

.field private pref:Landroid/content/SharedPreferences;

.field private progressViewThick:Lat/grabner/circleprogress/CircleProgressView;

.field private progressViewThinAbove:Lat/grabner/circleprogress/CircleProgressView;

.field private progressViewThinBelow:Lat/grabner/circleprogress/CircleProgressView;

.field private rank:Landroid/widget/TextView;

.field private stat:Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

.field private stepView:Landroid/widget/TextView;

.field private topTop:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->days:[Landroid/widget/TextView;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->refreshStat()V

    return-void
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->stat:Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->bottom:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->stat:Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    return-object p1
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lat/grabner/circleprogress/CircleProgressView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->progressViewThick:Lat/grabner/circleprogress/CircleProgressView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lat/grabner/circleprogress/CircleProgressView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->progressViewThinAbove:Lat/grabner/circleprogress/CircleProgressView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Lat/grabner/circleprogress/CircleProgressView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->progressViewThinBelow:Lat/grabner/circleprogress/CircleProgressView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)[Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->days:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->li:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->refresh()V

    return-void
.end method

.method static synthetic access$900(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->topTop:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static newInstance()Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;-><init>()V

    .line 57
    .local v0, "fragment":Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;
    return-object v0
.end method

.method private refresh()V
    .locals 4

    .prologue
    .line 97
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->pref:Landroid/content/SharedPreferences;

    const-string v2, "STEPBET_ID"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$1;-><init>(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)V

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->checkStepBetDropout(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 107
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 108
    return-void
.end method

.method private refreshStat()V
    .locals 4

    .prologue
    .line 111
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->pref:Landroid/content/SharedPreferences;

    const-string v2, "STEPBET_ID"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;-><init>(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)V

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getStepBetStat(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 287
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 288
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->pref:Landroid/content/SharedPreferences;

    .line 65
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->li:Landroid/view/LayoutInflater;

    .line 66
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 70
    const v1, 0x7f0400a3

    invoke-virtual {p1, v1, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f10030f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->stepView:Landroid/widget/TextView;

    .line 73
    const v1, 0x7f1001f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->nicknameView:Landroid/widget/TextView;

    .line 74
    const v1, 0x7f100215

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->rank:Landroid/widget/TextView;

    .line 75
    const v1, 0x7f1003fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lat/grabner/circleprogress/CircleProgressView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->progressViewThinBelow:Lat/grabner/circleprogress/CircleProgressView;

    .line 76
    const v1, 0x7f100400

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lat/grabner/circleprogress/CircleProgressView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->progressViewThinAbove:Lat/grabner/circleprogress/CircleProgressView;

    .line 77
    const v1, 0x7f1003ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lat/grabner/circleprogress/CircleProgressView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->progressViewThick:Lat/grabner/circleprogress/CircleProgressView;

    .line 78
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->days:[Landroid/widget/TextView;

    const v1, 0x7f100402

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v7

    .line 79
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->days:[Landroid/widget/TextView;

    const/4 v3, 0x1

    const v1, 0x7f100403

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v3

    .line 80
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->days:[Landroid/widget/TextView;

    const/4 v3, 0x2

    const v1, 0x7f100404

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v3

    .line 81
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->days:[Landroid/widget/TextView;

    const/4 v3, 0x3

    const v1, 0x7f100405

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v3

    .line 82
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->days:[Landroid/widget/TextView;

    const/4 v3, 0x4

    const v1, 0x7f100406

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v3

    .line 83
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->days:[Landroid/widget/TextView;

    const/4 v3, 0x5

    const v1, 0x7f100407

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v3

    .line 84
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->days:[Landroid/widget/TextView;

    const/4 v3, 0x6

    const v1, 0x7f100408

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v3

    .line 85
    const v1, 0x7f100010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->bottom:Landroid/widget/LinearLayout;

    .line 86
    const v1, 0x7f1003fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->topTop:Landroid/widget/LinearLayout;

    .line 88
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->nicknameView:Landroid/widget/TextView;

    const v2, 0x7f0902c2

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->pref:Landroid/content/SharedPreferences;

    const-string v5, "NICKNAME"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->stepView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "steps"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->refresh()V

    .line 93
    return-object v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 292
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 293
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->stepView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "steps"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
