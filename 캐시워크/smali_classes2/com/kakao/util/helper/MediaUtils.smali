.class public Lcom/kakao/util/helper/MediaUtils;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field private static final IMAGE_FILE_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kakao/util/helper/MediaUtils;->IMAGE_FILE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 112
    if-eqz p0, :cond_0

    .line 113
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .locals 0
    .param p0, "input"    # Ljava/io/InputStream;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/kakao/util/helper/MediaUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 108
    return-void
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {p0, p1}, Lcom/kakao/util/helper/MediaUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 88
    .local v0, "count":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 89
    const/4 v2, -0x1

    .line 91
    :goto_0
    return v2

    :cond_0
    long-to-int v2, v0

    goto :goto_0
.end method

.method private static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 97
    .local v0, "buffer":[B
    const-wide/16 v2, 0x0

    .line 98
    .local v2, "count":J
    const/4 v1, 0x0

    .line 99
    .local v1, "n":I
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v4, v1, :cond_0

    .line 100
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 101
    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_0

    .line 103
    :cond_0
    return-wide v2
.end method

.method public static getImageFilePathFromUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "uri is null"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    if-nez p1, :cond_1

    .line 35
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "context is null."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 83
    :goto_0
    return-object v9

    .line 42
    :cond_2
    const/4 v7, 0x0

    .line 43
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 45
    .local v9, "filePath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/kakao/util/helper/MediaUtils;->IMAGE_FILE_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 46
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    sget-object v0, Lcom/kakao/util/helper/MediaUtils;->IMAGE_FILE_COLUMNS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 48
    .local v6, "columnIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 53
    .end local v6    # "columnIndex":I
    :cond_3
    if-eqz v7, :cond_4

    .line 54
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 57
    :cond_4
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "http"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 58
    :cond_5
    const/4 v10, 0x0

    .line 59
    .local v10, "in":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 61
    .local v11, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 62
    invoke-static {}, Lcom/kakao/util/helper/FileUtils;->getExternalStorageTempFile()Ljava/io/File;

    move-result-object v13

    .line 63
    .local v13, "output":Ljava/io/File;
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    .end local v11    # "out":Ljava/io/OutputStream;
    .local v12, "out":Ljava/io/OutputStream;
    :try_start_2
    invoke-static {v10, v12}, Lcom/kakao/util/helper/MediaUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 65
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v9

    .line 69
    invoke-static {v10}, Lcom/kakao/util/helper/MediaUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 70
    invoke-static {v12}, Lcom/kakao/util/helper/MediaUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 74
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v12    # "out":Ljava/io/OutputStream;
    .end local v13    # "output":Ljava/io/File;
    :cond_6
    :goto_2
    if-nez v9, :cond_7

    .line 75
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 78
    :cond_7
    if-nez v9, :cond_9

    .line 79
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "filePath is null"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :catch_0
    move-exception v8

    .line 51
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v8}, Lcom/kakao/util/helper/log/Logger;->w(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    if-eqz v7, :cond_4

    .line 54
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 53
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_8

    .line 54
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 66
    .restart local v10    # "in":Ljava/io/InputStream;
    .restart local v11    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v8

    .line 67
    .restart local v8    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string v0, "cannot make a file"

    invoke-static {v0, v8}, Lcom/kakao/util/helper/log/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 69
    invoke-static {v10}, Lcom/kakao/util/helper/MediaUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 70
    invoke-static {v11}, Lcom/kakao/util/helper/MediaUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    .line 69
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    :goto_4
    invoke-static {v10}, Lcom/kakao/util/helper/MediaUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 70
    invoke-static {v11}, Lcom/kakao/util/helper/MediaUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 82
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v11    # "out":Ljava/io/OutputStream;
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> getImageFilePathFromUri - filePath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 69
    .restart local v10    # "in":Ljava/io/InputStream;
    .restart local v12    # "out":Ljava/io/OutputStream;
    .restart local v13    # "output":Ljava/io/File;
    :catchall_2
    move-exception v0

    move-object v11, v12

    .end local v12    # "out":Ljava/io/OutputStream;
    .restart local v11    # "out":Ljava/io/OutputStream;
    goto :goto_4

    .line 66
    .end local v11    # "out":Ljava/io/OutputStream;
    .restart local v12    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v8

    move-object v11, v12

    .end local v12    # "out":Ljava/io/OutputStream;
    .restart local v11    # "out":Ljava/io/OutputStream;
    goto :goto_3
.end method
