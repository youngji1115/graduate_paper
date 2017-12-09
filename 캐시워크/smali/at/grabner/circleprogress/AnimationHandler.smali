.class public Lat/grabner/circleprogress/AnimationHandler;
.super Landroid/os/Handler;
.source "AnimationHandler.java"


# instance fields
.field private mAnimationStartTime:J

.field private final mCircleViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lat/grabner/circleprogress/CircleProgressView;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameStartTime:J

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mLengthChangeAnimationDuration:D

.field private mLengthChangeAnimationStartTime:J

.field private mLengthChangeInterpolator:Landroid/animation/TimeInterpolator;

.field private mSpinningBarLengthStart:F


# direct methods
.method constructor <init>(Lat/grabner/circleprogress/CircleProgressView;)V
    .locals 2
    .param p1, "circleView"    # Lat/grabner/circleprogress/CircleProgressView;

    .prologue
    .line 26
    invoke-virtual {p1}, Lat/grabner/circleprogress/CircleProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lat/grabner/circleprogress/AnimationHandler;->mLengthChangeInterpolator:Landroid/animation/TimeInterpolator;

    .line 21
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lat/grabner/circleprogress/AnimationHandler;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lat/grabner/circleprogress/AnimationHandler;->mFrameStartTime:J

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lat/grabner/circleprogress/AnimationHandler;->mCircleViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 28
    return-void
.end method

