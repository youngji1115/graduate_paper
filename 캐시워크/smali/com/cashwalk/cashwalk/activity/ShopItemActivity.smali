.class public Lcom/cashwalk/cashwalk/activity/ShopItemActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ShopItemActivity.java"


# instance fields
.field private brand:Landroid/widget/TextView;

.field private description:Landroid/widget/TextView;

.field private exchangeRate:F

.field private expire:Landroid/widget/TextView;

.field private id:Ljava/lang/String;

.field private image:Landroid/widget/ImageView;

.field private isLogin:Z

.field private isOpen:Z

.field private isSmsAuth:Z

.field private isTimeDelay:Z

.field private item:Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

.field private pref:Landroid/content/SharedPreferences;

.field private price:Landroid/widget/TextView;

.field private progress:Landroid/widget/ProgressBar;

.field private purchase:Landroid/widget/Button;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->isOpen:Z

    .line 55
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->isLogin:Z

    .line 56
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->isSmsAuth:Z

    .line 57
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->isTimeDelay:Z

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Lcom/cashwalk/cashwalk/util/network/model/ShopItem;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->item:Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    return-object v0
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;Lcom/cashwalk/cashwalk/util/network/model/ShopItem;)Lcom/cashwalk/cashwalk/util/network/model/ShopItem;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->item:Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getUser()V

    return-void
.end method

.method static synthetic access$1100(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->isLogin:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->isSmsAuth:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->purchaseItem()V

    return-void
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->brand:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    .prologue
    .line 39
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->exchangeRate:F

    return v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->price:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->expire:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->description:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->isOpen:Z

    return v0
.end method

.method private getUser()V
    .locals 2

    .prologue
    .line 334
    new-instance v1, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$6;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$6;-><init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getUser(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 379
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 380
    return-void
.end method

.method private purchaseItem()V
    .locals 7

    .prologue
    .line 166
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 167
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    iget-boolean v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->isLogin:Z

    if-nez v3, :cond_0

    .line 168
    iget-boolean v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->isSmsAuth:Z

    if-nez v3, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090279

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 170
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090101

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$3;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$3;-><init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090132

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$4;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$4;-><init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 331
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->item:Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    iget v3, v3, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->price:I

    int-to-float v3, v3

    iget v4, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->exchangeRate:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->pref:Landroid/content/SharedPreferences;

    const-string v5, "POINT"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-gt v3, v4, :cond_1

    .line 194
    new-instance v2, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->item:Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    iget v4, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->exchangeRate:F

    new-instance v5, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    invoke-direct {v5, p0, v0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;-><init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;Landroid/app/AlertDialog$Builder;)V

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;-><init>(Landroid/content/Context;Lcom/cashwalk/cashwalk/util/network/model/ShopItem;FLandroid/os/Handler;)V

    .line 321
    .local v2, "pd":Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;
    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;->show()V

    goto :goto_0

    .line 324
    .end local v2    # "pd":Lcom/cashwalk/cashwalk/dialog/PurchaseDialog;
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v3

    const-string v4, "shop_short"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_1
    new-instance v2, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;

    const-string v3, "shop"

    invoke-direct {v2, p0, v3}, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 329
    .local v2, "pd":Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;
    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;->show()V

    goto :goto_0

    .line 325
    .end local v2    # "pd":Lcom/cashwalk/cashwalk/dialog/PurchaseShortDialog;
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v2, 0x7f040049

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->setContentView(I)V

    .line 66
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->pref:Landroid/content/SharedPreferences;

    .line 67
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "PREFERENCE_SHOP_EXCHANGE_RATE"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->exchangeRate:F

    .line 69
    const v2, 0x7f10008f

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->image:Landroid/widget/ImageView;

    .line 70
    const v2, 0x7f100093

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->title:Landroid/widget/TextView;

    .line 71
    const v2, 0x7f100200

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->brand:Landroid/widget/TextView;

    .line 72
    const v2, 0x7f100201

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->price:Landroid/widget/TextView;

    .line 73
    const v2, 0x7f10027b

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->expire:Landroid/widget/TextView;

    .line 74
    const v2, 0x7f10027c

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->description:Landroid/widget/TextView;

    .line 75
    const v2, 0x7f100279

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->purchase:Landroid/widget/Button;

    .line 76
    const v2, 0x7f1000d6

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->progress:Landroid/widget/ProgressBar;

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->id:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isOpen"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->isOpen:Z

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#### ID => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->id:Ljava/lang/String;

    new-instance v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$1;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)V

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getShopItemDetail(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .line 109
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 111
    iget-boolean v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->isOpen:Z

    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->purchase:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09023b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->purchase:Landroid/widget/Button;

    new-instance v3, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .end local v1    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :goto_1
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->finish()V

    goto :goto_1

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->purchase:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09023c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
