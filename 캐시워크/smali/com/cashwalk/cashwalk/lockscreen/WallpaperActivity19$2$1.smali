.class Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$2$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "WallpaperActivity19.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$2;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$2;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$2$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$2;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$2$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->access$300(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 130
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$2$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cashwalk.cashwalk.action.LOCKSCREEN_WALLPAPER_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->sendBroadcast(Landroid/content/Intent;)V

    .line 132
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$2$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->finish()V

    .line 134
    :cond_0
    return-void
.end method
