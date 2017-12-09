.class public Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;
.super Ljava/lang/Object;
.source "BucketLifecycleConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoncurrentVersionTransition"
.end annotation


# instance fields
.field private days:I

.field private storageClass:Lcom/amazonaws/services/s3/model/StorageClass;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->days:I

    return-void
.end method


# virtual methods
.method public getDays()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->days:I

    return v0
.end method

.method public getStorageClass()Lcom/amazonaws/services/s3/model/StorageClass;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->storageClass:Lcom/amazonaws/services/s3/model/StorageClass;

    return-object v0
.end method

.method public setDays(I)V
    .locals 0
    .param p1, "expirationInDays"    # I

    .prologue
    .line 451
    iput p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->days:I

    .line 452
    return-void
.end method

.method public setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V
    .locals 0
    .param p1, "storageClass"    # Lcom/amazonaws/services/s3/model/StorageClass;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->storageClass:Lcom/amazonaws/services/s3/model/StorageClass;

    .line 477
    return-void
.end method

.method public withDays(I)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;
    .locals 0
    .param p1, "expirationInDays"    # I

    .prologue
    .line 468
    iput p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->days:I

    .line 469
    return-object p0
.end method

.method public withStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;
    .locals 0
    .param p1, "storageClass"    # Lcom/amazonaws/services/s3/model/StorageClass;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->storageClass:Lcom/amazonaws/services/s3/model/StorageClass;

    .line 494
    return-object p0
.end method
