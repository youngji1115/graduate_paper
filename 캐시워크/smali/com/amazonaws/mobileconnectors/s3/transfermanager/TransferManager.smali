.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;
.super Ljava/lang/Object;
.source "TransferManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_DELIMITER:Ljava/lang/String; = "/"

.field private static final USER_AGENT:Ljava/lang/String;

.field private static final USER_AGENT_MULTIPART:Ljava/lang/String;

.field private static final daemonThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

.field private final s3:Lcom/amazonaws/services/s3/AmazonS3;

.field private final threadPool:Ljava/util/concurrent/ExecutorService;

.field private final timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 166
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->log:Lorg/apache/commons/logging/Log;

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1169
    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->USER_AGENT:Ljava/lang/String;

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1171
    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->USER_AGENT_MULTIPART:Ljava/lang/String;

    .line 1180
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$3;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$3;-><init>()V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->daemonThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    new-instance v1, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v1}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;-><init>(Lcom/amazonaws/services/s3/AmazonS3;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1
    .param p1, "credentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 213
    new-instance v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;-><init>(Lcom/amazonaws/services/s3/AmazonS3;)V

    .line 214
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1
    .param p1, "credentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;

    .prologue
    .line 196
    new-instance v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;-><init>(Lcom/amazonaws/services/s3/AmazonS3;)V

    .line 197
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;)V
    .locals 1
    .param p1, "s3"    # Lcom/amazonaws/services/s3/AmazonS3;

    .prologue
    .line 230
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->createDefaultExecutorService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/util/concurrent/ExecutorService;)V

    .line 231
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/util/concurrent/ExecutorService;)V
    .locals 3
    .param p1, "s3"    # Lcom/amazonaws/services/s3/AmazonS3;
    .param p2, "threadPool"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->daemonThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    .line 247
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 248
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 249
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;)Lcom/amazonaws/services/s3/AmazonS3;
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    return-object v0
.end method

.method public static appendMultipartUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(TX;)TX;"
        }
    .end annotation

    .prologue
    .line 1164
    .local p0, "request":Lcom/amazonaws/AmazonWebServiceRequest;, "TX;"
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->USER_AGENT_MULTIPART:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/RequestClientOptions;->appendUserAgent(Ljava/lang/String;)V

    .line 1165
    return-object p0
.end method

.method public static appendSingleObjectUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(TX;)TX;"
        }
    .end annotation

    .prologue
    .line 1159
    .local p0, "request":Lcom/amazonaws/AmazonWebServiceRequest;, "TX;"
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/RequestClientOptions;->appendUserAgent(Ljava/lang/String;)V

    .line 1160
    return-object p0
.end method

.method private assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameterValue"    # Ljava/lang/Object;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 1416
    if-nez p1, :cond_0

    .line 1417
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1418
    :cond_0
    return-void
.end method

