.class final Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner$1;
.super Ljava/lang/Object;
.source "AdBanner.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->showFacebookBanner(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$facebookBanner:Lcom/facebook/ads/AdView;

.field final synthetic val$failToAdmob:Z


# direct methods
.method constructor <init>(ZLcom/facebook/ads/AdView;)V
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner$1;->val$failToAdmob:Z

    iput-object p2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner$1;->val$facebookBanner:Lcom/facebook/ads/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 143
    const-string v0, "TedAdHelper"

    const-string v1, "[FACEBOOK BANNER]Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->access$100()Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->access$100()Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;->onAdClicked(I)V

    .line 147
    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 3
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 125
    const-string v1, "TedAdHelper"

    const-string v2, "[FACEBOOK BANNER]Loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->access$200()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 127
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner$1;->val$facebookBanner:Lcom/facebook/ads/AdView;

    invoke-virtual {v1}, Lcom/facebook/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 128
    .local v0, "parentView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 132
    :cond_0
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->access$200()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner$1;->val$facebookBanner:Lcom/facebook/ads/AdView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 134
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->access$100()Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 135
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->access$100()Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;->onLoaded(I)V

    .line 139
    :cond_1
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3
    .param p1, "ad"    # Lcom/facebook/ads/Ad;
    .param p2, "adError"    # Lcom/facebook/ads/AdError;

    .prologue
    .line 113
    const-string v0, "TedAdHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FACEBOOK BANNER]Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner$1;->val$failToAdmob:Z

    if-eqz v0, :cond_1

    .line 115
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->access$000(Z)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->access$100()Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->access$100()Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 152
    return-void
.end method
