.class public Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "RestoreObjectRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private expirationInDays:I

.field private key:Ljava/lang/String;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 78
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "expirationInDays"    # I

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->bucketName:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->key:Ljava/lang/String;

    .line 97
    iput p3, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->expirationInDays:I

    .line 98
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationInDays()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->expirationInDays:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->bucketName:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setExpirationInDays(I)V
    .locals 0
    .param p1, "expirationInDays"    # I

    .prologue
    .line 198
    iput p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->expirationInDays:I

    .line 199
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->key:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionId"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->versionId:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->bucketName:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public withExpirationInDays(I)Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
    .locals 0
    .param p1, "expirationInDays"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->expirationInDays:I

    .line 215
    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->key:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public withVersionId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
    .locals 0
    .param p1, "versionId"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->versionId:Ljava/lang/String;

    .line 190
    return-object p0
.end method
