.class public Lcom/cooltechworks/views/ScratchImageView;
.super Landroid/widget/ImageView;
.source "ScratchImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooltechworks/views/ScratchImageView$IRevealListener;
    }
.end annotation


# static fields
.field public static final STROKE_WIDTH:F = 12.0f

.field private static final TOUCH_TOLERANCE:F = 4.0f


# instance fields
.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mErasePaint:Landroid/graphics/Paint;

.field private mErasePath:Landroid/graphics/Path;

.field private mGradientBgPaint:Landroid/graphics/Paint;

.field private mRevealListener:Lcom/cooltechworks/views/ScratchImageView$IRevealListener;

.field private mRevealPercent:F

.field private mScratchBitmap:Landroid/graphics/Bitmap;

.field private mThreadCount:I

.field private mTouchPath:Landroid/graphics/Path;

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mThreadCount:I

    .line 117
    invoke-direct {p0}, Lcom/cooltechworks/views/ScratchImageView;->init()V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mThreadCount:I

    .line 123
    invoke-direct {p0}, Lcom/cooltechworks/views/ScratchImageView;->init()V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mThreadCount:I

    .line 128
    invoke-direct {p0}, Lcom/cooltechworks/views/ScratchImageView;->init()V

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/cooltechworks/views/ScratchImageView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/cooltechworks/views/ScratchImageView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mScratchBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$110(Lcom/cooltechworks/views/ScratchImageView;)I
    .locals 2
    .param p0, "x0"    # Lcom/cooltechworks/views/ScratchImageView;

    .prologue
    .line 46
    iget v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mThreadCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/cooltechworks/views/ScratchImageView;->mThreadCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/cooltechworks/views/ScratchImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/cooltechworks/views/ScratchImageView;

    .prologue
    .line 46
    iget v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mRevealPercent:F

    return v0
.end method

