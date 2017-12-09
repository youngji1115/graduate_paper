.class public Ljp/wasabeef/picasso/transformations/MaskTransformation;
.super Ljava/lang/Object;
.source "MaskTransformation.java"

# interfaces
.implements Lcom/squareup/picasso/Transformation;


# static fields
.field private static mMaskingPaint:Landroid/graphics/Paint;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMaskId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Ljp/wasabeef/picasso/transformations/MaskTransformation;->mMaskingPaint:Landroid/graphics/Paint;

    .line 36
    sget-object v0, Ljp/wasabeef/picasso/transformations/MaskTransformation;->mMaskingPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maskId"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/MaskTransformation;->mContext:Landroid/content/Context;

    .line 46
    iput p2, p0, Ljp/wasabeef/picasso/transformations/MaskTransformation;->mMaskId:I

    .line 47
    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaskTransformation(maskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/wasabeef/picasso/transformations/MaskTransformation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Ljp/wasabeef/picasso/transformations/MaskTransformation;->mMaskId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 51
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 53
    .local v1, "height":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 55
    .local v3, "result":Landroid/graphics/Bitmap;
    iget-object v5, p0, Ljp/wasabeef/picasso/transformations/MaskTransformation;->mContext:Landroid/content/Context;

    iget v6, p0, Ljp/wasabeef/picasso/transformations/MaskTransformation;->mMaskId:I

    invoke-static {v5, v6}, Ljp/wasabeef/picasso/transformations/internal/Utils;->getMaskDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 57
    .local v2, "mask":Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 58
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2, v8, v8, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 59
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 60
    sget-object v5, Ljp/wasabeef/picasso/transformations/MaskTransformation;->mMaskingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v7, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 64
    return-object v3
.end method
