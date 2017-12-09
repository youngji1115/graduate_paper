.class public Ljp/wasabeef/picasso/transformations/BlurTransformation;
.super Ljava/lang/Object;
.source "BlurTransformation.java"

# interfaces
.implements Lcom/squareup/picasso/Transformation;


# static fields
.field private static DEFAULT_DOWN_SAMPLING:I

.field private static MAX_RADIUS:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRadius:I

.field private mSampling:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x19

    sput v0, Ljp/wasabeef/picasso/transformations/BlurTransformation;->MAX_RADIUS:I

    .line 32
    const/4 v0, 0x1

    sput v0, Ljp/wasabeef/picasso/transformations/BlurTransformation;->DEFAULT_DOWN_SAMPLING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget v0, Ljp/wasabeef/picasso/transformations/BlurTransformation;->MAX_RADIUS:I

    sget v1, Ljp/wasabeef/picasso/transformations/BlurTransformation;->DEFAULT_DOWN_SAMPLING:I

    invoke-direct {p0, p1, v0, v1}, Ljp/wasabeef/picasso/transformations/BlurTransformation;-><init>(Landroid/content/Context;II)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # I

    .prologue
    .line 44
    sget v0, Ljp/wasabeef/picasso/transformations/BlurTransformation;->DEFAULT_DOWN_SAMPLING:I

    invoke-direct {p0, p1, p2, v0}, Ljp/wasabeef/picasso/transformations/BlurTransformation;-><init>(Landroid/content/Context;II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # I
    .param p3, "sampling"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/BlurTransformation;->mContext:Landroid/content/Context;

    .line 49
    iput p2, p0, Ljp/wasabeef/picasso/transformations/BlurTransformation;->mRadius:I

    .line 50
    iput p3, p0, Ljp/wasabeef/picasso/transformations/BlurTransformation;->mSampling:I

    .line 51
    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlurTransformation(radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/BlurTransformation;->mRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/BlurTransformation;->mSampling:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget v7, p0, Ljp/wasabeef/picasso/transformations/BlurTransformation;->mSampling:I

    div-int v5, v6, v7

    .line 56
    .local v5, "scaledWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v7, p0, Ljp/wasabeef/picasso/transformations/BlurTransformation;->mSampling:I

    div-int v4, v6, v7

    .line 58
    .local v4, "scaledHeight":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 61
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget v6, p0, Ljp/wasabeef/picasso/transformations/BlurTransformation;->mSampling:I

    int-to-float v6, v6

    div-float v6, v9, v6

    iget v7, p0, Ljp/wasabeef/picasso/transformations/BlurTransformation;->mSampling:I

    int-to-float v7, v7

    div-float v7, v9, v7

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 62
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 63
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setFlags(I)V

    .line 64
    invoke-virtual {v1, p1, v8, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 66
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_0

    .line 68
    :try_start_0
    iget-object v6, p0, Ljp/wasabeef/picasso/transformations/BlurTransformation;->mContext:Landroid/content/Context;

    iget v7, p0, Ljp/wasabeef/picasso/transformations/BlurTransformation;->mRadius:I

    invoke-static {v6, v0, v7}, Ljp/wasabeef/picasso/transformations/internal/RSBlur;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 76
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 78
    return-object v0

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Landroid/renderscript/RSRuntimeException;
    iget v6, p0, Ljp/wasabeef/picasso/transformations/BlurTransformation;->mRadius:I

    invoke-static {v0, v6, v10}, Ljp/wasabeef/picasso/transformations/internal/FastBlur;->blur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    goto :goto_0

    .line 73
    .end local v2    # "e":Landroid/renderscript/RSRuntimeException;
    :cond_0
    iget v6, p0, Ljp/wasabeef/picasso/transformations/BlurTransformation;->mRadius:I

    invoke-static {v0, v6, v10}, Ljp/wasabeef/picasso/transformations/internal/FastBlur;->blur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
