.class Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ImageSaveAsyncThread;
.super Landroid/os/AsyncTask;
.source "WallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaveAsyncThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;


# direct methods
.method private constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ImageSaveAsyncThread;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 308
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ImageSaveAsyncThread;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ImageSaveAsyncThread;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ImageSaveAsyncThread;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;->access$400(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 313
    .local v3, "bm":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "cashwalk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v1, "dir":Ljava/io/File;
    const/4 v6, 0x1

    .line 315
    .local v6, "doSave":Z
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v6

    .line 318
    :cond_0
    if-eqz v6, :cond_1

    .line 319
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ImageSaveAsyncThread;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;

    const-string v2, "lockscreen_bg.png"

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-static/range {v0 .. v5}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;->access$500(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Z

    .line 324
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 321
    :cond_1
    const-string v0, "Couldn\'t create target directory."

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 308
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ImageSaveAsyncThread;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cashwalk/lockscreen_bg.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "saveImagePath":Ljava/lang/String;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$ImageSaveAsyncThread;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;

    invoke-static {v1, v0}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;->access$600(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;Ljava/lang/String;)V

    .line 332
    return-void
.end method
