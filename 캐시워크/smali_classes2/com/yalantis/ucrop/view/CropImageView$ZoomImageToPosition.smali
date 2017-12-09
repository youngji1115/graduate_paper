.class Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/view/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZoomImageToPosition"
.end annotation


# instance fields
.field private final mCropImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yalantis/ucrop/view/CropImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeltaScale:F

.field private final mDestX:F

.field private final mDestY:F

.field private final mDurationMs:J

.field private final mOldScale:F

.field private final mStartTime:J


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/view/CropImageView;JFFFF)V
    .locals 2
    .param p1, "cropImageView"    # Lcom/yalantis/ucrop/view/CropImageView;
    .param p2, "durationMs"    # J
    .param p4, "oldScale"    # F
    .param p5, "deltaScale"    # F
    .param p6, "destX"    # F
    .param p7, "destY"    # F

    .prologue
    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mCropImageView:Ljava/lang/ref/WeakReference;

    .line 598
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mStartTime:J

    .line 599
    iput-wide p2, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mDurationMs:J

    .line 600
    iput p4, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mOldScale:F

    .line 601
    iput p5, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mDeltaScale:F

    .line 602
    iput p6, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mDestX:F

    .line 603
    iput p7, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mDestY:F

    .line 604
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 608
    iget-object v3, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mCropImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/CropImageView;

    .line 609
    .local v0, "cropImageView":Lcom/yalantis/ucrop/view/CropImageView;
    if-nez v0, :cond_0

    .line 623
    :goto_0
    return-void

    .line 613
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 614
    .local v4, "now":J
    iget-wide v6, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mDurationMs:J

    iget-wide v8, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mStartTime:J

    sub-long v8, v4, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-float v1, v6

    .line 615
    .local v1, "currentMs":F
    const/4 v3, 0x0

    iget v6, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mDeltaScale:F

    iget-wide v8, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mDurationMs:J

    long-to-float v7, v8

    invoke-static {v1, v3, v6, v7}, Lcom/yalantis/ucrop/util/CubicEasing;->easeInOut(FFFF)F

    move-result v2

    .line 617
    .local v2, "newScale":F
    iget-wide v6, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mDurationMs:J

    long-to-float v3, v6

    cmpg-float v3, v1, v3

    if-gez v3, :cond_1

    .line 618
    iget v3, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mOldScale:F

    add-float/2addr v3, v2

    iget v6, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mDestX:F

    iget v7, p0, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;->mDestY:F

    invoke-virtual {v0, v3, v6, v7}, Lcom/yalantis/ucrop/view/CropImageView;->zoomInImage(FFF)V

    .line 619
    invoke-virtual {v0, p0}, Lcom/yalantis/ucrop/view/CropImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 621
    :cond_1
    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds()V

    goto :goto_0
.end method
