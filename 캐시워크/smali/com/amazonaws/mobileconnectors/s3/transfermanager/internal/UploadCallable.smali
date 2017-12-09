.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;
.super Ljava/lang/Object;
.source "UploadCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

.field private final eTagsToSkip:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;"
        }
    .end annotation
.end field

.field private final futures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;>;"
        }
    .end annotation
.end field

.field private final listener:Lcom/amazonaws/event/ProgressListenerChain;

.field private multipartUploadId:Ljava/lang/String;

.field private persistableUpload:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;

.field private final putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

.field private final s3:Lcom/amazonaws/services/s3/AmazonS3;

.field private final threadPool:Ljava/util/concurrent/ExecutorService;

.field private final transferProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

.field private final upload:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;Ljava/util/concurrent/ExecutorService;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/event/ProgressListenerChain;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;)V
    .locals 1
    .param p1, "transferManager"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;
    .param p2, "threadPool"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "upload"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;
    .param p4, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p5, "progressListenerChain"    # Lcom/amazonaws/event/ProgressListenerChain;
    .param p6, "uploadId"    # Ljava/lang/String;
    .param p7, "transferProgress"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->futures:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->eTagsToSkip:Ljava/util/List;

    .line 83
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->getAmazonS3Client()Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 84
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->getConfiguration()Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    .line 86
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 87
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 88
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->listener:Lcom/amazonaws/event/ProgressListenerChain;

    .line 89
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->upload:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;

    .line 90
    iput-object p6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    .line 91
    iput-object p7, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->transferProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    .line 92
    return-void
.end method

.method private captureUploadStateIfPossible()V
    .locals 10

    .prologue
    .line 148
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 150
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    .line 152
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->getMinimumUploadPartSize()J

    move-result-wide v6

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    .line 153
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->getMultipartUploadThreshold()J

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->persistableUpload:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;

    .line 154
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->notifyPersistableTransferAvailability()V

    .line 156
    :cond_0
    return-void
.end method

