.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;
.super Ljava/lang/Object;
.source "CopyResult.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private destinationBucketName:Ljava/lang/String;

.field private destinationKey:Ljava/lang/String;

.field private eTag:Ljava/lang/String;

.field private sourceBucketName:Ljava/lang/String;

.field private sourceKey:Ljava/lang/String;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDestinationBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->destinationBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->destinationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->sourceBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->sourceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public setDestinationBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "destinationBucketName"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->destinationBucketName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setDestinationKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "destinationKey"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->destinationKey:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->eTag:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setSourceBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceBucketName"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->sourceBucketName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setSourceKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceKey"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->sourceKey:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionId"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->versionId:Ljava/lang/String;

    .line 197
    return-void
.end method
