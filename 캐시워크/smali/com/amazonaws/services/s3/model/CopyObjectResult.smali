.class public Lcom/amazonaws/services/s3/model/CopyObjectResult;
.super Lcom/amazonaws/services/s3/internal/SSEResultBase;
.source "CopyObjectResult.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;


# instance fields
.field private etag:Ljava/lang/String;

.field private expirationTime:Ljava/util/Date;

.field private expirationTimeRuleId:Ljava/lang/String;

.field private lastModifiedDate:Ljava/util/Date;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/SSEResultBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->expirationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getExpirationTimeRuleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->expirationTimeRuleId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->lastModifiedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->etag:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setExpirationTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "expirationTime"    # Ljava/util/Date;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->expirationTime:Ljava/util/Date;

    .line 139
    return-void
.end method

.method public setExpirationTimeRuleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "expirationTimeRuleId"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->expirationTimeRuleId:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setLastModifiedDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "lastModifiedDate"    # Ljava/util/Date;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->lastModifiedDate:Ljava/util/Date;

    .line 98
    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionId"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->versionId:Ljava/lang/String;

    .line 120
    return-void
.end method
