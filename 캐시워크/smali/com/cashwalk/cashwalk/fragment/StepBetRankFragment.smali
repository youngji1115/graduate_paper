.class public Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;
.super Landroid/support/v4/app/Fragment;
.source "StepBetRankFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;
    }
.end annotation


# instance fields
.field private allday:Landroid/widget/TextView;

.field private date:Landroid/widget/TextView;

.field private id:Ljava/lang/String;

.field private isToday:Z

.field private listView:Landroid/widget/ListView;

.field private nickname:Landroid/widget/TextView;

.field private pref:Landroid/content/SharedPreferences;

.field private preperation:Landroid/widget/LinearLayout;

.field private profile:Landroid/widget/ImageView;

.field private rank:Landroid/widget/TextView;

.field private refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private steps:Landroid/widget/TextView;

.field private today:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->id:Ljava/lang/String;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->isToday:Z

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->refreshList()V

    return-void
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->isToday:Z

    return v0
.end method

.method static synthetic access$102(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->isToday:Z

    return p1
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->today:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->allday:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->date:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->showMe(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method public static newInstance()Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;-><init>()V

    .line 66
    .local v0, "fragment":Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;
    return-object v0
.end method

.method private refreshList()V
    .locals 4

    .prologue
    .line 193
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->id:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->pref:Landroid/content/SharedPreferences;

    const-string v2, "STEPBET_ID"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->id:Ljava/lang/String;

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->id:Ljava/lang/String;

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$4;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$4;-><init>(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)V

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getStepBetRank(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 219
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 220
    return-void
.end method

.method private showMe(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "me"    # Lorg/json/JSONObject;

    .prologue
    const/16 v10, 0x64

    .line 145
    :try_start_0
    const-string v6, "profileUrl"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 146
    const-string v6, "profileUrl"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 148
    const-string v6, "http"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 149
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    new-instance v7, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v7}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->profile:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 155
    .end local v3    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->nickname:Landroid/widget/TextView;

    const-string v7, "nickname"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-boolean v6, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->isToday:Z

    if-eqz v6, :cond_4

    .line 157
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->steps:Landroid/widget/TextView;

    const v7, 0x7f0902c3

    invoke-virtual {p0, v7}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%s"

    const-string/jumbo v9, "step"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_1
    const/16 v2, 0x3e7

    .line 163
    .local v2, "myRank":I
    iget-boolean v6, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->isToday:Z

    if-eqz v6, :cond_5

    .line 164
    const-string v6, "rank"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 166
    if-gt v2, v10, :cond_2

    .line 167
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->pref:Landroid/content/SharedPreferences;

    const-string v7, "PREFERENCE_REVIEW_CLICKED"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 169
    .local v1, "hasReviewed":Z
    if-nez v1, :cond_2

    .line 170
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->pref:Landroid/content/SharedPreferences;

    const-string v7, "PREFERENCE_REVIEW_CANCEL_DATETIME"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "reviewCancelDateTime":Ljava/lang/String;
    if-eqz v5, :cond_1

    new-instance v6, Lorg/joda/time/DateTime;

    invoke-direct {v6, v5}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object v6

    new-instance v7, Lorg/joda/time/DateTime;

    invoke-direct {v7}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v6, v7}, Lorg/joda/time/DateTime;->isBefore(Lorg/joda/time/ReadableInstant;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 173
    :cond_1
    new-instance v4, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;-><init>(Landroid/content/Context;)V

    .line 174
    .local v4, "rd":Lcom/cashwalk/cashwalk/dialog/ReviewDialog;
    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/dialog/ReviewDialog;->show()V

    .line 181
    .end local v1    # "hasReviewed":Z
    .end local v4    # "rd":Lcom/cashwalk/cashwalk/dialog/ReviewDialog;
    .end local v5    # "reviewCancelDateTime":Ljava/lang/String;
    :cond_2
    :goto_2
    if-le v2, v10, :cond_6

    .line 182
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->rank:Landroid/widget/TextView;

    const v7, 0x7f0902ad

    invoke-virtual {p0, v7}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .end local v2    # "myRank":I
    :goto_3
    return-void

    .line 151
    .restart local v3    # "path":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v6

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    new-instance v7, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v7}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->profile:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 187
    .end local v3    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->steps:Landroid/widget/TextView;

    const v7, 0x7f0902c3

    invoke-virtual {p0, v7}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%s"

    const-string/jumbo v9, "totalSteps"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 179
    .restart local v2    # "myRank":I
    :cond_5
    const-string/jumbo v6, "totalRank"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 184
    :cond_6
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->rank:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->pref:Landroid/content/SharedPreferences;

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    const v1, 0x7f0400a2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f1001f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->profile:Landroid/widget/ImageView;

    .line 81
    const v1, 0x7f1001f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->nickname:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f10030f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->steps:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f100215

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->rank:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f1003a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->date:Landroid/widget/TextView;

    .line 85
    const v1, 0x7f1003fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->today:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f100052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->allday:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f1003a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->preperation:Landroid/widget/LinearLayout;

    .line 89
    const v1, 0x7f100202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 90
    const v1, 0x7f1001ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->listView:Landroid/widget/ListView;

    .line 92
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$1;-><init>(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 99
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->refreshList()V

    .line 101
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->today:Landroid/widget/TextView;

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$2;-><init>(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->allday:Landroid/widget/TextView;

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$3;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$3;-><init>(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->date:Landroid/widget/TextView;

    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2}, Lorg/joda/time/DateTime;-><init>()V

    const-string/jumbo v3, "yyyy.MM.dd (E)"

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-object v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 224
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 226
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    .line 228
    .local v0, "today":Lorg/joda/time/DateTime;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2, v2}, Lorg/joda/time/DateTime;->withTime(IIII)Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->isBefore(Lorg/joda/time/ReadableInstant;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2, v2, v2, v2}, Lorg/joda/time/DateTime;->withTime(IIII)Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->isAfter(Lorg/joda/time/ReadableInstant;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->preperation:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setVisibility(I)V

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->preperation:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->refreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setVisibility(I)V

    goto :goto_0
.end method
