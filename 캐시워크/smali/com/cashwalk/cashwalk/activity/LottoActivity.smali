.class public Lcom/cashwalk/cashwalk/activity/LottoActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LottoActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$OnItemClickListener;


# instance fields
.field private ANMATION_COUNT:I

.field private email:Landroid/widget/TextView;

.field private iv_lotto_winner_item_image:Landroid/widget/ImageView;

.field mAnimationEndHandler:Landroid/os/Handler;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mLottoListAdapter:Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;

.field private nickname:Landroid/widget/TextView;

.field private now:Landroid/widget/TextView;

.field private point:Landroid/widget/TextView;

.field private pref:Landroid/content/SharedPreferences;

.field private profile:Landroid/widget/ImageView;

.field private progress:Landroid/widget/ProgressBar;

.field private refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private rl_ad_banner:Landroid/widget/RelativeLayout;

.field private rl_add_friend_layout:Landroid/widget/RelativeLayout;

.field private rl_realtime_winner_info:Landroid/widget/RelativeLayout;

.field private rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

.field private rv_item_list:Landroid/support/v7/widget/RecyclerView;

.field private selectedItem:I

.field private tv_close_add_friend_layout:Landroid/widget/TextView;

.field private tv_lotto_winner_msg:Landroid/widget/TextView;

.field private tv_lotto_winner_time:Landroid/widget/TextView;

.field private winnerArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Winner;",
            ">;"
        }
    .end annotation
.end field

