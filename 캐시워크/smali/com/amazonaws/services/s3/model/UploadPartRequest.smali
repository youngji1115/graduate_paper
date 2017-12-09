.class public Lcom/amazonaws/services/s3/model/UploadPartRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "UploadPartRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private file:Ljava/io/File;

.field private fileOffset:J

.field private generalProgressListener:Lcom/amazonaws/event/ProgressListener;

.field private id:I

.field private inputStream:Ljava/io/InputStream;

.field private isLastPart:Z

.field private key:Ljava/lang/String;

.field private mainUploadId:I

.field private md5Digest:Ljava/lang/String;

.field private partNumber:I

.field private partSize:J

.field private sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFileOffset()J
    .locals 2

    .prologue
    .line 463
    iget-wide v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->fileOffset:J

    return-wide v0
.end method

.method public getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->id:I

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMainUploadId()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->mainUploadId:I

    return v0
.end method

.method public getMd5Digest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->md5Digest:Ljava/lang/String;

    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->partNumber:I

    return v0
.end method

.method public getPartSize()J
    .locals 2

    .prologue
    .line 343
    iget-wide v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->partSize:J

    return-wide v0
.end method

.method public getProgressListener()Lcom/amazonaws/services/s3/model/ProgressListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 521
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    instance-of v0, v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    check-cast v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;->unwrap()Lcom/amazonaws/services/s3/model/ProgressListener;

    move-result-object v0

    .line 524
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public isLastPart()Z
    .locals 1

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->bucketName:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->file:Ljava/io/File;

    .line 434
    return-void
.end method

.method public setFileOffset(J)V
    .locals 1
    .param p1, "fileOffset"    # J

    .prologue
    .line 476
    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->fileOffset:J

    .line 477
    return-void
.end method

.method public setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V
    .locals 0
    .param p1, "generalProgressListener"    # Lcom/amazonaws/event/ProgressListener;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    .line 627
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->id:I

    .line 115
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->inputStream:Ljava/io/InputStream;

    .line 164
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->key:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setLastPart(Z)V
    .locals 0
    .param p1, "isLastPart"    # Z

    .prologue
    .line 564
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart:Z

    .line 565
    return-void
.end method

.method public setMainUploadId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->mainUploadId:I

    .line 138
    return-void
.end method

.method public setMd5Digest(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5Digest"    # Ljava/lang/String;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->md5Digest:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public setPartNumber(I)V
    .locals 0
    .param p1, "partNumber"    # I

    .prologue
    .line 316
    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->partNumber:I

    .line 317
    return-void
.end method

.method public setPartSize(J)V
    .locals 1
    .param p1, "partSize"    # J

    .prologue
    .line 352
    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->partSize:J

    .line 353
    return-void
.end method

.method public setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 1
    .param p1, "progressListener"    # Lcom/amazonaws/services/s3/model/ProgressListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 508
    new-instance v0, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;-><init>(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->generalProgressListener:Lcom/amazonaws/event/ProgressListener;

    .line 509
    return-void
.end method

.method public setSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 0
    .param p1, "sseKey"    # Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .line 602
    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->uploadId:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->bucketName:Ljava/lang/String;

    .line 224
    return-object p0
.end method

.method public withFile(Ljava/io/File;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 449
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setFile(Ljava/io/File;)V

    .line 450
    return-object p0
.end method

.method public withFileOffset(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 1
    .param p1, "fileOffset"    # J

    .prologue
    .line 492
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setFileOffset(J)V

    .line 493
    return-object p0
.end method

.method public withGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "progressListener"    # Lcom/amazonaws/event/ProgressListener;

    .prologue
    .line 649
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V

    .line 650
    return-object p0
.end method

.method public withId(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->id:I

    .line 130
    return-object p0
.end method

.method public withInputStream(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setInputStream(Ljava/io/InputStream;)V

    .line 186
    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->key:Ljava/lang/String;

    .line 254
    return-object p0
.end method

.method public withLastPart(Z)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "isLastPart"    # Z

    .prologue
    .line 578
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setLastPart(Z)V

    .line 579
    return-object p0
.end method

.method public withMD5Digest(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "md5Digest"    # Ljava/lang/String;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->md5Digest:Ljava/lang/String;

    .line 411
    return-object p0
.end method

.method public withMainUploadId(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->mainUploadId:I

    .line 153
    return-object p0
.end method

.method public withPartNumber(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "partNumber"    # I

    .prologue
    .line 333
    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->partNumber:I

    .line 334
    return-object p0
.end method

.method public withPartSize(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 1
    .param p1, "partSize"    # J

    .prologue
    .line 364
    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->partSize:J

    .line 365
    return-object p0
.end method

.method public withProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "progressListener"    # Lcom/amazonaws/services/s3/model/ProgressListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 542
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    .line 543
    return-object p0
.end method

.method public withSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "sseKey"    # Lcom/amazonaws/services/s3/model/SSECustomerKey;

    .prologue
    .line 615
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 616
    return-object p0
.end method

.method public withUploadId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->uploadId:Ljava/lang/String;

    .line 290
    return-object p0
.end method
