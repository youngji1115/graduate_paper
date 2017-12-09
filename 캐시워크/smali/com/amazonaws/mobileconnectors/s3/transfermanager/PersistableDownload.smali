.class public final Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;
.super Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;
.source "PersistableDownload.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final TYPE:Ljava/lang/String; = "download"


# instance fields
.field private final bucketName:Ljava/lang/String;

.field private final file:Ljava/lang/String;

.field private final isRequesterPays:Z

.field private final key:Ljava/lang/String;

.field private final pauseType:Ljava/lang/String;

.field private final range:[J

.field private final responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

.field private final versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 69
    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[JLcom/amazonaws/services/s3/model/ResponseHeaderOverrides;ZLjava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[JLcom/amazonaws/services/s3/model/ResponseHeaderOverrides;ZLjava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;
    .param p4, "range"    # [J
    .param p5, "responseHeaders"    # Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .param p6, "isRequesterPays"    # Z
    .param p7, "file"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;-><init>()V

    .line 37
    const-string v0, "download"

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->pauseType:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->bucketName:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->key:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->versionId:Ljava/lang/String;

    .line 83
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->range:[J

    .line 84
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    .line 85
    iput-boolean p6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->isRequesterPays:Z

    .line 86
    iput-object p7, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->file:Ljava/lang/String;

    .line 87
    return-void

    .line 83
    :cond_0
    invoke-virtual {p4}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    goto :goto_0
.end method


# virtual methods
.method getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method getFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->file:Ljava/lang/String;

    return-object v0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->key:Ljava/lang/String;

    return-object v0
.end method

.method getPauseType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-string v0, "download"

    return-object v0
.end method

.method getRange()[J
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->range:[J

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->range:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    goto :goto_0
.end method

.method getResponseHeaders()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    return-object v0
.end method

.method getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method isRequesterPays()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->isRequesterPays:Z

    return v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 8

    .prologue
    .line 145
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 146
    .local v1, "out":Ljava/io/StringWriter;
    invoke-static {v1}, Lcom/amazonaws/util/json/JsonUtils;->getJsonWriter(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v4

    .line 148
    .local v4, "writer":Lcom/amazonaws/util/json/AwsJsonWriter;
    :try_start_0
    invoke-interface {v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    const-string v6, "pauseType"

    .line 149
    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    const-string v6, "download"

    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    const-string v6, "bucketName"

    .line 150
    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->bucketName:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    const-string v6, "key"

    .line 151
    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->key:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    const-string v6, "file"

    .line 152
    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->file:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    const-string/jumbo v6, "versionId"

    .line 153
    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->versionId:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    const-string v6, "isRequesterPays"

    .line 154
    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    iget-boolean v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->isRequesterPays:Z

    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 155
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->range:[J

    if-eqz v5, :cond_1

    .line 156
    const-string v5, "range"

    invoke-interface {v4, v5}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 157
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->range:[J

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_0

    aget-wide v2, v6, v5

    .line 158
    .local v2, "r":J
    invoke-interface {v4, v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(J)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 157
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 160
    .end local v2    # "r":J
    :cond_0
    invoke-interface {v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 162
    :cond_1
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    if-eqz v5, :cond_2

    .line 163
    const-string v5, "responseHeaders"

    invoke-interface {v4, v5}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    const-string v6, "contentType"

    .line 164
    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    const-string v6, "contentLanguage"

    .line 165
    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    const-string v6, "expires"

    .line 166
    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getExpires()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    const-string v6, "cacheControl"

    .line 167
    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getCacheControl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    const-string v6, "contentDisposition"

    .line 168
    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentDisposition()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    const-string v6, "contentEncoding"

    .line 169
    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    .line 170
    invoke-interface {v5}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 172
    :cond_2
    invoke-interface {v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazonaws/util/json/AwsJsonWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
