.class Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$2;
.super Ljava/lang/Object;
.source "AdNativeAdHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->loadAdmobExpressAD()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

.field final synthetic val$admobExpressAdView:Lcom/google/android/gms/ads/NativeExpressAdView;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;Lcom/google/android/gms/ads/NativeExpressAdView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$2;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$2;->val$admobExpressAdView:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 254
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$2;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$2;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->container_admob_express:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/cashwalk/cashwalk/util/Utils;->pxToDp(Landroid/content/Context;I)I

    move-result v2

    .line 257
    .local v2, "realWidth":I
    mul-int/lit16 v4, v2, 0x140

    div-int/lit16 v1, v4, 0x168

    .line 258
    .local v1, "realHeight":I
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$2;->val$admobExpressAdView:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/NativeExpressAdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 259
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$2;->val$admobExpressAdView:Lcom/google/android/gms/ads/NativeExpressAdView;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$2;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->admob_ad_key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/NativeExpressAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 262
    :cond_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$2;->val$admobExpressAdView:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/NativeExpressAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v4

    if-nez v4, :cond_1

    .line 263
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$2;->val$admobExpressAdView:Lcom/google/android/gms/ads/NativeExpressAdView;

    new-instance v5, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v5, v2, v1}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/NativeExpressAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 269
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$2;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->container_admob_express:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 270
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$2;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->container_admob_express:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/google/android/gms/ads/NativeExpressAdView;

    if-eqz v4, :cond_2

    .line 271
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$2;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->container_admob_express:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/ads/NativeExpressAdView;

    .line 272
    .local v3, "temp":Lcom/google/android/gms/ads/NativeExpressAdView;
    invoke-virtual {v3}, Lcom/google/android/gms/ads/NativeExpressAdView;->destroy()V

    .line 269
    .end local v3    # "temp":Lcom/google/android/gms/ads/NativeExpressAdView;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_3
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$2;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->container_admob_express:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 276
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$2;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->container_admob_express:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$2;->val$admobExpressAdView:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 279
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$2;->val$admobExpressAdView:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper;->getAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/NativeExpressAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 281
    return-void
.end method
