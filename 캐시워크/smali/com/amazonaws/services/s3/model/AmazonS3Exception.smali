.class public Lcom/amazonaws/services/s3/model/AmazonS3Exception;
.super Lcom/amazonaws/AmazonServiceException;
.source "AmazonS3Exception.java"


# static fields
.field private static final serialVersionUID:J = 0x691b1e2e775ee86dL


# instance fields
.field private cloudFrontId:Ljava/lang/String;

.field private extendedRequestId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 62
    return-void
.end method


# virtual methods
.method public getCloudFrontId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->cloudFrontId:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->extendedRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public setCloudFrontId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cloudFrontId"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->cloudFrontId:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setExtendedRequestId(Ljava/lang/String;)V
    .locals 0
    .param p1, "extendedRequestId"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->extendedRequestId:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/amazonaws/AmazonServiceException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", S3 Extended Request ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getExtendedRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    return-object v0
.end method
