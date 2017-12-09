.class public Lcom/cashwalk/cashwalk/activity/ShopActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ShopActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$OnItemClickListener;


# instance fields
.field private adapter:Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;

.field private email:Landroid/widget/TextView;

.field private isOpen:Z

.field private iv_top_banner_image:Landroid/widget/ImageView;

.field private nickname:Landroid/widget/TextView;

.field private point:Landroid/widget/TextView;

.field private pref:Landroid/content/SharedPreferences;

.field private profile:Landroid/widget/ImageView;

.field private progress:Landroid/widget/ProgressBar;

.field private rl_ad_banner:Landroid/widget/RelativeLayout;

.field private rl_lotto_winner_layout:Landroid/widget/RelativeLayout;

.field private rl_total_point_layout:Landroid/widget/RelativeLayout;

.field private rv_item_list:Landroid/support/v7/widget/RecyclerView;

.field private tv_lotto_winner_realtime_list:Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;

.field private tv_use_ad_point:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->isOpen:Z

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->rl_total_point_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->tv_use_ad_point:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/cashwalk/cashwalk/activity/ShopActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->isOpen:Z

    return p1
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->adapter:Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/cashwalk/cashwalk/activity/ShopActivity;Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;)Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopActivity;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->adapter:Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->rv_item_list:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->rl_lotto_winner_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->tv_lotto_winner_realtime_list:Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;

    return-object v0
.end method

.method private getLottoWinnerList()V
    .locals 2

    .prologue
    .line 251
    new-instance v1, Lcom/cashwalk/cashwalk/activity/ShopActivity$7;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/ShopActivity$7;-><init>(Lcom/cashwalk/cashwalk/activity/ShopActivity;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getLottoWinnerList(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 285
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 286
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 172
    const v1, 0x7f1001ff

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->rv_item_list:Landroid/support/v7/widget/RecyclerView;

    .line 173
    const v1, 0x7f1001f0

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->profile:Landroid/widget/ImageView;

    .line 174
    const v1, 0x7f1001f1

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->nickname:Landroid/widget/TextView;

    .line 175
    const v1, 0x7f1001f2

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->email:Landroid/widget/TextView;

    .line 176
    const v1, 0x7f1001f4

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->point:Landroid/widget/TextView;

    .line 177
    const v1, 0x7f1000d6

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->progress:Landroid/widget/ProgressBar;

    .line 178
    const v1, 0x7f1001ee

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->rl_ad_banner:Landroid/widget/RelativeLayout;

    .line 179
    const v1, 0x7f100270

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->iv_top_banner_image:Landroid/widget/ImageView;

    .line 180
    const v1, 0x7f100274

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->tv_lotto_winner_realtime_list:Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;

    .line 181
    const v1, 0x7f100271

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->rl_lotto_winner_layout:Landroid/widget/RelativeLayout;

    .line 182
    const v1, 0x7f100275

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->rl_total_point_layout:Landroid/widget/RelativeLayout;

    .line 183
    const v1, 0x7f100277

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->tv_use_ad_point:Landroid/widget/TextView;

    .line 185
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->rl_total_point_layout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/ShopActivity$4;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/ShopActivity$4;-><init>(Lcom/cashwalk/cashwalk/activity/ShopActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->rl_lotto_winner_layout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/ShopActivity$5;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/ShopActivity$5;-><init>(Lcom/cashwalk/cashwalk/activity/ShopActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->tv_lotto_winner_realtime_list:Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/ShopActivity$6;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/ShopActivity$6;-><init>(Lcom/cashwalk/cashwalk/activity/ShopActivity;)V

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 210
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "PROFILE_URL"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->profile:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 219
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->nickname:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "NICKNAME"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->point:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "POINT"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    return-void

    .line 215
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

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->profile:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method private refreshShopList()V
    .locals 2

    .prologue
    .line 116
    new-instance v1, Lcom/cashwalk/cashwalk/activity/ShopActivity$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/ShopActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/ShopActivity;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getShopCategory(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 148
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 149
    return-void
.end method

.method private shopOpen(Z)V
    .locals 3
    .param p1, "status"    # Z

    .prologue
    .line 153
    if-eqz p1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->rl_ad_banner:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 169
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->rl_ad_banner:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 158
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09027a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 160
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/activity/ShopActivity$3;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/ShopActivity$3;-><init>(Lcom/cashwalk/cashwalk/activity/ShopActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 166
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->finish()V

    .line 226
    const v0, 0x7f050017

    const v1, 0x7f050021

    invoke-virtual {p0, v0, v1}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->overridePendingTransition(II)V

    .line 227
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v1, 0x7f040047

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x680080

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 80
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->pref:Landroid/content/SharedPreferences;

    .line 82
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->initView()V

    .line 83
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->refreshShopList()V

    .line 85
    invoke-static {p0}, Lcom/cashwalk/cashwalk/util/Utils;->getDeviceUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tnkfactory/ad/TnkSession;->setUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    const/4 v1, 0x1

    new-instance v2, Lcom/cashwalk/cashwalk/activity/ShopActivity$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/ShopActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/ShopActivity;)V

    invoke-static {p0, v1, v2}, Lcom/tnkfactory/ad/TnkSession;->queryAdvertiseCount(Landroid/content/Context;ZLcom/tnkfactory/ad/ServiceCallback;)V

    .line 109
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    const-string v2, "shop_enter"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/view/View;Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "item"    # Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;

    .prologue
    .line 247
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "category"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isOpen"

    iget-boolean v2, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->isOpen:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->startActivity(Landroid/content/Intent;)V

    .line 248
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 242
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 243
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 231
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 233
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->point:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->point:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "POINT"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->getLottoWinnerList()V

    .line 238
    return-void
.end method
