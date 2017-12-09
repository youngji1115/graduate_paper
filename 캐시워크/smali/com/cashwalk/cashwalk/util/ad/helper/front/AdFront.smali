.class public Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;
.super Ljava/lang/Object;
.source "AdFront.java"


# static fields
.field private static activity:Landroid/app/Activity;

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

.field private static facebookKey:Ljava/lang/String;

.field private static onFrontAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->onFrontAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->adPriorityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 16
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->selectAd()V

    return-void
.end method

.method static synthetic access$300()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private static selectAd()V
    .locals 3

    .prologue
    .line 74
    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->adPriorityList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 75
    .local v0, "adPriority":I
    packed-switch v0, :pswitch_data_0

    .line 86
    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->onFrontAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    const-string v2, "You have to select priority type ADMOB or FACEBOOK"

    invoke-interface {v1, v2}, Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;->onError(Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 77
    :pswitch_0
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->showFacebookFrontAd()V

    goto :goto_0

    .line 80
    :pswitch_1
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->showAdmobFrontAd()V

    goto :goto_0

    .line 83
    :pswitch_2
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->showTnkFrontAd()V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static showAdmobFrontAd()V
    .locals 2

    .prologue
    .line 186
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    .line 187
    .local v0, "admobFrontAD":Lcom/google/android/gms/ads/InterstitialAd;
    new-instance v1, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront$2;

    invoke-direct {v1, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront$2;-><init>(Lcom/google/android/gms/ads/InterstitialAd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 230
    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->admobKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper;->getAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 233
    return-void
.end method

.method public static showAdmobFrontAd(Landroid/app/Activity;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "admobKey"    # Ljava/lang/String;
    .param p2, "onFrontAdListener"    # Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    .prologue
    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, p1, v1, p2}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->showFrontAD(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;)V

    .line 32
    return-void
.end method

.method private static showFacebookFrontAd()V
    .locals 3

    .prologue
    .line 92
    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper;->isSkipFacebookAd(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    const-string v1, "TedAdHelper"

    const-string v2, "[FACEBOOK FRONT AD]Error: Facebook app not installed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->adPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 96
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->selectAd()V

    .line 181
    .local v0, "facebookFrontAD":Lcom/facebook/ads/InterstitialAd;
    :cond_0
    :goto_0
    return-void

    .line 97
    .end local v0    # "facebookFrontAD":Lcom/facebook/ads/InterstitialAd;
    :cond_1
    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->onFrontAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->onFrontAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    const-string v2, "Facebook app not installed"

    invoke-interface {v1, v2}, Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_2
    new-instance v0, Lcom/facebook/ads/InterstitialAd;

    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->activity:Landroid/app/Activity;

    sget-object v2, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->facebookKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    .restart local v0    # "facebookFrontAD":Lcom/facebook/ads/InterstitialAd;
    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->onFrontAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    if-eqz v1, :cond_3

    .line 106
    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->onFrontAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    invoke-interface {v1, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;->onFacebookAdCreated(Lcom/facebook/ads/InterstitialAd;)V

    .line 111
    :cond_3
    new-instance v1, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront$1;

    invoke-direct {v1, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront$1;-><init>(Lcom/facebook/ads/InterstitialAd;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/InterstitialAd;->setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 178
    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->loadAd()V

    goto :goto_0
.end method

.method public static showFacebookFrontAd(Landroid/app/Activity;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "facebookKey"    # Ljava/lang/String;
    .param p2, "onFrontAdListener"    # Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    .prologue
    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->showFrontAD(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;)V

    .line 28
    return-void
.end method

.method public static showFrontAD(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "facebookKey"    # Ljava/lang/String;
    .param p2, "admobKey"    # Ljava/lang/String;
    .param p3, "adPriority"    # I
    .param p4, "onFrontAdListener"    # Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

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

    .line 43
    :goto_0
    invoke-static {p0, p1, p2, v0, p4}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->showFrontAD(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;)V

    .line 44
    return-void

    .line 40
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public static showFrontAD(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Integer;Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "facebookKey"    # Ljava/lang/String;
    .param p2, "admobKey"    # Ljava/lang/String;
    .param p3, "tempAdPriorityList"    # [Ljava/lang/Integer;
    .param p4, "onFrontAdListener"    # Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    .prologue
    .line 47
    if-eqz p3, :cond_0

    array-length v1, p3

    if-nez v1, :cond_1

    .line 48
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "You have to select priority type ADMOB/FACEBOOK/TNK"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->adPriorityList:Ljava/util/ArrayList;

    .line 57
    :try_start_0
    sput-object p0, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->activity:Landroid/app/Activity;

    .line 58
    sput-object p1, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->facebookKey:Ljava/lang/String;

    .line 59
    sput-object p2, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->admobKey:Ljava/lang/String;

    .line 60
    sput-object p4, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->onFrontAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    .line 62
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->selectAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_2
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    if-eqz p4, :cond_2

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static showTnkFrontAd()V
    .locals 3

    .prologue
    .line 236
    sget-object v0, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->activity:Landroid/app/Activity;

    const-string v1, "__tnk_cpc__"

    new-instance v2, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront$3;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront$3;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/tnkfactory/ad/TnkSession;->prepareInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;)V

    .line 273
    return-void
.end method
