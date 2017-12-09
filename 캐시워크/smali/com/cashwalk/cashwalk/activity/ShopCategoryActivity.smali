.class public Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ShopCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;

.field private brandList:Landroid/widget/LinearLayout;

.field private category:Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;

.field private exchangeRate:F

.field private isOpen:Z

.field private li:Landroid/view/LayoutInflater;

.field private listView:Lde/halfbit/pinnedsection/PinnedSectionListView;

.field private nickname:Landroid/widget/TextView;

.field private point:Landroid/widget/TextView;

.field private pref:Landroid/content/SharedPreferences;

.field private profile:Landroid/widget/ImageView;

.field private progress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->isOpen:Z

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;)Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->adapter:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;)Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->adapter:Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$ListAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;)Lde/halfbit/pinnedsection/PinnedSectionListView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->listView:Lde/halfbit/pinnedsection/PinnedSectionListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    .prologue
    .line 42
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->exchangeRate:F

    return v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->isOpen:Z

    return v0
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 135
    const v1, 0x7f100200

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->brandList:Landroid/widget/LinearLayout;

    .line 136
    const v1, 0x7f1001ba

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/halfbit/pinnedsection/PinnedSectionListView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->listView:Lde/halfbit/pinnedsection/PinnedSectionListView;

    .line 137
    const v1, 0x7f1001f0

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->profile:Landroid/widget/ImageView;

    .line 138
    const v1, 0x7f1001f1

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->nickname:Landroid/widget/TextView;

    .line 139
    const v1, 0x7f1001f4

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->point:Landroid/widget/TextView;

    .line 140
    const v1, 0x7f1000d6

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->progress:Landroid/widget/ProgressBar;

    .line 142
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->listView:Lde/halfbit/pinnedsection/PinnedSectionListView;

    invoke-virtual {v1, v4}, Lde/halfbit/pinnedsection/PinnedSectionListView;->setShadowVisible(Z)V

    .line 144
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "PROFILE_URL"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->profile:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 153
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->nickname:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "NICKNAME"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->point:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "POINT"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void

    .line 149
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

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->profile:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method private refreshShopList()V
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->category:Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;->id:Ljava/lang/String;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;)V

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getShopItemList(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 131
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 132
    return-void
.end method

.method private showBrandList()V
    .locals 8

    .prologue
    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->category:Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;->brandList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 92
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->li:Landroid/view/LayoutInflater;

    const v6, 0x7f040069

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 94
    .local v4, "v":Landroid/view/View;
    const v5, 0x7f10008f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 95
    .local v1, "image":Landroid/widget/ImageView;
    const v5, 0x7f100093

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 97
    .local v3, "title":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->category:Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;->brandList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/util/network/model/ShopBrand;

    .line 99
    .local v2, "item":Lcom/cashwalk/cashwalk/util/network/model/ShopBrand;
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    iget-object v6, v2, Lcom/cashwalk/cashwalk/util/network/model/ShopBrand;->imageUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    const v6, 0x7f0201c1

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 100
    iget-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/ShopBrand;->title:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    new-instance v5, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$1;

    invoke-direct {v5, p0, v2}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;Lcom/cashwalk/cashwalk/util/network/model/ShopBrand;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->brandList:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "image":Landroid/widget/ImageView;
    .end local v2    # "item":Lcom/cashwalk/cashwalk/util/network/model/ShopBrand;
    .end local v3    # "title":Landroid/widget/TextView;
    .end local v4    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->finish()V

    .line 160
    const v0, 0x7f050017

    const v1, 0x7f050021

    invoke-virtual {p0, v0, v1}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->overridePendingTransition(II)V

    .line 161
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v1, 0x7f040048

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->setContentView(I)V

    .line 65
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->pref:Landroid/content/SharedPreferences;

    .line 66
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "PREFERENCE_SHOP_EXCHANGE_RATE"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->exchangeRate:F

    .line 68
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x680080

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 73
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->pref:Landroid/content/SharedPreferences;

    .line 74
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->li:Landroid/view/LayoutInflater;

    .line 76
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 77
    .local v0, "it":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 78
    const-string v1, "category"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->category:Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;

    .line 79
    const-string v1, "isOpen"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->isOpen:Z

    .line 84
    :goto_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->initView()V

    .line 85
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->showBrandList()V

    .line 86
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->refreshShopList()V

    .line 87
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->finish()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 175
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 165
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 167
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->point:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->point:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopCategoryActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "POINT"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_0
    return-void
.end method
