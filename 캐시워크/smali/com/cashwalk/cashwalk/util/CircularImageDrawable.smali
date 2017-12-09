.class public Lcom/cashwalk/cashwalk/util/CircularImageDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularImageDrawable.java"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapHeight:I

.field private final mBitmapWidth:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 22
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 23
    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 25
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 27
    .local v2, "width":I
    if-lt v0, v2, :cond_0

    .line 28
    invoke-static {p1, v2, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 33
    :goto_0
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mRectF:Landroid/graphics/RectF;

    .line 34
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mPaint:Landroid/graphics/Paint;

    .line 35
    iget-object v3, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    iget-object v3, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 37
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 38
    .local v1, "shader":Landroid/graphics/BitmapShader;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 40
    iget-object v3, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mBitmapWidth:I

    .line 41
    iget-object v3, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mBitmapHeight:I

    .line 49
    .end local v0    # "height":I
    .end local v1    # "shader":Landroid/graphics/BitmapShader;
    .end local v2    # "width":I
    :goto_1
    return-void

    .line 30
    .restart local v0    # "height":I
    .restart local v2    # "width":I
    :cond_0
    invoke-static {p1, v0, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 43
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_1
    iput-object v3, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 44
    iput-object v3, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mPaint:Landroid/graphics/Paint;

    .line 45
    iput-object v3, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mRectF:Landroid/graphics/RectF;

    .line 46
    iput v4, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mBitmapWidth:I

    .line 47
    iput v4, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mBitmapHeight:I

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mRectF:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 56
    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 62
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mRectF:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 65
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 71
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->invalidateSelf()V

    .line 73
    :cond_0
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .param p1, "aa"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->invalidateSelf()V

    .line 102
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 80
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->invalidateSelf()V

    .line 118
    :cond_0
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/CircularImageDrawable;->invalidateSelf()V

    .line 110
    :cond_0
    return-void
.end method
