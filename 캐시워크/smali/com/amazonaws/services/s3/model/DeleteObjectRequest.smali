.class public Lcom/amazonaws/services/s3/model/DeleteObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteObjectRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->setBucketName(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->setKey(Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->bucketName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->key:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteObjectRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->setBucketName(Ljava/lang/String;)V

    .line 92
    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteObjectRequest;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->setKey(Ljava/lang/String;)V

    .line 125
    return-object p0
.end method
