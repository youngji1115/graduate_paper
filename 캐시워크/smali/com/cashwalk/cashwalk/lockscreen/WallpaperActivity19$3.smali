.class Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$3;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "WallpaperActivity19.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->saveWallpaperToFile(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->access$300(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 248
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.cashwalk.cashwalk.action.LOCKSCREEN_WALLPAPER_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090141

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
