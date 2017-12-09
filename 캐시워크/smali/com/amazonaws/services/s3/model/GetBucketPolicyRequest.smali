.class public Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetBucketPolicyRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;->bucketName:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;->bucketName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;->setBucketName(Ljava/lang/String;)V

    .line 86
    return-object p0
.end method
