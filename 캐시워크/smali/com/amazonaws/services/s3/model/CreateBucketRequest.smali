.class public Lcom/amazonaws/services/s3/model/CreateBucketRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateBucketRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/S3AccelerateUnsupported;


# instance fields
.field private accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private bucketName:Ljava/lang/String;

.field private cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field private region:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Lcom/amazonaws/services/s3/model/Region;->US_Standard:Lcom/amazonaws/services/s3/model/Region;

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/Region;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/Region;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "region"    # Lcom/amazonaws/services/s3/model/Region;

    .prologue
    .line 69
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/Region;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 82
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->setBucketName(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->setRegion(Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method public getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->region:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 0
    .param p1, "accessControlList"    # Lcom/amazonaws/services/s3/model/AccessControlList;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 177
    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->bucketName:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 0
    .param p1, "cannedAcl"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 146
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->region:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public withAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/CreateBucketRequest;
    .locals 0
    .param p1, "accessControlList"    # Lcom/amazonaws/services/s3/model/AccessControlList;

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 188
    return-object p0
.end method

.method public withCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/CreateBucketRequest;
    .locals 0
    .param p1, "cannedAcl"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->setCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    .line 158
    return-object p0
.end method
