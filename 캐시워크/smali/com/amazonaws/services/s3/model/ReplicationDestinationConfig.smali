.class public Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;
.super Ljava/lang/Object;
.source "ReplicationDestinationConfig.java"


# instance fields
.field private bucketARN:Ljava/lang/String;

.field private storageClass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketARN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->bucketARN:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketARN(Ljava/lang/String;)V
    .locals 2
    .param p1, "bucketARN"    # Ljava/lang/String;

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bucket name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->bucketARN:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V
    .locals 1
    .param p1, "storageClass"    # Lcom/amazonaws/services/s3/model/StorageClass;

    .prologue
    .line 81
    if-nez p1, :cond_0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->setStorageClass(Ljava/lang/String;)V

    .line 82
    return-void

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "storageClass"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->storageClass:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public withBucketARN(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;
    .locals 0
    .param p1, "bucketARN"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->setBucketARN(Ljava/lang/String;)V

    .line 63
    return-object p0
.end method

.method public withStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;
    .locals 1
    .param p1, "storageClass"    # Lcom/amazonaws/services/s3/model/StorageClass;

    .prologue
    .line 104
    if-nez p1, :cond_0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->setStorageClass(Ljava/lang/String;)V

    .line 105
    return-object p0

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public withStorageClass(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;
    .locals 0
    .param p1, "storageClass"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->setStorageClass(Ljava/lang/String;)V

    .line 93
    return-object p0
.end method