.method static synthetic access$202(Lcom/cooltechworks/views/ScratchImageView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/cooltechworks/views/ScratchImageView;
    .param p1, "x1"    # F

    .prologue
    .line 46
    iput p1, p0, Lcom/cooltechworks/views/ScratchImageView;->mRevealPercent:F

    return p1
.end method

.method static synthetic access$300(Lcom/cooltechworks/views/ScratchImageView;)Lcom/cooltechworks/views/ScratchImageView$IRevealListener;
    .locals 1
    .param p0, "x0"    # Lcom/cooltechworks/views/ScratchImageView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mRevealListener:Lcom/cooltechworks/views/ScratchImageView$IRevealListener;

    return-object v0
.end method

.method private checkRevealed()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 324
    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchImageView;->isRevealed()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/cooltechworks/views/ScratchImageView;->mRevealListener:Lcom/cooltechworks/views/ScratchImageView$IRevealListener;

    if-eqz v5, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchImageView;->getImageBounds()[I

    move-result-object v0

    .line 327
    .local v0, "bounds":[I
    aget v2, v0, v9

    .line 328
    .local v2, "left":I
    aget v3, v0, v8

    .line 329
    .local v3, "top":I
    aget v5, v0, v10

    sub-int v4, v5, v2

    .line 330
    .local v4, "width":I
    aget v5, v0, v11

    sub-int v1, v5, v3

    .line 333
    .local v1, "height":I
    iget v5, p0, Lcom/cooltechworks/views/ScratchImageView;->mThreadCount:I

    if-le v5, v8, :cond_1

    .line 334
    const-string v5, "Captcha"

    const-string v6, "Count greater than 1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v0    # "bounds":[I
    .end local v1    # "height":I
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v4    # "width":I
    :cond_0
    :goto_0
    return-void

    .line 338
    .restart local v0    # "bounds":[I
    .restart local v1    # "height":I
    .restart local v2    # "left":I
    .restart local v3    # "top":I
    .restart local v4    # "width":I
    :cond_1
    iget v5, p0, Lcom/cooltechworks/views/ScratchImageView;->mThreadCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/cooltechworks/views/ScratchImageView;->mThreadCount:I

    .line 340
    new-instance v5, Lcom/cooltechworks/views/ScratchImageView$1;

    invoke-direct {v5, p0}, Lcom/cooltechworks/views/ScratchImageView$1;-><init>(Lcom/cooltechworks/views/ScratchImageView;)V

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Integer;

    .line 377
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {v5, v6}, Lcom/cooltechworks/views/ScratchImageView$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private drawPath()V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mErasePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/cooltechworks/views/ScratchImageView;->mX:F

    iget v2, p0, Lcom/cooltechworks/views/ScratchImageView;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 256
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/cooltechworks/views/ScratchImageView;->mErasePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/cooltechworks/views/ScratchImageView;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 258
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mTouchPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 259
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mErasePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 260
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mErasePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/cooltechworks/views/ScratchImageView;->mX:F

    iget v2, p0, Lcom/cooltechworks/views/ScratchImageView;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 262
    invoke-direct {p0}, Lcom/cooltechworks/views/ScratchImageView;->checkRevealed()V

    .line 263
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 145
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/cooltechworks/views/ScratchImageView;->mTouchPath:Landroid/graphics/Path;

    .line 147
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/cooltechworks/views/ScratchImageView;->mErasePaint:Landroid/graphics/Paint;

    .line 148
    iget-object v1, p0, Lcom/cooltechworks/views/ScratchImageView;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 149
    iget-object v1, p0, Lcom/cooltechworks/views/ScratchImageView;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 150
    iget-object v1, p0, Lcom/cooltechworks/views/ScratchImageView;->mErasePaint:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    iget-object v1, p0, Lcom/cooltechworks/views/ScratchImageView;->mErasePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    iget-object v1, p0, Lcom/cooltechworks/views/ScratchImageView;->mErasePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 153
    iget-object v1, p0, Lcom/cooltechworks/views/ScratchImageView;->mErasePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 154
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/cooltechworks/views/ScratchImageView;->setStrokeWidth(I)V

    .line 156
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/cooltechworks/views/ScratchImageView;->mGradientBgPaint:Landroid/graphics/Paint;

    .line 158
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/cooltechworks/views/ScratchImageView;->mErasePath:Landroid/graphics/Path;

    .line 159
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/cooltechworks/views/ScratchImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 161
    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cooltechworks/views/R$drawable;->ic_scratch_pattern:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    .local v0, "scratchBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/cooltechworks/views/ScratchImageView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 163
    iget-object v1, p0, Lcom/cooltechworks/views/ScratchImageView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 165
    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchImageView;->setEraserMode()V

    .line 167
    return-void
.end method

.method private touch_move(FF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 237
    iget v2, p0, Lcom/cooltechworks/views/ScratchImageView;->mX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 238
    .local v0, "dx":F
    iget v2, p0, Lcom/cooltechworks/views/ScratchImageView;->mY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 239
    .local v1, "dy":F
    cmpl-float v2, v0, v3

    if-gez v2, :cond_0

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_1

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/cooltechworks/views/ScratchImageView;->mErasePath:Landroid/graphics/Path;

    iget v3, p0, Lcom/cooltechworks/views/ScratchImageView;->mX:F

    iget v4, p0, Lcom/cooltechworks/views/ScratchImageView;->mY:F

    iget v5, p0, Lcom/cooltechworks/views/ScratchImageView;->mX:F

    add-float/2addr v5, p1

    div-float/2addr v5, v7

    iget v6, p0, Lcom/cooltechworks/views/ScratchImageView;->mY:F

    add-float/2addr v6, p2

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 241
    iput p1, p0, Lcom/cooltechworks/views/ScratchImageView;->mX:F

    .line 242
    iput p2, p0, Lcom/cooltechworks/views/ScratchImageView;->mY:F

    .line 244
    invoke-direct {p0}, Lcom/cooltechworks/views/ScratchImageView;->drawPath()V

    .line 248
    :cond_1
    iget-object v2, p0, Lcom/cooltechworks/views/ScratchImageView;->mTouchPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 249
    iget-object v2, p0, Lcom/cooltechworks/views/ScratchImageView;->mTouchPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/cooltechworks/views/ScratchImageView;->mX:F

    iget v4, p0, Lcom/cooltechworks/views/ScratchImageView;->mY:F

    const/high16 v5, 0x41f00000    # 30.0f

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 251
    return-void
.end method

.method private touch_start(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 197
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mErasePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 198
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mErasePath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 199
    iput p1, p0, Lcom/cooltechworks/views/ScratchImageView;->mX:F

    .line 200
    iput p2, p0, Lcom/cooltechworks/views/ScratchImageView;->mY:F

    .line 201
    return-void
.end method

.method private touch_up()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/cooltechworks/views/ScratchImageView;->drawPath()V

    .line 272
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 15

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchImageView;->getImageBounds()[I

    move-result-object v7

    .line 210
    .local v7, "bounds":[I
    const/4 v0, 0x0

    aget v11, v7, v0

    .line 211
    .local v11, "left":I
    const/4 v0, 0x1

    aget v13, v7, v0

    .line 212
    .local v13, "top":I
    const/4 v0, 0x2

    aget v12, v7, v0

    .line 213
    .local v12, "right":I
    const/4 v0, 0x3

    aget v6, v7, v0

    .line 215
    .local v6, "bottom":I
    sub-int v14, v12, v11

    .line 216
    .local v14, "width":I
    sub-int v10, v6, v13

    .line 217
    .local v10, "height":I
    div-int/lit8 v0, v14, 0x2

    add-int v8, v11, v0

    .line 218
    .local v8, "centerX":I
    div-int/lit8 v0, v10, 0x2

    add-int v9, v13, v0

    .line 220
    .local v9, "centerY":I
    div-int/lit8 v0, v14, 0x2

    sub-int v11, v8, v0

    .line 221
    div-int/lit8 v0, v10, 0x2

    sub-int v13, v9, v0

    .line 222
    add-int v12, v11, v14

    .line 223
    add-int v6, v13, v10

    .line 225
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 226
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 229
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v1, v11

    int-to-float v2, v13

    int-to-float v3, v12

    int-to-float v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 230
    invoke-direct {p0}, Lcom/cooltechworks/views/ScratchImageView;->checkRevealed()V

    .line 231
    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchImageView;->invalidate()V

    .line 232
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getErasePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mErasePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getImageBounds()[I
    .locals 19

    .prologue
    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/cooltechworks/views/ScratchImageView;->getPaddingLeft()I

    move-result v8

    .line 385
    .local v8, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/cooltechworks/views/ScratchImageView;->getPaddingTop()I

    move-result v10

    .line 386
    .local v10, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/cooltechworks/views/ScratchImageView;->getPaddingRight()I

    move-result v9

    .line 387
    .local v9, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/cooltechworks/views/ScratchImageView;->getPaddingBottom()I

    move-result v7

    .line 389
    .local v7, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/cooltechworks/views/ScratchImageView;->getWidth()I

    move-result v16

    sub-int v16, v16, v8

    sub-int v14, v16, v9

    .line 390
    .local v14, "vwidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/cooltechworks/views/ScratchImageView;->getHeight()I

    move-result v16

    sub-int v16, v16, v7

    sub-int v13, v16, v10

    .line 392
    .local v13, "vheight":I
    div-int/lit8 v2, v14, 0x2

    .line 393
    .local v2, "centerX":I
    div-int/lit8 v3, v13, 0x2

    .line 396
    .local v3, "centerY":I
    invoke-virtual/range {p0 .. p0}, Lcom/cooltechworks/views/ScratchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 397
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 399
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 400
    .local v15, "width":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 402
    .local v5, "height":I
    if-gtz v15, :cond_0

    .line 403
    iget v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    iget v0, v1, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v15, v16, v17

    .line 406
    :cond_0
    if-gtz v5, :cond_1

    .line 407
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    iget v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    sub-int v5, v16, v17

    .line 413
    :cond_1
    if-le v5, v13, :cond_2

    .line 414
    move v5, v13

    .line 417
    :cond_2
    if-le v15, v14, :cond_3

    .line 418
    move v15, v14

    .line 422
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/cooltechworks/views/ScratchImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v11

    .line 424
    .local v11, "scaleType":Landroid/widget/ImageView$ScaleType;
    sget-object v16, Lcom/cooltechworks/views/ScratchImageView$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {v11}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 438
    move v6, v8

    .line 439
    .local v6, "left":I
    move v12, v10

    .line 440
    .local v12, "top":I
    move v15, v14

    .line 441
    move v5, v13

    .line 446
    :goto_0
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v6, v16, v17

    const/16 v17, 0x1

    aput v12, v16, v17

    const/16 v17, 0x2

    add-int v18, v6, v15

    aput v18, v16, v17

    const/16 v17, 0x3

    add-int v18, v12, v5

    aput v18, v16, v17

    return-object v16

    .line 426
    .end local v6    # "left":I
    .end local v12    # "top":I
    :pswitch_0
    move v6, v8

    .line 427
    .restart local v6    # "left":I
    div-int/lit8 v16, v5, 0x2

    sub-int v12, v3, v16

    .line 428
    .restart local v12    # "top":I
    goto :goto_0

    .line 430
    .end local v6    # "left":I
    .end local v12    # "top":I
    :pswitch_1
    sub-int v16, v14, v9

    sub-int v6, v16, v15

    .line 431
    .restart local v6    # "left":I
    div-int/lit8 v16, v5, 0x2

    sub-int v12, v3, v16

    .line 432
    .restart local v12    # "top":I
    goto :goto_0

    .line 434
    .end local v6    # "left":I
    .end local v12    # "top":I
    :pswitch_2
    div-int/lit8 v16, v15, 0x2

    sub-int v6, v2, v16

    .line 435
    .restart local v6    # "left":I
    div-int/lit8 v16, v5, 0x2

    sub-int v12, v3, v16

    .line 436
    .restart local v12    # "top":I
    goto :goto_0

    .line 424
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isRevealed()Z
    .locals 2

    .prologue
    .line 319
    iget v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mRevealPercent:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 190
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 191
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mScratchBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/cooltechworks/views/ScratchImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 192
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mErasePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/cooltechworks/views/ScratchImageView;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 194
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 172
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mScratchBitmap:Landroid/graphics/Bitmap;

    .line 173
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/cooltechworks/views/ScratchImageView;->mScratchBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mCanvas:Landroid/graphics/Canvas;

    .line 175
    new-instance v8, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mScratchBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/cooltechworks/views/ScratchImageView;->mScratchBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v8, v3, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 176
    .local v8, "rect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 178
    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/cooltechworks/views/R$color;->scratch_start_gradient:I

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 179
    .local v5, "startGradientColor":I
    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/cooltechworks/views/R$color;->scratch_end_gradient:I

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 181
    .local v6, "endGradientColor":I
    iget-object v9, p0, Lcom/cooltechworks/views/ScratchImageView;->mGradientBgPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchImageView;->getHeight()I

    move-result v2

    int-to-float v4, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 183
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/cooltechworks/views/ScratchImageView;->mGradientBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 184
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/cooltechworks/views/ScratchImageView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 185
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 277
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 279
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 295
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 281
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/cooltechworks/views/ScratchImageView;->touch_start(FF)V

    .line 282
    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchImageView;->invalidate()V

    goto :goto_0

    .line 285
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/cooltechworks/views/ScratchImageView;->touch_move(FF)V

    .line 286
    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchImageView;->invalidate()V

    goto :goto_0

    .line 289
    :pswitch_2
    invoke-direct {p0}, Lcom/cooltechworks/views/ScratchImageView;->touch_up()V

    .line 290
    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchImageView;->invalidate()V

    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public reveal()V
    .locals 0

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchImageView;->clear()V

    .line 267
    return-void
.end method

.method public setEraserMode()V
    .locals 3

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchImageView;->getErasePaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 312
    return-void
.end method

.method public setRevealListener(Lcom/cooltechworks/views/ScratchImageView$IRevealListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/cooltechworks/views/ScratchImageView$IRevealListener;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/cooltechworks/views/ScratchImageView;->mRevealListener:Lcom/cooltechworks/views/ScratchImageView$IRevealListener;

    .line 316
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 3
    .param p1, "multiplier"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchImageView;->mErasePaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    return-void
.end method
