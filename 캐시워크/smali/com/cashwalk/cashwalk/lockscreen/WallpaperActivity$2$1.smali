.class Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "WallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;->access$300(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 133
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.cashwalk.cashwalk.action.LOCKSCREEN_WALLPAPER_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 135
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