.method private calcNextAnimationValue(Lat/grabner/circleprogress/CircleProgressView;)Z
    .locals 8
    .param p1, "circleView"    # Lat/grabner/circleprogress/CircleProgressView;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lat/grabner/circleprogress/AnimationHandler;->mAnimationStartTime:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    iget-wide v6, p1, Lat/grabner/circleprogress/CircleProgressView;->mAnimationDuration:D

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 369
    .local v1, "t":F
    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    move v1, v2

    .line 370
    :cond_0
    iget-object v3, p0, Lat/grabner/circleprogress/AnimationHandler;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v3, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    .line 372
    .local v0, "interpolatedRatio":F
    iget v3, p1, Lat/grabner/circleprogress/CircleProgressView;->mValueFrom:F

    iget v4, p1, Lat/grabner/circleprogress/CircleProgressView;->mValueTo:F

    iget v5, p1, Lat/grabner/circleprogress/CircleProgressView;->mValueFrom:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p1, Lat/grabner/circleprogress/CircleProgressView;->mCurrentValue:F

    .line 374
    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private enterEndSpinningStartAnimating(Lat/grabner/circleprogress/CircleProgressView;Landroid/os/Message;)V
    .locals 8
    .param p1, "circleView"    # Lat/grabner/circleprogress/CircleProgressView;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 308
    sget-object v0, Lat/grabner/circleprogress/AnimationState;->END_SPINNING_START_ANIMATING:Lat/grabner/circleprogress/AnimationState;

    iput-object v0, p1, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    .line 309
    iget-object v0, p1, Lat/grabner/circleprogress/CircleProgressView;->mAnimationStateChangedListener:Lat/grabner/circleprogress/AnimationStateChangedListener;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p1, Lat/grabner/circleprogress/CircleProgressView;->mAnimationStateChangedListener:Lat/grabner/circleprogress/AnimationStateChangedListener;

    iget-object v1, p1, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    invoke-interface {v0, v1}, Lat/grabner/circleprogress/AnimationStateChangedListener;->onAnimationStateChanged(Lat/grabner/circleprogress/AnimationState;)V

    .line 312
    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Lat/grabner/circleprogress/CircleProgressView;->mValueFrom:F

    .line 313
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [F

    check-cast v0, [F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Lat/grabner/circleprogress/CircleProgressView;->mValueTo:F

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lat/grabner/circleprogress/AnimationHandler;->mLengthChangeAnimationStartTime:J

    .line 316
    iget v0, p1, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    iput v0, p0, Lat/grabner/circleprogress/AnimationHandler;->mSpinningBarLengthStart:F

    .line 318
    sget v0, Lat/grabner/circleprogress/AnimationMsg;->TICK$48cb079c:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p1, Lat/grabner/circleprogress/CircleProgressView;->mFrameDelayMillis:I

    int-to-long v2, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lat/grabner/circleprogress/AnimationHandler;->mFrameStartTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lat/grabner/circleprogress/AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 320
    return-void
.end method

.method private enterSpinning(Lat/grabner/circleprogress/CircleProgressView;)V
    .locals 8
    .param p1, "circleView"    # Lat/grabner/circleprogress/CircleProgressView;

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    .line 341
    sget-object v1, Lat/grabner/circleprogress/AnimationState;->SPINNING:Lat/grabner/circleprogress/AnimationState;

    iput-object v1, p1, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    .line 342
    iget-object v1, p1, Lat/grabner/circleprogress/CircleProgressView;->mAnimationStateChangedListener:Lat/grabner/circleprogress/AnimationStateChangedListener;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p1, Lat/grabner/circleprogress/CircleProgressView;->mAnimationStateChangedListener:Lat/grabner/circleprogress/AnimationStateChangedListener;

    iget-object v2, p1, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    invoke-interface {v1, v2}, Lat/grabner/circleprogress/AnimationStateChangedListener;->onAnimationStateChanged(Lat/grabner/circleprogress/AnimationState;)V

    .line 345
    :cond_0
    iget v1, p1, Lat/grabner/circleprogress/CircleProgressView;->mMaxValue:F

    div-float v1, v3, v1

    iget v2, p1, Lat/grabner/circleprogress/CircleProgressView;->mCurrentValue:F

    mul-float/2addr v1, v2

    iput v1, p1, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    .line 346
    iget v1, p1, Lat/grabner/circleprogress/CircleProgressView;->mMaxValue:F

    div-float v1, v3, v1

    iget v2, p1, Lat/grabner/circleprogress/CircleProgressView;->mCurrentValue:F

    mul-float/2addr v1, v2

    iput v1, p1, Lat/grabner/circleprogress/CircleProgressView;->mCurrentSpinnerDegreeValue:F

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lat/grabner/circleprogress/AnimationHandler;->mLengthChangeAnimationStartTime:J

    .line 348
    iget v1, p1, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    iput v1, p0, Lat/grabner/circleprogress/AnimationHandler;->mSpinningBarLengthStart:F

    .line 352
    iget v1, p1, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthOrig:F

    iget v2, p1, Lat/grabner/circleprogress/CircleProgressView;->mSpinSpeed:F

    div-float v0, v1, v2

    .line 353
    .local v0, "stepsTillFinish":F
    iget v1, p1, Lat/grabner/circleprogress/CircleProgressView;->mFrameDelayMillis:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-double v2, v1

    iput-wide v2, p0, Lat/grabner/circleprogress/AnimationHandler;->mLengthChangeAnimationDuration:D

    .line 356
    sget v1, Lat/grabner/circleprogress/AnimationMsg;->TICK$48cb079c:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p1, Lat/grabner/circleprogress/CircleProgressView;->mFrameDelayMillis:I

    int-to-long v2, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lat/grabner/circleprogress/AnimationHandler;->mFrameStartTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3}, Lat/grabner/circleprogress/AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 357
    return-void
.end method

.method private initReduceAnimation(Lat/grabner/circleprogress/CircleProgressView;)V
    .locals 4
    .param p1, "circleView"    # Lat/grabner/circleprogress/CircleProgressView;

    .prologue
    .line 332
    iget v1, p1, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    .line 333
    iget v2, p1, Lat/grabner/circleprogress/CircleProgressView;->mSpinSpeed:F

    div-float v0, v1, v2

    .line 334
    .local v0, "stepsTillFinish":F
    iget v1, p1, Lat/grabner/circleprogress/CircleProgressView;->mFrameDelayMillis:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-double v2, v1

    iput-wide v2, p0, Lat/grabner/circleprogress/AnimationHandler;->mLengthChangeAnimationDuration:D

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lat/grabner/circleprogress/AnimationHandler;->mLengthChangeAnimationStartTime:J

    .line 337
    iget v1, p1, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    iput v1, p0, Lat/grabner/circleprogress/AnimationHandler;->mSpinningBarLengthStart:F

    .line 338
    return-void
.end method

.method private static setValue(Landroid/os/Message;Lat/grabner/circleprogress/CircleProgressView;)V
    .locals 2
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "circleView"    # Lat/grabner/circleprogress/CircleProgressView;

    .prologue
    .line 378
    iget v0, p1, Lat/grabner/circleprogress/CircleProgressView;->mValueTo:F

    iput v0, p1, Lat/grabner/circleprogress/CircleProgressView;->mValueFrom:F

    .line 379
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [F

    check-cast v0, [F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Lat/grabner/circleprogress/CircleProgressView;->mValueTo:F

    iput v0, p1, Lat/grabner/circleprogress/CircleProgressView;->mCurrentValue:F

    .line 380
    sget-object v0, Lat/grabner/circleprogress/AnimationState;->IDLE:Lat/grabner/circleprogress/AnimationState;

    iput-object v0, p1, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    .line 381
    iget-object v0, p1, Lat/grabner/circleprogress/CircleProgressView;->mAnimationStateChangedListener:Lat/grabner/circleprogress/AnimationStateChangedListener;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p1, Lat/grabner/circleprogress/CircleProgressView;->mAnimationStateChangedListener:Lat/grabner/circleprogress/AnimationStateChangedListener;

    iget-object v1, p1, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    invoke-interface {v0, v1}, Lat/grabner/circleprogress/AnimationStateChangedListener;->onAnimationStateChanged(Lat/grabner/circleprogress/AnimationState;)V

    .line 384
    :cond_0
    invoke-virtual {p1}, Lat/grabner/circleprogress/CircleProgressView;->invalidate()V

    .line 385
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x43b40000    # 360.0f

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 52
    iget-object v6, p0, Lat/grabner/circleprogress/AnimationHandler;->mCircleViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/grabner/circleprogress/CircleProgressView;

    .line 53
    .local v0, "circleView":Lat/grabner/circleprogress/CircleProgressView;
    if-nez v0, :cond_0

    .line 294
    :goto_0
    :pswitch_0
    return-void

    .line 56
    :cond_0
    invoke-static {}, Lat/grabner/circleprogress/AnimationMsg;->values$47292116()[I

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    aget v3, v6, v7

    .line 57
    .local v3, "msgType":I
    sget v6, Lat/grabner/circleprogress/AnimationMsg;->TICK$48cb079c:I

    if-ne v3, v6, :cond_1

    .line 58
    sget v6, Lat/grabner/circleprogress/AnimationMsg;->TICK$48cb079c:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lat/grabner/circleprogress/AnimationHandler;->removeMessages(I)V

    .line 63
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lat/grabner/circleprogress/AnimationHandler;->mFrameStartTime:J

    .line 64
    sget-object v6, Lat/grabner/circleprogress/AnimationHandler$1;->$SwitchMap$at$grabner$circleprogress$AnimationState:[I

    iget-object v7, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    invoke-virtual {v7}, Lat/grabner/circleprogress/AnimationState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 68
    :pswitch_1
    sget-object v5, Lat/grabner/circleprogress/AnimationHandler$1;->$SwitchMap$at$grabner$circleprogress$AnimationMsg:[I

    add-int/lit8 v6, v3, -0x1

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    goto :goto_0

    .line 71
    :pswitch_2
    invoke-direct {p0, v0}, Lat/grabner/circleprogress/AnimationHandler;->enterSpinning(Lat/grabner/circleprogress/CircleProgressView;)V

    goto :goto_0

    .line 78
    :pswitch_3
    invoke-static {p1, v0}, Lat/grabner/circleprogress/AnimationHandler;->setValue(Landroid/os/Message;Lat/grabner/circleprogress/CircleProgressView;)V

    goto :goto_0

    .line 1297
    :pswitch_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [F

    check-cast v5, [F

    aget v5, v5, v10

    iput v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mValueFrom:F

    .line 1298
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [F

    check-cast v5, [F

    aget v5, v5, v11

    iput v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mValueTo:F

    .line 1299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lat/grabner/circleprogress/AnimationHandler;->mAnimationStartTime:J

    .line 1300
    sget-object v5, Lat/grabner/circleprogress/AnimationState;->ANIMATING:Lat/grabner/circleprogress/AnimationState;

    iput-object v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    .line 1301
    iget-object v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationStateChangedListener:Lat/grabner/circleprogress/AnimationStateChangedListener;

    if-eqz v5, :cond_2

    .line 1302
    iget-object v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationStateChangedListener:Lat/grabner/circleprogress/AnimationStateChangedListener;

    iget-object v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    invoke-interface {v5, v6}, Lat/grabner/circleprogress/AnimationStateChangedListener;->onAnimationStateChanged(Lat/grabner/circleprogress/AnimationState;)V

    .line 1304
    :cond_2
    sget v5, Lat/grabner/circleprogress/AnimationMsg;->TICK$48cb079c:I

    add-int/lit8 v5, v5, -0x1

    iget v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mFrameDelayMillis:I

    int-to-long v6, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lat/grabner/circleprogress/AnimationHandler;->mFrameStartTime:J

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-virtual {p0, v5, v6, v7}, Lat/grabner/circleprogress/AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 85
    :pswitch_5
    sget v5, Lat/grabner/circleprogress/AnimationMsg;->TICK$48cb079c:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lat/grabner/circleprogress/AnimationHandler;->removeMessages(I)V

    goto :goto_0

    .line 91
    :pswitch_6
    sget-object v6, Lat/grabner/circleprogress/AnimationHandler$1;->$SwitchMap$at$grabner$circleprogress$AnimationMsg:[I

    add-int/lit8 v7, v3, -0x1

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    goto/16 :goto_0

    .line 1323
    :pswitch_7
    sget-object v5, Lat/grabner/circleprogress/AnimationState;->END_SPINNING:Lat/grabner/circleprogress/AnimationState;

    iput-object v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    .line 1324
    invoke-direct {p0, v0}, Lat/grabner/circleprogress/AnimationHandler;->initReduceAnimation(Lat/grabner/circleprogress/CircleProgressView;)V

    .line 1325
    iget-object v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationStateChangedListener:Lat/grabner/circleprogress/AnimationStateChangedListener;

    if-eqz v5, :cond_3

    .line 1326
    iget-object v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationStateChangedListener:Lat/grabner/circleprogress/AnimationStateChangedListener;

    iget-object v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    invoke-interface {v5, v6}, Lat/grabner/circleprogress/AnimationStateChangedListener;->onAnimationStateChanged(Lat/grabner/circleprogress/AnimationState;)V

    .line 1328
    :cond_3
    sget v5, Lat/grabner/circleprogress/AnimationMsg;->TICK$48cb079c:I

    add-int/lit8 v5, v5, -0x1

    iget v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mFrameDelayMillis:I

    int-to-long v6, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lat/grabner/circleprogress/AnimationHandler;->mFrameStartTime:J

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-virtual {p0, v5, v6, v7}, Lat/grabner/circleprogress/AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 101
    :pswitch_8
    invoke-static {p1, v0}, Lat/grabner/circleprogress/AnimationHandler;->setValue(Landroid/os/Message;Lat/grabner/circleprogress/CircleProgressView;)V

    goto/16 :goto_0

    .line 104
    :pswitch_9
    invoke-direct {p0, v0, p1}, Lat/grabner/circleprogress/AnimationHandler;->enterEndSpinningStartAnimating(Lat/grabner/circleprogress/CircleProgressView;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 109
    :pswitch_a
    iget v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    iget v7, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthOrig:F

    sub-float v2, v6, v7

    .line 110
    .local v2, "length_delta":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lat/grabner/circleprogress/AnimationHandler;->mLengthChangeAnimationStartTime:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    iget-wide v8, p0, Lat/grabner/circleprogress/AnimationHandler;->mLengthChangeAnimationDuration:D

    div-double/2addr v6, v8

    double-to-float v4, v6

    .line 112
    .local v4, "t":F
    cmpl-float v6, v4, v5

    if-lez v6, :cond_4

    move v4, v5

    .line 113
    :cond_4
    iget-object v6, p0, Lat/grabner/circleprogress/AnimationHandler;->mLengthChangeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v6, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    .line 115
    .local v1, "interpolatedRatio":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v5, v6, v5

    if-gez v5, :cond_6

    .line 117
    iget v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthOrig:F

    iput v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    .line 126
    :goto_1
    iget v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentSpinnerDegreeValue:F

    iget v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinSpeed:F

    add-float/2addr v5, v6

    iput v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentSpinnerDegreeValue:F

    .line 128
    iget v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentSpinnerDegreeValue:F

    cmpl-float v5, v5, v12

    if-lez v5, :cond_5

    .line 129
    iput v13, v0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentSpinnerDegreeValue:F

    .line 131
    :cond_5
    sget v5, Lat/grabner/circleprogress/AnimationMsg;->TICK$48cb079c:I

    add-int/lit8 v5, v5, -0x1

    iget v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mFrameDelayMillis:I

    int-to-long v6, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lat/grabner/circleprogress/AnimationHandler;->mFrameStartTime:J

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-virtual {p0, v5, v6, v7}, Lat/grabner/circleprogress/AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 132
    invoke-virtual {v0}, Lat/grabner/circleprogress/CircleProgressView;->invalidate()V

    goto/16 :goto_0

    .line 118
    :cond_6
    iget v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    iget v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthOrig:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    .line 120
    iget v5, p0, Lat/grabner/circleprogress/AnimationHandler;->mSpinningBarLengthStart:F

    iget v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthOrig:F

    iget v7, p0, Lat/grabner/circleprogress/AnimationHandler;->mSpinningBarLengthStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    goto :goto_1

    .line 123
    :cond_7
    iget v5, p0, Lat/grabner/circleprogress/AnimationHandler;->mSpinningBarLengthStart:F

    iget v6, p0, Lat/grabner/circleprogress/AnimationHandler;->mSpinningBarLengthStart:F

    iget v7, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthOrig:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    iput v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    goto :goto_1

    .line 138
    .end local v1    # "interpolatedRatio":F
    .end local v2    # "length_delta":F
    .end local v4    # "t":F
    :pswitch_b
    sget-object v6, Lat/grabner/circleprogress/AnimationHandler$1;->$SwitchMap$at$grabner$circleprogress$AnimationMsg:[I

    add-int/lit8 v7, v3, -0x1

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_3

    goto/16 :goto_0

    .line 141
    :pswitch_c
    sget-object v5, Lat/grabner/circleprogress/AnimationState;->SPINNING:Lat/grabner/circleprogress/AnimationState;

    iput-object v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    .line 142
    iget-object v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationStateChangedListener:Lat/grabner/circleprogress/AnimationStateChangedListener;

    if-eqz v5, :cond_8

    .line 143
    iget-object v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationStateChangedListener:Lat/grabner/circleprogress/AnimationStateChangedListener;

    iget-object v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    invoke-interface {v5, v6}, Lat/grabner/circleprogress/AnimationStateChangedListener;->onAnimationStateChanged(Lat/grabner/circleprogress/AnimationState;)V

    .line 145
    :cond_8
    sget v5, Lat/grabner/circleprogress/AnimationMsg;->TICK$48cb079c:I

    add-int/lit8 v5, v5, -0x1

    iget v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mFrameDelayMillis:I

    int-to-long v6, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lat/grabner/circleprogress/AnimationHandler;->mFrameStartTime:J

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-virtual {p0, v5, v6, v7}, Lat/grabner/circleprogress/AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 152
    :pswitch_d
    invoke-static {p1, v0}, Lat/grabner/circleprogress/AnimationHandler;->setValue(Landroid/os/Message;Lat/grabner/circleprogress/CircleProgressView;)V

    goto/16 :goto_0

    .line 155
    :pswitch_e
    invoke-direct {p0, v0, p1}, Lat/grabner/circleprogress/AnimationHandler;->enterEndSpinningStartAnimating(Lat/grabner/circleprogress/CircleProgressView;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 160
    :pswitch_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lat/grabner/circleprogress/AnimationHandler;->mLengthChangeAnimationStartTime:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    iget-wide v8, p0, Lat/grabner/circleprogress/AnimationHandler;->mLengthChangeAnimationDuration:D

    div-double/2addr v6, v8

    double-to-float v4, v6

    .line 162
    .restart local v4    # "t":F
    cmpl-float v6, v4, v5

    if-lez v6, :cond_9

    move v4, v5

    .line 163
    :cond_9
    iget-object v6, p0, Lat/grabner/circleprogress/AnimationHandler;->mLengthChangeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v6, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    .line 164
    .restart local v1    # "interpolatedRatio":F
    iget v6, p0, Lat/grabner/circleprogress/AnimationHandler;->mSpinningBarLengthStart:F

    sub-float/2addr v5, v1

    mul-float/2addr v5, v6

    iput v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    .line 166
    iget v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentSpinnerDegreeValue:F

    iget v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinSpeed:F

    add-float/2addr v5, v6

    iput v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentSpinnerDegreeValue:F

    .line 167
    iget v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    const v6, 0x3c23d70a    # 0.01f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a

    .line 169
    sget-object v5, Lat/grabner/circleprogress/AnimationState;->IDLE:Lat/grabner/circleprogress/AnimationState;

    iput-object v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    .line 170
    iget-object v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationStateChangedListener:Lat/grabner/circleprogress/AnimationStateChangedListener;

    if-eqz v5, :cond_a

    .line 171
    iget-object v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationStateChangedListener:Lat/grabner/circleprogress/AnimationStateChangedListener;

    iget-object v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    invoke-interface {v5, v6}, Lat/grabner/circleprogress/AnimationStateChangedListener;->onAnimationStateChanged(Lat/grabner/circleprogress/AnimationState;)V

    .line 174
    :cond_a
    sget v5, Lat/grabner/circleprogress/AnimationMsg;->TICK$48cb079c:I

    add-int/lit8 v5, v5, -0x1

    iget v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mFrameDelayMillis:I

    int-to-long v6, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lat/grabner/circleprogress/AnimationHandler;->mFrameStartTime:J

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-virtual {p0, v5, v6, v7}, Lat/grabner/circleprogress/AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 175
    invoke-virtual {v0}, Lat/grabner/circleprogress/CircleProgressView;->invalidate()V

    goto/16 :goto_0

    .line 181
    .end local v1    # "interpolatedRatio":F
    .end local v4    # "t":F
    :pswitch_10
    sget-object v6, Lat/grabner/circleprogress/AnimationHandler$1;->$SwitchMap$at$grabner$circleprogress$AnimationMsg:[I

    add-int/lit8 v7, v3, -0x1

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_4

    goto/16 :goto_0

    .line 184
    :pswitch_11
    iput-boolean v10, v0, Lat/grabner/circleprogress/CircleProgressView;->mDrawBarWhileSpinning:Z

    .line 185
    invoke-direct {p0, v0}, Lat/grabner/circleprogress/AnimationHandler;->enterSpinning(Lat/grabner/circleprogress/CircleProgressView;)V

    goto/16 :goto_0

    .line 192
    :pswitch_12
    iput-boolean v10, v0, Lat/grabner/circleprogress/CircleProgressView;->mDrawBarWhileSpinning:Z

    .line 193
    invoke-static {p1, v0}, Lat/grabner/circleprogress/AnimationHandler;->setValue(Landroid/os/Message;Lat/grabner/circleprogress/CircleProgressView;)V

    goto/16 :goto_0

    .line 197
    :pswitch_13
    iput v13, v0, Lat/grabner/circleprogress/CircleProgressView;->mValueFrom:F

    .line 198
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [F

    check-cast v5, [F

    aget v5, v5, v11

    iput v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mValueTo:F

    .line 199
    sget v5, Lat/grabner/circleprogress/AnimationMsg;->TICK$48cb079c:I

    add-int/lit8 v5, v5, -0x1

    iget v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mFrameDelayMillis:I

    int-to-long v6, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lat/grabner/circleprogress/AnimationHandler;->mFrameStartTime:J

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-virtual {p0, v5, v6, v7}, Lat/grabner/circleprogress/AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 204
    :pswitch_14
    iget v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    iget v7, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthOrig:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_c

    iget-boolean v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mDrawBarWhileSpinning:Z

    if-nez v6, :cond_c

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lat/grabner/circleprogress/AnimationHandler;->mLengthChangeAnimationStartTime:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    iget-wide v8, p0, Lat/grabner/circleprogress/AnimationHandler;->mLengthChangeAnimationDuration:D

    div-double/2addr v6, v8

    double-to-float v4, v6

    .line 208
    .restart local v4    # "t":F
    cmpl-float v6, v4, v5

    if-lez v6, :cond_b

    move v4, v5

    .line 209
    :cond_b
    iget-object v6, p0, Lat/grabner/circleprogress/AnimationHandler;->mLengthChangeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v6, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    .line 210
    .restart local v1    # "interpolatedRatio":F
    iget v6, p0, Lat/grabner/circleprogress/AnimationHandler;->mSpinningBarLengthStart:F

    sub-float v7, v5, v1

    mul-float/2addr v6, v7

    iput v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    .line 214
    .end local v1    # "interpolatedRatio":F
    .end local v4    # "t":F
    :cond_c
    iget v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentSpinnerDegreeValue:F

    iget v7, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinSpeed:F

    add-float/2addr v6, v7

    iput v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentSpinnerDegreeValue:F

    .line 217
    iget v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentSpinnerDegreeValue:F

    cmpl-float v6, v6, v12

    if-lez v6, :cond_d

    iget-boolean v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mDrawBarWhileSpinning:Z

    if-nez v6, :cond_d

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lat/grabner/circleprogress/AnimationHandler;->mAnimationStartTime:J

    .line 219
    iput-boolean v11, v0, Lat/grabner/circleprogress/CircleProgressView;->mDrawBarWhileSpinning:Z

    .line 220
    invoke-direct {p0, v0}, Lat/grabner/circleprogress/AnimationHandler;->initReduceAnimation(Lat/grabner/circleprogress/CircleProgressView;)V

    .line 221
    iget-object v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationStateChangedListener:Lat/grabner/circleprogress/AnimationStateChangedListener;

    if-eqz v6, :cond_d

    .line 222
    iget-object v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationStateChangedListener:Lat/grabner/circleprogress/AnimationStateChangedListener;

    sget-object v7, Lat/grabner/circleprogress/AnimationState;->START_ANIMATING_AFTER_SPINNING:Lat/grabner/circleprogress/AnimationState;

    invoke-interface {v6, v7}, Lat/grabner/circleprogress/AnimationStateChangedListener;->onAnimationStateChanged(Lat/grabner/circleprogress/AnimationState;)V

    .line 227
    :cond_d
    iget-boolean v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mDrawBarWhileSpinning:Z

    if-eqz v6, :cond_f

    .line 228
    iput v12, v0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentSpinnerDegreeValue:F

    .line 229
    iget v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    iget v7, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinSpeed:F

    sub-float/2addr v6, v7

    iput v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    .line 230
    invoke-direct {p0, v0}, Lat/grabner/circleprogress/AnimationHandler;->calcNextAnimationValue(Lat/grabner/circleprogress/CircleProgressView;)Z

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lat/grabner/circleprogress/AnimationHandler;->mLengthChangeAnimationStartTime:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    iget-wide v8, p0, Lat/grabner/circleprogress/AnimationHandler;->mLengthChangeAnimationDuration:D

    div-double/2addr v6, v8

    double-to-float v4, v6

    .line 234
    .restart local v4    # "t":F
    cmpl-float v6, v4, v5

    if-lez v6, :cond_e

    move v4, v5

    .line 235
    :cond_e
    iget-object v6, p0, Lat/grabner/circleprogress/AnimationHandler;->mLengthChangeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v6, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    .line 236
    .restart local v1    # "interpolatedRatio":F
    iget v6, p0, Lat/grabner/circleprogress/AnimationHandler;->mSpinningBarLengthStart:F

    sub-float/2addr v5, v1

    mul-float/2addr v5, v6

    iput v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    .line 240
    .end local v1    # "interpolatedRatio":F
    .end local v4    # "t":F
    :cond_f
    iget v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    float-to-double v6, v5

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpg-double v5, v6, v8

    if-gez v5, :cond_11

    .line 242
    sget-object v5, Lat/grabner/circleprogress/AnimationState;->ANIMATING:Lat/grabner/circleprogress/AnimationState;

    iput-object v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    .line 243
    iget-object v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationStateChangedListener:Lat/grabner/circleprogress/AnimationStateChangedListener;

    if-eqz v5, :cond_10

    .line 244
    iget-object v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationStateChangedListener:Lat/grabner/circleprogress/AnimationStateChangedListener;

    iget-object v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    invoke-interface {v5, v6}, Lat/grabner/circleprogress/AnimationStateChangedListener;->onAnimationStateChanged(Lat/grabner/circleprogress/AnimationState;)V

    .line 246
    :cond_10
    invoke-virtual {v0}, Lat/grabner/circleprogress/CircleProgressView;->invalidate()V

    .line 247
    iput-boolean v10, v0, Lat/grabner/circleprogress/CircleProgressView;->mDrawBarWhileSpinning:Z

    .line 248
    iget v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthOrig:F

    iput v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    .line 253
    :goto_2
    sget v5, Lat/grabner/circleprogress/AnimationMsg;->TICK$48cb079c:I

    add-int/lit8 v5, v5, -0x1

    iget v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mFrameDelayMillis:I

    int-to-long v6, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lat/grabner/circleprogress/AnimationHandler;->mFrameStartTime:J

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-virtual {p0, v5, v6, v7}, Lat/grabner/circleprogress/AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 251
    :cond_11
    invoke-virtual {v0}, Lat/grabner/circleprogress/CircleProgressView;->invalidate()V

    goto :goto_2

    .line 259
    :pswitch_15
    sget-object v5, Lat/grabner/circleprogress/AnimationHandler$1;->$SwitchMap$at$grabner$circleprogress$AnimationMsg:[I

    add-int/lit8 v6, v3, -0x1

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_5

    goto/16 :goto_0

    .line 262
    :pswitch_16
    invoke-direct {p0, v0}, Lat/grabner/circleprogress/AnimationHandler;->enterSpinning(Lat/grabner/circleprogress/CircleProgressView;)V

    goto/16 :goto_0

    .line 268
    :pswitch_17
    invoke-static {p1, v0}, Lat/grabner/circleprogress/AnimationHandler;->setValue(Landroid/os/Message;Lat/grabner/circleprogress/CircleProgressView;)V

    goto/16 :goto_0

    .line 271
    :pswitch_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lat/grabner/circleprogress/AnimationHandler;->mAnimationStartTime:J

    .line 273
    iget v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentValue:F

    iput v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mValueFrom:F

    .line 274
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [F

    check-cast v5, [F

    aget v5, v5, v11

    iput v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mValueTo:F

    goto/16 :goto_0

    .line 278
    :pswitch_19
    invoke-direct {p0, v0}, Lat/grabner/circleprogress/AnimationHandler;->calcNextAnimationValue(Lat/grabner/circleprogress/CircleProgressView;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 280
    sget-object v5, Lat/grabner/circleprogress/AnimationState;->IDLE:Lat/grabner/circleprogress/AnimationState;

    iput-object v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    .line 281
    iget-object v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationStateChangedListener:Lat/grabner/circleprogress/AnimationStateChangedListener;

    if-eqz v5, :cond_12

    .line 282
    iget-object v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationStateChangedListener:Lat/grabner/circleprogress/AnimationStateChangedListener;

    iget-object v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    invoke-interface {v5, v6}, Lat/grabner/circleprogress/AnimationStateChangedListener;->onAnimationStateChanged(Lat/grabner/circleprogress/AnimationState;)V

    .line 284
    :cond_12
    iget v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mValueTo:F

    iput v5, v0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentValue:F

    .line 286
    :cond_13
    sget v5, Lat/grabner/circleprogress/AnimationMsg;->TICK$48cb079c:I

    add-int/lit8 v5, v5, -0x1

    iget v6, v0, Lat/grabner/circleprogress/CircleProgressView;->mFrameDelayMillis:I

    int-to-long v6, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lat/grabner/circleprogress/AnimationHandler;->mFrameStartTime:J

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-virtual {p0, v5, v6, v7}, Lat/grabner/circleprogress/AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 287
    invoke-virtual {v0}, Lat/grabner/circleprogress/CircleProgressView;->invalidate()V

    goto/16 :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_b
        :pswitch_10
        :pswitch_15
    .end packed-switch

    .line 68
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 91
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 138
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 181
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 259
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public setLengthChangeInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "mLengthChangeInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 47
    iput-object p1, p0, Lat/grabner/circleprogress/AnimationHandler;->mLengthChangeInterpolator:Landroid/animation/TimeInterpolator;

    .line 48
    return-void
.end method

.method public setValueInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "mInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 37
    iput-object p1, p0, Lat/grabner/circleprogress/AnimationHandler;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 38
    return-void
.end method
