.class public Lcom/amazonaws/services/s3/internal/ServiceUtils;
.super Ljava/lang/Object;
.source "ServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/internal/ServiceUtils$RetryableS3DownloadTask;
    }
.end annotation


# static fields
.field public static final APPEND_MODE:Z = true

.field public static final OVERWRITE_MODE:Z

.field protected static final dateUtils:Lcom/amazonaws/util/DateUtils;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;->log:Lorg/apache/commons/logging/Log;

    .line 66
    new-instance v0, Lcom/amazonaws/util/DateUtils;

    invoke-direct {v0}, Lcom/amazonaws/util/DateUtils;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;->dateUtils:Lcom/amazonaws/util/DateUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertRequestToUrl(Lcom/amazonaws/Request;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->convertRequestToUrl(Lcom/amazonaws/Request;Z)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public static convertRequestToUrl(Lcom/amazonaws/Request;Z)Ljava/net/URL;
    .locals 10
    .param p1, "removeLeadingSlashInResourcePath"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;Z)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    const/4 v8, 0x1

    .line 160
    invoke-interface {p0}, Lcom/amazonaws/Request;->getResourcePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/amazonaws/util/HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "resourcePath":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v7, "/"

    .line 165
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 166
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 173
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "urlPath":Ljava/lang/String;
    const-string v7, "(?<=/)/"

    const-string v8, "%2F"

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 175
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "urlString":Ljava/lang/String;
    const/4 v1, 0x1

    .line 178
    .local v1, "firstParam":Z
    invoke-interface {p0}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 179
    .local v2, "param":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 180
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 181
    const/4 v1, 0x0

    .line 186
    :goto_1
    invoke-interface {p0}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 187
    .local v6, "value":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v6, v9}, Lcom/amazonaws/util/HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 188
    goto :goto_0

    .line 183
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 191
    .end local v2    # "param":Ljava/lang/String;
    :cond_2
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v7, Lcom/amazonaws/AmazonClientException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to convert request to well formed URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 194
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static downloadObjectToFile(Lcom/amazonaws/services/s3/model/S3Object;Ljava/io/File;ZZ)V
    .locals 11
    .param p0, "s3Object"    # Lcom/amazonaws/services/s3/model/S3Object;
    .param p1, "destinationFile"    # Ljava/io/File;
    .param p2, "performIntegrityCheck"    # Z
    .param p3, "appendData"    # Z

    .prologue
    .line 239
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 240
    .local v6, "parentDirectory":Ljava/io/File;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 241
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 244
    :cond_0
    const/4 v4, 0x0

    .line 246
    .local v4, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v5, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .local v5, "outputStream":Ljava/io/OutputStream;
    const/16 v8, 0x2800

    :try_start_1
    new-array v0, v8, [B

    .line 250
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v8, -0x1

    if-le v1, v8, :cond_1

    .line 251
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 253
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_0
    move-exception v3

    move-object v4, v5

    .line 254
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .local v3, "e":Ljava/io/IOException;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->abort()V

    .line 255
    new-instance v8, Lcom/amazonaws/AmazonClientException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to store object contents to disk: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 256
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 259
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 263
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v9

    invoke-virtual {v9}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 265
    :goto_4
    throw v8

    .line 259
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 263
    :goto_5
    :try_start_6
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 268
    :goto_6
    const/4 v2, 0x0

    .line 269
    .local v2, "clientSideHash":[B
    const/4 v7, 0x0

    .line 273
    .local v7, "serverSideHash":[B
    :try_start_7
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->isMultipartUploadETag(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 274
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v8}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 275
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/BinaryUtils;->fromHex(Ljava/lang/String;)[B
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v7

    .line 281
    :cond_2
    :goto_7
    if-eqz p2, :cond_3

    if-eqz v2, :cond_3

    if-eqz v7, :cond_3

    .line 282
    invoke-static {v2, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-nez v8, :cond_3

    .line 283
    new-instance v8, Lcom/amazonaws/AmazonClientException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to verify integrity of data download.  Client calculated content hash didn\'t match hash calculated by Amazon S3.  The data stored in \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 285
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' may be corrupt."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 277
    :catch_1
    move-exception v3

    .line 278
    .local v3, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/amazonaws/services/s3/internal/ServiceUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to calculate MD5 hash to validate download: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 260
    .end local v2    # "clientSideHash":[B
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "serverSideHash":[B
    :catch_2
    move-exception v8

    goto :goto_5

    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_3
    move-exception v9

    goto/16 :goto_3

    .line 288
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v2    # "clientSideHash":[B
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v7    # "serverSideHash":[B
    :cond_3
    return-void

    .line 264
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "clientSideHash":[B
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .end local v7    # "serverSideHash":[B
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_4
    move-exception v9

    goto/16 :goto_4

    .line 258
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto/16 :goto_2

    .line 253
    :catch_5
    move-exception v3

    goto/16 :goto_1

    .line 264
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_6
    move-exception v8

    goto/16 :goto_6
.end method

.method public static formatIso8601Date(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 73
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->formatISO8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 81
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->formatRFC822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isMultipartUploadETag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "eTag"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static join(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, ""

    .line 210
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x1

    .line 211
    .local v0, "first":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 212
    .local v2, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    const/4 v0, 0x0

    .line 217
    goto :goto_0

    .line 219
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "dateString"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->parseISO8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "dateString"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->parseRFC822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static removeQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 118
    if-nez p0, :cond_1

    .line 119
    const/4 p0, 0x0

    .line 127
    :cond_0
    :goto_0
    return-object p0

    .line 121
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 122
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 124
    :cond_2
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static retryableDownloadS3ObjectToFile(Ljava/io/File;Lcom/amazonaws/services/s3/internal/ServiceUtils$RetryableS3DownloadTask;Z)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "retryableS3DownloadTask"    # Lcom/amazonaws/services/s3/internal/ServiceUtils$RetryableS3DownloadTask;
    .param p2, "appendData"    # Z

    .prologue
    .line 329
    const/4 v1, 0x0

    .line 333
    .local v1, "hasRetried":Z
    :cond_0
    const/4 v2, 0x0

    .line 334
    .local v2, "needRetry":Z
    invoke-interface {p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils$RetryableS3DownloadTask;->getS3ObjectStream()Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v3

    .line 335
    .local v3, "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    if-nez v3, :cond_1

    .line 336
    const/4 v3, 0x0

    .line 372
    .end local v3    # "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    :goto_0
    return-object v3

    .line 340
    .restart local v3    # "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils$RetryableS3DownloadTask;->needIntegrityCheck()Z

    move-result v4

    .line 339
    invoke-static {v3, p0, v4, p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->downloadObjectToFile(Lcom/amazonaws/services/s3/model/S3Object;Ljava/io/File;ZZ)V
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->abort()V

    .line 371
    :goto_1
    if-nez v2, :cond_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "ace":Lcom/amazonaws/AmazonClientException;
    :try_start_1
    invoke-virtual {v0}, Lcom/amazonaws/AmazonClientException;->isRetryable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 344
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    .end local v0    # "ace":Lcom/amazonaws/AmazonClientException;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->abort()V

    throw v4

    .line 355
    .restart local v0    # "ace":Lcom/amazonaws/AmazonClientException;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lcom/amazonaws/AmazonClientException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/net/SocketException;

    if-nez v4, :cond_3

    .line 356
    invoke-virtual {v0}, Lcom/amazonaws/AmazonClientException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v4, :cond_4

    .line 357
    :cond_3
    throw v0

    .line 359
    :cond_4
    const/4 v2, 0x1

    .line 360
    if-eqz v1, :cond_5

    .line 361
    throw v0

    .line 363
    :cond_5
    sget-object v4, Lcom/amazonaws/services/s3/internal/ServiceUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retry the download of object "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (bucket "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 364
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 363
    invoke-interface {v4, v5, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    const/4 v1, 0x1

    .line 369
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->abort()V

    goto :goto_1
.end method

.method public static skipMd5CheckPerRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Z
    .locals 7
    .param p0, "request"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 400
    const-string v6, "com.amazonaws.services.s3.disableGetObjectMD5Validation"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v4

    .line 403
    :cond_1
    instance-of v6, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    if-eqz v6, :cond_3

    move-object v0, p0

    .line 404
    check-cast v0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    .line 406
    .local v0, "getObjectRequest":Lcom/amazonaws/services/s3/model/GetObjectRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v6

    if-nez v6, :cond_0

    .line 408
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v6

    if-nez v6, :cond_0

    .end local v0    # "getObjectRequest":Lcom/amazonaws/services/s3/model/GetObjectRequest;
    :cond_2
    move v4, v5

    .line 422
    goto :goto_0

    .line 410
    :cond_3
    instance-of v6, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    if-eqz v6, :cond_5

    move-object v2, p0

    .line 411
    check-cast v2, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 412
    .local v2, "putObjectRequest":Lcom/amazonaws/services/s3/model/PutObjectRequest;
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    .line 413
    .local v1, "om":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 416
    :cond_4
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v6

    if-nez v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 417
    .end local v1    # "om":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .end local v2    # "putObjectRequest":Lcom/amazonaws/services/s3/model/PutObjectRequest;
    :cond_5
    instance-of v6, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    if-eqz v6, :cond_2

    move-object v3, p0

    .line 418
    check-cast v3, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 419
    .local v3, "uploadPartRequest":Lcom/amazonaws/services/s3/model/UploadPartRequest;
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v6

    if-nez v6, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method public static skipMd5CheckPerResponse(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Z
    .locals 4
    .param p0, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    const/4 v1, 0x0

    .line 387
    if-nez p0, :cond_1

    .line 391
    :cond_0
    :goto_0
    return v1

    .line 389
    :cond_1
    const-string v2, "aws:kms"

    .line 390
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 389
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 391
    .local v0, "sseKMS":Z
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 106
    sget-object v0, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method
