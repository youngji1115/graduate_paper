.class final Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;
.super Lcom/amazonaws/services/s3/internal/S3Direct;
.source "AmazonS3EncryptionClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "S3DirectImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;


# direct methods
.method private constructor <init>(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->this$0:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/S3Direct;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;
    .param p2, "x1"    # Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$1;

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;-><init>(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;)V

    return-void
.end method


# virtual methods
.method public abortMultipartUpload(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    .locals 1
    .param p1, "req"    # Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->this$0:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->access$801(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    .line 532
    return-void
.end method

.method public completeMultipartUpload(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .locals 1
    .param p1, "req"    # Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->this$0:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->access$401(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object v0

    return-object v0
.end method

.method public copyPart(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;
    .locals 1
    .param p1, "req"    # Lcom/amazonaws/services/s3/model/CopyPartRequest;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->this$0:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->access$701(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1
    .param p1, "req"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .param p2, "dest"    # Ljava/io/File;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->this$0:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->access$301(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 1
    .param p1, "req"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->this$0:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->access$201(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v0

    return-object v0
.end method

.method public initiateMultipartUpload(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .locals 1
    .param p1, "req"    # Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->this$0:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->access$501(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object v0

    return-object v0
.end method

.method public putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 1
    .param p1, "req"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->this$0:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->access$101(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v0

    return-object v0
.end method

.method public uploadPart(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .locals 1
    .param p1, "req"    # Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 521
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl;->this$0:Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->access$601(Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object v0

    return-object v0
.end method
