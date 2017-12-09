.class public Lcom/cashwalk/cashwalk/activity/LottoAdActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LottoAdActivity.java"


# instance fields
.field private ANMATION_COUNT:I

.field private brand:Landroid/widget/TextView;

.field private image:Landroid/widget/ImageView;

.field private isFreeLotto:Z

.field private isFreeType:Ljava/lang/String;

.field private iv_lotto_winner_item_image:Landroid/widget/ImageView;

.field private lotto:Lcom/cashwalk/cashwalk/util/network/model/Lotto;

.field mAnimationEndHandler:Landroid/os/Handler;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private notFreeInfo:Z

.field private point:Landroid/widget/Button;

.field private pref:Landroid/content/SharedPreferences;

.field private price:Landroid/widget/TextView;

.field private progress:Landroid/widget/ProgressBar;

.field private remainTrial:I

.field private rl_realtime_winner_info:Landroid/widget/RelativeLayout;

.field private rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

.field private title:Landroid/widget/TextView;

.field private tv_lotto_winner_msg:Landroid/widget/TextView;

.field private tv_lotto_winner_time:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 59
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->isFreeLotto:Z

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->isFreeType:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->notFreeInfo:Z

    .line 69
    iput v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->remainTrial:I

    .line 73
    iput v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->ANMATION_COUNT:I

    .line 470
    new-instance v0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$5;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$5;-><init>(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->mAnimationEndHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Lcom/cashwalk/cashwalk/util/network/model/Lotto;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->lotto:Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->tv_lotto_winner_msg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    .prologue
    .line 44
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->ANMATION_COUNT:I

    return v0
.end method

.method static synthetic access$1102(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->ANMATION_COUNT:I

    return p1
.end method

.method static synthetic access$1108(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    .prologue
    .line 44
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->ANMATION_COUNT:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->ANMATION_COUNT:I

    return v0
.end method

.method static synthetic access$1200(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->mAnimationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->getLottoWinnerList()V

    return-void
.end method

.method static synthetic access$1502(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->isFreeType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->isFreeLotto:Z

    return v0
.end method

.method static synthetic access$202(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->isFreeLotto:Z

    return p1
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->notFreeInfo:Z

    return v0
.end method

.method static synthetic access$302(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->notFreeInfo:Z

    return p1
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->startLotto()V

    return-void
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->setWinnerBanner(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->rl_realtime_winner_info:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->tv_lotto_winner_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->iv_lotto_winner_item_image:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getLottoWinnerList()V
    .locals 2

    .prologue
    .line 366
    new-instance v1, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$3;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$3;-><init>(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getLottoWinnerList(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 383
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 384
    return-void
.end method

.method private setWinnerBanner(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Winner;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "winnerUserList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Winner;>;"
    const v6, 0x7f020221

    const/4 v7, 0x0

    .line 387
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->mAnimationHandler:Landroid/os/Handler;

    .line 388
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 389
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 392
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->tv_lotto_winner_time:Landroid/widget/TextView;

    new-instance v5, Lorg/joda/time/DateTime;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;->created:Ljava/lang/String;

    invoke-direct {v5, v3}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v5}, Lcom/cashwalk/cashwalk/util/Utils;->getAgoString(Landroid/content/Context;Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v1, v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;->imageUrl:Ljava/lang/String;

    .line 394
    .local v1, "path":Ljava/lang/String;
    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 395
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    .line 396
    invoke-virtual {v3, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 397
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->iv_lotto_winner_item_image:Landroid/widget/ImageView;

    .line 398
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 407
    :goto_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->tv_lotto_winner_msg:Landroid/widget/TextView;

    const v3, 0x7f0901f0

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;->nickname:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget v3, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->ANMATION_COUNT:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->ANMATION_COUNT:I

    .line 409
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 410
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    .line 412
    .local v2, "winner":Lcom/cashwalk/cashwalk/util/network/model/Winner;
    new-instance v3, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;

    invoke-direct {v3, p0, v2, p1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;-><init>(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;Lcom/cashwalk/cashwalk/util/network/model/Winner;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 461
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->mAnimationHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    mul-int/lit16 v5, v0, 0x1388

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 400
    .end local v0    # "i":I
    .end local v2    # "winner":Lcom/cashwalk/cashwalk/util/network/model/Winner;
    :cond_0
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    .line 402
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v4

    .line 403
    invoke-virtual {v4, v1}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 401
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 404
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->iv_lotto_winner_item_image:Landroid/widget/ImageView;

    .line 405
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 465
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 467
    :cond_2
    return-void
.end method

.method private startLotto()V
    .locals 4

    .prologue
    .line 502
    new-instance v0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->lotto:Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->isFreeType:Ljava/lang/String;

    new-instance v3, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$6;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$6;-><init>(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;-><init>(Landroid/content/Context;Lcom/cashwalk/cashwalk/util/network/model/Lotto;Ljava/lang/String;Landroid/os/Handler;)V

    .line 520
    .local v0, "lottoResultDialog":Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->setCancelable(Z)V

    .line 521
    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->show()V

    .line 522
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->finish()V

    .line 611
    const v0, 0x7f050017

    const v1, 0x7f050022

    invoke-virtual {p0, v0, v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->overridePendingTransition(II)V

    .line 612
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 79
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v1, 0x7f04003d

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->setContentView(I)V

    .line 82
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->pref:Landroid/content/SharedPreferences;

    .line 84
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, "it":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 86
    const-string v1, "lotto"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->lotto:Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x680080

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 97
    const v1, 0x7f10008f

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->image:Landroid/widget/ImageView;

    .line 98
    const v1, 0x7f1001f4

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->point:Landroid/widget/Button;

    .line 100
    const v1, 0x7f1000d6

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->progress:Landroid/widget/ProgressBar;

    .line 101
    const v1, 0x7f100093

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->title:Landroid/widget/TextView;

    .line 102
    const v1, 0x7f100200

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->brand:Landroid/widget/TextView;

    .line 103
    const v1, 0x7f100201

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->price:Landroid/widget/TextView;

    .line 105
    const v1, 0x7f1001f5

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    .line 106
    const v1, 0x7f1001f6

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->rl_realtime_winner_info:Landroid/widget/RelativeLayout;

    .line 107
    const v1, 0x7f1001f9

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->tv_lotto_winner_msg:Landroid/widget/TextView;

    .line 108
    const v1, 0x7f1001f8

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->tv_lotto_winner_time:Landroid/widget/TextView;

    .line 109
    const v1, 0x7f1001f7

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->iv_lotto_winner_item_image:Landroid/widget/ImageView;

    .line 110
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->lotto:Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->brand:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->lotto:Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->lotto:Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->detailImgUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 228
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->price:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->lotto:Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    iget v2, v2, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->point:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->point:Landroid/widget/Button;

    const v2, 0x7f0901e4

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->lotto:Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    iget v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->point:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->point:Landroid/widget/Button;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iput-boolean v5, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->notFreeInfo:Z

    .line 347
    if-eqz v0, :cond_1

    .line 348
    const-string v1, "is_direct_open"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    const-string v1, "is_free"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    iput-boolean v6, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->isFreeLotto:Z

    .line 351
    const-string v1, "is_free_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->isFreeType:Ljava/lang/String;

    .line 353
    const-string v1, "is_free"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 354
    const-string v1, "is_free_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 360
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->point:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    .line 363
    :cond_1
    return-void

    .line 356
    :cond_2
    iput-boolean v5, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->isFreeLotto:Z

    .line 357
    const-string v1, ""

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->isFreeType:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 492
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 494
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 495
    iput v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->ANMATION_COUNT:I

    .line 496
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 497
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 499
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 574
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 595
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 596
    iput v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->ANMATION_COUNT:I

    .line 597
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 598
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 600
    :cond_0
    sget-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->winnerArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->winnerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    sget-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->winnerArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->setWinnerBanner(Ljava/util/ArrayList;)V

    .line 606
    :goto_0
    return-void

    .line 603
    :cond_1
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->getLottoWinnerList()V

    goto :goto_0
.end method

.method public showVideoFreeLotto()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 525
    sput-boolean v4, Lcom/cashwalk/cashwalk/CashWalkApp;->SUCCESS_VIDEO_REWARDED:Z

    .line 527
    new-instance v0, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->lotto:Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    const-string v2, "VIDEO"

    new-instance v3, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$7;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$7;-><init>(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;-><init>(Landroid/content/Context;Lcom/cashwalk/cashwalk/util/network/model/Lotto;Ljava/lang/String;Landroid/os/Handler;)V

    .line 544
    .local v0, "ld":Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;
    invoke-virtual {v0, v4}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->setCancelable(Z)V

    .line 545
    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/LottoDialog;->show()V

    .line 546
    return-void
.end method
