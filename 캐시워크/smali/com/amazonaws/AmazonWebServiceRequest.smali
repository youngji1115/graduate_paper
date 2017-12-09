.class public abstract Lcom/amazonaws/AmazonWebServiceRequest;
.super Ljava/lang/Object;
.source "AmazonWebServiceRequest.java"


# instance fields
.field private credentials:Lcom/amazonaws/auth/AWSCredentials;

.field private final requestClientOptions:Lcom/amazonaws/RequestClientOptions;

.field private requestMetricCollector:Lcom/amazonaws/metrics/RequestMetricCollector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/amazonaws/RequestClientOptions;

    invoke-direct {v0}, Lcom/amazonaws/RequestClientOptions;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->requestClientOptions:Lcom/amazonaws/RequestClientOptions;

    return-void
.end method


# virtual methods
.method public getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->requestClientOptions:Lcom/amazonaws/RequestClientOptions;

    return-object v0
.end method

.method public getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->credentials:Lcom/amazonaws/auth/AWSCredentials;

    return-object v0
.end method

.method public getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->requestMetricCollector:Lcom/amazonaws/metrics/RequestMetricCollector;

    return-object v0
.end method

.method public setRequestCredentials(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 0
    .param p1, "credentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceRequest;->credentials:Lcom/amazonaws/auth/AWSCredentials;

    .line 56
    return-void
.end method

.method public setRequestMetricCollector(Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 0
    .param p1, "requestMetricCollector"    # Lcom/amazonaws/metrics/RequestMetricCollector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceRequest;->requestMetricCollector:Lcom/amazonaws/metrics/RequestMetricCollector;

    .line 96
    return-void
.end method

.method public withRequestMetricCollector(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 1
    .param p1, "metricCollector"    # Lcom/amazonaws/metrics/RequestMetricCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazonaws/metrics/RequestMetricCollector;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceRequest;->setRequestMetricCollector(Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 109
    move-object v0, p0

    .line 110
    .local v0, "t":Lcom/amazonaws/AmazonWebServiceRequest;, "TT;"
    return-object v0
.end method
