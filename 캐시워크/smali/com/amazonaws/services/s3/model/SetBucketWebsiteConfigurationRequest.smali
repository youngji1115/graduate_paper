.class public Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetBucketWebsiteConfigurationRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private configuration:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "configuration"    # Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->bucketName:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->configuration:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    .line 67
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getConfiguration()Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->configuration:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->bucketName:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setConfiguration(Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)V
    .locals 0
    .param p1, "configuration"    # Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->configuration:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    .line 111
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->setBucketName(Ljava/lang/String;)V

    .line 100
    return-object p0
.end method

.method public withConfiguration(Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;
    .locals 0
    .param p1, "configuration"    # Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->setConfiguration(Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)V

    .line 135
    return-object p0
.end method
