.class public Lcom/amazonaws/services/s3/model/GenericBucketRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GenericBucketRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->bucketName:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getBucket()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->bucketName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GenericBucketRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->setBucketName(Ljava/lang/String;)V

    .line 70
    return-object p0
.end method
