.class public Lcom/tnkfactory/ad/iy;
.super Lcom/tnkfactory/ad/il;

# interfaces
.implements Lcom/tnkfactory/ad/ft;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private a:Lcom/tnkfactory/ad/ck;

.field private b:Lcom/tnkfactory/ad/InterstitialAdItem;

.field private c:Lcom/tnkfactory/ad/fc;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private k:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tnkfactory/ad/AdItem;IILcom/tnkfactory/ad/ck;Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/il;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tnkfactory/ad/iy;->a:Lcom/tnkfactory/ad/ck;

    iput-object v1, p0, Lcom/tnkfactory/ad/iy;->b:Lcom/tnkfactory/ad/InterstitialAdItem;

    iput-object v1, p0, Lcom/tnkfactory/ad/iy;->c:Lcom/tnkfactory/ad/fc;

    const/16 v0, 0x2d0

    iput v0, p0, Lcom/tnkfactory/ad/iy;->d:I

    const/16 v0, 0x500

    iput v0, p0, Lcom/tnkfactory/ad/iy;->e:I

    iput-boolean v2, p0, Lcom/tnkfactory/ad/iy;->f:Z

    iput-boolean v2, p0, Lcom/tnkfactory/ad/iy;->g:Z

    iput-object v1, p0, Lcom/tnkfactory/ad/iy;->h:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/tnkfactory/ad/iy;->k:Z

    new-instance v0, Lcom/tnkfactory/ad/InterstitialAdItem;

    invoke-direct {v0, p2}, Lcom/tnkfactory/ad/InterstitialAdItem;-><init>(Lcom/tnkfactory/ad/AdItem;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/iy;->b:Lcom/tnkfactory/ad/InterstitialAdItem;

    iput p3, p0, Lcom/tnkfactory/ad/iy;->d:I

    iput p4, p0, Lcom/tnkfactory/ad/iy;->e:I

    iput-object p5, p0, Lcom/tnkfactory/ad/iy;->a:Lcom/tnkfactory/ad/ck;

    iput-object p6, p0, Lcom/tnkfactory/ad/iy;->h:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/tnkfactory/ad/iy;->k:Z

    invoke-direct {p0, p1, p3, p4}, Lcom/tnkfactory/ad/iy;->a(Landroid/content/Context;II)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/tnkfactory/ad/iy;->d:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    iget v0, p0, Lcom/tnkfactory/ad/iy;->e:I

    int-to-float v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v1, v0, 0x2

    :try_start_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    new-instance v0, Landroid/graphics/Rect;

    int-to-float v7, v3

    mul-float/2addr v7, v2

    float-to-int v7, v7

    int-to-float v8, v4

    mul-float/2addr v8, v2

    int-to-float v9, v1

    add-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    add-int/2addr v4, v6

    int-to-float v4, v4

    mul-float/2addr v4, v2

    int-to-float v5, v1

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v7, v8, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/graphics/Rect;

    const/high16 v3, 0x43960000    # 300.0f

    mul-float/2addr v3, v2

    int-to-float v4, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x44200000    # 640.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    const/high16 v5, 0x44250000    # 660.0f

    mul-float/2addr v2, v5

    int-to-float v1, v1

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v10, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;II)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/tnkfactory/ad/fc;->b(Landroid/content/Context;III)Lcom/tnkfactory/ad/fc;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/iy;->c:Lcom/tnkfactory/ad/fc;

    invoke-static {}, Lcom/tnkfactory/ad/bj;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/iy;->c:Lcom/tnkfactory/ad/fc;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/tnkfactory/ad/fc;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/iy;->c:Lcom/tnkfactory/ad/fc;

    iget-object v1, p0, Lcom/tnkfactory/ad/iy;->b:Lcom/tnkfactory/ad/InterstitialAdItem;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/fc;->setAdItem(Lcom/tnkfactory/ad/InterstitialAdItem;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/iy;->c:Lcom/tnkfactory/ad/fc;

    new-instance v1, Lcom/tnkfactory/ad/jf;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/jf;-><init>(Lcom/tnkfactory/ad/iy;)V

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/fc;->setListener(Lcom/tnkfactory/ad/TnkAdListener;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/iy;->c:Lcom/tnkfactory/ad/fc;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/fc;->getAdImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/iy;->c:Lcom/tnkfactory/ad/fc;

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/iy;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/iy;->c:Lcom/tnkfactory/ad/fc;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/fc;->d()V

    iget-object v0, p0, Lcom/tnkfactory/ad/iy;->a:Lcom/tnkfactory/ad/ck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/iy;->a:Lcom/tnkfactory/ad/ck;

    iget-object v1, p0, Lcom/tnkfactory/ad/iy;->b:Lcom/tnkfactory/ad/InterstitialAdItem;

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/ck;->a(Lcom/tnkfactory/ad/ImageAdItem;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tnkfactory/ad/iy;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/iy;->e()V

    return-void
.end method

.method static synthetic a(Lcom/tnkfactory/ad/iy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/iy;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/tnkfactory/ad/iy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tnkfactory/ad/iy;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/tnkfactory/ad/iy;)Lcom/tnkfactory/ad/ck;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/iy;->a:Lcom/tnkfactory/ad/ck;

    return-object v0
.end method

.method private b()V
    .locals 2

    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/iy;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/fs;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/tnkfactory/ad/iy;->d()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/fs;->setVisibility(I)V

    iget-object v1, p0, Lcom/tnkfactory/ad/iy;->b:Lcom/tnkfactory/ad/InterstitialAdItem;

    invoke-virtual {v1}, Lcom/tnkfactory/ad/InterstitialAdItem;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/fs;->setPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/iy;->a:Lcom/tnkfactory/ad/ck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/iy;->a:Lcom/tnkfactory/ad/ck;

    iget-object v1, p0, Lcom/tnkfactory/ad/iy;->b:Lcom/tnkfactory/ad/InterstitialAdItem;

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/ck;->c(Lcom/tnkfactory/ad/ImageAdItem;)V

    goto :goto_0
.end method

.method private b(I)V
    .locals 4

    const/16 v3, 0xca

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tnkfactory/ad/iy;->getMediaView()Lcom/tnkfactory/ad/fs;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/tnkfactory/ad/fs;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/iy;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/tnkfactory/ad/iy;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/iy;->a:Lcom/tnkfactory/ad/ck;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tnkfactory/ad/iy;->a:Lcom/tnkfactory/ad/ck;

    invoke-interface {v0}, Lcom/tnkfactory/ad/ck;->a()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0, v3}, Lcom/tnkfactory/ad/iy;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const/16 v0, 0xcc

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/iy;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    const/16 v0, 0xcd

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/iy;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/tnkfactory/ad/iy;->a:Lcom/tnkfactory/ad/ck;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tnkfactory/ad/iy;->a:Lcom/tnkfactory/ad/ck;

    invoke-interface {v0, p1}, Lcom/tnkfactory/ad/ck;->a(I)V

    goto :goto_0
.end method

.method private c()V
    .locals 2

    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/iy;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/fs;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tnkfactory/ad/iy;->d()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/fs;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/tnkfactory/ad/fs;->c()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/tnkfactory/ad/iy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tnkfactory/ad/iy;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/tnkfactory/ad/iy;)Lcom/tnkfactory/ad/InterstitialAdItem;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/iy;->b:Lcom/tnkfactory/ad/InterstitialAdItem;

    return-object v0
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x4

    const/16 v0, 0xcb

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/iy;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/16 v0, 0xcc

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/iy;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/16 v0, 0xcd

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/iy;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private e()V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0xcc

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/iy;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/tnkfactory/ad/jg;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/jg;-><init>(Lcom/tnkfactory/ad/iy;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/16 v0, 0xcd

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/iy;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/tnkfactory/ad/iy;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/iy;->b()V

    return-void
.end method

.method static synthetic f(Lcom/tnkfactory/ad/iy;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/iy;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a_(I)V
    .locals 2

    const/16 v0, 0xcb

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/iy;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getMediaView()Lcom/tnkfactory/ad/fs;
    .locals 1

    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/iy;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/fs;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/tnkfactory/ad/iy;->b(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setCardImage(Landroid/graphics/Bitmap;)V
    .locals 11

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    iget-object v0, p0, Lcom/tnkfactory/ad/iy;->c:Lcom/tnkfactory/ad/fc;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tnkfactory/ad/iy;->c:Lcom/tnkfactory/ad/fc;

    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/fc;->setAdImage(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/iy;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "25,414,590,334|0,660,640,360"

    iput-object v0, p0, Lcom/tnkfactory/ad/iy;->h:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/iy;->h:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v7

    invoke-direct {p0, v1, p1}, Lcom/tnkfactory/ad/iy;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v1

    aget-object v2, v0, v8

    invoke-direct {p0, v2, p1}, Lcom/tnkfactory/ad/iy;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v2

    array-length v3, v0

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    const-string v3, "Y"

    aget-object v0, v0, v9

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tnkfactory/ad/iy;->f:Z

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/tnkfactory/ad/iy;->i:Landroid/content/Context;

    invoke-static {v2, v0, v6}, Lcom/tnkfactory/ad/fr;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/tnkfactory/ad/iy;->c:Lcom/tnkfactory/ad/fc;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/iy;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/tnkfactory/ad/iy;->i:Landroid/content/Context;

    const/16 v3, 0xca

    invoke-static {v2, v0, v3}, Lcom/tnkfactory/ad/fr;->j(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/iy;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/tnkfactory/ad/iy;->i:Landroid/content/Context;

    const/16 v4, 0xc9

    invoke-static {v3, v2, v4}, Lcom/tnkfactory/ad/fr;->i(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Lcom/tnkfactory/ad/fs;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/tnkfactory/ad/fs;->setVisibility(I)V

    new-instance v4, Lcom/tnkfactory/ad/iz;

    invoke-direct {v4, p0}, Lcom/tnkfactory/ad/iz;-><init>(Lcom/tnkfactory/ad/iy;)V

    invoke-virtual {v3, v4}, Lcom/tnkfactory/ad/fs;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v3, p0}, Lcom/tnkfactory/ad/fs;->setMedieViewListener(Lcom/tnkfactory/ad/ft;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/tnkfactory/ad/iy;->i:Landroid/content/Context;

    const/16 v4, 0xcc

    invoke-static {v3, v2, v4}, Lcom/tnkfactory/ad/fr;->l(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/tnkfactory/ad/iy;->i:Landroid/content/Context;

    const/16 v5, 0xcb

    invoke-static {v4, v3, v5}, Lcom/tnkfactory/ad/fr;->g(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ProgressBar;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    invoke-direct {v3, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/tnkfactory/ad/iy;->i:Landroid/content/Context;

    const/16 v4, 0xcd

    invoke-static {v1, v3, v4}, Lcom/tnkfactory/ad/fr;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/tnkfactory/ad/bj;->e()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/tnkfactory/ad/iy;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/iy;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/tnkfactory/ad/ii;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/tnkfactory/ad/iy;->b()V

    :goto_0
    iget-boolean v0, p0, Lcom/tnkfactory/ad/iy;->k:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tnkfactory/ad/iy;->e:I

    int-to-float v0, v0

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/iy;->i:Landroid/content/Context;

    invoke-static {v0, v1, v6}, Lcom/tnkfactory/ad/fr;->k(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x60000000

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/tnkfactory/ad/iy;->i:Landroid/content/Context;

    invoke-static {v2, v1, v6}, Lcom/tnkfactory/ad/fr;->c(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setGravity(I)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v8, v2}, Landroid/widget/Button;->setTextSize(IF)V

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/Button;->setPadding(IIII)V

    sget-object v2, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->rightButtonLabel:Ljava/lang/String;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget-object v2, v2, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->rightButtonLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/tnkfactory/ad/iy;->i:Landroid/content/Context;

    invoke-static {v3, v2, v6}, Lcom/tnkfactory/ad/fr;->c(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;I)Landroid/widget/Button;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setGravity(I)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v8, v3}, Landroid/widget/Button;->setTextSize(IF)V

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/widget/Button;->setPadding(IIII)V

    sget-object v3, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget-object v3, v3, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->leftButtonLabel:Ljava/lang/String;

    if-eqz v3, :cond_5

    sget-object v3, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget-object v3, v3, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->leftButtonLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    sget-object v3, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget-boolean v3, v3, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonAlignRight:Z

    if-eqz v3, :cond_6

    new-instance v3, Lcom/tnkfactory/ad/jb;

    invoke-direct {v3, p0}, Lcom/tnkfactory/ad/jb;-><init>(Lcom/tnkfactory/ad/iy;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/tnkfactory/ad/jc;

    invoke-direct {v3, p0}, Lcom/tnkfactory/ad/jc;-><init>(Lcom/tnkfactory/ad/iy;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/iy;->addView(Landroid/view/View;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lcom/tnkfactory/ad/ja;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/ja;-><init>(Lcom/tnkfactory/ad/iy;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/tnkfactory/ad/gv;->a()Lcom/tnkfactory/ad/gv;

    move-result-object v2

    iget-object v2, v2, Lcom/tnkfactory/ad/gv;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/tnkfactory/ad/gv;->a()Lcom/tnkfactory/ad/gv;

    move-result-object v3

    iget-object v3, v3, Lcom/tnkfactory/ad/gv;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    new-instance v3, Lcom/tnkfactory/ad/jd;

    invoke-direct {v3, p0}, Lcom/tnkfactory/ad/jd;-><init>(Lcom/tnkfactory/ad/iy;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/tnkfactory/ad/je;

    invoke-direct {v3, p0}, Lcom/tnkfactory/ad/je;-><init>(Lcom/tnkfactory/ad/iy;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method