.field private winnerUserList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 73
    iput v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->selectedItem:I

    .line 80
    iput v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->ANMATION_COUNT:I

    .line 434
    new-instance v0, Lcom/cashwalk/cashwalk/activity/LottoActivity$9;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/activity/LottoActivity$9;-><init>(Lcom/cashwalk/cashwalk/activity/LottoActivity;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->mAnimationEndHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->now:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->rl_realtime_winner_info:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->tv_lotto_winner_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->iv_lotto_winner_item_image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->tv_lotto_winner_msg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/cashwalk/cashwalk/activity/LottoActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;

    .prologue
    .line 46
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->ANMATION_COUNT:I

    return v0
.end method

.method static synthetic access$1502(Lcom/cashwalk/cashwalk/activity/LottoActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->ANMATION_COUNT:I

    return p1
.end method

.method static synthetic access$1508(Lcom/cashwalk/cashwalk/activity/LottoActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;

    .prologue
    .line 46
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->ANMATION_COUNT:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->ANMATION_COUNT:I

    return v0
.end method

.method static synthetic access$1600(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->mAnimationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/cashwalk/cashwalk/activity/LottoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->getLottoWinnerList()V

    return-void
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/LottoActivity;Ljava/util/ArrayList;I)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->setItemList(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/activity/LottoActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->gotoLottoItemDetail(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$502(Lcom/cashwalk/cashwalk/activity/LottoActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->selectedItem:I

    return p1
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/activity/LottoActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->refreshLotto(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->rl_add_friend_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->winnerArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/cashwalk/cashwalk/activity/LottoActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->winnerArrayList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/cashwalk/cashwalk/activity/LottoActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->setWinnerBanner(Ljava/util/ArrayList;)V

    return-void
.end method

.method private getLottoWinnerList()V
    .locals 2

    .prologue
    .line 327
    new-instance v1, Lcom/cashwalk/cashwalk/activity/LottoActivity$7;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/LottoActivity$7;-><init>(Lcom/cashwalk/cashwalk/activity/LottoActivity;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getLottoWinnerList(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 346
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 347
    return-void
.end method

.method private gotoLottoItemDetail(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Lotto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Lotto;>;"
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 111
    .local v0, "getData":Landroid/content/Intent;
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->winnerArrayList:Ljava/util/ArrayList;

    sput-object v5, Lcom/cashwalk/cashwalk/CashWalkApp;->winnerArrayList:Ljava/util/ArrayList;

    .line 113
    const-string v5, "item_id"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 114
    const-string v5, "item_id"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "id":Ljava/lang/String;
    const-string v5, "is_free_type"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "is_free_type":Ljava/lang/String;
    const-string v5, "is_free"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 117
    .local v2, "is_free":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    .line 118
    .local v4, "item":Lcom/cashwalk/cashwalk/util/network/model/Lotto;
    iget-object v6, v4, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->id:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 119
    const-string v5, "item_id"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 120
    const-string v5, "is_free_type"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 121
    const-string v5, "is_free"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 123
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "lotto"

    .line 124
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "is_direct_open"

    const/4 v7, 0x1

    .line 125
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "is_free_type"

    .line 126
    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "is_free"

    .line 127
    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    .line 123
    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->startActivity(Landroid/content/Intent;)V

    .line 134
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "is_free":Z
    .end local v3    # "is_free_type":Ljava/lang/String;
    .end local v4    # "item":Lcom/cashwalk/cashwalk/util/network/model/Lotto;
    :cond_0
    return-void

    .line 130
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "is_free":Z
    .restart local v3    # "is_free_type":Ljava/lang/String;
    .restart local v4    # "item":Lcom/cashwalk/cashwalk/util/network/model/Lotto;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "##### \uc544\uc774\ud15c \uc544\uc774\ub514"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 219
    const v1, 0x7f1001fe

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->now:Landroid/widget/TextView;

    .line 220
    const v1, 0x7f1001f0

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->profile:Landroid/widget/ImageView;

    .line 221
    const v1, 0x7f1001f1

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->nickname:Landroid/widget/TextView;

    .line 222
    const v1, 0x7f1001f2

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->email:Landroid/widget/TextView;

    .line 223
    const v1, 0x7f1001f4

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->point:Landroid/widget/TextView;

    .line 224
    const v1, 0x7f1000d6

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->progress:Landroid/widget/ProgressBar;

    .line 225
    const v1, 0x7f1001b9

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 227
    const v1, 0x7f1001ff

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->rv_item_list:Landroid/support/v7/widget/RecyclerView;

    .line 229
    const v1, 0x7f1001fb

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->rl_add_friend_layout:Landroid/widget/RelativeLayout;

    .line 230
    const v1, 0x7f1001fd

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->tv_close_add_friend_layout:Landroid/widget/TextView;

    .line 233
    const v1, 0x7f1001f5

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    .line 234
    const v1, 0x7f1001f6

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->rl_realtime_winner_info:Landroid/widget/RelativeLayout;

    .line 235
    const v1, 0x7f1001f9

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->tv_lotto_winner_msg:Landroid/widget/TextView;

    .line 236
    const v1, 0x7f1001f8

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->tv_lotto_winner_time:Landroid/widget/TextView;

    .line 237
    const v1, 0x7f1001f7

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->iv_lotto_winner_item_image:Landroid/widget/ImageView;

    .line 238
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/LottoActivity$3;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/LottoActivity$3;-><init>(Lcom/cashwalk/cashwalk/activity/LottoActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/LottoActivity$4;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/LottoActivity$4;-><init>(Lcom/cashwalk/cashwalk/activity/LottoActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 254
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "PROFILE_URL"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->profile:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 263
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->tv_close_add_friend_layout:Landroid/widget/TextView;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/LottoActivity$5;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/LottoActivity$5;-><init>(Lcom/cashwalk/cashwalk/activity/LottoActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->rl_add_friend_layout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/LottoActivity$6;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/LottoActivity$6;-><init>(Lcom/cashwalk/cashwalk/activity/LottoActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    return-void

    .line 259
    :cond_1
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->profile:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method private refreshLotto(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 181
    new-instance v1, Lcom/cashwalk/cashwalk/activity/LottoActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/cashwalk/cashwalk/activity/LottoActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/LottoActivity;I)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getLotto(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 214
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 215
    return-void
.end method

.method private setItemList(Ljava/util/ArrayList;I)V
    .locals 5
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Lotto;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Lotto;>;"
    const/4 v4, 0x0

    .line 137
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 138
    .local v1, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->rv_item_list:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 139
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->rv_item_list:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 140
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->rv_item_list:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 141
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->rv_item_list:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 143
    new-instance v2, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;

    invoke-direct {v2, p0, p1}, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->mLottoListAdapter:Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;

    .line 144
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->mLottoListAdapter:Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;

    invoke-virtual {v2, p0}, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;->setOnItemClickListener(Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$OnItemClickListener;)V

    .line 145
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->rv_item_list:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->mLottoListAdapter:Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 146
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->rv_item_list:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    .line 152
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->rv_item_list:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/cashwalk/cashwalk/activity/LottoActivity$1;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/LottoActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/LottoActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->mLottoListAdapter:Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;->notifyDataSetChanged()V

    .line 161
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->progress:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 164
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->winnerList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->winnerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->winnerUserList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->winnerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 170
    iput v4, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->ANMATION_COUNT:I

    .line 171
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->mAnimationHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 174
    :cond_2
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->getLottoWinnerList()V

    .line 175
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

    .line 350
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->mAnimationHandler:Landroid/os/Handler;

    .line 351
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 352
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 353
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->winnerArrayList:Ljava/util/ArrayList;

    .line 356
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->tv_lotto_winner_time:Landroid/widget/TextView;

    new-instance v5, Lorg/joda/time/DateTime;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;->created:Ljava/lang/String;

    invoke-direct {v5, v3}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v5}, Lcom/cashwalk/cashwalk/util/Utils;->getAgoString(Landroid/content/Context;Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v1, v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;->imageUrl:Ljava/lang/String;

    .line 358
    .local v1, "path":Ljava/lang/String;
    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 359
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    .line 360
    invoke-virtual {v3, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 361
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->iv_lotto_winner_item_image:Landroid/widget/ImageView;

    .line 362
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 371
    :goto_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->tv_lotto_winner_msg:Landroid/widget/TextView;

    const v3, 0x7f0901f0

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Winner;->nickname:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget v3, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->ANMATION_COUNT:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->ANMATION_COUNT:I

    .line 373
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 374
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    .line 376
    .local v2, "winner":Lcom/cashwalk/cashwalk/util/network/model/Winner;
    new-instance v3, Lcom/cashwalk/cashwalk/activity/LottoActivity$8;

    invoke-direct {v3, p0, v2, p1}, Lcom/cashwalk/cashwalk/activity/LottoActivity$8;-><init>(Lcom/cashwalk/cashwalk/activity/LottoActivity;Lcom/cashwalk/cashwalk/util/network/model/Winner;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 425
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->mAnimationHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    mul-int/lit16 v5, v0, 0x1388

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 364
    .end local v0    # "i":I
    .end local v2    # "winner":Lcom/cashwalk/cashwalk/util/network/model/Winner;
    :cond_0
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    .line 366
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v4

    .line 367
    invoke-virtual {v4, v1}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 365
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 368
    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->iv_lotto_winner_item_image:Landroid/widget/ImageView;

    .line 369
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 429
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->rl_realtime_winner_info_layout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 431
    :cond_2
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->finish()V

    .line 290
    const v0, 0x7f050017

    const v1, 0x7f050021

    invoke-virtual {p0, v0, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->overridePendingTransition(II)V

    .line 291
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v1, 0x7f04003c

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->setContentView(I)V

    .line 90
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x680080

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 95
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->pref:Landroid/content/SharedPreferences;

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->winnerUserList:Ljava/util/ArrayList;

    .line 98
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->initView()V

    .line 101
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    const-string v2, "lotto_enter"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/view/View;Lcom/cashwalk/cashwalk/util/network/model/Lotto;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "item"    # Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->winnerArrayList:Ljava/util/ArrayList;

    sput-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->winnerArrayList:Ljava/util/ArrayList;

    .line 322
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "lotto"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->startActivity(Landroid/content/Intent;)V

    .line 323
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 308
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 311
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->mAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 312
    iput v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->ANMATION_COUNT:I

    .line 313
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 314
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 317
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 295
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 297
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->nickname:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "NICKNAME"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->point:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "POINT"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->selectedItem:I

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->refreshLotto(I)V

    .line 301
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->point:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->point:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "POINT"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :cond_0
    return-void
.end method
