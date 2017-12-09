.class final Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront$3;
.super Ljava/lang/Object;
.source "AdFront.java"

# interfaces
.implements Lcom/tnkfactory/ad/TnkAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->showTnkFrontAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 240
    const-string v0, "TedAdHelper"

    const-string v1, "[TNK FRONT AD]onClose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;->onDismissed(I)V

    .line 244
    :cond_0
    return-void
.end method

.method public onFailure(I)V
    .locals 4
    .param p1, "errCode"    # I

    .prologue
    .line 248
    invoke-static {p1}, Lcom/cashwalk/cashwalk/util/ad/helper/AdHelper;->getMessageFromTnkErrorCode(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "errorMessage":Ljava/lang/String;
    const-string v1, "TedAdHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TANK FRONT AD]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 251
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$200()V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 253
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoad()V
    .locals 2

    .prologue
    .line 259
    const-string v0, "TedAdHelper"

    const-string v1, "[TNK FRONT AD]onLoad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$300()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/TnkSession;->showInterstitialAd(Landroid/app/Activity;)V

    .line 261
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/front/AdFront;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/util/ad/helper/front/OnFrontAdListener;->onLoaded(I)V

    .line 265
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 269
    const-string v0, "TedAdHelper"

    const-string v1, "[TNK FRONT AD]onShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method
