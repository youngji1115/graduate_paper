.class Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$WallpaperGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "WallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperGridAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;

.field private thumbnailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private wallpaperList:[I


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;)V
    .locals 5

    .prologue
    .line 449
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$WallpaperGridAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;

    .line 450
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 444
    const/16 v3, 0x1b

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$WallpaperGridAdapter;->wallpaperList:[I

    .line 451
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$WallpaperGridAdapter;->thumbnailList:Ljava/util/ArrayList;

    .line 452
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$WallpaperGridAdapter;->wallpaperList:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 453
    invoke-virtual {p1}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$WallpaperGridAdapter;->wallpaperList:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 454
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$WallpaperGridAdapter;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 455
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$WallpaperGridAdapter;->thumbnailList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 457
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_0
    return-void

    .line 444
    :array_0
    .array-data 4
        0x7f0202de
        0x7f0202de
        0x7f0202df
        0x7f0202e0
        0x7f0202e1
        0x7f0202e2
        0x7f0202e3
        0x7f0202e4
        0x7f0202e5
        0x7f0202e6
        0x7f0202e7
        0x7f0202e8
        0x7f0202e9
        0x7f0202ea
        0x7f0202eb
        0x7f0202ec
        0x7f0202ed
        0x7f0202ee
        0x7f0202ef
        0x7f0202f0
        0x7f0202f1
        0x7f0202f2
        0x7f0202f3
        0x7f0202f4
        0x7f0202f5
        0x7f0202f6
        0x7f0202f7
    .end array-data
.end method

.method private scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .prologue
    .line 461
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 462
    .local v0, "maxSize":I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/lit16 v1, v1, 0xf0

    div-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/lit16 v2, v2, 0xf0

    div-int/2addr v2, v0

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 461
    .end local v0    # "maxSize":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$WallpaperGridAdapter;->wallpaperList:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 472
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$WallpaperGridAdapter;->wallpaperList:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 477
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 485
    if-nez p2, :cond_0

    .line 486
    new-instance v0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ViewHolder;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$WallpaperGridAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;

    invoke-direct {v0, v1, v5}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ViewHolder;-><init>(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$1;)V

    .line 487
    .local v0, "vh":Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ViewHolder;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$WallpaperGridAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400ad

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 489
    const v1, 0x7f100414

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ViewHolder;->gallery:Landroid/widget/LinearLayout;

    .line 490
    const v1, 0x7f100415

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/SquareImageView;

    iput-object v1, v0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ViewHolder;->iv:Lcom/cashwalk/cashwalk/util/SquareImageView;

    .line 492
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 497
    :goto_0
    if-nez p1, :cond_1

    .line 498
    iget-object v1, v0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ViewHolder;->iv:Lcom/cashwalk/cashwalk/util/SquareImageView;

    invoke-virtual {v1, v4}, Lcom/cashwalk/cashwalk/util/SquareImageView;->setVisibility(I)V

    .line 499
    iget-object v1, v0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ViewHolder;->gallery:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 506
    :goto_1
    return-object p2

    .line 494
    .end local v0    # "vh":Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ViewHolder;

    .restart local v0    # "vh":Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ViewHolder;
    goto :goto_0

    .line 501
    :cond_1
    iget-object v1, v0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ViewHolder;->gallery:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 502
    iget-object v1, v0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ViewHolder;->iv:Lcom/cashwalk/cashwalk/util/SquareImageView;

    invoke-virtual {v1, v3}, Lcom/cashwalk/cashwalk/util/SquareImageView;->setVisibility(I)V

    .line 503
    iget-object v2, v0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ViewHolder;->iv:Lcom/cashwalk/cashwalk/util/SquareImageView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$WallpaperGridAdapter;->thumbnailList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Lcom/cashwalk/cashwalk/util/SquareImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
