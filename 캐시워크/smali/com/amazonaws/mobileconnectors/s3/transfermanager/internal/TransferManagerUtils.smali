.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;
.super Ljava/lang/Object;
.source "TransferManagerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateOptimalPartSize(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;)J
    .locals 6
    .param p0, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p1, "configuration"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    .prologue
    .line 113
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->getContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;)J

    move-result-wide v4

    long-to-double v0, v4

    .line 114
    .local v0, "contentLength":D
    const-wide v4, 0x40c3880000000000L    # 10000.0

    div-double v2, v0, v4

    .line 116
    .local v2, "optimalPartSize":D
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 117
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->getMinimumUploadPartSize()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-long v4, v4

    return-wide v4
.end method

.method public static calculateOptimalPartSizeForCopy(Lcom/amazonaws/services/s3/model/CopyObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;J)J
    .locals 6
    .param p0, "copyObjectRequest"    # Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .param p1, "configuration"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;
    .param p2, "contentLengthOfSource"    # J

    .prologue
    .line 159
    long-to-double v2, p2

    const-wide v4, 0x40c3880000000000L    # 10000.0

    div-double v0, v2, v4

    .line 162
    .local v0, "optimalPartSize":D
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 164
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->getMultipartCopyPartSize()J

    move-result-wide v2

    long-to-double v2, v2

    .line 163
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-long v2, v2

    return-wide v2
.end method

.method public static createDefaultExecutorService()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils$1;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils$1;-><init>()V

    .line 52
    .local v0, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v1
.end method

.method public static determinePauseStatus(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;
    .locals 1
    .param p0, "transferState"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;
    .param p1, "forceCancel"    # Z

    .prologue
    .line 173
    if-eqz p1, :cond_1

    .line 174
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Waiting:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-ne p0, v0, :cond_0

    .line 175
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->CANCELLED_BEFORE_START:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    .line 183
    :goto_0
    return-object v0

    .line 176
    :cond_0
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->InProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-ne p0, v0, :cond_1

    .line 177
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->CANCELLED:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    goto :goto_0

    .line 180
    :cond_1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Waiting:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-ne p0, v0, :cond_2

    .line 181
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->NOT_STARTED:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    goto :goto_0

    .line 183
    :cond_2
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->NO_EFFECT:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    goto :goto_0
.end method

.method public static getContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;)J
    .locals 6
    .param p0, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .prologue
    .line 88
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->getRequestFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/io/File;

    move-result-object v0

    .line 89
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 98
    :goto_0
    return-wide v2

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v2

    goto :goto_0

    .line 98
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static getRequestFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/io/File;
    .locals 1
    .param p0, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUploadParallelizable(Lcom/amazonaws/services/s3/model/PutObjectRequest;Z)Z
    .locals 2
    .param p0, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p1, "isUsingEncryption"    # Z

    .prologue
    const/4 v0, 0x0

    .line 71
    if-eqz p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->getRequestFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static shouldUseMultipartUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;)Z
    .locals 4
    .param p0, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p1, "configuration"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    .prologue
    .line 133
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->getContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;)J

    move-result-wide v0

    .line 134
    .local v0, "contentLength":J
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->getMultipartUploadThreshold()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
