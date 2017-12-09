.class public Ljp/wasabeef/picasso/transformations/CropTransformation;
.super Ljava/lang/Object;
.source "CropTransformation.java"

# interfaces
.implements Lcom/squareup/picasso/Transformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;,
        Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PicassoTransformation"


# instance fields
.field private mAspectRatio:F

.field private mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

.field private mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

.field private mHeight:I

.field private mHeightRatio:F

.field private mLeft:I

.field private mTop:I

.field private mWidth:I

.field private mWidthRatio:F


# direct methods
.method public constructor <init>(FF)V
    .locals 2
    .param p1, "widthRatio"    # F
    .param p2, "heightRatio"    # F

    .prologue
    .line 149
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    sget-object v1, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    invoke-direct {p0, p1, p2, v0, v1}, Ljp/wasabeef/picasso/transformations/CropTransformation;-><init>(FFLjp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;)V

    .line 150
    return-void
.end method

.method public constructor <init>(FFFLjp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;)V
    .locals 1
    .param p1, "widthRatio"    # F
    .param p2, "heightRatio"    # F
    .param p3, "aspectRatio"    # F
    .param p4, "gravityHorizontal"    # Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;
    .param p5, "gravityVertical"    # Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 66
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 202
    iput p1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidthRatio:F

    .line 203
    iput p2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeightRatio:F

    .line 204
    iput p3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    .line 205
    iput-object p4, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 206
    iput-object p5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 207
    return-void
.end method

.method public constructor <init>(FFLjp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;)V
    .locals 1
    .param p1, "widthRatio"    # F
    .param p2, "heightRatio"    # F
    .param p3, "gravityHorizontal"    # Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;
    .param p4, "gravityVertical"    # Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 66
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 129
    iput p1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidthRatio:F

    .line 130
    iput p2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeightRatio:F

    .line 131
    iput-object p3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 132
    iput-object p4, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 133
    return-void
.end method

.method public constructor <init>(FLjp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;)V
    .locals 1
    .param p1, "aspectRatio"    # F
    .param p2, "gravityHorizontal"    # Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;
    .param p3, "gravityVertical"    # Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 66
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 220
    iput p1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    .line 221
    iput-object p2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 222
    iput-object p3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 223
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 109
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    sget-object v1, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    invoke-direct {p0, p1, p2, v0, v1}, Ljp/wasabeef/picasso/transformations/CropTransformation;-><init>(IILjp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;)V

    .line 110
    return-void
.end method

