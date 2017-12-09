.class public Lcom/felipecsl/gifimageview/library/GifImageView;
.super Landroid/widget/ImageView;
.source "GifImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felipecsl/gifimageview/library/GifImageView$OnAnimationStop;,
        Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GifDecoderView"


# instance fields
.field private animating:Z

.field private animationStopCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnAnimationStop;

.field private animationThread:Ljava/lang/Thread;

.field private final cleanupRunnable:Ljava/lang/Runnable;

.field private frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

.field private framesDisplayDuration:J

.field private gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

.field private final handler:Landroid/os/Handler;

.field private shouldClear:Z

.field private tmpBitmap:Landroid/graphics/Bitmap;

.field private final updateResults:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->handler:Landroid/os/Handler;

    .line 20
    iput-object v2, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->framesDisplayDuration:J

    .line 22
    iput-object v2, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationStopCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnAnimationStop;

    .line 24
    new-instance v0, Lcom/felipecsl/gifimageview/library/GifImageView$1;

    invoke-direct {v0, p0}, Lcom/felipecsl/gifimageview/library/GifImageView$1;-><init>(Lcom/felipecsl/gifimageview/library/GifImageView;)V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->updateResults:Ljava/lang/Runnable;

    .line 33
    new-instance v0, Lcom/felipecsl/gifimageview/library/GifImageView$2;

    invoke-direct {v0, p0}, Lcom/felipecsl/gifimageview/library/GifImageView$2;-><init>(Lcom/felipecsl/gifimageview/library/GifImageView;)V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->handler:Landroid/os/Handler;

    .line 20
    iput-object v2, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->framesDisplayDuration:J

    .line 22
    iput-object v2, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationStopCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnAnimationStop;

    .line 24
    new-instance v0, Lcom/felipecsl/gifimageview/library/GifImageView$1;

    invoke-direct {v0, p0}, Lcom/felipecsl/gifimageview/library/GifImageView$1;-><init>(Lcom/felipecsl/gifimageview/library/GifImageView;)V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->updateResults:Ljava/lang/Runnable;

    .line 33
    new-instance v0, Lcom/felipecsl/gifimageview/library/GifImageView$2;

    invoke-direct {v0, p0}, Lcom/felipecsl/gifimageview/library/GifImageView$2;-><init>(Lcom/felipecsl/gifimageview/library/GifImageView;)V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/felipecsl/gifimageview/library/GifImageView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/felipecsl/gifimageview/library/GifImageView;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/felipecsl/gifimageview/library/GifImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/felipecsl/gifimageview/library/GifImageView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Lcom/felipecsl/gifimageview/library/GifImageView;Lcom/felipecsl/gifimageview/library/GifDecoder;)Lcom/felipecsl/gifimageview/library/GifDecoder;
    .locals 0
    .param p0, "x0"    # Lcom/felipecsl/gifimageview/library/GifImageView;
    .param p1, "x1"    # Lcom/felipecsl/gifimageview/library/GifDecoder;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    return-object p1
.end method

