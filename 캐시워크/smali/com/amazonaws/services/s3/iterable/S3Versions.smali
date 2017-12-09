.class public Lcom/amazonaws/services/s3/iterable/S3Versions;
.super Ljava/lang/Object;
.source "S3Versions.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/amazonaws/services/s3/model/S3VersionSummary;",
        ">;"
    }
.end annotation


# instance fields
.field private batchSize:Ljava/lang/Integer;

.field private bucketName:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private s3:Lcom/amazonaws/services/s3/AmazonS3;


# direct methods
.method private constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)V
    .locals 0
    .param p1, "s3"    # Lcom/amazonaws/services/s3/AmazonS3;
    .param p2, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 49
    iput-object p2, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->bucketName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static forKey(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/iterable/S3Versions;
    .locals 1
    .param p0, "s3"    # Lcom/amazonaws/services/s3/AmazonS3;
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Lcom/amazonaws/services/s3/iterable/S3Versions;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/services/s3/iterable/S3Versions;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)V

    .line 91
    .local v0, "versions":Lcom/amazonaws/services/s3/iterable/S3Versions;
    iput-object p2, v0, Lcom/amazonaws/services/s3/iterable/S3Versions;->key:Ljava/lang/String;

    .line 92
    return-object v0
.end method

.method public static inBucket(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)Lcom/amazonaws/services/s3/iterable/S3Versions;
    .locals 1
    .param p0, "s3"    # Lcom/amazonaws/services/s3/AmazonS3;
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v0, Lcom/amazonaws/services/s3/iterable/S3Versions;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/services/s3/iterable/S3Versions;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)V

    return-object v0
.end method

.method public static withPrefix(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/iterable/S3Versions;
    .locals 1
    .param p0, "s3"    # Lcom/amazonaws/services/s3/AmazonS3;
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Lcom/amazonaws/services/s3/iterable/S3Versions;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/services/s3/iterable/S3Versions;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)V

    .line 76
    .local v0, "versions":Lcom/amazonaws/services/s3/iterable/S3Versions;
    iput-object p2, v0, Lcom/amazonaws/services/s3/iterable/S3Versions;->prefix:Ljava/lang/String;

    .line 77
    return-object v0
.end method


# virtual methods
.method public getBatchSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->batchSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getS3()Lcom/amazonaws/services/s3/AmazonS3;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/amazonaws/services/s3/model/S3VersionSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazonaws/services/s3/iterable/S3Versions$VersionIterator;-><init>(Lcom/amazonaws/services/s3/iterable/S3Versions;Lcom/amazonaws/services/s3/iterable/S3Versions$1;)V

    return-object v0
.end method

.method public withBatchSize(I)Lcom/amazonaws/services/s3/iterable/S3Versions;
    .locals 1
    .param p1, "batchSize"    # I

    .prologue
    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Versions;->batchSize:Ljava/lang/Integer;

    .line 103
    return-object p0
.end method
