.class public Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;
.super Lcom/amazonaws/services/s3/model/GenericBucketRequest;
.source "DeleteBucketWebsiteConfigurationRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method