.method static synthetic access$202(Lcom/felipecsl/gifimageview/library/GifImageView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/felipecsl/gifimageview/library/GifImageView;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$302(Lcom/felipecsl/gifimageview/library/GifImageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/felipecsl/gifimageview/library/GifImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->shouldClear:Z

    return p1
.end method

.method private canStart()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->shouldClear:Z

    .line 108
    invoke-virtual {p0}, Lcom/felipecsl/gifimageview/library/GifImageView;->stopAnimation()V

    .line 109
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method

.method public getFramesDisplayDuration()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->framesDisplayDuration:J

    return-wide v0
.end method

.method public getGifHeight()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getHeight()I

    move-result v0

    return v0
.end method

.method public getGifWidth()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOnAnimationStop()Lcom/felipecsl/gifimageview/library/GifImageView$OnAnimationStop;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationStopCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnAnimationStop;

    return-object v0
.end method

.method public getOnFrameAvailable()Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    return-object v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 203
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 204
    invoke-virtual {p0}, Lcom/felipecsl/gifimageview/library/GifImageView;->clear()V

    .line 205
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    .line 125
    iget-boolean v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->shouldClear:Z

    if-eqz v8, :cond_1

    .line 126
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->handler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v8}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getFrameCount()I

    move-result v7

    .line 132
    .local v7, "n":I
    :cond_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v7, :cond_3

    .line 133
    iget-boolean v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    if-nez v8, :cond_4

    .line 171
    :cond_3
    iget-boolean v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    if-nez v8, :cond_2

    .line 172
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationStopCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnAnimationStop;

    if-eqz v8, :cond_0

    .line 173
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationStopCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnAnimationStop;

    invoke-interface {v8}, Lcom/felipecsl/gifimageview/library/GifImageView$OnAnimationStop;->onAnimationStop()V

    goto :goto_0

    .line 137
    :cond_4
    const-wide/16 v4, 0x0

    .line 139
    .local v4, "frameDecodeTime":J
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 140
    .local v0, "before":J
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v8}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    .line 141
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v0

    const-wide/32 v10, 0xf4240

    div-long v4, v8, v10

    .line 142
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    if-eqz v8, :cond_5

    .line 143
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    iget-object v9, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v8, v9}, Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;->onFrameAvailable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    .line 146
    :cond_5
    iget-boolean v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    if-eqz v8, :cond_3

    .line 149
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->handler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->updateResults:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 153
    .end local v0    # "before":J
    :goto_2
    iget-boolean v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    if-eqz v8, :cond_3

    .line 156
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v8}, Lcom/felipecsl/gifimageview/library/GifDecoder;->advance()V

    .line 158
    :try_start_1
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v8}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getNextDelay()I

    move-result v2

    .line 162
    .local v2, "delay":I
    int-to-long v8, v2

    sub-long/2addr v8, v4

    long-to-int v2, v8

    .line 163
    if-lez v2, :cond_6

    .line 164
    iget-wide v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->framesDisplayDuration:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    iget-wide v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->framesDisplayDuration:J

    :goto_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    .end local v2    # "delay":I
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 150
    :catch_0
    move-exception v3

    .line 151
    .local v3, "e":Ljava/lang/RuntimeException;
    :goto_5
    const-string v8, "GifDecoderView"

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 164
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "delay":I
    :cond_7
    int-to-long v8, v2

    goto :goto_3

    .line 166
    .end local v2    # "delay":I
    :catch_1
    move-exception v8

    goto :goto_4

    .line 150
    :catch_2
    move-exception v3

    goto :goto_5
.end method

.method public setBytes([B)V
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 52
    new-instance v1, Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-direct {v1}, Lcom/felipecsl/gifimageview/library/GifDecoder;-><init>()V

    iput-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v1, p1}, Lcom/felipecsl/gifimageview/library/GifDecoder;->read([B)I

    .line 55
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v1}, Lcom/felipecsl/gifimageview/library/GifDecoder;->advance()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifImageView;->canStart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    .line 64
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    .line 58
    const-string v1, "GifDecoderView"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFramesDisplayDuration(J)V
    .locals 1
    .param p1, "framesDisplayDuration"    # J

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->framesDisplayDuration:J

    .line 81
    return-void
.end method

.method public setOnAnimationStop(Lcom/felipecsl/gifimageview/library/GifImageView$OnAnimationStop;)V
    .locals 0
    .param p1, "animationStop"    # Lcom/felipecsl/gifimageview/library/GifImageView$OnAnimationStop;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationStopCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnAnimationStop;

    .line 195
    return-void
.end method

.method public setOnFrameAvailable(Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;)V
    .locals 0
    .param p1, "frameProcessor"    # Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    .line 183
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    .line 86
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifImageView;->canStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    .line 88
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 90
    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    .line 99
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    .line 103
    :cond_0
    return-void
.end method
