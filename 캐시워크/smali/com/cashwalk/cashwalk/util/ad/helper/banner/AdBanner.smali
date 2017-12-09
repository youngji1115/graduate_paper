.class public Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;
.super Ljava/lang/Object;
.source "AdBanner.java"


# static fields
.field private static adPriorityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static admobKey:Ljava/lang/String;

.field private static bannerContainer:Landroid/view/ViewGroup;

.field private static facebookKey:Ljava/lang/String;

.field private static onBannerAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 18
    invoke-static {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->showAdmobBanner(Z)V

    return-void
.end method

.method static synthetic access$100()Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->onBannerAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    return-object v0
.end method

.method static synthetic access$200()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->bannerContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 18
    invoke-static {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->showFacebookBanner(Z)V

    return-void
.end method

.method private static selectAd()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 71
    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->adPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 72
    .local v0, "adPriority":I
    packed-switch v0, :pswitch_data_0

    .line 83
    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->onBannerAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    const-string v2, "You have to select priority type ADMOB or FACEBOOK"

    invoke-interface {v1, v2}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;->onError(Ljava/lang/String;)V

    .line 86
    :goto_0
    return-void

    .line 74
    :pswitch_0
    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->admobKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->showFacebookBanner(Z)V

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    .line 77
    :pswitch_1
    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->facebookKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_2
    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->showAdmobBanner(Z)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_2

    .line 80
    :pswitch_2
    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->onBannerAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    const-string v2, "TNK can not load banner"

    invoke-interface {v1, v2}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static showAdmobBanner(Landroid/view/ViewGroup;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;)V
    .locals 2
    .param p0, "bannerContainer"    # Landroid/view/ViewGroup;
    .param p1, "admobKey"    # Ljava/lang/String;
    .param p2, "onBannerAdListener"    # Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    .prologue
    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, p1, v1, p2}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->showBanner(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ILcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;)V

    .line 32
    return-void
.end method

.method private static showAdmobBanner(Z)V
    .locals 2
    .param p0, "failToFacebook"    # Z

    .prologue
    .line 160
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->bannerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 161
    .local v0, "admobBanner":Lcom/google/android/gms/ads/AdView;
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 162
    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->admobKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper;->getAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 166
    new-instance v1, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner$2;

    invoke-direct {v1, p0, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner$2;-><init>(ZLcom/google/android/gms/ads/AdView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 208
    return-void
.end method

.method public static showBanner(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ILcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;)V
    .locals 5
    .param p0, "bannerContainer"    # Landroid/view/ViewGroup;
    .param p1, "facebookKey"    # Ljava/lang/String;
    .param p2, "admobKey"    # Ljava/lang/String;
    .param p3, "adPriority"    # I
    .param p4, "onBannerAdListener"    # Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 35
    new-array v0, v4, [Ljava/lang/Integer;

    .line 36
    .local v0, "tempAdPriorityList":[Ljava/lang/Integer;
    const/4 v1, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 37
    if-ne p3, v3, :cond_0

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 42
    :goto_0
    invoke-static {p0, p1, p2, v0, p4}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->showBanner(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;)V

    .line 43
    return-void

    .line 40
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public static showBanner(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;)V
    .locals 3
    .param p0, "bannerContainer"    # Landroid/view/ViewGroup;
    .param p1, "facebookKey"    # Ljava/lang/String;
    .param p2, "admobKey"    # Ljava/lang/String;
    .param p3, "tempAdPriorityList"    # [Ljava/lang/Integer;
    .param p4, "onBannerAdListener"    # Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    .prologue
    .line 48
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->adPriorityList:Ljava/util/ArrayList;

    .line 49
    sput-object p1, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->facebookKey:Ljava/lang/String;

    .line 50
    sput-object p2, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->admobKey:Ljava/lang/String;

    .line 51
    sput-object p4, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->onBannerAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    .line 52
    sput-object p0, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->bannerContainer:Landroid/view/ViewGroup;

    .line 54
    if-nez p0, :cond_1

    .line 55
    const-string v1, "BannerContainer can not null"

    invoke-interface {p4, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;->onError(Ljava/lang/String;)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->selectAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p4, :cond_0

    .line 64
    const-string v1, ""

    invoke-interface {p4, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showFacebookBanner(Landroid/view/ViewGroup;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;)V
    .locals 2
    .param p0, "bannerContainer"    # Landroid/view/ViewGroup;
    .param p1, "facebookKey"    # Ljava/lang/String;
    .param p2, "onBannerAdListener"    # Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    .prologue
    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->showBanner(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ILcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;)V

    .line 28
    return-void
.end method

.method private static showFacebookBanner(Z)V
    .locals 4
    .param p0, "failToAdmob"    # Z

    .prologue
    .line 91
    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->bannerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper;->isSkipFacebookAd(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    const-string v1, "TedAdHelper"

    const-string v2, "[FACEBOOK BANNER]Error: Facebook app not installed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v1, "TedAdHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failToAdmob: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-eqz p0, :cond_1

    .line 96
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->showAdmobBanner(Z)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->onBannerAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->onBannerAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    const-string v2, "Facebook app not installed"

    invoke-interface {v1, v2}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_2
    new-instance v0, Lcom/facebook/ads/AdView;

    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->bannerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->facebookKey:Ljava/lang/String;

    sget-object v3, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    .line 106
    .local v0, "facebookBanner":Lcom/facebook/ads/AdView;
    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->onBannerAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    if-eqz v1, :cond_3

    .line 107
    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->onBannerAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    invoke-interface {v1, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;->onFacebookAdCreated(Lcom/facebook/ads/AdView;)V

    .line 110
    :cond_3
    new-instance v1, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner$1;

    invoke-direct {v1, p0, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner$1;-><init>(ZLcom/facebook/ads/AdView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/AdView;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 155
    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->loadAd()V

    goto :goto_0
.end method
