.class public final Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;
.super Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;
.source "PersistableUpload.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final TYPE:Ljava/lang/String; = "upload"


# instance fields
.field private final bucketName:Ljava/lang/String;

.field private final file:Ljava/lang/String;

.field private final key:Ljava/lang/String;

.field private final multipartUploadId:Ljava/lang/String;

.field private final mutlipartUploadThreshold:J

.field private final partSize:J

.field private final pauseType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v2, 0x0

    .line 57
    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-wide v8, v6

    invoke-direct/range {v1 .. v9}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "multipartUploadId"    # Ljava/lang/String;
    .param p5, "partSize"    # J
    .param p7, "mutlipartUploadThreshold"    # J

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;-><init>()V

    .line 35
    const-string/jumbo v0, "upload"

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->pauseType:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->bucketName:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->key:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->file:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->multipartUploadId:Ljava/lang/String;

    .line 71
    iput-wide p5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->partSize:J

    .line 72
    iput-wide p7, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->mutlipartUploadThreshold:J

    .line 73
    return-void
.end method


# virtual methods
.method getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method getFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->file:Ljava/lang/String;

    return-object v0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->key:Ljava/lang/String;

    return-object v0
.end method

.method getMultipartUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->multipartUploadId:Ljava/lang/String;

    return-object v0
.end method

.method getMutlipartUploadThreshold()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->mutlipartUploadThreshold:J

    return-wide v0
.end method

.method getPartSize()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->partSize:J

    return-wide v0
.end method

.method getPauseType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string/jumbo v0, "upload"

    return-object v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 6

    .prologue
    .line 125
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 126
    .local v1, "out":Ljava/io/StringWriter;
    invoke-static {v1}, Lcom/amazonaws/util/json/JsonUtils;->getJsonWriter(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    .line 128
    .local v2, "writer":Lcom/amazonaws/util/json/AwsJsonWriter;
    :try_start_0
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v3

    const-string v4, "pauseType"

    .line 129
    invoke-interface {v3, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v3

    const-string/jumbo v4, "upload"

    invoke-interface {v3, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v3

    const-string v4, "bucketName"

    .line 130
    invoke-interface {v3, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->bucketName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v3

    const-string v4, "key"

    .line 131
    invoke-interface {v3, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->key:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v3

    const-string v4, "file"

    .line 132
    invoke-interface {v3, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->file:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v3

    const-string v4, "multipartUploadId"

    .line 133
    invoke-interface {v3, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->multipartUploadId:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v3

    const-string v4, "partSize"

    .line 134
    invoke-interface {v3, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v3

    iget-wide v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->partSize:J

    invoke-interface {v3, v4, v5}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(J)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v3

    const-string v4, "mutlipartUploadThreshold"

    .line 135
    invoke-interface {v3, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v3

    iget-wide v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->mutlipartUploadThreshold:J

    invoke-interface {v3, v4, v5}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(J)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v3

    .line 136
    invoke-interface {v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
