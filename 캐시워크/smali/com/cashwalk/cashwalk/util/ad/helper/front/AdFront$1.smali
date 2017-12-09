.class final Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront$1;
.super Ljava/lang/Object;
.source "AdFront.java"

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->showFacebookFrontAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$facebookFrontAD:Lcom/facebook/ads/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/facebook/ads/InterstitialAd;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront$1;->val$facebookFrontAD:Lcom/facebook/ads/InterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 164
    const-string v0, "TedAdHelper"

    const-string v1, "[FACEBOOK FRONT AD]Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;->onAdClicked(I)V

    .line 169
    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 3
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 140
    const-string v1, "TedAdHelper"

    const-string v2, "[FACEBOOK FRONT AD]Loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront$1;->val$facebookFrontAD:Lcom/facebook/ads/InterstitialAd;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront$1;->val$facebookFrontAD:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/facebook/ads/InterstitialAd;->show()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 157
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;->onLoaded(I)V

    .line 160
    :cond_1
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 148
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3
    .param p1, "ad"    # Lcom/facebook/ads/Ad;
    .param p2, "adError"    # Lcom/facebook/ads/AdError;

    .prologue
    .line 129
    const-string v0, "TedAdHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FACEBOOK FRONT AD]Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 131
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$200()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 120
    const-string v0, "TedAdHelper"

    const-string v1, "[FACEBOOK FRONT AD]Dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;->onDismissed(I)V

    .line 125
    :cond_0
    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 115
    const-string v0, "TedAdHelper"

    const-string v1, "[FACEBOOK FRONT AD]Displayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 174
    return-void
.end method
