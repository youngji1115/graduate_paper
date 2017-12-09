.class final Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner$2;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->showAdmobBanner(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$admobBanner:Lcom/google/android/gms/ads/AdView;

.field final synthetic val$failToFacebook:Z


# direct methods
.method constructor <init>(ZLcom/google/android/gms/ads/AdView;)V
    .locals 0

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner$2;->val$failToFacebook:Z

    iput-object p2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner$2;->val$admobBanner:Lcom/google/android/gms/ads/AdView;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 169
    invoke-static {p1}, Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper;->getMessageFromAdmobErrorCode(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "errorMessage":Ljava/lang/String;
    const-string v1, "TedAdHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ADMOB BANNER]Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-boolean v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner$2;->val$failToFacebook:Z

    if-eqz v1, :cond_1

    .line 173
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->access$300(Z)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->access$100()Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->access$100()Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAdLeftApplication()V
    .locals 2

    .prologue
    .line 198
    const-string v0, "TedAdHelper"

    const-string v1, "[ADMOB BANNER]Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    .line 200
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->access$100()Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->access$100()Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;->onAdClicked(I)V

    .line 203
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .prologue
    .line 183
    const-string v1, "TedAdHelper"

    const-string v2, "[ADMOB BANNER]Loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->access$200()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 185
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner$2;->val$admobBanner:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 186
    .local v0, "parentView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 189
    :cond_0
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->access$200()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner$2;->val$admobBanner:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 191
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->access$100()Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 192
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/AdBanner;->access$100()Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/cashwalk/cashwalk/util/ad/helper/banner/OnBannerAdListener;->onLoaded(I)V

    .line 194
    :cond_1
    return-void
.end method
