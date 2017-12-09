.class Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$3$1;
.super Ljava/lang/Object;
.source "BandCameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$3;->onPictureTaken(Lcom/google/android/cameraview/CameraView;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$3;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$3;[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$3;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$3$1;->this$1:Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$3;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$3$1;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 175
    const/4 v4, 0x0

    .line 179
    .local v4, "outStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 180
    .local v6, "sdCard":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cashwalk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 183
    const-string v7, "%d.jpg"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    .local v3, "outFile":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .end local v4    # "outStream":Ljava/io/FileOutputStream;
    .local v5, "outStream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$3$1;->val$data:[B

    invoke-virtual {v5, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 188
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 189
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 191
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$3$1;->this$1:Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$3;

    iget-object v7, v7, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;

    invoke-static {v7, v3}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->access$500(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v5

    .line 200
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "outFile":Ljava/io/File;
    .end local v5    # "outStream":Ljava/io/FileOutputStream;
    .end local v6    # "sdCard":Ljava/io/File;
    .restart local v4    # "outStream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 196
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    :goto_2
    throw v7

    .line 194
    :catch_1
    move-exception v1

    .line 195
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 196
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "outStream":Ljava/io/FileOutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v3    # "outFile":Ljava/io/File;
    .restart local v5    # "outStream":Ljava/io/FileOutputStream;
    .restart local v6    # "sdCard":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "outStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 194
    .end local v4    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5    # "outStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 192
    .end local v4    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "outStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
