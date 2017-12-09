.class public Lcom/cashwalk/cashwalk/util/AWSHelper;
.super Ljava/lang/Object;
.source "AWSHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AWS_getPreSignedURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 27
    sget-object v0, Lcom/cashwalk/cashwalk/AppConstants;->AWS_S3_BUCKET_NAME:Ljava/lang/String;

    .line 28
    .local v0, "BUCKET_NAME":Ljava/lang/String;
    const-string/jumbo v7, "timeline_"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 30
    const-string v7, "/"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 31
    .local v3, "getUserIdIndex":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "getUserId":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x18

    if-ne v7, v8, :cond_0

    .line 34
    sget-object v0, Lcom/cashwalk/cashwalk/AppConstants;->AWS_S3_TIMELINE_BUCKET_NAME:Ljava/lang/String;

    .line 39
    .end local v2    # "getUserId":Ljava/lang/String;
    .end local v3    # "getUserIdIndex":I
    :cond_0
    :try_start_0
    new-instance v4, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    invoke-direct {v4}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;-><init>()V

    .line 40
    .local v4, "override":Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    const-string v7, "image/jpeg"

    invoke-virtual {v4, v7}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setContentType(Ljava/lang/String;)V

    .line 42
    new-instance v6, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;

    invoke-direct {v6, v0, p0}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .local v6, "urlRequest":Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x240c8400

    add-long/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setExpiration(Ljava/util/Date;)V

    .line 44
    invoke-virtual {v6, v4}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setResponseHeaders(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    .line 46
    sget-object v7, Lcom/cashwalk/cashwalk/CashWalkApp;->awsS3client:Lcom/amazonaws/services/s3/AmazonS3Client;

    if-nez v7, :cond_1

    .line 47
    invoke-static {}, Lcom/cashwalk/cashwalk/util/AWSHelper;->AWS_initS3Client()V

    .line 49
    :cond_1
    sget-object v7, Lcom/cashwalk/cashwalk/CashWalkApp;->awsS3client:Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-virtual {v7, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->generatePresignedUrl(Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;)Ljava/net/URL;

    move-result-object v5

    .line 50
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 53
    .end local v4    # "override":Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "urlRequest":Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    :goto_0
    return-object v7

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized AWS_initS3Client()V
    .locals 3

    .prologue
    .line 58
    const-class v1, Lcom/cashwalk/cashwalk/util/AWSHelper;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/cashwalk/cashwalk/util/AWSHelper$1;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/util/AWSHelper$1;-><init>()V

    sput-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->awsCredentials:Lcom/amazonaws/auth/AWSCredentials;

    .line 70
    new-instance v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->awsCredentials:Lcom/amazonaws/auth/AWSCredentials;

    invoke-direct {v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    sput-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->awsS3client:Lcom/amazonaws/services/s3/AmazonS3Client;

    .line 71
    sget-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->awsS3client:Lcom/amazonaws/services/s3/AmazonS3Client;

    sget-object v2, Lcom/amazonaws/regions/Regions;->AP_NORTHEAST_1:Lcom/amazonaws/regions/Regions;

    invoke-static {v2}, Lcom/amazonaws/regions/Region;->getRegion(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/regions/Region;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->setRegion(Lcom/amazonaws/regions/Region;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit v1

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "bucketname"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 19
    sget-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->awsCredentials:Lcom/amazonaws/auth/AWSCredentials;

    if-nez v0, :cond_0

    .line 20
    invoke-static {}, Lcom/cashwalk/cashwalk/util/AWSHelper;->AWS_initS3Client()V

    .line 22
    :cond_0
    sget-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->awsCredentials:Lcom/amazonaws/auth/AWSCredentials;

    .line 23
    .local v4, "awsCredentials":Lcom/amazonaws/auth/AWSCredentials;
    new-instance v0, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/AWSCredentials;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 24
    return-void
.end method
