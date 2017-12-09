.class public Lcom/amazonaws/http/ExecutionContext;
.super Ljava/lang/Object;
.source "ExecutionContext.java"


# instance fields
.field private final awsClient:Lcom/amazonaws/AmazonWebServiceClient;

.field private final awsRequestMetrics:Lcom/amazonaws/util/AWSRequestMetrics;

.field private contextUserAgent:Ljava/lang/String;

.field private credentials:Lcom/amazonaws/auth/AWSCredentials;

.field private final requestHandler2s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/amazonaws/http/ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V
    .locals 1
    .param p2, "isMetricEnabled"    # Z
    .param p3, "awsClient"    # Lcom/amazonaws/AmazonWebServiceClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;Z",
            "Lcom/amazonaws/AmazonWebServiceClient;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "requestHandler2s":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/handlers/RequestHandler2;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/amazonaws/http/ExecutionContext;->requestHandler2s:Ljava/util/List;

    .line 54
    if-eqz p2, :cond_0

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;

    invoke-direct {v0}, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->awsRequestMetrics:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 57
    iput-object p3, p0, Lcom/amazonaws/http/ExecutionContext;->awsClient:Lcom/amazonaws/AmazonWebServiceClient;

    .line 58
    return-void

    .line 54
    :cond_0
    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics;

    invoke-direct {v0}, Lcom/amazonaws/util/AWSRequestMetrics;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isMetricEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0, p1, v0}, Lcom/amazonaws/http/ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->awsRequestMetrics:Lcom/amazonaws/util/AWSRequestMetrics;

    return-object v0
.end method

.method public getContextUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->contextUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentials()Lcom/amazonaws/auth/AWSCredentials;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->credentials:Lcom/amazonaws/auth/AWSCredentials;

    return-object v0
.end method

.method public getRequestHandler2s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->requestHandler2s:Ljava/util/List;

    return-object v0
.end method

.method public getSignerByURI(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->awsClient:Lcom/amazonaws/AmazonWebServiceClient;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->awsClient:Lcom/amazonaws/AmazonWebServiceClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->getSignerByURI(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;

    move-result-object v0

    goto :goto_0
.end method

.method public setContextUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "contextUserAgent"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/amazonaws/http/ExecutionContext;->contextUserAgent:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 0
    .param p1, "credentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/amazonaws/http/ExecutionContext;->credentials:Lcom/amazonaws/auth/AWSCredentials;

    .line 116
    return-void
.end method

.method public setSigner(Lcom/amazonaws/auth/Signer;)V
    .locals 0
    .param p1, "signer"    # Lcom/amazonaws/auth/Signer;

    .prologue
    .line 86
    return-void
.end method
