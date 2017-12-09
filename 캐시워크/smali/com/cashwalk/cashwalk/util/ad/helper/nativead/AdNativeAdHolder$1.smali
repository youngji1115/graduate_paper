.class Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdNativeAdHolder.java"


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


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$1;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 234
    invoke-static {p1}, Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper;->getMessageFromAdmobErrorCode(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "errorMessage":Ljava/lang/String;
    const-string v1, "TedAdHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ADMOB NATIVE AD]errorMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$1;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    invoke-static {v1, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->access$000(Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 218
    const-string v0, "TedAdHelper"

    const-string v1, "[ADMOB NATIVE AD]Loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$1;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->view_container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$1;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->progressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$1;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->onNativeAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$1;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->onNativeAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;->onLoaded(I)V

    .line 227
    :cond_0
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 241
    const-string v0, "TedAdHelper"

    const-string v1, "[ADMOB NATIVE AD]Opend"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 243
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$1;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->onNativeAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$1;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->onNativeAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;->onAdClicked(I)V

    .line 246
    :cond_0
    return-void
.end method
