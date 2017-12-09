.class Lcom/felipecsl/gifimageview/library/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;
    }
.end annotation


# static fields
.field private static final BYTES_PER_INTEGER:I = 0x4

.field private static final DISPOSAL_BACKGROUND:I = 0x2

.field private static final DISPOSAL_NONE:I = 0x1

.field private static final DISPOSAL_PREVIOUS:I = 0x3

.field private static final DISPOSAL_UNSPECIFIED:I = 0x0

.field private static final INITIAL_FRAME_POINTER:I = -0x1

.field private static final MAX_STACK_SIZE:I = 0x1000

.field private static final NULL_CODE:I = -0x1

.field static final STATUS_FORMAT_ERROR:I = 0x1

.field static final STATUS_OK:I = 0x0

.field static final STATUS_OPEN_ERROR:I = 0x2

.field static final STATUS_PARTIAL_DECODE:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final WORK_BUFFER_SIZE:I = 0x4000


# instance fields
.field private act:[I

.field private bitmapProvider:Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;

.field private block:[B

.field private downsampledHeight:I

.field private downsampledWidth:I

.field private framePointer:I

.field private header:Lcom/felipecsl/gifimageview/library/GifHeader;

.field private isFirstFrameTransparent:Z

.field private mainPixels:[B

.field private mainScratch:[I

.field private parser:Lcom/felipecsl/gifimageview/library/GifHeaderParser;

.field private pixelStack:[B

.field private prefix:[S

.field private previousImage:Landroid/graphics/Bitmap;

.field private rawData:Ljava/nio/ByteBuffer;

.field private sampleSize:I

.field private savePrevious:Z

.field private status:I

.field private suffix:[B

.field private workBuffer:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private workBufferPosition:I

.field private workBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/felipecsl/gifimageview/library/SimpleBitmapProvider;

    invoke-direct {v0}, Lcom/felipecsl/gifimageview/library/SimpleBitmapProvider;-><init>()V

    invoke-direct {p0, v0}, Lcom/felipecsl/gifimageview/library/GifDecoder;-><init>(Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;)V

    .line 200
    return-void
.end method

.method constructor <init>(Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;

    .prologue
    const/4 v0, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferSize:I

    .line 115
    iput v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    .line 194
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->bitmapProvider:Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;

    .line 195
    new-instance v0, Lcom/felipecsl/gifimageview/library/GifHeader;

    invoke-direct {v0}, Lcom/felipecsl/gifimageview/library/GifHeader;-><init>()V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    .line 196
    return-void
.end method

.method constructor <init>(Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;Lcom/felipecsl/gifimageview/library/GifHeader;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "provider"    # Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;
    .param p2, "gifHeader"    # Lcom/felipecsl/gifimageview/library/GifHeader;
    .param p3, "rawData"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 184
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/felipecsl/gifimageview/library/GifDecoder;-><init>(Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;Lcom/felipecsl/gifimageview/library/GifHeader;Ljava/nio/ByteBuffer;I)V

    .line 185
    return-void
.end method

.method constructor <init>(Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;Lcom/felipecsl/gifimageview/library/GifHeader;Ljava/nio/ByteBuffer;I)V
    .locals 0
    .param p1, "provider"    # Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;
    .param p2, "gifHeader"    # Lcom/felipecsl/gifimageview/library/GifHeader;
    .param p3, "rawData"    # Ljava/nio/ByteBuffer;
    .param p4, "sampleSize"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/felipecsl/gifimageview/library/GifDecoder;-><init>(Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;)V

    .line 190
    invoke-virtual {p0, p2, p3, p4}, Lcom/felipecsl/gifimageview/library/GifDecoder;->setData(Lcom/felipecsl/gifimageview/library/GifHeader;Ljava/nio/ByteBuffer;I)V

    .line 191
    return-void
.end method

.method private averageColorsNear(III)I
    .locals 10
    .param p1, "positionInMainPixels"    # I
    .param p2, "maxPositionInMainPixels"    # I
    .param p3, "currentFrameIw"    # I

    .prologue
    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, "alphaSum":I
    const/4 v6, 0x0

    .line 610
    .local v6, "redSum":I
    const/4 v4, 0x0

    .line 611
    .local v4, "greenSum":I
    const/4 v1, 0x0

    .line 613
    .local v1, "blueSum":I
    const/4 v7, 0x0

    .line 615
    .local v7, "totalAdded":I
    move v5, p1

    .line 617
    .local v5, "i":I
    :goto_0
    iget v8, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->sampleSize:I

    add-int/2addr v8, p1

    if-ge v5, v8, :cond_1

    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainPixels:[B

    array-length v8, v8

    if-ge v5, v8, :cond_1

    if-ge v5, p2, :cond_1

    .line 618
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainPixels:[B

    aget-byte v8, v8, v5

    and-int/lit16 v3, v8, 0xff

    .line 619
    .local v3, "currentColorIndex":I
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->act:[I

    aget v2, v8, v3

    .line 620
    .local v2, "currentColor":I
    if-eqz v2, :cond_0

    .line 621
    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v0, v8

    .line 622
    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    .line 623
    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    .line 624
    and-int/lit16 v8, v2, 0xff

    add-int/2addr v1, v8

    .line 625
    add-int/lit8 v7, v7, 0x1

    .line 617
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 629
    .end local v2    # "currentColor":I
    .end local v3    # "currentColorIndex":I
    :cond_1
    add-int v5, p1, p3

    .line 631
    :goto_1
    add-int v8, p1, p3

    iget v9, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->sampleSize:I

    add-int/2addr v8, v9

    if-ge v5, v8, :cond_3

    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainPixels:[B

    array-length v8, v8

    if-ge v5, v8, :cond_3

    if-ge v5, p2, :cond_3

    .line 632
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainPixels:[B

    aget-byte v8, v8, v5

    and-int/lit16 v3, v8, 0xff

    .line 633
    .restart local v3    # "currentColorIndex":I
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->act:[I

    aget v2, v8, v3

    .line 634
    .restart local v2    # "currentColor":I
    if-eqz v2, :cond_2

    .line 635
    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v0, v8

    .line 636
    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    .line 637
    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    .line 638
    and-int/lit16 v8, v2, 0xff

    add-int/2addr v1, v8

    .line 639
    add-int/lit8 v7, v7, 0x1

    .line 631
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 642
    .end local v2    # "currentColor":I
    .end local v3    # "currentColorIndex":I
    :cond_3
    if-nez v7, :cond_4

    .line 643
    const/4 v8, 0x0

    .line 645
    :goto_2
    return v8

    :cond_4
    div-int v8, v0, v7

    shl-int/lit8 v8, v8, 0x18

    div-int v9, v6, v7

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    div-int v9, v4, v7

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    div-int v9, v1, v7

    or-int/2addr v8, v9

    goto :goto_2
.end method

.method private decodeBitmapData(Lcom/felipecsl/gifimageview/library/GifFrame;)V
    .locals 24
    .param p1, "frame"    # Lcom/felipecsl/gifimageview/library/GifFrame;

    .prologue
    .line 656
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferSize:I

    .line 657
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    .line 658
    if-eqz p1, :cond_0

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->bufferFrameStart:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 663
    :cond_0
    if-nez p1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->width:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->height:I

    move/from16 v23, v0

    mul-int v16, v22, v23

    .line 668
    .local v16, "npix":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainPixels:[B

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainPixels:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 670
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->bitmapProvider:Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainPixels:[B

    .line 672
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->prefix:[S

    move-object/from16 v22, v0

    if-nez v22, :cond_3

    .line 673
    const/16 v22, 0x1000

    move/from16 v0, v22

    new-array v0, v0, [S

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felipecsl/gifimageview/library/GifDecoder;->prefix:[S

    .line 675
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->suffix:[B

    move-object/from16 v22, v0

    if-nez v22, :cond_4

    .line 676
    const/16 v22, 0x1000

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felipecsl/gifimageview/library/GifDecoder;->suffix:[B

    .line 678
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    if-nez v22, :cond_5

    .line 679
    const/16 v22, 0x1001

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felipecsl/gifimageview/library/GifDecoder;->pixelStack:[B

    .line 683
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->readByte()I

    move-result v10

    .line 684
    .local v10, "dataSize":I
    const/16 v22, 0x1

    shl-int v5, v22, v10

    .line 685
    .local v5, "clear":I
    add-int/lit8 v12, v5, 0x1

    .line 686
    .local v12, "endOfInformation":I
    add-int/lit8 v2, v5, 0x2

    .line 687
    .local v2, "available":I
    const/16 v17, -0x1

    .line 688
    .local v17, "oldCode":I
    add-int/lit8 v8, v10, 0x1

    .line 689
    .local v8, "codeSize":I
    const/16 v22, 0x1

    shl-int v22, v22, v8

    add-int/lit8 v7, v22, -0x1

    .line 690
    .local v7, "codeMask":I
    const/4 v6, 0x0

    .local v6, "code":I
    :goto_1
    if-ge v6, v5, :cond_7

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->prefix:[S

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-short v23, v22, v6

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->suffix:[B

    move-object/from16 v22, v0

    int-to-byte v0, v6

    move/from16 v23, v0

    aput-byte v23, v22, v6

    .line 690
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 663
    .end local v2    # "available":I
    .end local v5    # "clear":I
    .end local v6    # "code":I
    .end local v7    # "codeMask":I
    .end local v8    # "codeSize":I
    .end local v10    # "dataSize":I
    .end local v12    # "endOfInformation":I
    .end local v16    # "npix":I
    .end local v17    # "oldCode":I
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->iw:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->ih:I

    move/from16 v23, v0

    mul-int v16, v22, v23

    goto/16 :goto_0

    .line 697
    .restart local v2    # "available":I
    .restart local v5    # "clear":I
    .restart local v6    # "code":I
    .restart local v7    # "codeMask":I
    .restart local v8    # "codeSize":I
    .restart local v10    # "dataSize":I
    .restart local v12    # "endOfInformation":I
    .restart local v16    # "npix":I
    .restart local v17    # "oldCode":I
    :cond_7
    const/4 v3, 0x0

    .local v3, "bi":I
    move/from16 v18, v3

    .local v18, "pi":I
    move/from16 v20, v3

    .local v20, "top":I
    move v13, v3

    .local v13, "first":I
    move v9, v3

    .local v9, "count":I
    move v4, v3

    .local v4, "bits":I
    move v11, v3

    .line 698
    .local v11, "datum":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_8

    .line 700
    if-nez v9, :cond_a

    .line 702
    invoke-direct/range {p0 .. p0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->readBlock()I

    move-result v9

    .line 703
    if-gtz v9, :cond_9

    .line 704
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I

    .line 779
    :cond_8
    move/from16 v14, v18

    :goto_3
    move/from16 v0, v16

    if-ge v14, v0, :cond_12

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainPixels:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-byte v23, v22, v14

    .line 779
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 707
    :cond_9
    const/4 v3, 0x0

    .line 710
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->block:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v3

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int v22, v22, v4

    add-int v11, v11, v22

    .line 711
    add-int/lit8 v4, v4, 0x8

    .line 712
    add-int/lit8 v3, v3, 0x1

    .line 713
    add-int/lit8 v9, v9, -0x1

    move/from16 v21, v20

    .line 715
    .end local v20    # "top":I
    .local v21, "top":I
    :goto_4
    if-lt v4, v8, :cond_14

    .line 717
    and-int v6, v11, v7

    .line 718
    shr-int/2addr v11, v8

    .line 719
    sub-int/2addr v4, v8

    .line 722
    if-ne v6, v5, :cond_b

    .line 724
    add-int/lit8 v8, v10, 0x1

    .line 725
    const/16 v22, 0x1

    shl-int v22, v22, v8

    add-int/lit8 v7, v22, -0x1

    .line 726
    add-int/lit8 v2, v5, 0x2

    .line 727
    const/16 v17, -0x1

    .line 728
    goto :goto_4

    .line 731
    :cond_b
    if-le v6, v2, :cond_c

    .line 732
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I

    move/from16 v20, v21

    .line 733
    .end local v21    # "top":I
    .restart local v20    # "top":I
    goto :goto_2

    .line 736
    .end local v20    # "top":I
    .restart local v21    # "top":I
    :cond_c
    if-ne v6, v12, :cond_d

    move/from16 v20, v21

    .line 737
    .end local v21    # "top":I
    .restart local v20    # "top":I
    goto :goto_2

    .line 740
    .end local v20    # "top":I
    .restart local v21    # "top":I
    :cond_d
    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v6

    aput-byte v23, v22, v21

    .line 742
    move/from16 v17, v6

    .line 743
    move v13, v6

    move/from16 v21, v20

    .line 744
    .end local v20    # "top":I
    .restart local v21    # "top":I
    goto :goto_4

    .line 746
    :cond_e
    move v15, v6

    .line 747
    .local v15, "inCode":I
    if-lt v6, v2, :cond_f

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    int-to-byte v0, v13

    move/from16 v23, v0

    aput-byte v23, v22, v21

    .line 749
    move/from16 v6, v17

    move/from16 v21, v20

    .line 751
    .end local v20    # "top":I
    .restart local v21    # "top":I
    :cond_f
    :goto_5
    if-lt v6, v5, :cond_10

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v6

    aput-byte v23, v22, v21

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->prefix:[S

    move-object/from16 v22, v0

    aget-short v6, v22, v6

    move/from16 v21, v20

    .end local v20    # "top":I
    .restart local v21    # "top":I
    goto :goto_5

    .line 755
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->suffix:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v6

    move/from16 v0, v22

    and-int/lit16 v13, v0, 0xff

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->pixelStack:[B

    move-object/from16 v22, v0

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "top":I
    .restart local v20    # "top":I
    int-to-byte v0, v13

    move/from16 v23, v0

    aput-byte v23, v22, v21

    .line 759
    const/16 v22, 0x1000

    move/from16 v0, v22

    if-ge v2, v0, :cond_11

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->prefix:[S

    move-object/from16 v22, v0

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v23, v0

    aput-short v23, v22, v2

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->suffix:[B

    move-object/from16 v22, v0

    int-to-byte v0, v13

    move/from16 v23, v0

    aput-byte v23, v22, v2

    .line 762
    add-int/lit8 v2, v2, 0x1

    .line 763
    and-int v22, v2, v7

    if-nez v22, :cond_11

    const/16 v22, 0x1000

    move/from16 v0, v22

    if-ge v2, v0, :cond_11

    .line 764
    add-int/lit8 v8, v8, 0x1

    .line 765
    add-int/2addr v7, v2

    .line 768
    :cond_11
    move/from16 v17, v15

    move/from16 v19, v18

    .line 770
    .end local v18    # "pi":I
    .local v19, "pi":I
    :goto_6
    if-lez v20, :cond_13

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainPixels:[B

    move-object/from16 v22, v0

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "pi":I
    .restart local v18    # "pi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v20, v20, -0x1

    aget-byte v23, v23, v20

    aput-byte v23, v22, v19

    .line 773
    add-int/lit8 v14, v14, 0x1

    move/from16 v19, v18

    .end local v18    # "pi":I
    .restart local v19    # "pi":I
    goto :goto_6

    .line 782
    .end local v15    # "inCode":I
    .end local v19    # "pi":I
    .restart local v18    # "pi":I
    :cond_12
    return-void

    .end local v18    # "pi":I
    .restart local v15    # "inCode":I
    .restart local v19    # "pi":I
    :cond_13
    move/from16 v18, v19

    .end local v19    # "pi":I
    .restart local v18    # "pi":I
    move/from16 v21, v20

    .end local v20    # "top":I
    .restart local v21    # "top":I
    goto/16 :goto_4

    .end local v15    # "inCode":I
    :cond_14
    move/from16 v20, v21

    .end local v21    # "top":I
    .restart local v20    # "top":I
    goto/16 :goto_2
.end method

.method private getHeaderParser()Lcom/felipecsl/gifimageview/library/GifHeaderParser;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->parser:Lcom/felipecsl/gifimageview/library/GifHeaderParser;

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Lcom/felipecsl/gifimageview/library/GifHeaderParser;

    invoke-direct {v0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;-><init>()V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->parser:Lcom/felipecsl/gifimageview/library/GifHeaderParser;

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->parser:Lcom/felipecsl/gifimageview/library/GifHeaderParser;

    return-object v0
.end method

.method private getNextBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 849
    iget-boolean v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->isFirstFrameTransparent:Z

    if-eqz v2, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 851
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    iget-object v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->bitmapProvider:Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;

    iget v3, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledWidth:I

    iget v4, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledHeight:I

    invoke-interface {v2, v3, v4, v0}, Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 852
    .local v1, "result":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/felipecsl/gifimageview/library/GifDecoder;->setAlpha(Landroid/graphics/Bitmap;)V

    .line 853
    return-object v1

    .line 849
    .end local v0    # "config":Landroid/graphics/Bitmap$Config;
    .end local v1    # "result":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private readBlock()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 818
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->readByte()I

    move-result v0

    .line 819
    .local v0, "blockSize":I
    if-lez v0, :cond_1

    .line 821
    :try_start_0
    iget-object v4, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->block:[B

    if-nez v4, :cond_0

    .line 822
    iget-object v4, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->bitmapProvider:Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;

    const/16 v5, 0xff

    invoke-interface {v4, v5}, Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v4

    iput-object v4, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->block:[B

    .line 824
    :cond_0
    iget v4, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferSize:I

    iget v5, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    sub-int v2, v4, v5

    .line 825
    .local v2, "remaining":I
    if-lt v2, v0, :cond_2

    .line 827
    iget-object v4, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBuffer:[B

    iget v5, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->block:[B

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 828
    iget v4, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    .line 845
    .end local v2    # "remaining":I
    :cond_1
    :goto_0
    return v0

    .line 829
    .restart local v2    # "remaining":I
    :cond_2
    iget-object v4, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v4, v2

    if-lt v4, v0, :cond_3

    .line 831
    iget-object v4, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBuffer:[B

    iget v5, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->block:[B

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 832
    iget v4, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferSize:I

    iput v4, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    .line 833
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->readChunkIfNeeded()V

    .line 834
    sub-int v3, v0, v2

    .line 835
    .local v3, "secondHalfRemaining":I
    iget-object v4, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBuffer:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->block:[B

    invoke-static {v4, v5, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 836
    iget v4, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 840
    .end local v2    # "remaining":I
    .end local v3    # "secondHalfRemaining":I
    :catch_0
    move-exception v1

    .line 841
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/felipecsl/gifimageview/library/GifDecoder;->TAG:Ljava/lang/String;

    const-string v5, "Error Reading Block"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 842
    iput v8, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I

    goto :goto_0

    .line 838
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "remaining":I
    :cond_3
    const/4 v4, 0x1

    :try_start_1
    iput v4, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private readByte()I
    .locals 4

    .prologue
    .line 804
    :try_start_0
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->readChunkIfNeeded()V

    .line 805
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBuffer:[B

    iget v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    aget-byte v1, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v1, 0xff

    .line 808
    :goto_0
    return v1

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    iput v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I

    .line 808
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readChunkIfNeeded()V
    .locals 4

    .prologue
    const/16 v2, 0x4000

    const/4 v3, 0x0

    .line 788
    iget v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferSize:I

    iget v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    if-le v0, v1, :cond_0

    .line 797
    :goto_0
    return-void

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBuffer:[B

    if-nez v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->bitmapProvider:Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;

    invoke-interface {v0, v2}, Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBuffer:[B

    .line 794
    :cond_1
    iput v3, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferPosition:I

    .line 795
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferSize:I

    .line 796
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBuffer:[B

    iget v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBufferSize:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private static setAlpha(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 858
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 859
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 861
    :cond_0
    return-void
.end method

.method private setPixels(Lcom/felipecsl/gifimageview/library/GifFrame;Lcom/felipecsl/gifimageview/library/GifFrame;)Landroid/graphics/Bitmap;
    .locals 28
    .param p1, "currentFrame"    # Lcom/felipecsl/gifimageview/library/GifFrame;
    .param p2, "previousFrame"    # Lcom/felipecsl/gifimageview/library/GifFrame;

    .prologue
    .line 501
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainScratch:[I

    .line 504
    .local v4, "dest":[I
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    iget v5, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->dispose:I

    if-lez v5, :cond_1

    .line 507
    move-object/from16 v0, p2

    iget v5, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->dispose:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 509
    const/4 v12, 0x0

    .line 510
    .local v12, "c":I
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->transparency:Z

    if-nez v5, :cond_6

    .line 511
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v12, v5, Lcom/felipecsl/gifimageview/library/GifHeader;->bgColor:I

    .line 518
    :cond_0
    :goto_0
    invoke-static {v4, v12}, Ljava/util/Arrays;->fill([II)V

    .line 527
    .end local v12    # "c":I
    :cond_1
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/felipecsl/gifimageview/library/GifDecoder;->decodeBitmapData(Lcom/felipecsl/gifimageview/library/GifFrame;)V

    .line 529
    move-object/from16 v0, p1

    iget v5, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->ih:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->sampleSize:I

    div-int v14, v5, v6

    .line 530
    .local v14, "downsampledIH":I
    move-object/from16 v0, p1

    iget v5, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->iy:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->sampleSize:I

    div-int v17, v5, v6

    .line 531
    .local v17, "downsampledIY":I
    move-object/from16 v0, p1

    iget v5, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->iw:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->sampleSize:I

    div-int v15, v5, v6

    .line 532
    .local v15, "downsampledIW":I
    move-object/from16 v0, p1

    iget v5, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->ix:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->sampleSize:I

    div-int v16, v5, v6

    .line 534
    .local v16, "downsampledIX":I
    const/16 v26, 0x1

    .line 535
    .local v26, "pass":I
    const/16 v21, 0x8

    .line 536
    .local v21, "inc":I
    const/16 v20, 0x0

    .line 537
    .local v20, "iline":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    if-nez v5, :cond_8

    const/16 v22, 0x1

    .line 538
    .local v22, "isFirstFrame":Z
    :goto_2
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_3
    move/from16 v0, v19

    if-ge v0, v14, :cond_b

    .line 539
    move/from16 v24, v19

    .line 540
    .local v24, "line":I
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->interlace:Z

    if-eqz v5, :cond_3

    .line 541
    move/from16 v0, v20

    if-lt v0, v14, :cond_2

    .line 542
    add-int/lit8 v26, v26, 0x1

    .line 543
    packed-switch v26, :pswitch_data_0

    .line 559
    :cond_2
    :goto_4
    move/from16 v24, v20

    .line 560
    add-int v20, v20, v21

    .line 562
    :cond_3
    add-int v24, v24, v17

    .line 563
    move-object/from16 v0, p0

    iget v5, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledHeight:I

    move/from16 v0, v24

    if-ge v0, v5, :cond_a

    .line 564
    move-object/from16 v0, p0

    iget v5, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledWidth:I

    mul-int v23, v24, v5

    .line 566
    .local v23, "k":I
    add-int v18, v23, v16

    .line 568
    .local v18, "dx":I
    add-int v13, v18, v15

    .line 569
    .local v13, "dlim":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledWidth:I

    add-int v5, v5, v23

    if-ge v5, v13, :cond_4

    .line 571
    move-object/from16 v0, p0

    iget v5, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledWidth:I

    add-int v13, v23, v5

    .line 574
    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->sampleSize:I

    mul-int v5, v5, v19

    move-object/from16 v0, p1

    iget v6, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->iw:I

    mul-int v27, v5, v6

    .line 575
    .local v27, "sx":I
    sub-int v5, v13, v18

    move-object/from16 v0, p0

    iget v6, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->sampleSize:I

    mul-int/2addr v5, v6

    add-int v25, v27, v5

    .line 576
    .local v25, "maxPositionInSource":I
    :goto_5
    move/from16 v0, v18

    if-ge v0, v13, :cond_a

    .line 578
    move-object/from16 v0, p1

    iget v5, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->iw:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-direct {v0, v1, v2, v5}, Lcom/felipecsl/gifimageview/library/GifDecoder;->averageColorsNear(III)I

    move-result v11

    .line 579
    .local v11, "averageColor":I
    if-eqz v11, :cond_9

    .line 580
    aput v11, v4, v18

    .line 584
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->sampleSize:I

    add-int v27, v27, v5

    .line 585
    add-int/lit8 v18, v18, 0x1

    .line 586
    goto :goto_5

    .line 512
    .end local v11    # "averageColor":I
    .end local v13    # "dlim":I
    .end local v14    # "downsampledIH":I
    .end local v15    # "downsampledIW":I
    .end local v16    # "downsampledIX":I
    .end local v17    # "downsampledIY":I
    .end local v18    # "dx":I
    .end local v19    # "i":I
    .end local v20    # "iline":I
    .end local v21    # "inc":I
    .end local v22    # "isFirstFrame":Z
    .end local v23    # "k":I
    .end local v24    # "line":I
    .end local v25    # "maxPositionInSource":I
    .end local v26    # "pass":I
    .end local v27    # "sx":I
    .restart local v12    # "c":I
    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    if-nez v5, :cond_0

    .line 516
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->isFirstFrameTransparent:Z

    goto/16 :goto_0

    .line 519
    .end local v12    # "c":I
    :cond_7
    move-object/from16 v0, p2

    iget v5, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->dispose:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    .line 521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledWidth:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledHeight:I

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto/16 :goto_1

    .line 537
    .restart local v14    # "downsampledIH":I
    .restart local v15    # "downsampledIW":I
    .restart local v16    # "downsampledIX":I
    .restart local v17    # "downsampledIY":I
    .restart local v20    # "iline":I
    .restart local v21    # "inc":I
    .restart local v26    # "pass":I
    :cond_8
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 545
    .restart local v19    # "i":I
    .restart local v22    # "isFirstFrame":Z
    .restart local v24    # "line":I
    :pswitch_0
    const/16 v20, 0x4

    .line 546
    goto/16 :goto_4

    .line 548
    :pswitch_1
    const/16 v20, 0x2

    .line 549
    const/16 v21, 0x4

    .line 550
    goto/16 :goto_4

    .line 552
    :pswitch_2
    const/16 v20, 0x1

    .line 553
    const/16 v21, 0x2

    .line 554
    goto/16 :goto_4

    .line 581
    .restart local v11    # "averageColor":I
    .restart local v13    # "dlim":I
    .restart local v18    # "dx":I
    .restart local v23    # "k":I
    .restart local v25    # "maxPositionInSource":I
    .restart local v27    # "sx":I
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->isFirstFrameTransparent:Z

    if-nez v5, :cond_5

    if-eqz v22, :cond_5

    .line 582
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->isFirstFrameTransparent:Z

    goto :goto_6

    .line 538
    .end local v11    # "averageColor":I
    .end local v13    # "dlim":I
    .end local v18    # "dx":I
    .end local v23    # "k":I
    .end local v25    # "maxPositionInSource":I
    .end local v27    # "sx":I
    :cond_a
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 591
    .end local v24    # "line":I
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->savePrevious:Z

    if-eqz v5, :cond_e

    move-object/from16 v0, p1

    iget v5, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->dispose:I

    if-eqz v5, :cond_c

    move-object/from16 v0, p1

    iget v5, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->dispose:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    .line 593
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-nez v5, :cond_d

    .line 594
    invoke-direct/range {p0 .. p0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 596
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledWidth:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledHeight:I

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 601
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 602
    .local v3, "result":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledWidth:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledHeight:I

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 603
    return-object v3

    .line 543
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method advance()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    if-lez v0, :cond_0

    .line 230
    iget v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v1, v1, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    .line 232
    :cond_0
    return-void
.end method

.method clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 409
    iput-object v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    .line 410
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainPixels:[B

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->bitmapProvider:Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainPixels:[B

    invoke-interface {v0, v1}, Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;->release([B)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainScratch:[I

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->bitmapProvider:Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainScratch:[I

    invoke-interface {v0, v1}, Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;->release([I)V

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->bitmapProvider:Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    .line 419
    :cond_2
    iput-object v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 420
    iput-object v2, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->isFirstFrameTransparent:Z

    .line 422
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->block:[B

    if-eqz v0, :cond_3

    .line 423
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->bitmapProvider:Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->block:[B

    invoke-interface {v0, v1}, Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;->release([B)V

    .line 425
    :cond_3
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBuffer:[B

    if-eqz v0, :cond_4

    .line 426
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->bitmapProvider:Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->workBuffer:[B

    invoke-interface {v0, v1}, Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;->release([B)V

    .line 428
    :cond_4
    return-void
.end method

.method getByteSize()I
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainPixels:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainScratch:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method getCurrentFrameIndex()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    return v0
.end method

.method getData()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method getDelay(I)I
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 241
    const/4 v0, -0x1

    .line 242
    .local v0, "delay":I
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v1, v1, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v1, v1, Lcom/felipecsl/gifimageview/library/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/felipecsl/gifimageview/library/GifFrame;

    iget v0, v1, Lcom/felipecsl/gifimageview/library/GifFrame;->delay:I

    .line 245
    :cond_0
    return v0
.end method

.method getFrameCount()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    return v0
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->height:I

    return v0
.end method

.method getLoopCount()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->loopCount:I

    return v0
.end method

.method getNextDelay()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    if-gez v0, :cond_1

    .line 253
    :cond_0
    const/4 v0, 0x0

    .line 256
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    invoke-virtual {p0, v0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getDelay(I)I

    move-result v0

    goto :goto_0
.end method

.method declared-synchronized getNextFrame()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 308
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v6, v6, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    if-lez v6, :cond_0

    iget v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    if-gez v6, :cond_2

    .line 309
    :cond_0
    sget-object v6, Lcom/felipecsl/gifimageview/library/GifDecoder;->TAG:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 310
    sget-object v6, Lcom/felipecsl/gifimageview/library/GifDecoder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unable to decode frame, frameCount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v8, v8, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " framePointer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_1
    const/4 v6, 0x1

    iput v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I

    .line 315
    :cond_2
    iget v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I

    if-eq v6, v9, :cond_3

    iget v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 316
    :cond_3
    sget-object v6, Lcom/felipecsl/gifimageview/library/GifDecoder;->TAG:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 317
    sget-object v6, Lcom/felipecsl/gifimageview/library/GifDecoder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to decode frame, status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    :cond_4
    :goto_0
    monitor-exit p0

    return-object v3

    .line 321
    :cond_5
    const/4 v6, 0x0

    :try_start_1
    iput v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I

    .line 323
    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v6, v6, Lcom/felipecsl/gifimageview/library/GifHeader;->frames:Ljava/util/List;

    iget v7, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felipecsl/gifimageview/library/GifFrame;

    .line 325
    .local v0, "currentFrame":Lcom/felipecsl/gifimageview/library/GifFrame;
    iget v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    add-int/lit8 v2, v6, -0x1

    .line 326
    .local v2, "previousIndex":I
    if-ltz v2, :cond_9

    .line 327
    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v6, v6, Lcom/felipecsl/gifimageview/library/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/felipecsl/gifimageview/library/GifFrame;

    .line 332
    .local v1, "previousFrame":Lcom/felipecsl/gifimageview/library/GifFrame;
    :goto_1
    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v5, v6, Lcom/felipecsl/gifimageview/library/GifHeader;->bgColor:I

    .line 335
    .local v5, "savedBgColor":I
    iget-object v6, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->lct:[I

    if-nez v6, :cond_a

    .line 336
    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v6, v6, Lcom/felipecsl/gifimageview/library/GifHeader;->gct:[I

    iput-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->act:[I

    .line 344
    :cond_6
    :goto_2
    const/4 v4, 0x0

    .line 345
    .local v4, "save":I
    iget-boolean v6, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->transparency:Z

    if-eqz v6, :cond_7

    .line 346
    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->act:[I

    iget v7, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->transIndex:I

    aget v4, v6, v7

    .line 348
    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->act:[I

    iget v7, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->transIndex:I

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 350
    :cond_7
    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->act:[I

    if-nez v6, :cond_b

    .line 351
    sget-object v6, Lcom/felipecsl/gifimageview/library/GifDecoder;->TAG:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 352
    sget-object v6, Lcom/felipecsl/gifimageview/library/GifDecoder;->TAG:Ljava/lang/String;

    const-string v7, "No Valid Color Table"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_8
    const/4 v6, 0x1

    iput v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 308
    .end local v0    # "currentFrame":Lcom/felipecsl/gifimageview/library/GifFrame;
    .end local v1    # "previousFrame":Lcom/felipecsl/gifimageview/library/GifFrame;
    .end local v2    # "previousIndex":I
    .end local v4    # "save":I
    .end local v5    # "savedBgColor":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 329
    .restart local v0    # "currentFrame":Lcom/felipecsl/gifimageview/library/GifFrame;
    .restart local v2    # "previousIndex":I
    :cond_9
    :try_start_2
    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget-object v6, v6, Lcom/felipecsl/gifimageview/library/GifHeader;->frames:Ljava/util/List;

    invoke-virtual {p0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getFrameCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/felipecsl/gifimageview/library/GifFrame;

    .restart local v1    # "previousFrame":Lcom/felipecsl/gifimageview/library/GifFrame;
    goto :goto_1

    .line 338
    .restart local v5    # "savedBgColor":I
    :cond_a
    iget-object v6, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->lct:[I

    iput-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->act:[I

    .line 339
    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v6, v6, Lcom/felipecsl/gifimageview/library/GifHeader;->bgIndex:I

    iget v7, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->transIndex:I

    if-ne v6, v7, :cond_6

    .line 340
    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    const/4 v7, 0x0

    iput v7, v6, Lcom/felipecsl/gifimageview/library/GifHeader;->bgColor:I

    goto :goto_2

    .line 360
    .restart local v4    # "save":I
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/felipecsl/gifimageview/library/GifDecoder;->setPixels(Lcom/felipecsl/gifimageview/library/GifFrame;Lcom/felipecsl/gifimageview/library/GifFrame;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 363
    .local v3, "result":Landroid/graphics/Bitmap;
    iget-boolean v6, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->transparency:Z

    if-eqz v6, :cond_c

    .line 364
    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->act:[I

    iget v7, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->transIndex:I

    aput v4, v6, v7

    .line 366
    :cond_c
    iget-object v6, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iput v5, v6, Lcom/felipecsl/gifimageview/library/GifHeader;->bgColor:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method getStatus()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I

    return v0
.end method

.method getWidth()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    iget v0, v0, Lcom/felipecsl/gifimageview/library/GifHeader;->width:I

    return v0
.end method

.method read(Ljava/io/InputStream;I)I
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # I

    .prologue
    const/16 v1, 0x4000

    .line 378
    if-eqz p1, :cond_3

    .line 380
    if-lez p2, :cond_0

    add-int/lit16 v1, p2, 0x1000

    .line 381
    .local v1, "capacity":I
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 383
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x4000

    new-array v2, v5, [B

    .line 384
    .local v2, "data":[B
    :goto_0
    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {p1, v2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .local v4, "nRead":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 385
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local v4    # "nRead":I
    :catch_0
    move-exception v3

    .line 391
    .local v3, "e":Ljava/io/IOException;
    sget-object v5, Lcom/felipecsl/gifimageview/library/GifDecoder;->TAG:Ljava/lang/String;

    const-string v6, "Error reading data from stream"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    .end local v1    # "capacity":I
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    if-eqz p1, :cond_1

    .line 399
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 405
    :cond_1
    :goto_2
    iget v5, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I

    return v5

    .line 387
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "capacity":I
    .restart local v2    # "data":[B
    .restart local v4    # "nRead":I
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 389
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/felipecsl/gifimageview/library/GifDecoder;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 394
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "capacity":I
    .end local v2    # "data":[B
    .end local v4    # "nRead":I
    :cond_3
    const/4 v5, 0x2

    iput v5, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I

    goto :goto_1

    .line 401
    :catch_1
    move-exception v3

    .line 402
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/felipecsl/gifimageview/library/GifDecoder;->TAG:Ljava/lang/String;

    const-string v6, "Error closing stream"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method declared-synchronized read([B)I
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 487
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getHeaderParser()Lcom/felipecsl/gifimageview/library/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->setData([B)Lcom/felipecsl/gifimageview/library/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felipecsl/gifimageview/library/GifHeaderParser;->parseHeader()Lcom/felipecsl/gifimageview/library/GifHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    .line 488
    if-eqz p1, :cond_0

    .line 489
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    invoke-virtual {p0, v0, p1}, Lcom/felipecsl/gifimageview/library/GifDecoder;->setData(Lcom/felipecsl/gifimageview/library/GifHeader;[B)V

    .line 492
    :cond_0
    iget v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method resetFrameIndex()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, -0x1

    iput v0, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    .line 283
    return-void
.end method

.method declared-synchronized setData(Lcom/felipecsl/gifimageview/library/GifHeader;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "header"    # Lcom/felipecsl/gifimageview/library/GifHeader;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 435
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->setData(Lcom/felipecsl/gifimageview/library/GifHeader;Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    monitor-exit p0

    return-void

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setData(Lcom/felipecsl/gifimageview/library/GifHeader;Ljava/nio/ByteBuffer;I)V
    .locals 4
    .param p1, "header"    # Lcom/felipecsl/gifimageview/library/GifHeader;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "sampleSize"    # I

    .prologue
    .line 439
    monitor-enter p0

    if-gtz p3, :cond_0

    .line 440
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sample size must be >=0, not: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 443
    :cond_0
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p3

    .line 444
    const/4 v1, 0x0

    iput v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->status:I

    .line 445
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->header:Lcom/felipecsl/gifimageview/library/GifHeader;

    .line 446
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->isFirstFrameTransparent:Z

    .line 447
    const/4 v1, -0x1

    iput v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->framePointer:I

    .line 449
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 450
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 451
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 454
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->savePrevious:Z

    .line 455
    iget-object v1, p1, Lcom/felipecsl/gifimageview/library/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felipecsl/gifimageview/library/GifFrame;

    .line 456
    .local v0, "frame":Lcom/felipecsl/gifimageview/library/GifFrame;
    iget v2, v0, Lcom/felipecsl/gifimageview/library/GifFrame;->dispose:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 457
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->savePrevious:Z

    .line 462
    .end local v0    # "frame":Lcom/felipecsl/gifimageview/library/GifFrame;
    :cond_2
    iput p3, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->sampleSize:I

    .line 466
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->bitmapProvider:Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;

    iget v2, p1, Lcom/felipecsl/gifimageview/library/GifHeader;->width:I

    iget v3, p1, Lcom/felipecsl/gifimageview/library/GifHeader;->height:I

    mul-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainPixels:[B

    .line 467
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->bitmapProvider:Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;

    iget v2, p1, Lcom/felipecsl/gifimageview/library/GifHeader;->width:I

    div-int/2addr v2, p3

    iget v3, p1, Lcom/felipecsl/gifimageview/library/GifHeader;->height:I

    div-int/2addr v3, p3

    mul-int/2addr v2, v3

    .line 468
    invoke-interface {v1, v2}, Lcom/felipecsl/gifimageview/library/GifDecoder$BitmapProvider;->obtainIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->mainScratch:[I

    .line 469
    iget v1, p1, Lcom/felipecsl/gifimageview/library/GifHeader;->width:I

    div-int/2addr v1, p3

    iput v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledWidth:I

    .line 470
    iget v1, p1, Lcom/felipecsl/gifimageview/library/GifHeader;->height:I

    div-int/2addr v1, p3

    iput v1, p0, Lcom/felipecsl/gifimageview/library/GifDecoder;->downsampledHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    monitor-exit p0

    return-void
.end method

.method declared-synchronized setData(Lcom/felipecsl/gifimageview/library/GifHeader;[B)V
    .locals 1
    .param p1, "header"    # Lcom/felipecsl/gifimageview/library/GifHeader;
    .param p2, "data"    # [B

    .prologue
    .line 431
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->setData(Lcom/felipecsl/gifimageview/library/GifHeader;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    monitor-exit p0

    return-void

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
