.class final Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront$2;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdFront.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->showAdmobFrontAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$admobFrontAD:Lcom/google/android/gms/ads/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/InterstitialAd;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront$2;->val$admobFrontAD:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 190
    const-string v0, "TedAdHelper"

    const-string v1, "[ADMOB FRONT AD]Dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;->onDismissed(I)V

    .line 195
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 199
    invoke-static {p1}, Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper;->getMessageFromAdmobErrorCode(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "errorMessage":Ljava/lang/String;
    const-string v1, "TedAdHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ADMOB FRONT AD]Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 203
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$200()V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAdLeftApplication()V
    .locals 2

    .prologue
    .line 222
    const-string v0, "TedAdHelper"

    const-string v1, "[ADMOB FRONT AD]Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    .line 224
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;->onAdClicked(I)V

    .line 227
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 211
    const-string v0, "TedAdHelper"

    const-string v1, "[ADMOB FRONT AD]Loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront$2;->val$admobFrontAD:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 214
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;->onLoaded(I)V

    .line 217
    :cond_0
    return-void
.end method
