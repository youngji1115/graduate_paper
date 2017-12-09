.class public Lcom/cooltechworks/utils/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareEquivalance(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)F
    .locals 9
    .param p0, "bitmap1"    # Landroid/graphics/Bitmap;
    .param p1, "bitmap2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 22
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v7, v8, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 23
    :cond_0
    const/4 v7, 0x0

    .line 45
    :goto_0
    return v7

    .line 27
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 28
    .local v2, "buffer1":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 31
    .local v3, "buffer2":Ljava/nio/ByteBuffer;
    invoke-virtual {p1, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 33
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 34
    .local v0, "array1":[B
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 36
    .local v1, "array2":[B
    array-length v6, v0

    .line 37
    .local v6, "len":I
    const/4 v4, 0x0

    .line 39
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_3

    .line 40
    aget-byte v7, v0, v5

    aget-byte v8, v1, v5

    if-ne v7, v8, :cond_2

    .line 41
    add-int/lit8 v4, v4, 0x1

    .line 39
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 45
    :cond_3
    int-to-float v7, v4

    int-to-float v8, v6

    div-float/2addr v7, v8

    goto :goto_0
.end method

.method public static getTransparentPixelPercent(Landroid/graphics/Bitmap;)F
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v5, 0x0

    .line 75
    :goto_0
    return v5

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 62
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 64
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 66
    .local v0, "array":[B
    array-length v4, v0

    .line 67
    .local v4, "len":I
    const/4 v2, 0x0

    .line 69
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 70
    aget-byte v5, v0, v3

    if-nez v5, :cond_1

    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 69
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 75
    :cond_2
    int-to-float v5, v2

    int-to-float v6, v4

    div-float/2addr v5, v6

    goto :goto_0
.end method
