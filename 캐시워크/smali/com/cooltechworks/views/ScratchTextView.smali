.class public Lcom/cooltechworks/views/ScratchTextView;
.super Landroid/widget/TextView;
.source "ScratchTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooltechworks/views/ScratchTextView$IRevealListener;
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

.field private mRevealListener:Lcom/cooltechworks/views/ScratchTextView$IRevealListener;

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
    .line 117
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mThreadCount:I

    .line 118
    invoke-direct {p0}, Lcom/cooltechworks/views/ScratchTextView;->init()V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mThreadCount:I

    .line 124
    invoke-direct {p0}, Lcom/cooltechworks/views/ScratchTextView;->init()V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mThreadCount:I

    .line 129
    invoke-direct {p0}, Lcom/cooltechworks/views/ScratchTextView;->init()V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/cooltechworks/views/ScratchTextView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/cooltechworks/views/ScratchTextView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mScratchBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$110(Lcom/cooltechworks/views/ScratchTextView;)I
    .locals 2
    .param p0, "x0"    # Lcom/cooltechworks/views/ScratchTextView;

    .prologue
    .line 45
    iget v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mThreadCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/cooltechworks/views/ScratchTextView;->mThreadCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/cooltechworks/views/ScratchTextView;)F
    .locals 1
    .param p0, "x0"    # Lcom/cooltechworks/views/ScratchTextView;

    .prologue
    .line 45
    iget v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mRevealPercent:F

    return v0
.end method

