.class public Lcom/amazonaws/services/s3/model/DeleteBucketCrossOriginConfigurationRequest;
.super Lcom/amazonaws/services/s3/model/GenericBucketRequest;
.source "DeleteBucketCrossOriginConfigurationRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method
