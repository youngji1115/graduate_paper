.class public Lcom/amazonaws/services/s3/internal/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final BUCKET_ACCESS_FORBIDDEN_STATUS_CODE:I = 0x193

.field public static final BUCKET_REDIRECT_STATUS_CODE:I = 0x12d

.field public static DEFAULT_ENCODING:Ljava/lang/String; = null

.field public static final DEFAULT_STREAM_BUFFER_SIZE:I = 0x20000

.field public static final FAILED_PRECONDITION_STATUS_CODE:I = 0x19c

.field public static final GB:J = 0x40000000L

.field public static final HMAC_SHA1_ALGORITHM:Ljava/lang/String; = "HmacSHA1"

.field public static final KB:I = 0x400

.field public static final MAXIMUM_UPLOAD_PARTS:I = 0x2710

.field public static final MB:I = 0x100000

.field public static final NO_SUCH_BUCKET_STATUS_CODE:I = 0x194

.field public static final NULL_VERSION_ID:Ljava/lang/String; = "null"

.field public static final REQUESTER_PAYS:Ljava/lang/String; = "requester"

.field public static final S3_ACCELERATE_HOSTNAME:Ljava/lang/String; = "s3-accelerate.amazonaws.com"

.field public static S3_HOSTNAME:Ljava/lang/String; = null

.field public static S3_SERVICE_NAME:Ljava/lang/String; = null

.field public static final XML_NAMESPACE:Ljava/lang/String; = "http://s3.amazonaws.com/doc/2006-03-01/"

.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "s3.amazonaws.com"

    sput-object v0, Lcom/amazonaws/services/s3/internal/Constants;->S3_HOSTNAME:Ljava/lang/String;

    .line 35
    const-string v0, "Amazon S3"

    sput-object v0, Lcom/amazonaws/services/s3/internal/Constants;->S3_SERVICE_NAME:Ljava/lang/String;

    .line 38
    const-string v0, "UTF-8"

    sput-object v0, Lcom/amazonaws/services/s3/internal/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    .line 97
    const-class v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/Constants;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStreamBufferSize()I
    .locals 6

    .prologue
    .line 81
    const/high16 v2, 0x20000

    .line 82
    .local v2, "streamBufferSize":I
    const-string v3, "com.amazonaws.sdk.s3.defaultStreamBufferSize"

    .line 83
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "bufferSizeOverride":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 88
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 93
    :cond_0
    :goto_0
    return v2

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/amazonaws/services/s3/internal/Constants;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse buffer size override from value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0
.end method
