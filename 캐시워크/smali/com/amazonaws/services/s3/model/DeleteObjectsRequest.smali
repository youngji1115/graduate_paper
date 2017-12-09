.class public Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteObjectsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;
    }
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;",
            ">;"
        }
    .end annotation
.end field

.field private mfa:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

.field private quiet:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->keys:Ljava/util/List;

    .line 69
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->setBucketName(Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->keys:Ljava/util/List;

    return-object v0
.end method

.method public getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->mfa:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    return-object v0
.end method

.method public getQuiet()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->quiet:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->bucketName:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;>;"
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    return-void
.end method

.method public setMfa(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V
    .locals 0
    .param p1, "mfa"    # Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->mfa:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    .line 151
    return-void
.end method

.method public setQuiet(Z)V
    .locals 0
    .param p1, "quiet"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->quiet:Z

    .line 184
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->setBucketName(Ljava/lang/String;)V

    .line 106
    return-object p0
.end method

.method public withKeys(Ljava/util/List;)Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->setKeys(Ljava/util/List;)V

    .line 225
    return-object p0
.end method

.method public varargs withKeys([Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .locals 5
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 241
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 242
    .local v1, "keyVersions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 243
    .local v0, "key":Ljava/lang/String;
    new-instance v4, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;

    invoke-direct {v4, v0}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->setKeys(Ljava/util/List;)V

    .line 246
    return-object p0
.end method

.method public withMfa(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .locals 0
    .param p1, "mfa"    # Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->setMfa(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V

    .line 175
    return-object p0
.end method

.method public withQuiet(Z)Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .locals 0
    .param p1, "quiet"    # Z

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->setQuiet(Z)V

    .line 202
    return-object p0
.end method