.method public constructor <init>(IIFLjp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "aspectRatio"    # F
    .param p4, "gravityHorizontal"    # Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;
    .param p5, "gravityVertical"    # Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 66
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 170
    iput p1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    .line 171
    iput p2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    .line 172
    iput p3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    .line 173
    iput-object p4, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 174
    iput-object p5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 175
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 66
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 78
    iput p1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mLeft:I

    .line 79
    iput p2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mTop:I

    .line 80
    iput p3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    .line 81
    iput p4, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    .line 82
    return-void
.end method

.method public constructor <init>(IILjp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravityHorizontal"    # Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;
    .param p4, "gravityVertical"    # Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 66
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 95
    iput p1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    .line 96
    iput p2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    .line 97
    iput-object p3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 98
    iput-object p4, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 99
    return-void
.end method

.method private getLeft(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 339
    sget-object v1, Ljp/wasabeef/picasso/transformations/CropTransformation$1;->$SwitchMap$jp$wasabeef$picasso$transformations$CropTransformation$GravityHorizontal:[I

    iget-object v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    invoke-virtual {v2}, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 347
    :goto_0
    :pswitch_0
    return v0

    .line 343
    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 345
    :pswitch_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTop(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 326
    sget-object v1, Ljp/wasabeef/picasso/transformations/CropTransformation$1;->$SwitchMap$jp$wasabeef$picasso$transformations$CropTransformation$GravityVertical:[I

    iget-object v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    invoke-virtual {v2}, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 334
    :goto_0
    :pswitch_0
    return v0

    .line 330
    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 332
    :pswitch_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CropTransformation(width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidthRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidthRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeightRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeightRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gravityHorizontal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGravityVertical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x2

    .line 226
    const-string v5, "PicassoTransformation"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "PicassoTransformation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "transform(): called, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljp/wasabeef/picasso/transformations/CropTransformation;->key()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    if-nez v5, :cond_1

    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidthRatio:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_1

    .line 229
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidthRatio:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    .line 231
    :cond_1
    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    if-nez v5, :cond_2

    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeightRatio:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_2

    .line 232
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeightRatio:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    .line 235
    :cond_2
    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_7

    .line 236
    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    if-nez v5, :cond_4

    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    if-nez v5, :cond_4

    .line 237
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 239
    .local v2, "sourceRatio":F
    const-string v5, "PicassoTransformation"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 240
    const-string v5, "PicassoTransformation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "transform(): mAspectRatio: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sourceRatio: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_3
    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    cmpl-float v5, v2, v5

    if-lez v5, :cond_10

    .line 246
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    .line 253
    .end local v2    # "sourceRatio":F
    :cond_4
    :goto_0
    const-string v5, "PicassoTransformation"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 254
    const-string v5, "PicassoTransformation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "transform(): before setting other of h/w: mAspectRatio: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", set one of width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_5
    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    if-eqz v5, :cond_11

    .line 259
    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    int-to-float v5, v5

    iget v6, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    .line 266
    :cond_6
    :goto_1
    const-string v5, "PicassoTransformation"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 267
    const-string v5, "PicassoTransformation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "transform(): mAspectRatio: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", set width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_7
    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    if-nez v5, :cond_8

    .line 274
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    .line 277
    :cond_8
    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    if-nez v5, :cond_9

    .line 278
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    .line 281
    :cond_9
    iget-object v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    if-eqz v5, :cond_a

    .line 282
    invoke-direct {p0, p1}, Ljp/wasabeef/picasso/transformations/CropTransformation;->getLeft(Landroid/graphics/Bitmap;)I

    move-result v5

    iput v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mLeft:I

    .line 284
    :cond_a
    iget-object v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    if-eqz v5, :cond_b

    .line 285
    invoke-direct {p0, p1}, Ljp/wasabeef/picasso/transformations/CropTransformation;->getTop(Landroid/graphics/Bitmap;)I

    move-result v5

    iput v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mTop:I

    .line 288
    :cond_b
    new-instance v3, Landroid/graphics/Rect;

    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mLeft:I

    iget v6, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mTop:I

    iget v7, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mLeft:I

    iget v8, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    add-int/2addr v7, v8

    iget v8, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mTop:I

    iget v9, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    add-int/2addr v8, v9

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 289
    .local v3, "sourceRect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    iget v6, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    invoke-direct {v4, v11, v11, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 291
    .local v4, "targetRect":Landroid/graphics/Rect;
    const-string v5, "PicassoTransformation"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 292
    const-string v5, "PicassoTransformation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "transform(): created sourceRect with mLeft: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mLeft:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mTop: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mTop:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", right: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mLeft:I

    iget v8, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bottom: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mTop:I

    iget v8, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_c
    const-string v5, "PicassoTransformation"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 297
    const-string v5, "PicassoTransformation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "transform(): created targetRect with width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_d
    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    iget v6, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 301
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 302
    .local v1, "canvas":Landroid/graphics/Canvas;
    const-string v5, "PicassoTransformation"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 303
    const-string v5, "PicassoTransformation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "transform(): copying from source with width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 304
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 303
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_e
    const/4 v5, 0x0

    invoke-virtual {v1, p1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 308
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 310
    const-string v5, "PicassoTransformation"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 311
    const-string v5, "PicassoTransformation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "transform(): returning bitmap with width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 312
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 311
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_f
    return-object v0

    .line 249
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "sourceRect":Landroid/graphics/Rect;
    .end local v4    # "targetRect":Landroid/graphics/Rect;
    .restart local v2    # "sourceRatio":F
    :cond_10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    goto/16 :goto_0

    .line 261
    .end local v2    # "sourceRatio":F
    :cond_11
    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    if-eqz v5, :cond_6

    .line 262
    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    int-to-float v5, v5

    iget v6, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    goto/16 :goto_1
.end method