.method static synthetic access$202(Lcom/cooltechworks/views/ScratchTextView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/cooltechworks/views/ScratchTextView;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/cooltechworks/views/ScratchTextView;->mRevealPercent:F

    return p1
.end method

.method static synthetic access$300(Lcom/cooltechworks/views/ScratchTextView;)Lcom/cooltechworks/views/ScratchTextView$IRevealListener;
    .locals 1
    .param p0, "x0"    # Lcom/cooltechworks/views/ScratchTextView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mRevealListener:Lcom/cooltechworks/views/ScratchTextView$IRevealListener;

    return-object v0
.end method

.method private checkRevealed()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 297
    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchTextView;->isRevealed()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/cooltechworks/views/ScratchTextView;->mRevealListener:Lcom/cooltechworks/views/ScratchTextView$IRevealListener;

    if-eqz v5, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/cooltechworks/views/ScratchTextView;->getTextBounds()[I

    move-result-object v0

    .line 300
    .local v0, "bounds":[I
    aget v2, v0, v9

    .line 301
    .local v2, "left":I
    aget v3, v0, v8

    .line 302
    .local v3, "top":I
    aget v5, v0, v10

    sub-int v4, v5, v2

    .line 303
    .local v4, "width":I
    aget v5, v0, v11

    sub-int v1, v5, v3

    .line 307
    .local v1, "height":I
    iget v5, p0, Lcom/cooltechworks/views/ScratchTextView;->mThreadCount:I

    if-le v5, v8, :cond_1

    .line 354
    .end local v0    # "bounds":[I
    .end local v1    # "height":I
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v4    # "width":I
    :cond_0
    :goto_0
    return-void

    .line 311
    .restart local v0    # "bounds":[I
    .restart local v1    # "height":I
    .restart local v2    # "left":I
    .restart local v3    # "top":I
    .restart local v4    # "width":I
    :cond_1
    iget v5, p0, Lcom/cooltechworks/views/ScratchTextView;->mThreadCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/cooltechworks/views/ScratchTextView;->mThreadCount:I

    .line 313
    new-instance v5, Lcom/cooltechworks/views/ScratchTextView$1;

    invoke-direct {v5, p0}, Lcom/cooltechworks/views/ScratchTextView$1;-><init>(Lcom/cooltechworks/views/ScratchTextView;)V

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Integer;

    .line 351
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

    invoke-virtual {v5, v6}, Lcom/cooltechworks/views/ScratchTextView$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private drawPath()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mErasePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/cooltechworks/views/ScratchTextView;->mX:F

    iget v2, p0, Lcom/cooltechworks/views/ScratchTextView;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 228
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/cooltechworks/views/ScratchTextView;->mErasePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/cooltechworks/views/ScratchTextView;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 230
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mTouchPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 231
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mErasePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 232
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mErasePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/cooltechworks/views/ScratchTextView;->mX:F

    iget v2, p0, Lcom/cooltechworks/views/ScratchTextView;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 234
    invoke-direct {p0}, Lcom/cooltechworks/views/ScratchTextView;->checkRevealed()V

    .line 235
    return-void
.end method

.method private getTextBounds()[I
    .locals 1

    .prologue
    .line 369
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/cooltechworks/views/ScratchTextView;->getTextBounds(F)[I

    move-result-object v0

    return-object v0
.end method

.method private getTextBounds(F)[I
    .locals 22
    .param p1, "scale"    # F

    .prologue
    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/cooltechworks/views/ScratchTextView;->getPaddingLeft()I

    move-result v10

    .line 375
    .local v10, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/cooltechworks/views/ScratchTextView;->getPaddingTop()I

    move-result v12

    .line 376
    .local v12, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/cooltechworks/views/ScratchTextView;->getPaddingRight()I

    move-result v11

    .line 377
    .local v11, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/cooltechworks/views/ScratchTextView;->getPaddingBottom()I

    move-result v9

    .line 379
    .local v9, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/cooltechworks/views/ScratchTextView;->getWidth()I

    move-result v17

    .line 380
    .local v17, "vwidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/cooltechworks/views/ScratchTextView;->getHeight()I

    move-result v16

    .line 382
    .local v16, "vheight":I
    div-int/lit8 v2, v17, 0x2

    .line 383
    .local v2, "centerX":I
    div-int/lit8 v3, v16, 0x2

    .line 386
    .local v3, "centerY":I
    invoke-virtual/range {p0 .. p0}, Lcom/cooltechworks/views/ScratchTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    .line 388
    .local v13, "paint":Landroid/text/TextPaint;
    invoke-virtual/range {p0 .. p0}, Lcom/cooltechworks/views/ScratchTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 390
    .local v14, "text":Ljava/lang/String;
    invoke-static {v14, v13}, Lcom/cooltechworks/views/ScratchTextView;->getTextDimens(Ljava/lang/String;Landroid/graphics/Paint;)[I

    move-result-object v4

    .line 391
    .local v4, "dimens":[I
    const/16 v19, 0x0

    aget v18, v4, v19

    .line 392
    .local v18, "width":I
    const/16 v19, 0x1

    aget v6, v4, v19

    .line 394
    .local v6, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/cooltechworks/views/ScratchTextView;->getLineCount()I

    move-result v8

    .line 395
    .local v8, "lines":I
    mul-int/2addr v6, v8

    .line 396
    div-int v18, v18, v8

    .line 399
    const/4 v7, 0x0

    .line 400
    .local v7, "left":I
    const/4 v15, 0x0

    .line 402
    .local v15, "top":I
    move/from16 v0, v16

    if-le v6, v0, :cond_2

    .line 403
    add-int v19, v9, v12

    sub-int v6, v16, v19

    .line 409
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    .line 410
    add-int v19, v10, v11

    sub-int v18, v17, v19

    .line 416
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/cooltechworks/views/ScratchTextView;->getGravity()I

    move-result v5

    .line 420
    .local v5, "gravity":I
    and-int/lit8 v19, v5, 0x3

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 421
    move v7, v10

    .line 431
    :cond_0
    :goto_2
    and-int/lit8 v19, v5, 0x30

    const/16 v20, 0x30

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 432
    move v15, v12

    .line 442
    :cond_1
    :goto_3
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v7, v19, v20

    const/16 v20, 0x1

    aput v15, v19, v20

    const/16 v20, 0x2

    add-int v21, v7, v18

    aput v21, v19, v20

    const/16 v20, 0x3

    add-int v21, v15, v6

    aput v21, v19, v20

    return-object v19

    .line 406
    .end local v5    # "gravity":I
    :cond_2
    int-to-float v0, v6

    move/from16 v19, v0

    mul-float v19, v19, p1

    move/from16 v0, v19

    float-to-int v6, v0

    goto :goto_0

    .line 413
    :cond_3
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p1

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    goto :goto_1

    .line 424
    .restart local v5    # "gravity":I
    :cond_4
    and-int/lit8 v19, v5, 0x5

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 425
    sub-int v19, v17, v11

    sub-int v7, v19, v18

    goto :goto_2

    .line 427
    :cond_5
    and-int/lit8 v19, v5, 0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 428
    div-int/lit8 v19, v18, 0x2

    sub-int v7, v2, v19

    goto :goto_2

    .line 434
    :cond_6
    and-int/lit8 v19, v5, 0x50

    const/16 v20, 0x50

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 435
    sub-int v19, v16, v9

    sub-int v15, v19, v6

    goto :goto_3

    .line 438
    :cond_7
    and-int/lit8 v19, v5, 0x10

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 439
    div-int/lit8 v19, v6, 0x2

    sub-int v15, v3, v19

    goto :goto_3
.end method

.method private static getTextDimens(Ljava/lang/String;Landroid/graphics/Paint;)[I
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v6, 0x0

    .line 359
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 360
    .local v1, "end":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 361
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1, p0, v6, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 362
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int v3, v4, v5

    .line 363
    .local v3, "width":I
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int v2, v4, v5

    .line 365
    .local v2, "height":I
    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v3, v4, v6

    const/4 v5, 0x1

    aput v2, v4, v5

    return-object v4
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 146
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/cooltechworks/views/ScratchTextView;->mTouchPath:Landroid/graphics/Path;

    .line 148
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/cooltechworks/views/ScratchTextView;->mErasePaint:Landroid/graphics/Paint;

    .line 149
    iget-object v1, p0, Lcom/cooltechworks/views/ScratchTextView;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 150
    iget-object v1, p0, Lcom/cooltechworks/views/ScratchTextView;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 151
    iget-object v1, p0, Lcom/cooltechworks/views/ScratchTextView;->mErasePaint:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v1, p0, Lcom/cooltechworks/views/ScratchTextView;->mErasePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 153
    iget-object v1, p0, Lcom/cooltechworks/views/ScratchTextView;->mErasePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 154
    iget-object v1, p0, Lcom/cooltechworks/views/ScratchTextView;->mErasePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 155
    iget-object v1, p0, Lcom/cooltechworks/views/ScratchTextView;->mErasePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 157
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/cooltechworks/views/ScratchTextView;->setStrokeWidth(I)V

    .line 159
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/cooltechworks/views/ScratchTextView;->mGradientBgPaint:Landroid/graphics/Paint;

    .line 161
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/cooltechworks/views/ScratchTextView;->mErasePath:Landroid/graphics/Path;

    .line 162
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/cooltechworks/views/ScratchTextView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 165
    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cooltechworks/views/R$drawable;->ic_scratch_pattern:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    .local v0, "scratchBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/cooltechworks/views/ScratchTextView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 167
    iget-object v1, p0, Lcom/cooltechworks/views/ScratchTextView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 170
    return-void
.end method

.method private touch_move(FF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 210
    iget v2, p0, Lcom/cooltechworks/views/ScratchTextView;->mX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 211
    .local v0, "dx":F
    iget v2, p0, Lcom/cooltechworks/views/ScratchTextView;->mY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 212
    .local v1, "dy":F
    cmpl-float v2, v0, v3

    if-gez v2, :cond_0

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_1

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/cooltechworks/views/ScratchTextView;->mErasePath:Landroid/graphics/Path;

    iget v3, p0, Lcom/cooltechworks/views/ScratchTextView;->mX:F

    iget v4, p0, Lcom/cooltechworks/views/ScratchTextView;->mY:F

    iget v5, p0, Lcom/cooltechworks/views/ScratchTextView;->mX:F

    add-float/2addr v5, p1

    div-float/2addr v5, v7

    iget v6, p0, Lcom/cooltechworks/views/ScratchTextView;->mY:F

    add-float/2addr v6, p2

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 214
    iput p1, p0, Lcom/cooltechworks/views/ScratchTextView;->mX:F

    .line 215
    iput p2, p0, Lcom/cooltechworks/views/ScratchTextView;->mY:F

    .line 217
    invoke-direct {p0}, Lcom/cooltechworks/views/ScratchTextView;->drawPath()V

    .line 220
    :cond_1
    iget-object v2, p0, Lcom/cooltechworks/views/ScratchTextView;->mTouchPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 221
    iget-object v2, p0, Lcom/cooltechworks/views/ScratchTextView;->mTouchPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/cooltechworks/views/ScratchTextView;->mX:F

    iget v4, p0, Lcom/cooltechworks/views/ScratchTextView;->mY:F

    const/high16 v5, 0x41f00000    # 30.0f

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 223
    return-void
.end method

.method private touch_start(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 201
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mErasePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 202
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mErasePath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 203
    iput p1, p0, Lcom/cooltechworks/views/ScratchTextView;->mX:F

    .line 204
    iput p2, p0, Lcom/cooltechworks/views/ScratchTextView;->mY:F

    .line 205
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public isRevealed()Z
    .locals 2

    .prologue
    .line 292
    iget v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mRevealPercent:F

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

    .line 194
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 195
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mScratchBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/cooltechworks/views/ScratchTextView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 196
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mErasePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/cooltechworks/views/ScratchTextView;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 198
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

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 175
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mScratchBitmap:Landroid/graphics/Bitmap;

    .line 176
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/cooltechworks/views/ScratchTextView;->mScratchBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mCanvas:Landroid/graphics/Canvas;

    .line 178
    new-instance v8, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mScratchBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/cooltechworks/views/ScratchTextView;->mScratchBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v8, v3, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 179
    .local v8, "rect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 181
    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/cooltechworks/views/R$color;->scratch_start_gradient:I

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 182
    .local v5, "startGradientColor":I
    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/cooltechworks/views/R$color;->scratch_end_gradient:I

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 185
    .local v6, "endGradientColor":I
    iget-object v9, p0, Lcom/cooltechworks/views/ScratchTextView;->mGradientBgPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchTextView;->getHeight()I

    move-result v2

    int-to-float v4, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 187
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/cooltechworks/views/ScratchTextView;->mGradientBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 188
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/cooltechworks/views/ScratchTextView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 189
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 261
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 263
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 279
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 265
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/cooltechworks/views/ScratchTextView;->touch_start(FF)V

    .line 266
    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchTextView;->invalidate()V

    goto :goto_0

    .line 269
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/cooltechworks/views/ScratchTextView;->touch_move(FF)V

    .line 270
    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchTextView;->invalidate()V

    goto :goto_0

    .line 273
    :pswitch_2
    invoke-direct {p0}, Lcom/cooltechworks/views/ScratchTextView;->drawPath()V

    .line 274
    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchTextView;->invalidate()V

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public reveal()V
    .locals 11

    .prologue
    .line 242
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p0, v0}, Lcom/cooltechworks/views/ScratchTextView;->getTextBounds(F)[I

    move-result-object v7

    .line 243
    .local v7, "bounds":[I
    const/4 v0, 0x0

    aget v8, v7, v0

    .line 244
    .local v8, "left":I
    const/4 v0, 0x1

    aget v10, v7, v0

    .line 245
    .local v10, "top":I
    const/4 v0, 0x2

    aget v9, v7, v0

    .line 246
    .local v9, "right":I
    const/4 v0, 0x3

    aget v6, v7, v0

    .line 248
    .local v6, "bottom":I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 249
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 252
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v1, v8

    int-to-float v2, v10

    int-to-float v3, v9

    int-to-float v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 253
    invoke-direct {p0}, Lcom/cooltechworks/views/ScratchTextView;->checkRevealed()V

    .line 254
    invoke-virtual {p0}, Lcom/cooltechworks/views/ScratchTextView;->invalidate()V

    .line 255
    return-void
.end method

.method public setRevealListener(Lcom/cooltechworks/views/ScratchTextView$IRevealListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/cooltechworks/views/ScratchTextView$IRevealListener;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/cooltechworks/views/ScratchTextView;->mRevealListener:Lcom/cooltechworks/views/ScratchTextView$IRevealListener;

    .line 289
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 3
    .param p1, "multiplier"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cooltechworks/views/ScratchTextView;->mErasePaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    return-void
.end method
