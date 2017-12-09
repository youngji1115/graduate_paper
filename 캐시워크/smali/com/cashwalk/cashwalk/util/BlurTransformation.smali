.class public Lcom/cashwalk/cashwalk/util/BlurTransformation;
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
    .line 14
    const/16 v0, 0x19

    sput v0, Lcom/cashwalk/cashwalk/util/BlurTransformation;->MAX_RADIUS:I

    .line 15
    const/4 v0, 0x1

    sput v0, Lcom/cashwalk/cashwalk/util/BlurTransformation;->DEFAULT_DOWN_SAMPLING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget v0, Lcom/cashwalk/cashwalk/util/BlurTransformation;->MAX_RADIUS:I

    sget v1, Lcom/cashwalk/cashwalk/util/BlurTransformation;->DEFAULT_DOWN_SAMPLING:I

    invoke-direct {p0, p1, v0, v1}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;II)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # I

    .prologue
    .line 27
    sget v0, Lcom/cashwalk/cashwalk/util/BlurTransformation;->DEFAULT_DOWN_SAMPLING:I

    invoke-direct {p0, p1, p2, v0}, Lcom/cashwalk/cashwalk/util/BlurTransformation;-><init>(Landroid/content/Context;II)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # I
    .param p3, "sampling"    # I

    .prologue
    const/16 v1, 0x19

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/BlurTransformation;->mContext:Landroid/content/Context;

    .line 32
    iput p2, p0, Lcom/cashwalk/cashwalk/util/BlurTransformation;->mRadius:I

    .line 33
    iget v0, p0, Lcom/cashwalk/cashwalk/util/BlurTransformation;->mRadius:I

    if-le v0, v1, :cond_1

    .line 34
    iput v1, p0, Lcom/cashwalk/cashwalk/util/BlurTransformation;->mRadius:I

    .line 38
    :cond_0
    :goto_0
    iput p3, p0, Lcom/cashwalk/cashwalk/util/BlurTransformation;->mSampling:I

    .line 39
    return-void

    .line 35
    :cond_1
    iget v0, p0, Lcom/cashwalk/cashwalk/util/BlurTransformation;->mRadius:I

    if-gtz v0, :cond_0

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/util/BlurTransformation;->mRadius:I

    goto :goto_0
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlurTransformation(radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cashwalk/cashwalk/util/BlurTransformation;->mRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cashwalk/cashwalk/util/BlurTransformation;->mSampling:I

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
    .locals 9
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/cashwalk/cashwalk/util/BlurTransformation;->mSampling:I

    div-int v4, v5, v6

    .line 46
    .local v4, "scaledWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/cashwalk/cashwalk/util/BlurTransformation;->mSampling:I

    div-int v3, v5, v6

    .line 48
    .local v3, "scaledHeight":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 51
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget v5, p0, Lcom/cashwalk/cashwalk/util/BlurTransformation;->mSampling:I

    int-to-float v5, v5

    div-float v5, v8, v5

    iget v6, p0, Lcom/cashwalk/cashwalk/util/BlurTransformation;->mSampling:I

    int-to-float v6, v6

    div-float v6, v8, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 52
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 53
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 54
    invoke-virtual {v1, p1, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 56
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_0

    .line 58
    :try_start_0
    iget-object v5, p0, Lcom/cashwalk/cashwalk/util/BlurTransformation;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/cashwalk/cashwalk/util/BlurTransformation;->mRadius:I

    invoke-static {v5, v0, v6}, Lcom/cashwalk/cashwalk/util/RenderScriptBlur;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/support/v8/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 67
    return-object v0

    .line 59
    :catch_0
    move-exception v5

    goto :goto_0
.end method
