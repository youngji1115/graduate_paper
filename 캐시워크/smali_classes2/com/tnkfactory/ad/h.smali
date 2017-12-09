.class public abstract Lcom/tnkfactory/ad/h;
.super Lcom/tnkfactory/ad/j;


# instance fields
.field private k:Z

.field private l:Z

.field private m:Landroid/graphics/Bitmap;

.field private n:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/content/Context;III)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/j;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/tnkfactory/ad/h;->k:Z

    iput-boolean v0, p0, Lcom/tnkfactory/ad/h;->l:Z

    iput-object v1, p0, Lcom/tnkfactory/ad/h;->m:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/tnkfactory/ad/h;->n:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tnkfactory/ad/h;->a(Landroid/content/Context;III)V

    return-void
.end method

.method private a(III)[I
    .locals 11

    const/16 v0, 0xb

    new-array v8, v0, [I

    iget-boolean v0, p0, Lcom/tnkfactory/ad/h;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tnkfactory/ad/h;->l:Z

    if-eqz v0, :cond_3

    :cond_0
    if-le p1, p2, :cond_1

    int-to-float v2, p1

    const/high16 v0, 0x3f100000    # 0.5625f

    mul-float v1, v2, v0

    int-to-float v0, p1

    const v3, 0x3d535a86    # 0.0516f

    mul-float/2addr v0, v3

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v3

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_0
    sget-object v4, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget v4, v4, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonWidthScale:F

    mul-float/2addr v1, v4

    sget-object v4, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget v4, v4, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonHeightScale:F

    mul-float/2addr v0, v4

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    float-to-int v3, v3

    aput v3, v8, v4

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v4, v2

    float-to-int v4, v4

    aput v4, v8, v3

    iget-boolean v3, p0, Lcom/tnkfactory/ad/h;->k:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    const/4 v4, -0x1

    aput v4, v8, v3

    const/4 v3, 0x3

    int-to-float v4, p2

    sub-float v2, v4, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    aput v2, v8, v3

    :goto_1
    const/4 v2, 0x4

    aput p1, v8, v2

    const/4 v2, 0x5

    const/4 v3, -0x1

    aput v3, v8, v2

    const/4 v2, 0x6

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v3, v1

    float-to-int v3, v3

    aput v3, v8, v2

    const/4 v2, 0x7

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-int v0, v0

    aput v0, v8, v2

    const/16 v0, 0x8

    const/4 v2, 0x0

    aput v2, v8, v0

    const/16 v0, 0x9

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    aput v2, v8, v0

    const/16 v0, 0xa

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v8, v0

    :goto_2
    return-object v8

    :cond_1
    int-to-float v2, p1

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float v1, v2, v0

    int-to-float v0, p1

    const v3, 0x3daa9931    # 0.0833f

    mul-float/2addr v0, v3

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v3

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    shr-int/lit8 v2, p3, 0x4

    and-int/lit8 v2, v2, 0x7f

    int-to-float v2, v2

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v2, v4

    int-to-float v4, p1

    mul-float/2addr v2, v4

    const/high16 v4, 0x43000000    # 128.0f

    div-float/2addr v2, v4

    float-to-int v2, v2

    aput v2, v8, v3

    const/4 v2, 0x3

    const/4 v3, 0x2

    aget v3, v8, v3

    aput v3, v8, v2

    goto :goto_1

    :cond_3
    int-to-float v0, p3

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v2, v0, v1

    if-le p1, p2, :cond_4

    int-to-float v0, p1

    const v1, 0x3f241893    # 0.641f

    mul-float/2addr v0, v1

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    mul-float v6, v0, v2

    const v0, 0x3f1020c5    # 0.563f

    mul-float v5, v6, v0

    int-to-float v0, p1

    const v1, 0x3f3be76d    # 0.734f

    mul-float/2addr v0, v1

    const v1, 0x3f8ccccd    # 1.1f

    mul-float v4, v0, v1

    const v0, 0x3f218937    # 0.631f

    mul-float v3, v4, v0

    int-to-float v0, p1

    const v1, 0x3d3c6a7f    # 0.046f

    mul-float/2addr v0, v1

    const v1, 0x3f99999a    # 1.2f

    mul-float v2, v0, v1

    int-to-float v0, p1

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v0

    const v0, 0x3f2ac083    # 0.667f

    mul-float/2addr v0, v1

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    :goto_3
    sget-object v9, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget v9, v9, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonWidthScale:F

    mul-float/2addr v3, v9

    sget-object v9, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget v9, v9, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonHeightScale:F

    mul-float/2addr v2, v9

    const/4 v9, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v7, v10

    float-to-int v7, v7

    aput v7, v8, v9

    const/4 v7, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v6, v9

    float-to-int v6, v6

    aput v6, v8, v7

    const/4 v6, 0x2

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v5, v7

    float-to-int v5, v5

    aput v5, v8, v6

    const/4 v5, 0x3

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v8, v5

    const/4 v4, 0x4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v1, v5

    float-to-int v1, v1

    aput v1, v8, v4

    const/4 v1, 0x5

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v0, v4

    float-to-int v0, v0

    aput v0, v8, v1

    const/4 v0, 0x6

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v8, v0

    const/4 v0, 0x7

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v8, v0

    const/16 v0, 0x8

    const/4 v1, 0x0

    aput v1, v8, v0

    const/16 v0, 0x9

    const/4 v1, 0x0

    aput v1, v8, v0

    const/16 v0, 0xa

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v8, v0

    goto/16 :goto_2

    :cond_4
    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    int-to-float v3, p2

    cmpl-float v3, v0, v3

    if-lez v3, :cond_5

    int-to-float v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const v1, 0x3f2aacda    # 0.6667f

    mul-float/2addr v1, v0

    :cond_5
    const v3, 0x3f76872b    # 0.963f

    mul-float v4, v1, v3

    const v3, 0x3fb26e98    # 1.394f

    mul-float/2addr v3, v4

    const v5, 0x3f483127    # 0.782f

    mul-float/2addr v5, v1

    mul-float v6, v5, v2

    const v2, 0x3fc020c5    # 1.501f

    mul-float v5, v6, v2

    const v2, 0x3dae147b    # 0.085f

    mul-float/2addr v2, v1

    const v7, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    goto/16 :goto_3
.end method


# virtual methods
.method protected a()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tnkfactory/ad/j;->a()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/h;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/h;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/h;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/tnkfactory/ad/h;->m:Landroid/graphics/Bitmap;

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/h;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object v0, p0, Lcom/tnkfactory/ad/h;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/h;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/tnkfactory/ad/h;->n:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method

.method protected a(Landroid/content/Context;III)V
    .locals 15

    const/high16 v3, -0x60000000

    invoke-virtual {p0, v3}, Lcom/tnkfactory/ad/h;->setBackgroundColor(I)V

    if-nez p4, :cond_4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tnkfactory/ad/h;->k:Z

    :cond_0
    :goto_0
    move/from16 v0, p3

    move/from16 v1, p2

    move/from16 v2, p4

    invoke-direct {p0, v0, v1, v2}, Lcom/tnkfactory/ad/h;->a(III)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v6, v3, v4

    const/4 v4, 0x1

    aget v7, v3, v4

    const/4 v4, 0x4

    aget v8, v3, v4

    const/4 v4, 0x5

    aget v9, v3, v4

    const/4 v4, 0x6

    aget v10, v3, v4

    const/4 v4, 0x7

    aget v11, v3, v4

    const/16 v4, 0x8

    aget v12, v3, v4

    const/16 v4, 0x9

    aget v5, v3, v4

    const/16 v4, 0xa

    aget v4, v3, v4

    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v13, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xd

    invoke-virtual {v13, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v13, v8}, Lcom/tnkfactory/ad/fr;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/tnkfactory/ad/h;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xd

    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v6, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v9, v6}, Lcom/tnkfactory/ad/fr;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v6

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-boolean v6, p0, Lcom/tnkfactory/ad/h;->k:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/tnkfactory/ad/h;->l:Z

    if-eqz v6, :cond_5

    :cond_1
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v9, -0x1

    invoke-direct {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v7, 0x2

    const/4 v9, 0x2

    invoke-virtual {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v7, 0x10

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/tnkfactory/ad/fr;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v9, -0x1

    invoke-direct {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v7, 0x3

    const/4 v9, 0x2

    invoke-virtual {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v7, 0x11

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/tnkfactory/ad/fr;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-boolean v6, p0, Lcom/tnkfactory/ad/h;->l:Z

    if-eqz v6, :cond_2

    and-int/lit8 v6, p4, 0x3

    shr-int/lit8 v7, p4, 0x2

    and-int/lit8 v7, v7, 0x3

    const/4 v9, 0x2

    aget v9, v3, v9

    const/4 v13, 0x3

    aget v3, v3, v13

    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v13, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    packed-switch v6, :pswitch_data_0

    const/16 v3, 0x9

    invoke-virtual {v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_1
    packed-switch v7, :pswitch_data_1

    const/16 v3, 0xc

    invoke-virtual {v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_2
    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v13, v3}, Lcom/tnkfactory/ad/fr;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v3

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_2
    :goto_3
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    add-int v3, v10, v5

    add-int/2addr v3, v4

    add-int v6, v11, v5

    add-int/2addr v6, v4

    invoke-direct {v7, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget-object v3, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget-boolean v3, v3, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonAlignTop:Z

    if-eqz v3, :cond_6

    const/16 v3, 0xa

    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move v3, v4

    move v6, v5

    :goto_4
    sget-object v9, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget-boolean v9, v9, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonAlignRight:Z

    if-eqz v9, :cond_7

    const/16 v9, 0xb

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_5
    if-lez v12, :cond_3

    iput v12, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v12, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_3
    const/4 v9, 0x3

    move-object/from16 v0, p1

    invoke-static {v0, v7, v9}, Lcom/tnkfactory/ad/fr;->d(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageButton;

    move-result-object v7

    invoke-virtual {v7, v4, v6, v5, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    new-instance v3, Lcom/tnkfactory/ad/i;

    invoke-direct {v3, p0}, Lcom/tnkfactory/ad/i;-><init>(Lcom/tnkfactory/ad/h;)V

    invoke-virtual {v7, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_4
    const/16 v3, 0x800

    move/from16 v0, p4

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tnkfactory/ad/h;->l:Z

    goto/16 :goto_0

    :pswitch_0
    const/16 v3, 0x9

    invoke-virtual {v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :pswitch_1
    const/16 v3, 0xb

    invoke-virtual {v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :pswitch_2
    const/16 v3, 0xe

    invoke-virtual {v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :pswitch_3
    const/16 v3, 0xa

    invoke-virtual {v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    :pswitch_4
    const/16 v3, 0xc

    invoke-virtual {v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    :pswitch_5
    const/16 v3, 0xf

    invoke-virtual {v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    :cond_5
    const/4 v6, 0x2

    aget v6, v3, v6

    const/4 v7, 0x3

    aget v3, v3, v7

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v7, v3}, Lcom/tnkfactory/ad/fr;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v3

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    :cond_6
    const/16 v3, 0xc

    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move v3, v5

    move v6, v4

    goto :goto_4

    :cond_7
    const/16 v9, 0x9

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move v14, v4

    move v4, v5

    move v5, v14

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/h;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-boolean v1, p0, Lcom/tnkfactory/ad/h;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    div-float v1, v2, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/h;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    iput-object p1, p0, Lcom/tnkfactory/ad/h;->m:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/tnkfactory/ad/h;->n:Landroid/graphics/Bitmap;

    return-void
.end method

.method public getAdImageView()Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/h;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public setAdImage(Landroid/graphics/Bitmap;)V
    .locals 5

    const/16 v4, 0xa

    invoke-super {p0, p1}, Lcom/tnkfactory/ad/j;->setAdImage(Landroid/graphics/Bitmap;)V

    iget-boolean v0, p0, Lcom/tnkfactory/ad/h;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tnkfactory/ad/h;->l:Z

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/h;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    div-float v1, v2, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/h;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-static {p1, v1, v4}, Lcom/tnkfactory/ad/ii;->a(Landroid/graphics/Bitmap;II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_2
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/h;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-static {p1, v1, v4}, Lcom/tnkfactory/ad/ii;->a(Landroid/graphics/Bitmap;II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_3
    return-void
.end method
