.class public Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetRequestPaymentConfigurationRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;->bucketName:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;->bucketName:Ljava/lang/String;

    .line 40
    return-void
.end method
