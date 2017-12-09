.class public Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper;
.super Ljava/lang/Object;
.source "AdHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper$ImageProvider;
    }
.end annotation


# static fields
.field public static final AD_ADMOB:I = 0x2

.field public static final AD_FACEBOOK:I = 0x1

.field public static final AD_TNK:I = 0x3

.field public static final TAG:Ljava/lang/String; = "TedAdHelper"

.field private static admobDeviceId:Ljava/lang/String;

.field private static onlyFacebookInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper;->onlyFacebookInstalled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method public static getAdRequest()Lcom/google/android/gms/ads/AdRequest;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 42
    .local v0, "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper;->admobDeviceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    sget-object v1, Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper;->admobDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 47
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    return-object v1
.end method

.method public static getMessageFromAdmobErrorCode(I)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 58
    packed-switch p0, :pswitch_data_0

    .line 72
    const-string v0, ""

    :goto_0
    return-object v0

    .line 60
    :pswitch_0
    const-string v0, "an invalid response was received from the ad server"

    goto :goto_0

    .line 63
    :pswitch_1
    const-string v0, "ad unit ID was incorrect"

    goto :goto_0

    .line 66
    :pswitch_2
    const-string v0, "The ad request was unsuccessful due to network connectivity"

    goto :goto_0

    .line 69
    :pswitch_3
    const-string v0, "The ad request was successful, but no ad was returned due to lack of ad inventory"

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getMessageFromTnkErrorCode(I)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 78
    packed-switch p0, :pswitch_data_0

    .line 92
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 80
    :pswitch_1
    const-string/jumbo v0, "\uc81c\uacf5\ud560 \uad11\uace0\uac00 \uc5c6\uc744 \uacbd\uc6b0 \ub610\ub294 \ud574\ub2f9 \uad11\uace0\uc571\uc774 \uc774\ubbf8 \uc0ac\uc6a9\uc790 \ub2e8\ub9d0\uae30\uc5d0 \uc124\uce58\ub418\uc5b4 \uc788\ub294 \uacbd\uc6b0\uc785\ub2c8\ub2e4."

    goto :goto_0

    .line 82
    :pswitch_2
    const-string/jumbo v0, "\uad11\uace0\ub97c \uac00\uc838\uc654\uc73c\ub098 \uc804\uba74 \uc774\ubbf8\uc9c0 \uc815\ubcf4\uac00 \uc5c6\ub294 \uacbd\uc6b0\uc785\ub2c8\ub2e4."

    goto :goto_0

    .line 84
    :pswitch_3
    const-string v0, "showInterstitialAd() \ud638\ucd9c \ud6c4 \uc9c0\uc815\ub41c timeoout\uc2dc\uac04 (\uae30\ubcf8\uac12 5\ucd08) \uc774\ub0b4\uc5d0 \uc804\uba74\uad11\uace0\uac00 \ub3c4\ucc29\ud558\uc9c0 \uc54a\uc740 \uacbd\uc6b0\uc785\ub2c8\ub2e4. \uc774 \uacbd\uc6b0\uc5d0\ub294 \uc804\uba74\uad11\uace0\ub97c \ub744\uc6b0\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    goto :goto_0

    .line 86
    :pswitch_4
    const-string v0, "prepareInterstitialAd() \ud638\ucd9c\ud558\uc600\uc73c\ub098 \uc11c\ubc84\uc5d0\uc11c \uc124\uc815\ud55c \uad11\uace0 \ub178\ucd9c \uc8fc\uae30\ub97c \uc9c0\ub098\uc9c0 \uc54a\uc544 \ucde8\uc18c\ub41c \uacbd\uc6b0\uc785\ub2c8\ub2e4."

    goto :goto_0

    .line 88
    :pswitch_5
    const-string v0, "prepareInterstitialAd()\ub97c \ud638\ucd9c\ud558\uc9c0 \uc54a\uace0 showInterstitialAd()\ub97c \ud638\ucd9c\ud55c \uacbd\uc6b0\uc785\ub2c8\ub2e4."

    goto :goto_0

    .line 90
    :pswitch_6
    const-string v0, "prepareInterstitialAd()\ub97c \ud638\ucd9c\ud558\uc9c0 \uc54a\uace0 showInterstitialAd()\ub97c \ud638\ucd9c\ud55c \uacbd\uc6b0\uc785\ub2c8\ub2e4."

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static isSkipFacebookAd(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-boolean v0, Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper;->onlyFacebookInstalled:Z

    if-eqz v0, :cond_0

    const-string v0, "com.facebook.katana"

    invoke-static {p0, v0}, Lcom/cashwalk/cashwalk/util/Utils;->isExistApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAdmobTestDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p0, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 31
    sput-object p0, Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper;->admobDeviceId:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static setFacebookTestDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p0, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/facebook/ads/AdSettings;->addTestDevice(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static setTestDeviceId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "facebookDeviceId"    # Ljava/lang/String;
    .param p1, "admobDeviceId"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p0}, Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper;->setFacebookTestDeviceId(Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper;->setAdmobTestDeviceId(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static showAdOnlyFacebookInstalledUser(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 35
    sput-boolean p0, Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper;->onlyFacebookInstalled:Z

    .line 37
    return-void
.end method
