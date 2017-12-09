.class Lcom/esafirm/imagepicker/features/ImageLoader$ImageLoadRunnable;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esafirm/imagepicker/features/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoadRunnable"
.end annotation


# instance fields
.field private isFolderMode:Z

.field private listener:Lcom/esafirm/imagepicker/features/common/ImageLoaderListener;

.field final synthetic this$0:Lcom/esafirm/imagepicker/features/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/esafirm/imagepicker/features/ImageLoader;ZLcom/esafirm/imagepicker/features/common/ImageLoaderListener;)V
    .locals 0
    .param p2, "isFolderMode"    # Z
    .param p3, "listener"    # Lcom/esafirm/imagepicker/features/common/ImageLoaderListener;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ImageLoader$ImageLoadRunnable;->this$0:Lcom/esafirm/imagepicker/features/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean p2, p0, Lcom/esafirm/imagepicker/features/ImageLoader$ImageLoadRunnable;->isFolderMode:Z

    .line 60
    iput-object p3, p0, Lcom/esafirm/imagepicker/features/ImageLoader$ImageLoadRunnable;->listener:Lcom/esafirm/imagepicker/features/common/ImageLoaderListener;

    .line 61
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 65
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImageLoader$ImageLoadRunnable;->this$0:Lcom/esafirm/imagepicker/features/ImageLoader;

    invoke-static {v0}, Lcom/esafirm/imagepicker/features/ImageLoader;->access$100(Lcom/esafirm/imagepicker/features/ImageLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v14, p0, Lcom/esafirm/imagepicker/features/ImageLoader$ImageLoadRunnable;->this$0:Lcom/esafirm/imagepicker/features/ImageLoader;

    invoke-static {v14}, Lcom/esafirm/imagepicker/features/ImageLoader;->access$000(Lcom/esafirm/imagepicker/features/ImageLoader;)[Ljava/lang/String;

    move-result-object v2

    const-string v5, "date_added"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 68
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 69
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImageLoader$ImageLoadRunnable;->listener:Lcom/esafirm/imagepicker/features/common/ImageLoaderListener;

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    invoke-interface {v0, v6}, Lcom/esafirm/imagepicker/features/common/ImageLoaderListener;->onFailed(Ljava/lang/Throwable;)V

    .line 112
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .local v13, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/esafirm/imagepicker/model/Image;>;"
    const/4 v11, 0x0

    .line 75
    .local v11, "folderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/esafirm/imagepicker/model/Folder;>;"
    iget-boolean v0, p0, Lcom/esafirm/imagepicker/features/ImageLoader$ImageLoadRunnable;->isFolderMode:Z

    if-eqz v0, :cond_1

    .line 76
    new-instance v11, Ljava/util/HashMap;

    .end local v11    # "folderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/esafirm/imagepicker/model/Folder;>;"
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 79
    .restart local v11    # "folderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/esafirm/imagepicker/model/Folder;>;"
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImageLoader$ImageLoadRunnable;->this$0:Lcom/esafirm/imagepicker/features/ImageLoader;

    invoke-static {v0}, Lcom/esafirm/imagepicker/features/ImageLoader;->access$000(Lcom/esafirm/imagepicker/features/ImageLoader;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 82
    .local v2, "id":J
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImageLoader$ImageLoadRunnable;->this$0:Lcom/esafirm/imagepicker/features/ImageLoader;

    invoke-static {v0}, Lcom/esafirm/imagepicker/features/ImageLoader;->access$000(Lcom/esafirm/imagepicker/features/ImageLoader;)[Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x1

    aget-object v0, v0, v14

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImageLoader$ImageLoadRunnable;->this$0:Lcom/esafirm/imagepicker/features/ImageLoader;

    invoke-static {v0}, Lcom/esafirm/imagepicker/features/ImageLoader;->access$000(Lcom/esafirm/imagepicker/features/ImageLoader;)[Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x2

    aget-object v0, v0, v14

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "path":Ljava/lang/String;
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImageLoader$ImageLoadRunnable;->this$0:Lcom/esafirm/imagepicker/features/ImageLoader;

    invoke-static {v0}, Lcom/esafirm/imagepicker/features/ImageLoader;->access$000(Lcom/esafirm/imagepicker/features/ImageLoader;)[Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x3

    aget-object v0, v0, v14

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, "bucket":Ljava/lang/String;
    invoke-static {v5}, Lcom/esafirm/imagepicker/features/ImageLoader;->access$200(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 87
    .local v9, "file":Ljava/io/File;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    new-instance v1, Lcom/esafirm/imagepicker/model/Image;

    invoke-direct/range {v1 .. v6}, Lcom/esafirm/imagepicker/model/Image;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 89
    .local v1, "image":Lcom/esafirm/imagepicker/model/Image;
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    if-eqz v11, :cond_4

    .line 92
    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/esafirm/imagepicker/model/Folder;

    .line 93
    .local v10, "folder":Lcom/esafirm/imagepicker/model/Folder;
    if-nez v10, :cond_3

    .line 94
    new-instance v10, Lcom/esafirm/imagepicker/model/Folder;

    .end local v10    # "folder":Lcom/esafirm/imagepicker/model/Folder;
    invoke-direct {v10, v7}, Lcom/esafirm/imagepicker/model/Folder;-><init>(Ljava/lang/String;)V

    .line 95
    .restart local v10    # "folder":Lcom/esafirm/imagepicker/model/Folder;
    invoke-interface {v11, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_3
    invoke-virtual {v10}, Lcom/esafirm/imagepicker/model/Folder;->getImages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v1    # "image":Lcom/esafirm/imagepicker/model/Image;
    .end local v10    # "folder":Lcom/esafirm/imagepicker/model/Folder;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    .end local v2    # "id":J
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "bucket":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 106
    const/4 v12, 0x0

    .line 107
    .local v12, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/esafirm/imagepicker/model/Folder;>;"
    if-eqz v11, :cond_6

    .line 108
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "folders":Ljava/util/List;, "Ljava/util/List<Lcom/esafirm/imagepicker/model/Folder;>;"
    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 111
    .restart local v12    # "folders":Ljava/util/List;, "Ljava/util/List<Lcom/esafirm/imagepicker/model/Folder;>;"
    :cond_6
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImageLoader$ImageLoadRunnable;->listener:Lcom/esafirm/imagepicker/features/common/ImageLoaderListener;

    invoke-interface {v0, v13, v12}, Lcom/esafirm/imagepicker/features/common/ImageLoaderListener;->onImageLoaded(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0
.end method
