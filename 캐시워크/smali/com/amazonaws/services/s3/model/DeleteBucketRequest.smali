.class public Lcom/amazonaws/services/s3/model/DeleteBucketRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteBucketRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/S3AccelerateUnsupported;


# instance fields
.field private bucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;->setBucketName(Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;->bucketName:Ljava/lang/String;

    .line 56
    return-void
.end method