.method private fireProgressEvent(I)V
    .locals 4
    .param p1, "eventType"    # I

    .prologue
    .line 374
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 375
    .local v0, "event":Lcom/amazonaws/event/ProgressEvent;
    invoke-virtual {v0, p1}, Lcom/amazonaws/event/ProgressEvent;->setEventCode(I)V

    .line 376
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->listener:Lcom/amazonaws/event/ProgressListenerChain;

    invoke-static {v1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->progressChanged(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/event/ProgressEvent;)Ljava/util/concurrent/Future;

    .line 377
    return-void
.end method

.method private getOptimalPartSize(Z)J
    .locals 8
    .param p1, "isUsingEncryption"    # Z

    .prologue
    const-wide/16 v6, 0x20

    .line 232
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    invoke-static {v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->calculateOptimalPartSize(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;)J

    move-result-wide v0

    .line 234
    .local v0, "optimalPartSize":J
    if-eqz p1, :cond_0

    rem-long v2, v0, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 237
    rem-long v2, v0, v6

    sub-long v2, v0, v2

    add-long v0, v2, v6

    .line 239
    :cond_0
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calculated optimal part size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 240
    return-wide v0
.end method

.method private identifyExistingPartsForResume(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p1, "uploadId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amazonaws/services/s3/model/PartSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 307
    .local v1, "partNumbers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/amazonaws/services/s3/model/PartSummary;>;"
    if-nez p1, :cond_1

    .line 321
    :cond_0
    return-object v1

    .line 310
    :cond_1
    const/4 v0, 0x0

    .line 313
    .local v0, "partNumber":I
    :goto_0
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v5, Lcom/amazonaws/services/s3/model/ListPartsRequest;

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 314
    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 315
    invoke-virtual {v7}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->withPartNumberMarker(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/ListPartsRequest;

    move-result-object v5

    .line 313
    invoke-interface {v4, v5}, Lcom/amazonaws/services/s3/AmazonS3;->listParts(Lcom/amazonaws/services/s3/model/ListPartsRequest;)Lcom/amazonaws/services/s3/model/PartListing;

    move-result-object v3

    .line 317
    .local v3, "parts":Lcom/amazonaws/services/s3/model/PartListing;
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/PartListing;->getParts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/PartSummary;

    .line 318
    .local v2, "partSummary":Lcom/amazonaws/services/s3/model/PartSummary;
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/PartSummary;->getPartNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 320
    .end local v2    # "partSummary":Lcom/amazonaws/services/s3/model/PartSummary;
    :cond_2
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/PartListing;->isTruncated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 323
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/PartListing;->getNextPartNumberMarker()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 324
    goto :goto_0
.end method

.method private initiateMultipartUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Z)Ljava/lang/String;
    .locals 5
    .param p1, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p2, "isUsingEncryption"    # Z

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "initiateMultipartUploadRequest":Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    if-eqz p2, :cond_3

    instance-of v2, p1, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;

    if-eqz v2, :cond_3

    .line 337
    new-instance v2, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;

    .line 338
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v3

    .line 338
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->withCannedACL(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v2

    .line 340
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v3

    .line 339
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v0

    move-object v2, v0

    .line 341
    check-cast v2, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;

    move-object v3, p1

    check-cast v3, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;

    .line 343
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v3

    .line 342
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->setMaterialsDescription(Ljava/util/Map;)V

    .line 351
    :goto_0
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->appendMultipartUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 353
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 355
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/services/s3/model/StorageClass;->fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v2

    .line 354
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V

    .line 358
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 360
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setRedirectLocation(Ljava/lang/String;)V

    .line 363
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 364
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 367
    :cond_2
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {v2, v0}, Lcom/amazonaws/services/s3/AmazonS3;->initiateMultipartUpload(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "uploadId":Ljava/lang/String;
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initiated new multipart upload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 370
    return-object v1

    .line 345
    .end local v1    # "uploadId":Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    .line 346
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withCannedACL(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v2

    .line 348
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v0

    goto :goto_0
.end method

.method private notifyPersistableTransferAvailability()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->listener:Lcom/amazonaws/event/ProgressListenerChain;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->persistableUpload:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;

    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher;->publishTransferPersistable(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;)Ljava/util/concurrent/Future;

    .line 168
    return-void
.end method

.method private uploadInOneChunk()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    .locals 4

    .prologue
    .line 134
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-interface {v2, v3}, Lcom/amazonaws/services/s3/AmazonS3;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v0

    .line 136
    .local v0, "putObjectResult":Lcom/amazonaws/services/s3/model/PutObjectResult;
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    invoke-direct {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;-><init>()V

    .line 137
    .local v1, "uploadResult":Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->setBucketName(Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->setKey(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/PutObjectResult;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->setETag(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/PutObjectResult;->getVersionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->setVersionId(Ljava/lang/String;)V

    .line 141
    return-object v1
.end method

.method private uploadInParts()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    instance-of v1, v5, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    .line 177
    .local v1, "isUsingEncryption":Z
    invoke-direct {p0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->getOptimalPartSize(Z)J

    move-result-wide v2

    .line 179
    .local v2, "optimalPartSize":J
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 180
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {p0, v5, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->initiateMultipartUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    .line 185
    :cond_0
    :try_start_0
    new-instance v4, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;-><init>(Lcom/amazonaws/services/s3/model/PutObjectRequest;Ljava/lang/String;J)V

    .line 188
    .local v4, "requestFactory":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-static {v5, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->isUploadParallelizable(Lcom/amazonaws/services/s3/model/PutObjectRequest;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 189
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->captureUploadStateIfPossible()V

    .line 190
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->uploadPartsInParallel(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    const/4 v5, 0x0

    .line 200
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 202
    :try_start_1
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    :cond_1
    :goto_0
    return-object v5

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to cleanly close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    invoke-direct {p0, v4}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->uploadPartsInSeries(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 200
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 202
    :try_start_3
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 203
    :catch_1
    move-exception v0

    .line 204
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v6, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to cleanly close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 195
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "requestFactory":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;
    :catch_2
    move-exception v0

    .line 196
    .restart local v0    # "e":Ljava/lang/Exception;
    const/16 v5, 0x8

    :try_start_4
    invoke-direct {p0, v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->fireProgressEvent(I)V

    .line 197
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->performAbortMultipartUpload()V

    .line 198
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 202
    :try_start_5
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 205
    :cond_3
    :goto_1
    throw v5

    .line 203
    :catch_3
    move-exception v0

    .line 204
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v6, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to cleanly close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private uploadPartsInParallel(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;Ljava/lang/String;)V
    .locals 7
    .param p1, "requestFactory"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;
    .param p2, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-direct {p0, p2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->identifyExistingPartsForResume(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 289
    .local v0, "partNumbers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/amazonaws/services/s3/model/PartSummary;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->hasMoreRequests()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 290
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    new-instance v3, Ljava/util/concurrent/CancellationException;

    const-string v4, "TransferManager has been shutdown"

    invoke-direct {v3, v4}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 292
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->getNextUploadPartRequest()Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    .line 293
    .local v1, "request":Lcom/amazonaws/services/s3/model/UploadPartRequest;
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 294
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/PartSummary;

    .line 295
    .local v2, "summary":Lcom/amazonaws/services/s3/model/PartSummary;
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->eTagsToSkip:Ljava/util/List;

    new-instance v4, Lcom/amazonaws/services/s3/model/PartETag;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartNumber()I

    move-result v5

    .line 296
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/PartSummary;->getETag()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/amazonaws/services/s3/model/PartETag;-><init>(ILjava/lang/String;)V

    .line 295
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->transferProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/PartSummary;->getSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->updateProgress(J)V

    goto :goto_0

    .line 300
    .end local v2    # "summary":Lcom/amazonaws/services/s3/model/PartSummary;
    :cond_1
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->futures:Ljava/util/List;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartCallable;

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-direct {v5, v6, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartCallable;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/services/s3/model/UploadPartRequest;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    .end local v1    # "request":Lcom/amazonaws/services/s3/model/UploadPartRequest;
    :cond_2
    return-void
.end method

.method private uploadPartsInSeries(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    .locals 10
    .param p1, "requestFactory"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;

    .prologue
    .line 249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v2, "partETags":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/PartETag;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->hasMoreRequests()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 252
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 253
    new-instance v5, Ljava/util/concurrent/CancellationException;

    const-string v6, "TransferManager has been shutdown"

    invoke-direct {v5, v6}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 254
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->getNextUploadPartRequest()Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    .line 256
    .local v3, "uploadPartRequest":Lcom/amazonaws/services/s3/model/UploadPartRequest;
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 257
    .local v1, "inputStream":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 258
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    .line 259
    const v5, 0x7fffffff

    invoke-virtual {v1, v5}, Ljava/io/InputStream;->mark(I)V

    .line 264
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {v5, v3}, Lcom/amazonaws/services/s3/AmazonS3;->uploadPart(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/UploadPartResult;->getPartETag()Lcom/amazonaws/services/s3/model/PartETag;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-virtual {v1, v5}, Ljava/io/InputStream;->mark(I)V

    goto :goto_1

    .line 267
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "uploadPartRequest":Lcom/amazonaws/services/s3/model/UploadPartRequest;
    :cond_3
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v6, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;

    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 269
    invoke-virtual {v7}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 270
    invoke-virtual {v8}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v2}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 268
    invoke-interface {v5, v6}, Lcom/amazonaws/services/s3/AmazonS3;->completeMultipartUpload(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object v0

    .line 272
    .local v0, "completeMultipartUploadResult":Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    new-instance v4, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    invoke-direct {v4}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;-><init>()V

    .line 273
    .local v4, "uploadResult":Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getBucketName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->setBucketName(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->setKey(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getETag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->setETag(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getVersionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->setVersionId(Ljava/lang/String;)V

    .line 277
    return-object v4
.end method


# virtual methods
.method public call()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->upload:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->InProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    .line 122
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->isMultipartUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->fireProgressEvent(I)V

    .line 124
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->uploadInParts()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->uploadInOneChunk()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->call()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    move-result-object v0

    return-object v0
.end method

.method getETags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->eTagsToSkip:Ljava/util/List;

    return-object v0
.end method

.method getFutures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->futures:Ljava/util/List;

    return-object v0
.end method

.method getMultipartUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    return-object v0
.end method

.method public getPersistableUpload()Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->persistableUpload:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;

    return-object v0
.end method

.method public isMultipartUpload()Z
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->shouldUseMultipartUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;)Z

    move-result v0

    return v0
.end method

.method performAbortMultipartUpload()V
    .locals 6

    .prologue
    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v2, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 219
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 220
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-interface {v1, v2}, Lcom/amazonaws/services/s3/AmazonS3;->abortMultipartUpload(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e2":Ljava/lang/Exception;
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to abort multipart upload, you may need to manually remove uploaded parts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 224
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
