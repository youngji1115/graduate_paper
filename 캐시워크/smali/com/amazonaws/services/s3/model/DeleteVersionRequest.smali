.class public Lcom/amazonaws/services/s3/model/DeleteVersionRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteVersionRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private mfa:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->bucketName:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->key:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->versionId:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;
    .param p4, "mfa"    # Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iput-object p4, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->mfa:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    .line 113
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->mfa:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->bucketName:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->key:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setMfa(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V
    .locals 0
    .param p1, "mfa"    # Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->mfa:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    .line 283
    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionId"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->versionId:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteVersionRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->setBucketName(Ljava/lang/String;)V

    .line 153
    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteVersionRequest;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->setKey(Ljava/lang/String;)V

    .line 191
    return-object p0
.end method

.method public withMfa(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)Lcom/amazonaws/services/s3/model/DeleteVersionRequest;
    .locals 0
    .param p1, "mfa"    # Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->setMfa(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V

    .line 310
    return-object p0
.end method

.method public withVersionId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteVersionRequest;
    .locals 0
    .param p1, "versionId"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->setVersionId(Ljava/lang/String;)V

    .line 234
    return-object p0
.end method
