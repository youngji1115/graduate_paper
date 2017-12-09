.class Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$3;
.super Ljava/lang/Object;
.source "AdNativeAdHolder.java"

# interfaces
.implements Lcom/tnkfactory/ad/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->loadTnkAD()V
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
    .line 302
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$3;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .prologue
    .line 323
    const-string v0, "TedAdHelper"

    const-string v1, "[TANK NATIVE AD]onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$3;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->onNativeAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$3;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->onNativeAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;->onAdClicked(I)V

    .line 328
    :cond_0
    return-void
.end method

.method public onFailure(I)V
    .locals 4
    .param p1, "errCode"    # I

    .prologue
    .line 307
    invoke-static {p1}, Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper;->getMessageFromTnkErrorCode(I)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "errorMessage":Ljava/lang/String;
    const-string v1, "TedAdHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TANK NATIVE AD]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$3;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    invoke-static {v1, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->access$000(Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public onLoad(Lcom/tnkfactory/ad/NativeAdItem;)V
    .locals 2
    .param p1, "adItem"    # Lcom/tnkfactory/ad/NativeAdItem;

    .prologue
    .line 314
    const-string v0, "TedAdHelper"

    const-string v1, "[TANK NATIVE AD]onLoad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$3;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    invoke-static {v0, p1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->access$100(Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;Lcom/tnkfactory/ad/NativeAdItem;)V

    .line 316
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$3;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->onNativeAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder$3;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/AdNativeAdHolder;->onNativeAdListener:Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;->onLoaded(I)V

    .line 319
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 332
    const-string v0, "TedAdHelper"

    const-string v1, "[TANK NATIVE AD]onShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void
.end method