.method private doDownload(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;
    .locals 28
    .param p1, "getObjectRequest"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "stateListener"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;
    .param p4, "s3progressListener"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;
    .param p5, "resumeExistingDownload"    # Z

    .prologue
    .line 601
    invoke-static/range {p1 .. p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->appendSingleObjectUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 603
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Downloading from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 604
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 606
    .local v7, "description":Ljava/lang/String;
    new-instance v8, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    invoke-direct {v8}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;-><init>()V

    .line 609
    .local v8, "transferProgress":Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;
    new-instance v9, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListenerChain;

    const/4 v10, 0x3

    new-array v10, v10, [Lcom/amazonaws/event/ProgressListener;

    const/4 v11, 0x0

    new-instance v12, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;

    invoke-direct {v12, v8}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;)V

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 616
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object p4, v10, v11

    invoke-direct {v9, v10}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListenerChain;-><init>([Lcom/amazonaws/event/ProgressListener;)V

    .line 623
    .local v9, "listenerChain":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListenerChain;
    new-instance v20, Lcom/amazonaws/event/ProgressListenerChain;

    new-instance v10, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$1;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;)V

    const/4 v11, 0x1

    new-array v11, v11, [Lcom/amazonaws/event/ProgressListener;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    move-object/from16 v0, v20

    invoke-direct {v0, v10, v11}, Lcom/amazonaws/event/ProgressListenerChain;-><init>(Lcom/amazonaws/event/ProgressListenerChain$ProgressEventFilter;[Lcom/amazonaws/event/ProgressListener;)V

    .line 637
    .local v20, "listeners":Lcom/amazonaws/event/ProgressListenerChain;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V

    .line 638
    new-instance v17, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;

    .line 639
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v17

    invoke-direct {v0, v10, v11}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .local v17, "getObjectMetadataRequest":Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 642
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->setSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 644
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/amazonaws/services/s3/AmazonS3;->getObjectMetadata(Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v21

    .line 647
    .local v21, "objectMetadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    new-instance v6, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;

    const/4 v10, 0x0

    move-object/from16 v11, p3

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v6 .. v13}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)V

    .line 651
    .local v6, "download":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;
    const-wide/16 v24, 0x0

    .line 652
    .local v24, "startingByte":J
    invoke-virtual/range {v21 .. v21}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    sub-long v18, v10, v12

    .line 654
    .local v18, "lastByte":J
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v10

    if-eqz v10, :cond_1

    .line 655
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v10

    array-length v10, v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 656
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v10

    const/4 v11, 0x0

    aget-wide v24, v10, v11

    .line 657
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v10

    const/4 v11, 0x1

    aget-wide v18, v10, v11

    .line 660
    :cond_1
    sub-long v10, v18, v24

    const-wide/16 v12, 0x1

    add-long v26, v10, v12

    .line 661
    .local v26, "totalBytesToDownload":J
    move-wide/from16 v0, v26

    invoke-virtual {v8, v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->setTotalBytesToTransfer(J)V

    .line 663
    if-eqz p5, :cond_2

    .line 664
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 665
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v22

    .line 666
    .local v22, "numberOfBytesRead":J
    add-long v24, v24, v22

    .line 667
    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setRange(JJ)V

    .line 668
    move-wide/from16 v0, v22

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->updateProgress(J)V

    .line 670
    sub-long v10, v18, v24

    const-wide/16 v12, 0x1

    add-long v26, v10, v12

    .line 674
    .end local v22    # "numberOfBytesRead":J
    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v10, v26, v10

    if-gez v10, :cond_3

    .line 675
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Unable to determine the range for download operation."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 679
    :cond_3
    new-instance v14, Ljava/util/concurrent/CountDownLatch;

    const/4 v10, 0x1

    invoke-direct {v14, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .local v14, "latch":Ljava/util/concurrent/CountDownLatch;
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p5

    move-object v15, v6

    .line 680
    invoke-direct/range {v10 .. v15}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->submitDownloadTask(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;ZLjava/util/concurrent/CountDownLatch;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;)Ljava/util/concurrent/Future;

    move-result-object v16

    .line 682
    .local v16, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    new-instance v10, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadMonitor;

    move-object/from16 v0, v16

    invoke-direct {v10, v6, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadMonitor;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;Ljava/util/concurrent/Future;)V

    invoke-virtual {v6, v10}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->setMonitor(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;)V

    .line 683
    invoke-virtual {v14}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 684
    return-object v6
.end method

.method private doUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;
    .locals 20
    .param p1, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p2, "stateListener"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;
    .param p3, "progressListener"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;
    .param p4, "persistableUpload"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 466
    invoke-static/range {p1 .. p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->appendSingleObjectUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 468
    if-eqz p4, :cond_2

    .line 469
    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->getMultipartUploadId()Ljava/lang/String;

    move-result-object v8

    .line 471
    .local v8, "multipartUploadId":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v3

    if-nez v3, :cond_0

    .line 472
    new-instance v3, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 473
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v19

    .line 475
    .local v19, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    invoke-static/range {p1 .. p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->getRequestFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/io/File;

    move-result-object v18

    .line 477
    .local v18, "file":Ljava/io/File;
    if-eqz v18, :cond_3

    .line 479
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v12

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 482
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 483
    invoke-static {}, Lcom/amazonaws/services/s3/util/Mimetypes;->getInstance()Lcom/amazonaws/services/s3/util/Mimetypes;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/amazonaws/services/s3/util/Mimetypes;->getMimetype(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 492
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uploading to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 493
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 494
    .local v17, "description":Ljava/lang/String;
    new-instance v9, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    invoke-direct {v9}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;-><init>()V

    .line 496
    .local v9, "transferProgress":Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;
    invoke-static/range {p1 .. p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->getContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;)J

    move-result-wide v12

    .line 495
    invoke-virtual {v9, v12, v13}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->setTotalBytesToTransfer(J)V

    .line 498
    new-instance v7, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListenerChain;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/amazonaws/event/ProgressListener;

    const/4 v4, 0x0

    new-instance v6, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;

    invoke-direct {v6, v9}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;)V

    aput-object v6, v3, v4

    const/4 v4, 0x1

    .line 500
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-direct {v7, v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListenerChain;-><init>([Lcom/amazonaws/event/ProgressListener;)V

    .line 502
    .local v7, "listenerChain":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListenerChain;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V

    .line 504
    new-instance v5, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v5, v0, v9, v7, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V

    .line 507
    .local v5, "upload":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;
    new-instance v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v9}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;Ljava/util/concurrent/ExecutorService;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/event/ProgressListenerChain;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;)V

    .line 509
    .local v2, "uploadCallable":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;
    new-instance v10, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v11, p0

    move-object v12, v5

    move-object v14, v2

    move-object/from16 v15, p1

    move-object/from16 v16, v7

    invoke-direct/range {v10 .. v16}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;Ljava/util/concurrent/ExecutorService;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/event/ProgressListenerChain;)V

    .line 511
    .local v10, "watcher":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v10, v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->setTimedThreadPool(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 512
    invoke-virtual {v5, v10}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->setMonitor(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;)V

    .line 514
    return-object v5

    .line 469
    .end local v2    # "uploadCallable":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;
    .end local v5    # "upload":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;
    .end local v7    # "listenerChain":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListenerChain;
    .end local v8    # "multipartUploadId":Ljava/lang/String;
    .end local v9    # "transferProgress":Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;
    .end local v10    # "watcher":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;
    .end local v17    # "description":Ljava/lang/String;
    .end local v18    # "file":Ljava/io/File;
    .end local v19    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 486
    .restart local v8    # "multipartUploadId":Ljava/lang/String;
    .restart local v18    # "file":Ljava/io/File;
    .restart local v19    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :cond_3
    if-eqz v8, :cond_1

    .line 487
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to resume the upload. No file specified."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private listFiles(Ljava/io/File;Ljava/util/List;Z)V
    .locals 5
    .param p1, "dir"    # Ljava/io/File;
    .param p3, "includeSubDirectories"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1057
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1058
    .local v1, "found":[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 1059
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 1060
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1061
    if-eqz p3, :cond_0

    .line 1062
    invoke-direct {p0, v0, p2, p3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->listFiles(Ljava/io/File;Ljava/util/List;Z)V

    .line 1059
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1065
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1069
    .end local v0    # "f":Ljava/io/File;
    :cond_2
    return-void
.end method

.method private shutdown()V
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1155
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 1156
    return-void
.end method

.method private submitDownloadTask(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;ZLjava/util/concurrent/CountDownLatch;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;)Ljava/util/concurrent/Future;
    .locals 9
    .param p1, "getObjectRequest"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "resumeExistingDownload"    # Z
    .param p4, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p5, "download"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/GetObjectRequest;",
            "Ljava/io/File;",
            "Z",
            "Ljava/util/concurrent/CountDownLatch;",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 692
    iget-object v8, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p2

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;Ljava/util/concurrent/CountDownLatch;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;Ljava/io/File;Lcom/amazonaws/services/s3/model/GetObjectRequest;Z)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v7

    .line 744
    .local v7, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    return-object v7
.end method


# virtual methods
.method public abortMultipartUploads(Ljava/lang/String;Ljava/util/Date;)V
    .locals 8
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1090
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v3, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    invoke-direct {v3, p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->appendSingleObjectUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    invoke-interface {v4, v3}, Lcom/amazonaws/services/s3/AmazonS3;->listMultipartUploads(Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;)Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    move-result-object v2

    .line 1093
    .local v2, "uploadListing":Lcom/amazonaws/services/s3/model/MultipartUploadListing;
    :cond_0
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->getMultipartUploads()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/MultipartUpload;

    .line 1094
    .local v1, "upload":Lcom/amazonaws/services/s3/model/MultipartUpload;
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/MultipartUpload;->getInitiated()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-gez v3, :cond_1

    .line 1095
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v3, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;

    .line 1096
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/MultipartUpload;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/MultipartUpload;->getUploadId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, p1, v6, v7}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    invoke-static {v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->appendSingleObjectUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;

    invoke-interface {v5, v3}, Lcom/amazonaws/services/s3/AmazonS3;->abortMultipartUpload(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    goto :goto_0

    .line 1100
    .end local v1    # "upload":Lcom/amazonaws/services/s3/model/MultipartUpload;
    :cond_2
    new-instance v3, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    invoke-direct {v3, p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;-><init>(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->getNextUploadIdMarker()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->withUploadIdMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    move-result-object v3

    .line 1102
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->getNextKeyMarker()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->withKeyMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    move-result-object v0

    .line 1103
    .local v0, "request":Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->appendSingleObjectUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    invoke-interface {v4, v3}, Lcom/amazonaws/services/s3/AmazonS3;->listMultipartUploads(Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;)Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    move-result-object v2

    .line 1104
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->isTruncated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1105
    return-void
.end method

.method public copy(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Copy;
    .locals 1
    .param p1, "copyObjectRequest"    # Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .prologue
    .line 1264
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->copy(Lcom/amazonaws/services/s3/model/CopyObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Copy;

    move-result-object v0

    return-object v0
.end method

.method public copy(Lcom/amazonaws/services/s3/model/CopyObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Copy;
    .locals 21
    .param p1, "copyObjectRequest"    # Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .param p2, "stateChangeListener"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1303
    invoke-static/range {p1 .. p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->appendSingleObjectUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 1305
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "The source bucket name must be specified when a copy request is initiated."

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1307
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "The source object key must be specified when a copy request is initiated."

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1310
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "The destination bucket name must be specified when a copy request is initiated."

    .line 1309
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1313
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "The destination object key must be specified when a copy request is initiated."

    .line 1312
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1316
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Copying object from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1317
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1318
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1319
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1320
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1322
    .local v18, "description":Ljava/lang/String;
    new-instance v5, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;

    .line 1324
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v6

    .line 1325
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->withSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;

    move-result-object v19

    .line 1328
    .local v19, "getObjectMetadataRequest":Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Lcom/amazonaws/services/s3/AmazonS3;->getObjectMetadata(Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v9

    .line 1330
    .local v9, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    new-instance v20, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    invoke-direct/range {v20 .. v20}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;-><init>()V

    .line 1331
    .local v20, "transferProgress":Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;
    invoke-virtual {v9}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v12

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->setTotalBytesToTransfer(J)V

    .line 1333
    new-instance v10, Lcom/amazonaws/event/ProgressListenerChain;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/amazonaws/event/ProgressListener;

    const/4 v6, 0x0

    new-instance v8, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;)V

    aput-object v8, v5, v6

    invoke-direct {v10, v5}, Lcom/amazonaws/event/ProgressListenerChain;-><init>([Lcom/amazonaws/event/ProgressListener;)V

    .line 1335
    .local v10, "listenerChain":Lcom/amazonaws/event/ProgressListenerChain;
    new-instance v7, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v7, v0, v1, v10, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V

    .line 1337
    .local v7, "copy":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;
    new-instance v4, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    invoke-direct/range {v4 .. v10}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;Ljava/util/concurrent/ExecutorService;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;Lcom/amazonaws/services/s3/model/CopyObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/event/ProgressListenerChain;)V

    .line 1339
    .local v4, "copyCallable":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;
    new-instance v11, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v12, p0

    move-object v13, v7

    move-object v15, v4

    move-object/from16 v16, p1

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;Ljava/util/concurrent/ExecutorService;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;Lcom/amazonaws/services/s3/model/CopyObjectRequest;Lcom/amazonaws/event/ProgressListenerChain;)V

    .line 1341
    .local v11, "watcher":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v11, v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->setTimedThreadPool(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 1342
    invoke-virtual {v7, v11}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;->setMonitor(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;)V

    .line 1343
    return-object v7
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Copy;
    .locals 1
    .param p1, "sourceBucketName"    # Ljava/lang/String;
    .param p2, "sourceKey"    # Ljava/lang/String;
    .param p3, "destinationBucketName"    # Ljava/lang/String;
    .param p4, "destinationKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1230
    new-instance v0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->copy(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Copy;

    move-result-object v0

    return-object v0
.end method

.method public download(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;
    .locals 6
    .param p1, "getObjectRequest"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 560
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->doDownload(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;

    move-result-object v0

    return-object v0
.end method

.method public download(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;
    .locals 6
    .param p1, "getObjectRequest"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "progressListener"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;

    .prologue
    .line 586
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->doDownload(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;

    move-result-object v0

    return-object v0
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;
    .locals 1
    .param p1, "bucket"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;

    .prologue
    .line 537
    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->download(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;

    move-result-object v0

    return-object v0
.end method

.method public downloadDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileDownload;
    .locals 30
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "keyPrefix"    # Ljava/lang/String;
    .param p3, "destinationDirectory"    # Ljava/io/File;

    .prologue
    .line 762
    if-nez p2, :cond_0

    .line 763
    const-string p2, ""

    .line 765
    :cond_0
    new-instance v20, Ljava/util/LinkedList;

    invoke-direct/range {v20 .. v20}, Ljava/util/LinkedList;-><init>()V

    .line 766
    .local v20, "objectSummaries":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/S3ObjectSummary;>;"
    new-instance v15, Ljava/util/Stack;

    invoke-direct {v15}, Ljava/util/Stack;-><init>()V

    .line 767
    .local v15, "commonPrefixes":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 768
    const-wide/16 v26, 0x0

    .line 773
    .local v26, "totalSize":J
    :cond_1
    invoke-virtual {v15}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 774
    .local v22, "prefix":Ljava/lang/String;
    const/16 v18, 0x0

    .line 777
    .local v18, "listObjectsResponse":Lcom/amazonaws/services/s3/model/ObjectListing;
    :cond_2
    if-nez v18, :cond_3

    .line 778
    new-instance v6, Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    invoke-direct {v6}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;-><init>()V

    .line 779
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    move-result-object v6

    const-string v7, "/"

    .line 780
    invoke-virtual {v6, v7}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->withDelimiter(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->withPrefix(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    move-result-object v17

    .line 781
    .local v17, "listObjectsRequest":Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Lcom/amazonaws/services/s3/AmazonS3;->listObjects(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object v18

    .line 786
    .end local v17    # "listObjectsRequest":Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/s3/model/ObjectListing;->getObjectSummaries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    .line 790
    .local v23, "s":Lcom/amazonaws/services/s3/model/S3ObjectSummary;
    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 791
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/s3/model/ObjectListing;->getCommonPrefixes()Ljava/util/List;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 792
    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 791
    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 793
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getSize()J

    move-result-wide v28

    add-long v26, v26, v28

    goto :goto_1

    .line 783
    .end local v23    # "s":Lcom/amazonaws/services/s3/model/S3ObjectSummary;
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lcom/amazonaws/services/s3/AmazonS3;->listNextBatchOfObjects(Lcom/amazonaws/services/s3/model/ObjectListing;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object v18

    goto :goto_0

    .line 796
    .restart local v23    # "s":Lcom/amazonaws/services/s3/model/S3ObjectSummary;
    :cond_4
    sget-object v7, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping download for object "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " since it is also a virtual directory"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1

    .line 801
    .end local v23    # "s":Lcom/amazonaws/services/s3/model/S3ObjectSummary;
    :cond_5
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/s3/model/ObjectListing;->getCommonPrefixes()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 802
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/s3/model/ObjectListing;->isTruncated()Z

    move-result v6

    if-nez v6, :cond_2

    .line 803
    invoke-virtual {v15}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 806
    new-instance v5, Lcom/amazonaws/event/ProgressListenerChain;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/amazonaws/event/ProgressListener;

    invoke-direct {v5, v6}, Lcom/amazonaws/event/ProgressListenerChain;-><init>([Lcom/amazonaws/event/ProgressListener;)V

    .line 808
    .local v5, "additionalListeners":Lcom/amazonaws/event/ProgressListenerChain;
    new-instance v4, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    invoke-direct {v4}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;-><init>()V

    .line 809
    .local v4, "transferProgress":Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;
    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->setTotalBytesToTransfer(J)V

    .line 815
    new-instance v19, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferProgressUpdatingListener;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferProgressUpdatingListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;)V

    .line 818
    .local v19, "listener":Lcom/amazonaws/event/ProgressListener;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 820
    .local v8, "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Downloading from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 821
    .local v3, "description":Ljava/lang/String;
    new-instance v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileDownloadImpl;

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileDownloadImpl;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 824
    .local v2, "multipleFileDownload":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileDownloadImpl;
    new-instance v6, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;

    invoke-direct {v6, v2, v8}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;Ljava/util/Collection;)V

    invoke-virtual {v2, v6}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileDownloadImpl;->setMonitor(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;)V

    .line 827
    new-instance v16, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 828
    .local v16, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v12, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;

    move-object/from16 v0, v16

    invoke-direct {v12, v0, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;-><init>(Ljava/util/concurrent/CountDownLatch;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;)V

    .line 831
    .local v12, "transferListener":Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    .line 833
    .local v24, "summary":Lcom/amazonaws/services/s3/model/S3ObjectSummary;
    new-instance v11, Ljava/io/File;

    invoke-virtual/range {v24 .. v24}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-direct {v11, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 834
    .local v11, "f":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v21

    .line 835
    .local v21, "parentFile":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_6

    .line 836
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t create parent directories for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 837
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 843
    :cond_6
    new-instance v6, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    .line 844
    invoke-virtual/range {v24 .. v24}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getBucketName()Ljava/lang/String;

    move-result-object v9

    .line 845
    invoke-virtual/range {v24 .. v24}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->withGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/services/s3/model/GetObjectRequest;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    .line 843
    invoke-direct/range {v9 .. v14}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->doDownload(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;

    move-result-object v6

    check-cast v6, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 852
    .end local v11    # "f":Ljava/io/File;
    .end local v21    # "parentFile":Ljava/io/File;
    .end local v24    # "summary":Lcom/amazonaws/services/s3/model/S3ObjectSummary;
    :cond_7
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 853
    sget-object v6, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Completed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v2, v6}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileDownloadImpl;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    .line 861
    :goto_3
    return-object v2

    .line 859
    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_3
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1426
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->shutdown()V

    .line 1427
    return-void
.end method

.method public getAmazonS3Client()Lcom/amazonaws/services/s3/AmazonS3;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    return-object v0
.end method

.method public getConfiguration()Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    return-object v0
.end method

.method public resumeDownload(Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;
    .locals 12
    .param p1, "persistableDownload"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1387
    const-string v0, "PausedDownload is mandatory to resume a download."

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1389
    new-instance v1, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    .line 1390
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 1391
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->getVersionId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v2, v4}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    .local v1, "request":Lcom/amazonaws/services/s3/model/GetObjectRequest;
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->getRange()[J

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1393
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->getRange()[J

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1394
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->getRange()[J

    move-result-object v6

    .line 1395
    .local v6, "range":[J
    const/4 v0, 0x0

    aget-wide v8, v6, v0

    aget-wide v10, v6, v5

    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setRange(JJ)V

    .line 1397
    .end local v6    # "range":[J
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->isRequesterPays()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setRequesterPays(Z)V

    .line 1398
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->getResponseHeaders()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setResponseHeaders(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    .line 1400
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->doDownload(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;

    move-result-object v0

    return-object v0
.end method

.method public resumeUpload(Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;
    .locals 6
    .param p1, "persistableUpload"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;

    .prologue
    const/4 v5, 0x0

    .line 1362
    const-string v0, "PauseUpload is mandatory to resume a upload."

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->getPartSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->setMinimumUploadPartSize(J)V

    .line 1365
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    .line 1366
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->getMutlipartUploadThreshold()J

    move-result-wide v2

    .line 1365
    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->setMultipartUploadThreshold(J)V

    .line 1367
    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 1368
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->getKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 1367
    invoke-direct {p0, v0, v5, v5, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->doUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;

    move-result-object v0

    return-object v0
.end method

.method public setConfiguration(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;)V
    .locals 0
    .param p1, "configuration"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    .line 261
    return-void
.end method

.method public shutdownNow()V
    .locals 1

    .prologue
    .line 1115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->shutdownNow(Z)V

    .line 1116
    return-void
.end method

.method public shutdownNow(Z)V
    .locals 1
    .param p1, "shutDownS3Client"    # Z

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1139
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 1141
    if-eqz p1, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    instance-of v0, v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    check-cast v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->shutdown()V

    .line 1146
    :cond_0
    return-void
.end method

.method public upload(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;
    .locals 1
    .param p1, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 391
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->doUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;

    move-result-object v0

    return-object v0
.end method

.method public upload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;
    .locals 1
    .param p1, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p2, "progressListener"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 426
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->doUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;

    move-result-object v0

    return-object v0
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 359
    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->upload(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;

    move-result-object v0

    return-object v0
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "objectMetadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 330
    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->upload(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;

    move-result-object v0

    return-object v0
.end method

.method public uploadDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "virtualDirectoryKeyPrefix"    # Ljava/lang/String;
    .param p3, "directory"    # Ljava/io/File;
    .param p4, "includeSubdirectories"    # Z

    .prologue
    .line 882
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->uploadDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZLcom/amazonaws/mobileconnectors/s3/transfermanager/ObjectMetadataProvider;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;

    move-result-object v0

    return-object v0
.end method

.method public uploadDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZLcom/amazonaws/mobileconnectors/s3/transfermanager/ObjectMetadataProvider;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "virtualDirectoryKeyPrefix"    # Ljava/lang/String;
    .param p3, "directory"    # Ljava/io/File;
    .param p4, "includeSubdirectories"    # Z
    .param p5, "metadataProvider"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/ObjectMetadataProvider;

    .prologue
    .line 907
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 908
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide a directory to upload"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 911
    :cond_1
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 912
    .local v4, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0, p3, v4, p4}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->listFiles(Ljava/io/File;Ljava/util/List;Z)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 914
    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->uploadFileList(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/amazonaws/mobileconnectors/s3/transfermanager/ObjectMetadataProvider;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;

    move-result-object v0

    return-object v0
.end method

.method public uploadFileList(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "virtualDirectoryKeyPrefix"    # Ljava/lang/String;
    .param p3, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;"
        }
    .end annotation

    .prologue
    .line 938
    .local p4, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->uploadFileList(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/amazonaws/mobileconnectors/s3/transfermanager/ObjectMetadataProvider;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;

    move-result-object v0

    return-object v0
.end method

.method public uploadFileList(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/amazonaws/mobileconnectors/s3/transfermanager/ObjectMetadataProvider;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;
    .locals 20
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "virtualDirectoryKeyPrefix"    # Ljava/lang/String;
    .param p3, "directory"    # Ljava/io/File;
    .param p5, "metadataProvider"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/ObjectMetadataProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/ObjectMetadataProvider;",
            ")",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;"
        }
    .end annotation

    .prologue
    .line 965
    .local p4, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 966
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "Must provide a common base directory for uploaded files"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 970
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 971
    :cond_2
    const-string p2, ""

    .line 977
    :cond_3
    :goto_0
    new-instance v5, Lcom/amazonaws/event/ProgressListenerChain;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/amazonaws/event/ProgressListener;

    invoke-direct {v5, v3}, Lcom/amazonaws/event/ProgressListenerChain;-><init>([Lcom/amazonaws/event/ProgressListener;)V

    .line 979
    .local v5, "additionalListeners":Lcom/amazonaws/event/ProgressListenerChain;
    new-instance v4, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    invoke-direct {v4}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;-><init>()V

    .line 985
    .local v4, "progress":Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;
    new-instance v12, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferProgressUpdatingListener;

    invoke-direct {v12, v4, v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferProgressUpdatingListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;)V

    .line 988
    .local v12, "listener":Lcom/amazonaws/event/ProgressListener;
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 989
    .local v8, "uploads":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;>;"
    new-instance v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;

    const-string v3, "Uploading etc"

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 991
    .local v2, "multipleFileUpload":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;
    new-instance v3, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;

    invoke-direct {v3, v2, v8}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;->setMonitor(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;)V

    .line 993
    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v11, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 994
    .local v11, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v15, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;

    invoke-direct {v15, v11, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;-><init>(Ljava/util/concurrent/CountDownLatch;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;)V

    .line 997
    .local v15, "transferListener":Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;
    if-eqz p4, :cond_4

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 998
    :cond_4
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Completed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    .line 1047
    :goto_1
    invoke-virtual {v11}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1049
    return-object v2

    .line 972
    .end local v2    # "multipleFileUpload":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;
    .end local v4    # "progress":Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;
    .end local v5    # "additionalListeners":Lcom/amazonaws/event/ProgressListenerChain;
    .end local v8    # "uploads":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;>;"
    .end local v11    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v12    # "listener":Lcom/amazonaws/event/ProgressListener;
    .end local v15    # "transferListener":Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;
    :cond_5
    const-string v3, "/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 973
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1008
    .restart local v2    # "multipleFileUpload":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;
    .restart local v4    # "progress":Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;
    .restart local v5    # "additionalListeners":Lcom/amazonaws/event/ProgressListenerChain;
    .restart local v8    # "uploads":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;>;"
    .restart local v11    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v12    # "listener":Lcom/amazonaws/event/ProgressListener;
    .restart local v15    # "transferListener":Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;
    :cond_6
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    .line 1009
    .local v14, "startingPosition":I
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1010
    add-int/lit8 v14, v14, 0x1

    .line 1012
    :cond_7
    const-wide/16 v16, 0x0

    .line 1013
    .local v16, "totalSize":J
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 1015
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1016
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v18

    add-long v16, v16, v18

    .line 1018
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v7, "\\\\"

    const-string v18, "/"

    .line 1019
    move-object/from16 v0, v18

    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1021
    .local v10, "key":Ljava/lang/String;
    new-instance v13, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v13}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 1026
    .local v13, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    if-eqz p5, :cond_9

    .line 1027
    move-object/from16 v0, p5

    invoke-interface {v0, v9, v13}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/ObjectMetadataProvider;->provideObjectMetadata(Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 1033
    :cond_9
    new-instance v3, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v7, v9}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 1036
    invoke-virtual {v3, v13}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v3

    .line 1037
    invoke-virtual {v3, v12}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v3

    const/4 v7, 0x0

    const/16 v18, 0x0

    .line 1033
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v15, v7, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->doUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1042
    .end local v9    # "f":Ljava/io/File;
    .end local v10    # "key":Ljava/lang/String;
    .end local v13    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :cond_a
    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->setTotalBytesToTransfer(J)V

    goto/16 :goto_1
.end method
