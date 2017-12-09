.class Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$4;
.super Ljava/lang/Object;
.source "AdNativeAdHolder.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->loadFacebookAD()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$4;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 433
    const-string v0, "TedAdHelper"

    const-string v1, "[FACEBOOK NATIVE AD]Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$4;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->onNativeAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$4;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->onNativeAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;->onAdClicked(I)V

    .line 438
    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 422
    const-string v0, "TedAdHelper"

    const-string v1, "[FACEBOOK NATIVE AD]Loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$4;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    invoke-static {v0, p1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->access$200(Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;Lcom/facebook/ads/Ad;)V

    .line 425
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$4;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->onNativeAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$4;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->onNativeAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;->onLoaded(I)V

    .line 429
    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3
    .param p1, "ad"    # Lcom/facebook/ads/Ad;
    .param p2, "error"    # Lcom/facebook/ads/AdError;

    .prologue
    .line 416
    const-string v0, "TedAdHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FACEBOOK NATIVE AD]Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$4;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->access$000(Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 443
    return-void
.end method
