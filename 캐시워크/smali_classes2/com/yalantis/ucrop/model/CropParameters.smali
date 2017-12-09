.class public Lcom/yalantis/ucrop/model/CropParameters;
.super Ljava/lang/Object;
.source "CropParameters.java"


# instance fields
.field private mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mCompressQuality:I

.field private mExifInfo:Lcom/yalantis/ucrop/model/ExifInfo;

.field private mImageInputPath:Ljava/lang/String;

.field private mImageOutputPath:Ljava/lang/String;

.field private mMaxResultImageSizeX:I

.field private mMaxResultImageSizeY:I


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Ljava/lang/String;Lcom/yalantis/ucrop/model/ExifInfo;)V
    .locals 0
    .param p1, "maxResultImageSizeX"    # I
    .param p2, "maxResultImageSizeY"    # I
    .param p3, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p4, "compressQuality"    # I
    .param p5, "imageInputPath"    # Ljava/lang/String;
    .param p6, "imageOutputPath"    # Ljava/lang/String;
    .param p7, "exifInfo"    # Lcom/yalantis/ucrop/model/ExifInfo;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/yalantis/ucrop/model/CropParameters;->mMaxResultImageSizeX:I

    .line 22
    iput p2, p0, Lcom/yalantis/ucrop/model/CropParameters;->mMaxResultImageSizeY:I

    .line 23
    iput-object p3, p0, Lcom/yalantis/ucrop/model/CropParameters;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 24
    iput p4, p0, Lcom/yalantis/ucrop/model/CropParameters;->mCompressQuality:I

    .line 25
    iput-object p5, p0, Lcom/yalantis/ucrop/model/CropParameters;->mImageInputPath:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lcom/yalantis/ucrop/model/CropParameters;->mImageOutputPath:Ljava/lang/String;

    .line 27
    iput-object p7, p0, Lcom/yalantis/ucrop/model/CropParameters;->mExifInfo:Lcom/yalantis/ucrop/model/ExifInfo;

    .line 28
    return-void
.end method


# virtual methods
.method public getCompressFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yalantis/ucrop/model/CropParameters;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public getCompressQuality()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/yalantis/ucrop/model/CropParameters;->mCompressQuality:I

    return v0
.end method

.method public getExifInfo()Lcom/yalantis/ucrop/model/ExifInfo;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yalantis/ucrop/model/CropParameters;->mExifInfo:Lcom/yalantis/ucrop/model/ExifInfo;

    return-object v0
.end method

.method public getImageInputPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yalantis/ucrop/model/CropParameters;->mImageInputPath:Ljava/lang/String;

    return-object v0
.end method

.method public getImageOutputPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yalantis/ucrop/model/CropParameters;->mImageOutputPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxResultImageSizeX()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/yalantis/ucrop/model/CropParameters;->mMaxResultImageSizeX:I

    return v0
.end method

.method public getMaxResultImageSizeY()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/yalantis/ucrop/model/CropParameters;->mMaxResultImageSizeY:I

    return v0
.end method
