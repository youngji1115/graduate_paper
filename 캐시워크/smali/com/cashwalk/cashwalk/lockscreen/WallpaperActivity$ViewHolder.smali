.class Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ViewHolder;
.super Ljava/lang/Object;
.source "WallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field gallery:Landroid/widget/LinearLayout;

.field iv:Lcom/cashwalk/cashwalk/util/SquareImageView;

.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;


# direct methods
.method private constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ViewHolder;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;
    .param p2, "x1"    # Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$1;

    .prologue
    .line 510
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ViewHolder;-><init>(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;)V

    return-void
.end method
