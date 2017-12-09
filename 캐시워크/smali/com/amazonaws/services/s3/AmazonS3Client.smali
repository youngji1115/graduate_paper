.class public Lcom/amazonaws/services/s3/AmazonS3Client;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "AmazonS3Client.java"

# interfaces
.implements Lcom/amazonaws/services/s3/AmazonS3;


# static fields
.field public static final S3_SERVICE_NAME:Ljava/lang/String; = "s3"

.field private static final S3_SIGNER:Ljava/lang/String; = "S3SignerType"

.field private static final S3_V4_SIGNER:Ljava/lang/String; = "AWSS3V4SignerType"

.field private static final bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

.field private static log:Lorg/apache/commons/logging/Log;

.field private static final requestPaymentConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;


# instance fields
.field private final awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

.field private clientOptions:Lcom/amazonaws/services/s3/S3ClientOptions;

.field volatile clientRegion:Ljava/lang/String;

.field private final errorResponseHandler:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

.field private final voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 247
    const-class v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    .line 251
    invoke-static {}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->values()[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/metrics/AwsSdkMetrics;->addAll(Ljava/util/Collection;)Z

    .line 254
    const-string v0, "S3SignerType"

    const-class v1, Lcom/amazonaws/services/s3/internal/S3Signer;

    invoke-static {v0, v1}, Lcom/amazonaws/auth/SignerFactory;->registerSigner(Ljava/lang/String;Ljava/lang/Class;)V

    .line 255
    const-string v0, "AWSS3V4SignerType"

    const-class v1, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    invoke-static {v0, v1}, Lcom/amazonaws/auth/SignerFactory;->registerSigner(Ljava/lang/String;Ljava/lang/Class;)V

    .line 266
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    .line 272
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->requestPaymentConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 330
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    .line 331
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 474
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 475
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 343
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    .line 344
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 359
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 360
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1
    .param p1, "credentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;

    .prologue
    .line 371
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 372
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "credentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 387
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    .line 388
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 2
    .param p1, "credentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .param p3, "httpClient"    # Lcom/amazonaws/http/HttpClient;

    .prologue
    .line 427
    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    .line 259
    new-instance v0, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->errorResponseHandler:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    .line 262
    new-instance v0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    .line 275
    new-instance v0, Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientOptions:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 428
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 429
    invoke-direct {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->init()V

    .line 430
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 2
    .param p1, "credentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .param p3, "requestMetricCollector"    # Lcom/amazonaws/metrics/RequestMetricCollector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 406
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p2, v0, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 259
    new-instance v0, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->errorResponseHandler:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    .line 262
    new-instance v0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    .line 275
    new-instance v0, Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientOptions:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 408
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 409
    invoke-direct {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->init()V

    .line 410
    return-void
.end method

.method private static addAclHeaders(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 14
    .param p1, "acl"    # Lcom/amazonaws/services/s3/model/AccessControlList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<+",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">;",
            "Lcom/amazonaws/services/s3/model/AccessControlList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1781
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<+Lcom/amazonaws/AmazonWebServiceRequest;>;"
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AccessControlList;->getGrants()Ljava/util/Set;

    move-result-object v4

    .line 1782
    .local v4, "grants":Ljava/util/Set;, "Ljava/util/Set<Lcom/amazonaws/services/s3/model/Grant;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1783
    .local v5, "grantsByPermission":Ljava/util/Map;, "Ljava/util/Map<Lcom/amazonaws/services/s3/model/Permission;Ljava/util/Collection<Lcom/amazonaws/services/s3/model/Grantee;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/Grant;

    .line 1784
    .local v0, "grant":Lcom/amazonaws/services/s3/model/Grant;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/Grant;->getPermission()Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1785
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/Grant;->getPermission()Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v8

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v5, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/Grant;->getPermission()Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/Grant;->getGrantee()Lcom/amazonaws/services/s3/model/Grantee;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1789
    .end local v0    # "grant":Lcom/amazonaws/services/s3/model/Grant;
    :cond_1
    invoke-static {}, Lcom/amazonaws/services/s3/model/Permission;->values()[Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v9

    array-length v10, v9

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v10, :cond_5

    aget-object v6, v9, v8

    .line 1790
    .local v6, "permission":Lcom/amazonaws/services/s3/model/Permission;
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1791
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 1792
    .local v3, "grantees":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/s3/model/Grantee;>;"
    const/4 v7, 0x0

    .line 1793
    .local v7, "seenOne":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1794
    .local v2, "granteeString":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/Grantee;

    .line 1795
    .local v1, "grantee":Lcom/amazonaws/services/s3/model/Grantee;
    if-nez v7, :cond_2

    .line 1796
    const/4 v7, 0x1

    .line 1799
    :goto_3
    invoke-interface {v1}, Lcom/amazonaws/services/s3/model/Grantee;->getTypeIdentifier()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1800
    invoke-interface {v1}, Lcom/amazonaws/services/s3/model/Grantee;->getIdentifier()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1798
    :cond_2
    const-string v12, ", "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1802
    .end local v1    # "grantee":Lcom/amazonaws/services/s3/model/Grantee;
    :cond_3
    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/Permission;->getHeaderName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p0, v11, v12}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    .end local v2    # "granteeString":Ljava/lang/StringBuilder;
    .end local v3    # "grantees":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/s3/model/Grantee;>;"
    .end local v7    # "seenOne":Z
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1805
    .end local v6    # "permission":Lcom/amazonaws/services/s3/model/Permission;
    :cond_5
    return-void
.end method

.method private static addDateHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4129
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    if-eqz p2, :cond_0

    .line 4130
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4132
    :cond_0
    return-void
.end method

.method private static addHeaderIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4112
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    if-eqz p2, :cond_0

    .line 4113
    invoke-interface {p0, p1, p2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4115
    :cond_0
    return-void
.end method

.method private static addResponseHeaderParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V
    .locals 2
    .param p1, "responseHeaders"    # Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4162
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    if-eqz p1, :cond_5

    .line 4163
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getCacheControl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4164
    const-string v0, "response-cache-control"

    .line 4165
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getCacheControl()Ljava/lang/String;

    move-result-object v1

    .line 4164
    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4167
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentDisposition()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4168
    const-string v0, "response-content-disposition"

    .line 4169
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentDisposition()Ljava/lang/String;

    move-result-object v1

    .line 4168
    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4171
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4172
    const-string v0, "response-content-encoding"

    .line 4173
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    .line 4172
    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4175
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4176
    const-string v0, "response-content-language"

    .line 4177
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentLanguage()Ljava/lang/String;

    move-result-object v1

    .line 4176
    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4179
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4180
    const-string v0, "response-content-type"

    .line 4181
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 4180
    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4183
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getExpires()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4184
    const-string v0, "response-expires"

    .line 4185
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getExpires()Ljava/lang/String;

    move-result-object v1

    .line 4184
    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4188
    :cond_5
    return-void
.end method

.method private static addStringListHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4146
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4147
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4149
    :cond_0
    return-void
.end method

.method private assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameterValue"    # Ljava/lang/Object;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 3589
    if-nez p1, :cond_0

    .line 3590
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3591
    :cond_0
    return-void
.end method

.method private beforeRequest(Lcom/amazonaws/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 3847
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<TT;>;"
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->requestHandler2s:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3848
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->requestHandler2s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/handlers/RequestHandler2;

    .line 3849
    .local v0, "requestHandler2":Lcom/amazonaws/handlers/RequestHandler2;
    invoke-virtual {v0, p1}, Lcom/amazonaws/handlers/RequestHandler2;->beforeRequest(Lcom/amazonaws/Request;)V

    goto :goto_0

    .line 3852
    .end local v0    # "requestHandler2":Lcom/amazonaws/handlers/RequestHandler2;
    :cond_0
    return-void
.end method

.method private calculateContentLength(Ljava/io/InputStream;)J
    .locals 9
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v8, -0x1

    .line 1761
    const-wide/16 v2, 0x0

    .line 1762
    .local v2, "len":J
    const/16 v5, 0x2000

    new-array v0, v5, [B

    .line 1764
    .local v0, "buf":[B
    invoke-virtual {p1, v8}, Ljava/io/InputStream;->mark(I)V

    .line 1766
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "read":I
    if-eq v4, v8, :cond_0

    .line 1767
    int-to-long v6, v4

    add-long/2addr v2, v6

    goto :goto_0

    .line 1769
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1773
    return-wide v2

    .line 1770
    .end local v4    # "read":I
    :catch_0
    move-exception v1

    .line 1771
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v5, Lcom/amazonaws/AmazonClientException;

    const-string v6, "Could not calculate content length."

    invoke-direct {v5, v6, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private configRequest(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4276
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientOptions:Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/S3ClientOptions;->isAccelerateModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4277
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    instance-of v0, v0, Lcom/amazonaws/services/s3/model/S3AccelerateUnsupported;

    if-nez v0, :cond_2

    .line 4278
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->isDNSBucketName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v1}, Lcom/amazonaws/ClientConfiguration;->getProtocol()Lcom/amazonaws/Protocol;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s3-accelerate.amazonaws.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 4281
    if-eqz p3, :cond_1

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 4303
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v0, p3

    .line 4281
    goto :goto_0

    .line 4282
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientOptions:Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/S3ClientOptions;->isPathStyleAccess()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4283
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->isDNSBucketName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->endpoint:Ljava/net/URI;

    .line 4284
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->validIP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4285
    invoke-direct {p0, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->convertToVirtualHostEndpoint(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 4292
    if-eqz p3, :cond_3

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 4295
    :cond_3
    invoke-interface {p1, p3}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    goto :goto_1

    .line 4297
    :cond_4
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 4299
    if-eqz p2, :cond_0

    .line 4300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_5

    move-object v0, p3

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, ""

    goto :goto_2
.end method

.method private convertToVirtualHostEndpoint(Ljava/lang/String;)Ljava/net/URI;
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 3866
    :try_start_0
    new-instance v1, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->endpoint:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->endpoint:Ljava/net/URI;

    .line 3867
    invoke-virtual {v3}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3866
    return-object v1

    .line 3868
    :catch_0
    move-exception v0

    .line 3869
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid bucket name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private fireProgressEvent(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V
    .locals 4
    .param p1, "progressListenerCallbackExecutor"    # Lcom/amazonaws/event/ProgressListenerCallbackExecutor;
    .param p2, "eventType"    # I

    .prologue
    .line 3603
    if-nez p1, :cond_0

    .line 3608
    :goto_0
    return-void

    .line 3605
    :cond_0
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 3606
    .local v0, "event":Lcom/amazonaws/event/ProgressEvent;
    invoke-virtual {v0, p2}, Lcom/amazonaws/event/ProgressEvent;->setEventCode(I)V

    .line 3607
    invoke-virtual {p1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->progressChanged(Lcom/amazonaws/event/ProgressEvent;)V

    goto :goto_0
.end method

.method private getAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;
    .param p4, "originalRequest"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 3629
    if-nez p4, :cond_0

    .line 3630
    new-instance p4, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    .end local p4    # "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    invoke-direct {p4, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    .line 3632
    .restart local p4    # "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    :cond_0
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, p2, p4, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 3634
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/AmazonWebServiceRequest;>;"
    const-string v1, "acl"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3635
    if-eqz p3, :cond_1

    .line 3636
    const-string/jumbo v1, "versionId"

    invoke-interface {v0, v1, p3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3638
    :cond_1
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$AccessControlListUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$AccessControlListUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v1
.end method

.method private getBucketRequestPayment(Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;)Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;
    .locals 5
    .param p1, "getRequestPaymentConfigurationRequest"    # Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;

    .prologue
    const/4 v4, 0x0

    .line 4473
    .line 4474
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 4476
    .local v0, "bucketName":Ljava/lang/String;
    const-string v2, "The bucket name parameter must be specified while getting the Request Payment Configuration."

    invoke-direct {p0, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4480
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v4, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 4483
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;>;"
    const-string v2, "requestPayment"

    invoke-interface {v1, v2, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4484
    const-string v2, "Content-Type"

    const-string v3, "application/xml"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4486
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$RequestPaymentConfigurationUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$RequestPaymentConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, v1, v2, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    return-object v2
.end method

.method private init()V
    .locals 3

    .prologue
    .line 479
    sget-object v1, Lcom/amazonaws/services/s3/internal/Constants;->S3_HOSTNAME:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->setEndpoint(Ljava/lang/String;)V

    .line 481
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 482
    .local v0, "chainFactory":Lcom/amazonaws/handlers/HandlerChainFactory;
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/s3/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 484
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->requestHandler2s:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/s3/request.handler2s"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->newRequestHandler2Chain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 486
    return-void
.end method

.method private invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p3, "bucket"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazonaws/Request",
            "<TY;>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<TX;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    .prologue
    .line 4344
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<TY;>;"
    .local p2, "responseHandler":Lcom/amazonaws/http/HttpResponseHandler;, "Lcom/amazonaws/http/HttpResponseHandler<Lcom/amazonaws/AmazonWebServiceResponse<TX;>;>;"
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v3

    .line 4345
    .local v3, "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    invoke-virtual {p0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v2

    .line 4346
    .local v2, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    invoke-virtual {v2}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 4348
    .local v0, "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V

    .line 4355
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 4356
    const/4 v4, 0x0

    .line 4358
    .local v4, "response":Lcom/amazonaws/Response;, "Lcom/amazonaws/Response<TX;>;"
    :try_start_0
    iget v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->timeOffset:I

    invoke-interface {p1, v5}, Lcom/amazonaws/Request;->setTimeOffset(I)V

    .line 4365
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v5

    const-string v6, "Content-Type"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4366
    const-string v5, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-interface {p1, v5, v6}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4369
    :cond_0
    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v5}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v1

    .line 4370
    .local v1, "credentials":Lcom/amazonaws/auth/AWSCredentials;
    invoke-virtual {v3}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 4371
    invoke-virtual {v3}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v1

    .line 4373
    :cond_1
    invoke-virtual {p0, p1, p3, p4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createSigner(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazonaws/http/ExecutionContext;->setSigner(Lcom/amazonaws/auth/Signer;)V

    .line 4374
    invoke-virtual {v2, v1}, Lcom/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 4375
    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->client:Lcom/amazonaws/http/AmazonHttpClient;

    iget-object v6, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->errorResponseHandler:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-virtual {v5, p1, p2, v6, v2}, Lcom/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v4

    .line 4377
    invoke-virtual {v4}, Lcom/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 4379
    invoke-virtual {p0, v0, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    .line 4377
    return-object v5

    .line 4379
    .end local v1    # "credentials":Lcom/amazonaws/auth/AWSCredentials;
    :catchall_0
    move-exception v5

    invoke-virtual {p0, v0, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    throw v5
.end method

.method private invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p3, "bucketName"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazonaws/Request",
            "<TY;>;",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TX;",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    .prologue
    .line 4332
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<TY;>;"
    .local p2, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<TX;Ljava/io/InputStream;>;"
    new-instance v0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {v0, p2}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected static populateRequestMetadata(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 10
    .param p1, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/services/s3/model/ObjectMetadata;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3884
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getRawMetadata()Ljava/util/Map;

    move-result-object v4

    .line 3886
    .local v4, "rawMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v7, "x-amz-server-side-encryption-aws-kms-key-id"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v7, "aws:kms"

    const-string/jumbo v8, "x-amz-server-side-encryption"

    .line 3888
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 3887
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3889
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "If you specify a KMS key id for server side encryption, you must also set the SSEAlgorithm to ObjectMetadata.KMS_SERVER_SIDE_ENCRYPTION"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3893
    :cond_0
    if-eqz v4, :cond_1

    .line 3894
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3895
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v7, v9}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3899
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getHttpExpiresDate()Ljava/util/Date;

    move-result-object v2

    .line 3900
    .local v2, "httpExpiresDate":Ljava/util/Date;
    if-eqz v2, :cond_2

    .line 3901
    const-string v7, "Expires"

    invoke-static {v2}, Lcom/amazonaws/util/DateUtils;->formatRFC822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v7, v8}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3904
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object v5

    .line 3905
    .local v5, "userMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v5, :cond_5

    .line 3906
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3907
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3908
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3909
    .local v6, "value":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 3910
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 3911
    :cond_3
    if-eqz v6, :cond_4

    .line 3912
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 3913
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "x-amz-meta-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v8, v6}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3916
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private static populateRequestWithCopyObjectParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/CopyObjectRequest;)V
    .locals 5
    .param p1, "copyObjectRequest"    # Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<+",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">;",
            "Lcom/amazonaws/services/s3/model/CopyObjectRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<+Lcom/amazonaws/AmazonWebServiceRequest;>;"
    const/4 v4, 0x1

    .line 3960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3961
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/amazonaws/util/HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3962
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/amazonaws/util/HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3963
    .local v0, "copySourceHeader":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceVersionId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3964
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?versionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceVersionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3966
    :cond_0
    const-string/jumbo v2, "x-amz-copy-source"

    invoke-interface {p0, v2, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3968
    const-string/jumbo v2, "x-amz-copy-source-if-modified-since"

    .line 3969
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getModifiedSinceConstraint()Ljava/util/Date;

    move-result-object v3

    .line 3968
    invoke-static {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addDateHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    .line 3970
    const-string/jumbo v2, "x-amz-copy-source-if-unmodified-since"

    .line 3971
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getUnmodifiedSinceConstraint()Ljava/util/Date;

    move-result-object v3

    .line 3970
    invoke-static {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addDateHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    .line 3973
    const-string/jumbo v2, "x-amz-copy-source-if-match"

    .line 3974
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getMatchingETagConstraints()Ljava/util/List;

    move-result-object v3

    .line 3973
    invoke-static {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addStringListHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 3975
    const-string/jumbo v2, "x-amz-copy-source-if-none-match"

    .line 3976
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getNonmatchingETagConstraints()Ljava/util/List;

    move-result-object v3

    .line 3975
    invoke-static {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addStringListHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 3978
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 3979
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->addAclHeaders(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 3985
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3986
    const-string/jumbo v2, "x-amz-storage-class"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3989
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3990
    const-string/jumbo v2, "x-amz-website-redirect-location"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3993
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getNewObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    .line 3994
    .local v1, "newObjectMetadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    if-eqz v1, :cond_4

    .line 3995
    const-string/jumbo v2, "x-amz-metadata-directive"

    const-string v3, "REPLACE"

    invoke-interface {p0, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3996
    invoke-static {p0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestMetadata(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 4000
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSourceSseCpkRequestParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 4001
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSseCpkRequestParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 4002
    return-void

    .line 3980
    .end local v1    # "newObjectMetadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getCannedAccessControlList()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3981
    const-string/jumbo v2, "x-amz-acl"

    .line 3982
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getCannedAccessControlList()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3981
    invoke-interface {p0, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static populateRequestWithCopyPartParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/CopyPartRequest;)V
    .locals 5
    .param p1, "copyPartRequest"    # Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/services/s3/model/CopyPartRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    const/4 v4, 0x1

    .line 4017
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4018
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/amazonaws/util/HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4019
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/amazonaws/util/HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4020
    .local v0, "copySourceHeader":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getSourceVersionId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4021
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?versionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getSourceVersionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4023
    :cond_0
    const-string/jumbo v2, "x-amz-copy-source"

    invoke-interface {p0, v2, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4025
    const-string/jumbo v2, "x-amz-copy-source-if-modified-since"

    .line 4026
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getModifiedSinceConstraint()Ljava/util/Date;

    move-result-object v3

    .line 4025
    invoke-static {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addDateHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    .line 4027
    const-string/jumbo v2, "x-amz-copy-source-if-unmodified-since"

    .line 4028
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getUnmodifiedSinceConstraint()Ljava/util/Date;

    move-result-object v3

    .line 4027
    invoke-static {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addDateHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    .line 4030
    const-string/jumbo v2, "x-amz-copy-source-if-match"

    .line 4031
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getMatchingETagConstraints()Ljava/util/List;

    move-result-object v3

    .line 4030
    invoke-static {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addStringListHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 4032
    const-string/jumbo v2, "x-amz-copy-source-if-none-match"

    .line 4033
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getNonmatchingETagConstraints()Ljava/util/List;

    move-result-object v3

    .line 4032
    invoke-static {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addStringListHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 4035
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getFirstByte()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getLastByte()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4036
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getFirstByte()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4037
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getLastByte()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4038
    .local v1, "range":Ljava/lang/String;
    const-string/jumbo v2, "x-amz-copy-source-range"

    invoke-interface {p0, v2, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4042
    .end local v1    # "range":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getSourceSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSourceSseCpkRequestParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 4043
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getDestinationSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSseCpkRequestParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 4044
    return-void
.end method

.method private populateRequestWithMfaDetails(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V
    .locals 5
    .param p2, "mfa"    # Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3931
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    if-nez p2, :cond_0

    .line 3944
    :goto_0
    return-void

    .line 3934
    :cond_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3935
    .local v0, "endpoint":Ljava/lang/String;
    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3936
    const-string v2, "http://"

    const-string v3, "https://"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 3937
    .local v1, "httpsEndpoint":Ljava/lang/String;
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 3938
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Overriding current endpoint to use HTTPS as required by S3 for requests containing an MFA header"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 3942
    .end local v1    # "httpsEndpoint":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "x-amz-mfa"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3943
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3942
    invoke-interface {p1, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static populateSourceSseCpkRequestParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 4
    .param p1, "sseKey"    # Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/services/s3/model/SSECustomerKey;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4082
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    if-nez p1, :cond_1

    .line 4101
    :cond_0
    :goto_0
    return-void

    .line 4086
    :cond_1
    const-string/jumbo v2, "x-amz-copy-source-server-side-encryption-customer-algorithm"

    .line 4087
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 4086
    invoke-static {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4088
    const-string/jumbo v2, "x-amz-copy-source-server-side-encryption-customer-key"

    .line 4089
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 4088
    invoke-static {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4090
    const-string/jumbo v2, "x-amz-copy-source-server-side-encryption-customer-key-MD5"

    .line 4091
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getMd5()Ljava/lang/String;

    move-result-object v3

    .line 4090
    invoke-static {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4094
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4095
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getMd5()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4096
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 4097
    .local v1, "encryptionKey_b64":Ljava/lang/String;
    invoke-static {v1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 4098
    .local v0, "encryptionKey":[B
    const-string/jumbo v2, "x-amz-copy-source-server-side-encryption-customer-key-MD5"

    .line 4099
    invoke-static {v0}, Lcom/amazonaws/util/Md5Utils;->md5AsBase64([B)Ljava/lang/String;

    move-result-object v3

    .line 4098
    invoke-interface {p0, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static populateSseCpkRequestParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 4
    .param p1, "sseKey"    # Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/services/s3/model/SSECustomerKey;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4060
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    if-nez p1, :cond_1

    .line 4078
    :cond_0
    :goto_0
    return-void

    .line 4063
    :cond_1
    const-string/jumbo v2, "x-amz-server-side-encryption-customer-algorithm"

    .line 4064
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 4063
    invoke-static {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4065
    const-string/jumbo v2, "x-amz-server-side-encryption-customer-key"

    .line 4066
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 4065
    invoke-static {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4067
    const-string/jumbo v2, "x-amz-server-side-encryption-customer-key-MD5"

    .line 4068
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getMd5()Ljava/lang/String;

    move-result-object v3

    .line 4067
    invoke-static {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4071
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4072
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getMd5()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4073
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 4074
    .local v1, "encryptionKey_b64":Ljava/lang/String;
    invoke-static {v1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 4075
    .local v0, "encryptionKey":[B
    const-string/jumbo v2, "x-amz-server-side-encryption-customer-key-MD5"

    .line 4076
    invoke-static {v0}, Lcom/amazonaws/util/Md5Utils;->md5AsBase64([B)Ljava/lang/String;

    move-result-object v3

    .line 4075
    invoke-interface {p0, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/AmazonWebServiceRequest;)V
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;
    .param p4, "acl"    # Lcom/amazonaws/services/s3/model/AccessControlList;
    .param p5, "originalRequest"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 3687
    if-nez p5, :cond_0

    .line 3688
    new-instance p5, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    .end local p5    # "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    invoke-direct {p5, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    .line 3690
    .restart local p5    # "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    :cond_0
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, p2, p5, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 3692
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/AmazonWebServiceRequest;>;"
    const-string v2, "acl"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3693
    if-eqz p3, :cond_1

    .line 3694
    const-string/jumbo v2, "versionId"

    invoke-interface {v1, v2, p3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3696
    :cond_1
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/AclXmlFactory;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/AclXmlFactory;-><init>()V

    invoke-virtual {v2, p4}, Lcom/amazonaws/services/s3/model/transform/AclXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/AccessControlList;)[B

    move-result-object v0

    .line 3697
    .local v0, "aclAsXml":[B
    const-string v2, "Content-Type"

    const-string/jumbo v3, "text/plain"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3698
    const-string v2, "Content-Length"

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3699
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v1, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 3701
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 3702
    return-void
.end method

.method private setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/AmazonWebServiceRequest;)V
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;
    .param p4, "cannedAcl"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .param p5, "originalRequest"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 3658
    if-nez p5, :cond_0

    .line 3659
    new-instance p5, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    .end local p5    # "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    invoke-direct {p5, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    .line 3661
    .restart local p5    # "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    :cond_0
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, p2, p5, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 3663
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/AmazonWebServiceRequest;>;"
    const-string v1, "acl"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3664
    const-string/jumbo v1, "x-amz-acl"

    invoke-virtual {p4}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3665
    if-eqz p3, :cond_1

    .line 3666
    const-string/jumbo v1, "versionId"

    invoke-interface {v0, v1, p3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3668
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 3669
    return-void
.end method

.method private setBucketAcl0(Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "acl"    # Lcom/amazonaws/services/s3/model/AccessControlList;
    .param p3, "requestMetricCollector"    # Lcom/amazonaws/metrics/RequestMetricCollector;

    .prologue
    const/4 v2, 0x0

    .line 1084
    const-string v0, "The bucket name parameter must be specified when setting a bucket\'s ACL"

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1086
    const-string v0, "The ACL parameter must be specified when setting a bucket\'s ACL"

    invoke-direct {p0, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1089
    new-instance v0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->withRequestMetricCollector(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    .line 1089
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/AmazonWebServiceRequest;)V

    .line 1092
    return-void
.end method

.method private setBucketAcl0(Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "acl"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .param p3, "col"    # Lcom/amazonaws/metrics/RequestMetricCollector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1132
    const-string v0, "The bucket name parameter must be specified when setting a bucket\'s ACL"

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1134
    const-string v0, "The ACL parameter must be specified when setting a bucket\'s ACL"

    invoke-direct {p0, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1137
    new-instance v0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->withRequestMetricCollector(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    .line 1137
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/AmazonWebServiceRequest;)V

    .line 1140
    return-void
.end method

.method private setBucketRequestPayment(Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;)V
    .locals 7
    .param p1, "setRequestPaymentConfigurationRequest"    # Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;

    .prologue
    const/4 v6, 0x0

    .line 4436
    .line 4437
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 4439
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;->getConfiguration()Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    move-result-object v2

    .line 4441
    .local v2, "configuration":Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;
    const-string v4, "The bucket name parameter must be specified while setting the Requester Pays."

    invoke-direct {p0, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4444
    const-string v4, "The request payment configuration parameter must be specified when setting the Requester Pays."

    invoke-direct {p0, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4448
    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v6, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v3

    .line 4451
    .local v3, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;>;"
    const-string v4, "requestPayment"

    invoke-interface {v3, v4, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4452
    const-string v4, "Content-Type"

    const-string v5, "application/xml"

    invoke-interface {v3, v4, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4454
    sget-object v4, Lcom/amazonaws/services/s3/AmazonS3Client;->requestPaymentConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

    .line 4455
    invoke-virtual {v4, v2}, Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;)[B

    move-result-object v1

    .line 4456
    .local v1, "bytes":[B
    const-string v4, "Content-Length"

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4457
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v3, v4}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 4459
    iget-object v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v3, v4, v0, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 4460
    return-void
.end method

.method private setObjectAcl0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;
    .param p4, "acl"    # Lcom/amazonaws/services/s3/model/AccessControlList;
    .param p5, "requestMetricCollector"    # Lcom/amazonaws/metrics/RequestMetricCollector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 993
    const-string v0, "The bucket name parameter must be specified when setting an object\'s ACL"

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 995
    const-string v0, "The key parameter must be specified when setting an object\'s ACL"

    invoke-direct {p0, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 997
    const-string v0, "The ACL parameter must be specified when setting an object\'s ACL"

    invoke-direct {p0, p4, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    new-instance v0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {v0, p5}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->withRequestMetricCollector(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1000
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/AmazonWebServiceRequest;)V

    .line 1003
    return-void
.end method

.method private setObjectAcl0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;
    .param p4, "acl"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .param p5, "requestMetricCollector"    # Lcom/amazonaws/metrics/RequestMetricCollector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1026
    const-string v0, "The bucket name parameter must be specified when setting an object\'s ACL"

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1028
    const-string v0, "The key parameter must be specified when setting an object\'s ACL"

    invoke-direct {p0, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1030
    const-string v0, "The ACL parameter must be specified when setting an object\'s ACL"

    invoke-direct {p0, p4, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    new-instance v0, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {v0, p5}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;->withRequestMetricCollector(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1033
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/AmazonWebServiceRequest;)V

    .line 1036
    return-void
.end method

.method private setZeroContentLength(Lcom/amazonaws/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 4495
    .local p1, "req":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    const-string v0, "Content-Length"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4496
    return-void
.end method

.method private toByteArray(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v7, -0x1

    .line 4508
    const/high16 v5, 0x40000

    .line 4509
    .local v5, "size":I
    new-array v1, v5, [B

    .line 4510
    .local v1, "buf":[B
    const/4 v3, 0x0

    .line 4512
    .local v3, "len":I
    move v0, v5

    .line 4514
    .local v0, "available":I
    :goto_0
    if-lez v0, :cond_0

    :try_start_0
    invoke-virtual {p1, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .local v4, "read":I
    if-eq v4, v7, :cond_0

    .line 4515
    add-int/2addr v3, v4

    .line 4516
    sub-int/2addr v0, v4

    goto :goto_0

    .line 4518
    .end local v4    # "read":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v6

    if-eq v6, v7, :cond_1

    .line 4519
    new-instance v6, Lcom/amazonaws/AmazonClientException;

    const-string v7, "Input stream exceeds 256k buffer."

    invoke-direct {v6, v7}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4522
    :catch_0
    move-exception v2

    .line 4523
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v6, Lcom/amazonaws/AmazonClientException;

    const-string v7, "Failed to read from inputstream"

    invoke-direct {v6, v7, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 4521
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4525
    new-instance v6, Ljava/io/ByteArrayInputStream;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v6
.end method

.method private upgradeToSigV4(Lcom/amazonaws/Request;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    const/4 v0, 0x1

    .line 3773
    const-string v1, "com.amazonaws.services.s3.enforceV4"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3788
    :cond_0
    :goto_0
    return v0

    .line 3780
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->endpoint:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/services/s3/internal/Constants;->S3_HOSTNAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3788
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validIP(Ljava/lang/String;)Z
    .locals 8
    .param p1, "IP"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 4306
    if-nez p1, :cond_1

    .line 4325
    :cond_0
    :goto_0
    return v4

    .line 4309
    :cond_1
    const-string v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4310
    .local v3, "tokens":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 4313
    array-length v6, v3

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v1, v3, v5

    .line 4316
    .local v1, "token":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 4320
    .local v2, "tokenInt":I
    if-ltz v2, :cond_0

    const/16 v7, 0xff

    if-gt v2, v7, :cond_0

    .line 4313
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4317
    .end local v2    # "tokenInt":I
    :catch_0
    move-exception v0

    .line 4318
    .local v0, "ase":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 4325
    .end local v0    # "ase":Ljava/lang/NumberFormatException;
    .end local v1    # "token":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abortMultipartUpload(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    .locals 5
    .param p1, "abortMultipartUploadRequest"    # Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 3153
    const-string v3, "The request parameter must be specified when aborting a multipart upload"

    invoke-direct {p0, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3155
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "The bucket name parameter must be specified when aborting a multipart upload"

    invoke-direct {p0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3157
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "The key parameter must be specified when aborting a multipart upload"

    invoke-direct {p0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3159
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "The upload ID parameter must be specified when aborting a multipart upload"

    invoke-direct {p0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3162
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 3163
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 3165
    .local v1, "key":Ljava/lang/String;
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 3167
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;>;"
    const-string/jumbo v3, "uploadId"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3169
    iget-object v3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 3170
    return-void
.end method

.method public changeObjectStorageClass(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/StorageClass;)V
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newStorageClass"    # Lcom/amazonaws/services/s3/model/StorageClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1259
    const-string v0, "The bucketName parameter must be specified when changing an object\'s storage class"

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1261
    const-string v0, "The key parameter must be specified when changing an object\'s storage class"

    invoke-direct {p0, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1263
    const-string v0, "The newStorageClass parameter must be specified when changing an object\'s storage class"

    invoke-direct {p0, p3, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1266
    new-instance v0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-direct {v0, p1, p2, p1, p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    invoke-virtual {p3}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->withStorageClass(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    move-result-object v0

    .line 1266
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->copyObject(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/services/s3/model/CopyObjectResult;

    .line 1268
    return-void
.end method

.method public completeMultipartUpload(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .locals 12
    .param p1, "completeMultipartUploadRequest"    # Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 3182
    const-string v8, "The request parameter must be specified when completing a multipart upload"

    invoke-direct {p0, p1, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3185
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 3186
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 3187
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v5

    .line 3188
    .local v5, "uploadId":Ljava/lang/String;
    const-string v8, "The bucket name parameter must be specified when completing a multipart upload"

    invoke-direct {p0, v0, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3190
    const-string v8, "The key parameter must be specified when completing a multipart upload"

    invoke-direct {p0, v2, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3192
    const-string v8, "The upload ID parameter must be specified when completing a multipart upload"

    invoke-direct {p0, v5, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3194
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getPartETags()Ljava/util/List;

    move-result-object v8

    const-string v9, "The part ETags parameter must be specified when completing a multipart upload"

    invoke-direct {p0, v8, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3197
    sget-object v8, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v2, p1, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v3

    .line 3199
    .local v3, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;>;"
    const-string/jumbo v8, "uploadId"

    invoke-interface {v3, v8, v5}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3202
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getPartETags()Ljava/util/List;

    move-result-object v8

    .line 3201
    invoke-static {v8}, Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory;->convertToXmlByteArray(Ljava/util/List;)[B

    move-result-object v7

    .line 3203
    .local v7, "xml":[B
    const-string v8, "Content-Type"

    const-string/jumbo v9, "text/plain"

    invoke-interface {v3, v8, v9}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3204
    const-string v8, "Content-Length"

    array-length v9, v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3206
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v3, v8}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 3209
    new-instance v4, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v8, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CompleteMultipartUploadResultUnmarshaller;

    invoke-direct {v8}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CompleteMultipartUploadResultUnmarshaller;-><init>()V

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    const/4 v10, 0x0

    new-instance v11, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    invoke-direct {v11}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;

    invoke-direct {v11}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;-><init>()V

    aput-object v11, v9, v10

    invoke-direct {v4, v8, v9}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 3215
    .local v4, "responseHandler":Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;, "Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain<Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;>;"
    invoke-direct {p0, v3, v4, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;

    .line 3216
    .local v1, "handler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getCompleteMultipartUploadResult()Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 3217
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    const-string/jumbo v9, "x-amz-version-id"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3218
    .local v6, "versionId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getCompleteMultipartUploadResult()Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->setVersionId(Ljava/lang/String;)V

    .line 3219
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getCompleteMultipartUploadResult()Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object v8

    return-object v8

    .line 3221
    .end local v6    # "versionId":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getAmazonS3Exception()Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object v8

    throw v8
.end method

.method public copyObject(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/services/s3/model/CopyObjectResult;
    .locals 17
    .param p1, "copyObjectRequest"    # Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1829
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "The source bucket name must be specified when copying an object"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1831
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v13

    const-string v14, "The source object key must be specified when copying an object"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1833
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "The destination bucket name must be specified when copying an object"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1835
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v13

    const-string v14, "The destination object key must be specified when copying an object"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1838
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v6

    .line 1839
    .local v6, "destinationKey":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v5

    .line 1841
    .local v5, "destinationBucketName":Ljava/lang/String;
    sget-object v13, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v6, v1, v13}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v11

    .line 1844
    .local v11, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/CopyObjectRequest;>;"
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestWithCopyObjectParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/CopyObjectRequest;)V

    .line 1850
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/amazonaws/services/s3/AmazonS3Client;->setZeroContentLength(Lcom/amazonaws/Request;)V

    .line 1851
    const/4 v4, 0x0

    .line 1854
    .local v4, "copyObjectResultHandler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;
    :try_start_0
    new-instance v9, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v13, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CopyObjectUnmarshaller;

    invoke-direct {v13}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CopyObjectUnmarshaller;-><init>()V

    const/4 v14, 0x3

    new-array v14, v14, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    const/4 v15, 0x0

    new-instance v16, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    invoke-direct/range {v16 .. v16}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    aput-object v16, v14, v15

    const/4 v15, 0x1

    new-instance v16, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;

    invoke-direct/range {v16 .. v16}, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;-><init>()V

    aput-object v16, v14, v15

    const/4 v15, 0x2

    new-instance v16, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;

    invoke-direct/range {v16 .. v16}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;-><init>()V

    aput-object v16, v14, v15

    invoke-direct {v9, v13, v14}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 1861
    .local v9, "handler":Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;, "Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain<Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9, v5, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;

    move-object v4, v0
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1888
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorCode()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 1889
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorCode()Ljava/lang/String;

    move-result-object v7

    .line 1890
    .local v7, "errorCode":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    .line 1891
    .local v8, "errorMessage":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorRequestId()Ljava/lang/String;

    move-result-object v12

    .line 1892
    .local v12, "requestId":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorHostId()Ljava/lang/String;

    move-result-object v10

    .line 1894
    .local v10, "hostId":Ljava/lang/String;
    new-instance v2, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-direct {v2, v8}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    .line 1895
    .local v2, "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    invoke-virtual {v2, v7}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setErrorCode(Ljava/lang/String;)V

    .line 1896
    sget-object v13, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v2, v13}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 1897
    invoke-virtual {v2, v12}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setRequestId(Ljava/lang/String;)V

    .line 1898
    invoke-virtual {v2, v10}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setExtendedRequestId(Ljava/lang/String;)V

    .line 1899
    invoke-interface {v11}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setServiceName(Ljava/lang/String;)V

    .line 1900
    const/16 v13, 0xc8

    invoke-virtual {v2, v13}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setStatusCode(I)V

    .line 1902
    throw v2

    .line 1863
    .end local v2    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .end local v7    # "errorCode":Ljava/lang/String;
    .end local v8    # "errorMessage":Ljava/lang/String;
    .end local v9    # "handler":Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;, "Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain<Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;>;"
    .end local v10    # "hostId":Ljava/lang/String;
    .end local v12    # "requestId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1871
    .restart local v2    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getStatusCode()I

    move-result v13

    const/16 v14, 0x19c

    if-ne v13, v14, :cond_0

    .line 1872
    const/4 v3, 0x0

    .line 1918
    .end local v2    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    :goto_0
    return-object v3

    .line 1875
    .restart local v2    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    :cond_0
    throw v2

    .line 1907
    .end local v2    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .restart local v9    # "handler":Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;, "Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain<Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;>;"
    :cond_1
    new-instance v3, Lcom/amazonaws/services/s3/model/CopyObjectResult;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/CopyObjectResult;-><init>()V

    .line 1908
    .local v3, "copyObjectResult":Lcom/amazonaws/services/s3/model/CopyObjectResult;
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getETag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setETag(Ljava/lang/String;)V

    .line 1909
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getLastModified()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setLastModifiedDate(Ljava/util/Date;)V

    .line 1910
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getVersionId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setVersionId(Ljava/lang/String;)V

    .line 1911
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setSSEAlgorithm(Ljava/lang/String;)V

    .line 1912
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getSSEKMSKeyId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setSSEKMSKeyId(Ljava/lang/String;)V

    .line 1913
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getSSECustomerAlgorithm()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setSSECustomerAlgorithm(Ljava/lang/String;)V

    .line 1914
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getSSECustomerKeyMd5()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setSSECustomerKeyMd5(Ljava/lang/String;)V

    .line 1915
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getExpirationTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setExpirationTime(Ljava/util/Date;)V

    .line 1916
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getExpirationTimeRuleId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->setExpirationTimeRuleId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public copyObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectResult;
    .locals 1
    .param p1, "sourceBucketName"    # Ljava/lang/String;
    .param p2, "sourceKey"    # Ljava/lang/String;
    .param p3, "destinationBucketName"    # Ljava/lang/String;
    .param p4, "destinationKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1816
    new-instance v0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->copyObject(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/services/s3/model/CopyObjectResult;

    move-result-object v0

    return-object v0
.end method

.method public copyPart(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;
    .locals 17
    .param p1, "copyPartRequest"    # Lcom/amazonaws/services/s3/model/CopyPartRequest;

    .prologue
    .line 1948
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "The source bucket name must be specified when copying a part"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1950
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v13

    const-string v14, "The source object key must be specified when copying a part"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1952
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "The destination bucket name must be specified when copying a part"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1954
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v13

    const-string v14, "The upload id must be specified when copying a part"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1956
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v13

    const-string v14, "The destination object key must be specified when copying a part"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1958
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getPartNumber()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "The part number must be specified when copying a part"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1961
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v6

    .line 1962
    .local v6, "destinationKey":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v5

    .line 1964
    .local v5, "destinationBucketName":Ljava/lang/String;
    sget-object v13, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v6, v1, v13}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v11

    .line 1968
    .local v11, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/CopyPartRequest;>;"
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestWithCopyPartParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/CopyPartRequest;)V

    .line 1970
    const-string/jumbo v13, "uploadId"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    const-string v13, "partNumber"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getPartNumber()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/amazonaws/services/s3/AmazonS3Client;->setZeroContentLength(Lcom/amazonaws/Request;)V

    .line 1979
    const/4 v3, 0x0

    .line 1982
    .local v3, "copyObjectResultHandler":Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;
    :try_start_0
    new-instance v9, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v13, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CopyObjectUnmarshaller;

    invoke-direct {v13}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CopyObjectUnmarshaller;-><init>()V

    const/4 v14, 0x2

    new-array v14, v14, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    const/4 v15, 0x0

    new-instance v16, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    invoke-direct/range {v16 .. v16}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    aput-object v16, v14, v15

    const/4 v15, 0x1

    new-instance v16, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;

    invoke-direct/range {v16 .. v16}, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;-><init>()V

    aput-object v16, v14, v15

    invoke-direct {v9, v13, v14}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 1988
    .local v9, "handler":Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;, "Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain<Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9, v5, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;

    move-object v3, v0
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2015
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorCode()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 2016
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorCode()Ljava/lang/String;

    move-result-object v7

    .line 2017
    .local v7, "errorCode":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    .line 2018
    .local v8, "errorMessage":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorRequestId()Ljava/lang/String;

    move-result-object v12

    .line 2019
    .local v12, "requestId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getErrorHostId()Ljava/lang/String;

    move-result-object v10

    .line 2021
    .local v10, "hostId":Ljava/lang/String;
    new-instance v2, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-direct {v2, v8}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    .line 2022
    .local v2, "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    invoke-virtual {v2, v7}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setErrorCode(Ljava/lang/String;)V

    .line 2023
    sget-object v13, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v2, v13}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 2024
    invoke-virtual {v2, v12}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setRequestId(Ljava/lang/String;)V

    .line 2025
    invoke-virtual {v2, v10}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setExtendedRequestId(Ljava/lang/String;)V

    .line 2026
    invoke-interface {v11}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setServiceName(Ljava/lang/String;)V

    .line 2027
    const/16 v13, 0xc8

    invoke-virtual {v2, v13}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setStatusCode(I)V

    .line 2029
    throw v2

    .line 1990
    .end local v2    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .end local v7    # "errorCode":Ljava/lang/String;
    .end local v8    # "errorMessage":Ljava/lang/String;
    .end local v9    # "handler":Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;, "Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain<Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;>;"
    .end local v10    # "hostId":Ljava/lang/String;
    .end local v12    # "requestId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1998
    .restart local v2    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getStatusCode()I

    move-result v13

    const/16 v14, 0x19c

    if-ne v13, v14, :cond_0

    .line 1999
    const/4 v4, 0x0

    .line 2041
    .end local v2    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    :goto_0
    return-object v4

    .line 2002
    .restart local v2    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    :cond_0
    throw v2

    .line 2032
    .end local v2    # "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .restart local v9    # "handler":Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;, "Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain<Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;>;"
    :cond_1
    new-instance v4, Lcom/amazonaws/services/s3/model/CopyPartResult;

    invoke-direct {v4}, Lcom/amazonaws/services/s3/model/CopyPartResult;-><init>()V

    .line 2033
    .local v4, "copyPartResult":Lcom/amazonaws/services/s3/model/CopyPartResult;
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getETag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/amazonaws/services/s3/model/CopyPartResult;->setETag(Ljava/lang/String;)V

    .line 2034
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getPartNumber()I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/amazonaws/services/s3/model/CopyPartResult;->setPartNumber(I)V

    .line 2035
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getLastModified()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/amazonaws/services/s3/model/CopyPartResult;->setLastModifiedDate(Ljava/util/Date;)V

    .line 2036
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getVersionId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/amazonaws/services/s3/model/CopyPartResult;->setVersionId(Ljava/lang/String;)V

    .line 2037
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/amazonaws/services/s3/model/CopyPartResult;->setSSEAlgorithm(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getSSECustomerAlgorithm()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/amazonaws/services/s3/model/CopyPartResult;->setSSECustomerAlgorithm(Ljava/lang/String;)V

    .line 2039
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->getSSECustomerKeyMd5()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/amazonaws/services/s3/model/CopyPartResult;->setSSECustomerKeyMd5(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createBucket(Lcom/amazonaws/services/s3/model/CreateBucketRequest;)Lcom/amazonaws/services/s3/model/Bucket;
    .locals 9
    .param p1, "createBucketRequest"    # Lcom/amazonaws/services/s3/model/CreateBucketRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 875
    const-string v5, "The CreateBucketRequest parameter must be specified when creating a bucket"

    invoke-direct {p0, p1, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 878
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->getRegion()Ljava/lang/String;

    move-result-object v2

    .line 880
    .local v2, "region":Ljava/lang/String;
    const-string v5, "The bucket name parameter must be specified when creating a bucket"

    invoke-direct {p0, v0, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 883
    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 885
    :cond_0
    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->validateBucketName(Ljava/lang/String;)V

    .line 887
    sget-object v5, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v8, p1, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v3

    .line 890
    .local v3, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/CreateBucketRequest;>;"
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 891
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->addAclHeaders(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 901
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->endpoint:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/amazonaws/services/s3/internal/Constants;->S3_HOSTNAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v2, :cond_2

    .line 902
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 905
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->endpoint:Ljava/net/URI;

    .line 906
    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazonaws/regions/RegionUtils;->getRegionByEndpoint(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    move-result-object v5

    .line 907
    invoke-virtual {v5}, Lcom/amazonaws/regions/Region;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 919
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->upperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/amazonaws/services/s3/model/Region;->US_Standard:Lcom/amazonaws/services/s3/model/Region;

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/Region;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 920
    new-instance v4, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    .line 921
    .local v4, "xml":Lcom/amazonaws/services/s3/internal/XmlWriter;
    const-string v5, "CreateBucketConfiguration"

    const-string/jumbo v6, "xmlns"

    const-string v7, "http://s3.amazonaws.com/doc/2006-03-01/"

    invoke-virtual {v4, v5, v6, v7}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 922
    const-string v5, "LocationConstraint"

    invoke-virtual {v4, v5}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 923
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 925
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object v1

    .line 926
    .local v1, "bytes":[B
    const-string v5, "Content-Length"

    array-length v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v3, v5}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 930
    .end local v1    # "bytes":[B
    .end local v4    # "xml":Lcom/amazonaws/services/s3/internal/XmlWriter;
    :cond_4
    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v3, v5, v0, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 932
    new-instance v5, Lcom/amazonaws/services/s3/model/Bucket;

    invoke-direct {v5, v0}, Lcom/amazonaws/services/s3/model/Bucket;-><init>(Ljava/lang/String;)V

    return-object v5

    .line 892
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 893
    const-string/jumbo v5, "x-amz-acl"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 908
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public createBucket(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Bucket;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 841
    new-instance v0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->createBucket(Lcom/amazonaws/services/s3/model/CreateBucketRequest;)Lcom/amazonaws/services/s3/model/Bucket;

    move-result-object v0

    return-object v0
.end method

.method public createBucket(Ljava/lang/String;Lcom/amazonaws/services/s3/model/Region;)Lcom/amazonaws/services/s3/model/Bucket;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "region"    # Lcom/amazonaws/services/s3/model/Region;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 852
    new-instance v0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/Region;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->createBucket(Lcom/amazonaws/services/s3/model/CreateBucketRequest;)Lcom/amazonaws/services/s3/model/Bucket;

    move-result-object v0

    return-object v0
.end method

.method public createBucket(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Bucket;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 863
    new-instance v0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->createBucket(Lcom/amazonaws/services/s3/model/CreateBucketRequest;)Lcom/amazonaws/services/s3/model/Bucket;

    move-result-object v0

    return-object v0
.end method

.method protected final createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;
    .locals 3
    .param p1, "req"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 4337
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->isRequestMetricsEnabled(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/amazonaws/services/s3/AmazonS3Client;->isProfilingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 4338
    .local v0, "isMetricsEnabled":Z
    :goto_0
    new-instance v1, Lcom/amazonaws/services/s3/internal/S3ExecutionContext;

    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->requestHandler2s:Ljava/util/List;

    invoke-direct {v1, v2, v0, p0}, Lcom/amazonaws/services/s3/internal/S3ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V

    return-object v1

    .line 4337
    .end local v0    # "isMetricsEnabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p4, "httpMethod"    # Lcom/amazonaws/http/HttpMethodName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TX;",
            "Lcom/amazonaws/http/HttpMethodName;",
            ")",
            "Lcom/amazonaws/Request",
            "<TX;>;"
        }
    .end annotation

    .prologue
    .line 4257
    .local p3, "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;, "TX;"
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    sget-object v1, Lcom/amazonaws/services/s3/internal/Constants;->S3_SERVICE_NAME:Ljava/lang/String;

    invoke-direct {v0, p3, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 4258
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<TX;>;"
    invoke-interface {v0, p4}, Lcom/amazonaws/Request;->setHttpMethod(Lcom/amazonaws/http/HttpMethodName;)V

    .line 4259
    invoke-direct {p0, v0, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->configRequest(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4260
    return-object v0
.end method

.method protected createSigner(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;
    .locals 7
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazonaws/auth/Signer;"
        }
    .end annotation

    .prologue
    .line 3712
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getSigner()Lcom/amazonaws/auth/Signer;

    move-result-object v2

    .line 3714
    .local v2, "signer":Lcom/amazonaws/auth/Signer;
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->upgradeToSigV4(Lcom/amazonaws/Request;)Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v4, v2, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    if-nez v4, :cond_2

    .line 3716
    new-instance v3, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;-><init>()V

    .line 3722
    .local v3, "v4Signer":Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getServiceNameIntern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->setServiceName(Ljava/lang/String;)V

    .line 3728
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getSignerRegionOverride()Ljava/lang/String;

    move-result-object v0

    .line 3729
    .local v0, "regionOverride":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3730
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientRegion:Ljava/lang/String;

    .line 3732
    :cond_0
    if-nez v0, :cond_1

    .line 3733
    new-instance v4, Lcom/amazonaws/AmazonClientException;

    const-string v5, "Signature Version 4 requires knowing the region of the bucket you\'re trying to access. You can configure a region by calling AmazonS3Client.setRegion(Region) or AmazonS3Client.setEndpoint(String) with a region-specific endpoint such as \"s3-us-west-2.amazonaws.com\"."

    invoke-direct {v4, v5}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3741
    :cond_1
    invoke-virtual {v3, v0}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->setRegionName(Ljava/lang/String;)V

    .line 3764
    .end local v0    # "regionOverride":Ljava/lang/String;
    .end local v3    # "v4Signer":Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;
    .end local p3    # "key":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 3748
    .restart local p3    # "key":Ljava/lang/String;
    :cond_2
    instance-of v4, v2, Lcom/amazonaws/services/s3/internal/S3Signer;

    if-eqz v4, :cond_5

    .line 3755
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_4

    .end local p3    # "key":Ljava/lang/String;
    :goto_2
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3760
    .local v1, "resourcePath":Ljava/lang/String;
    new-instance v3, Lcom/amazonaws/services/s3/internal/S3Signer;

    invoke-interface {p1}, Lcom/amazonaws/Request;->getHttpMethod()Lcom/amazonaws/http/HttpMethodName;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/http/HttpMethodName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/amazonaws/services/s3/internal/S3Signer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3755
    .end local v1    # "resourcePath":Ljava/lang/String;
    .restart local p3    # "key":Ljava/lang/String;
    :cond_3
    const-string v4, ""

    goto :goto_1

    :cond_4
    const-string p3, ""

    goto :goto_2

    :cond_5
    move-object v3, v2

    .line 3764
    goto :goto_0
.end method

.method public deleteBucket(Lcom/amazonaws/services/s3/model/DeleteBucketRequest;)V
    .locals 4
    .param p1, "deleteBucketRequest"    # Lcom/amazonaws/services/s3/model/DeleteBucketRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1499
    const-string v2, "The DeleteBucketRequest parameter must be specified when deleting a bucket"

    invoke-direct {p0, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1502
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 1503
    .local v0, "bucketName":Ljava/lang/String;
    const-string v2, "The bucket name parameter must be specified when deleting a bucket"

    invoke-direct {p0, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1506
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 1508
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/DeleteBucketRequest;>;"
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1509
    return-void
.end method

.method public deleteBucket(Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1487
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteBucket(Lcom/amazonaws/services/s3/model/DeleteBucketRequest;)V

    .line 1488
    return-void
.end method

.method public deleteBucketCrossOriginConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketCrossOriginConfigurationRequest;)V
    .locals 4
    .param p1, "deleteBucketCrossOriginConfigurationRequest"    # Lcom/amazonaws/services/s3/model/DeleteBucketCrossOriginConfigurationRequest;

    .prologue
    const/4 v3, 0x0

    .line 2494
    const-string v2, "The delete bucket cross origin configuration request object must be specified."

    invoke-direct {p0, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2497
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketCrossOriginConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2498
    .local v0, "bucketName":Ljava/lang/String;
    const-string v2, "The bucket name parameter must be specified when deleting bucket cross origin configuration."

    invoke-direct {p0, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2501
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 2503
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/DeleteBucketCrossOriginConfigurationRequest;>;"
    const-string v2, "cors"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2505
    return-void
.end method

.method public deleteBucketCrossOriginConfiguration(Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 2480
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketCrossOriginConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketCrossOriginConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteBucketCrossOriginConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketCrossOriginConfigurationRequest;)V

    .line 2482
    return-void
.end method

.method public deleteBucketLifecycleConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketLifecycleConfigurationRequest;)V
    .locals 4
    .param p1, "deleteBucketLifecycleConfigurationRequest"    # Lcom/amazonaws/services/s3/model/DeleteBucketLifecycleConfigurationRequest;

    .prologue
    const/4 v3, 0x0

    .line 2377
    const-string v2, "The delete bucket lifecycle configuration request object must be specified."

    invoke-direct {p0, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2380
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketLifecycleConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2381
    .local v0, "bucketName":Ljava/lang/String;
    const-string v2, "The bucket name parameter must be specified when deleting bucket lifecycle configuration."

    invoke-direct {p0, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2384
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 2386
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/DeleteBucketLifecycleConfigurationRequest;>;"
    const-string v2, "lifecycle"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2388
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2389
    return-void
.end method

.method public deleteBucketLifecycleConfiguration(Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 2364
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketLifecycleConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketLifecycleConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteBucketLifecycleConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketLifecycleConfigurationRequest;)V

    .line 2365
    return-void
.end method

.method public deleteBucketPolicy(Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;)V
    .locals 4
    .param p1, "deleteBucketPolicyRequest"    # Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3022
    const-string v2, "The request object must be specified when deleting a bucket policy"

    invoke-direct {p0, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3025
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 3026
    .local v0, "bucketName":Ljava/lang/String;
    const-string v2, "The bucket name must be specified when deleting a bucket policy"

    invoke-direct {p0, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3029
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 3031
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;>;"
    const-string v2, "policy"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3033
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 3034
    return-void
.end method

.method public deleteBucketPolicy(Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 2940
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteBucketPolicy(Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;)V

    .line 2941
    return-void
.end method

.method public deleteBucketReplicationConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketReplicationConfigurationRequest;)V
    .locals 4
    .param p1, "deleteBucketReplicationConfigurationRequest"    # Lcom/amazonaws/services/s3/model/DeleteBucketReplicationConfigurationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4622
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketReplicationConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 4623
    .local v0, "bucketName":Ljava/lang/String;
    const-string v2, "The bucket name parameter must be specified when deleting replication configuration"

    invoke-direct {p0, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4627
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 4630
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/DeleteBucketReplicationConfigurationRequest;>;"
    const-string v2, "replication"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4632
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 4633
    return-void
.end method

.method public deleteBucketReplicationConfiguration(Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 4613
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketReplicationConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketReplicationConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteBucketReplicationConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketReplicationConfigurationRequest;)V

    .line 4615
    return-void
.end method

.method public deleteBucketTaggingConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketTaggingConfigurationRequest;)V
    .locals 4
    .param p1, "deleteBucketTaggingConfigurationRequest"    # Lcom/amazonaws/services/s3/model/DeleteBucketTaggingConfigurationRequest;

    .prologue
    const/4 v3, 0x0

    .line 2607
    const-string v2, "The delete bucket tagging configuration request object must be specified."

    invoke-direct {p0, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2610
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketTaggingConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2611
    .local v0, "bucketName":Ljava/lang/String;
    const-string v2, "The bucket name parameter must be specified when deleting bucket tagging configuration."

    invoke-direct {p0, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2614
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 2616
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/DeleteBucketTaggingConfigurationRequest;>;"
    const-string/jumbo v2, "tagging"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2618
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2619
    return-void
.end method

.method public deleteBucketTaggingConfiguration(Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 2595
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketTaggingConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketTaggingConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteBucketTaggingConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketTaggingConfigurationRequest;)V

    .line 2596
    return-void
.end method

.method public deleteBucketWebsiteConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;)V
    .locals 5
    .param p1, "deleteBucketWebsiteConfigurationRequest"    # Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2694
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2696
    .local v0, "bucketName":Ljava/lang/String;
    const-string v2, "The bucket name parameter must be specified when deleting a bucket\'s website configuration"

    invoke-direct {p0, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2699
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v4, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 2701
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;>;"
    const-string/jumbo v2, "website"

    invoke-interface {v1, v2, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2702
    const-string v2, "Content-Type"

    const-string v3, "application/xml"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2704
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v1, v2, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2705
    return-void
.end method

.method public deleteBucketWebsiteConfiguration(Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 2681
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteBucketWebsiteConfiguration(Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;)V

    .line 2682
    return-void
.end method

.method public deleteObject(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)V
    .locals 4
    .param p1, "deleteObjectRequest"    # Lcom/amazonaws/services/s3/model/DeleteObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 2064
    const-string v1, "The delete object request must be specified when deleting an object"

    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2067
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The bucket name must be specified when deleting an object"

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2069
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The key must be specified when deleting an object"

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2072
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 2073
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    .line 2072
    invoke-virtual {p0, v1, v2, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2074
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/DeleteObjectRequest;>;"
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 2075
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 2074
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2076
    return-void
.end method

.method public deleteObject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 2052
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteObject(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)V

    .line 2053
    return-void
.end method

.method public deleteObjects(Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;)Lcom/amazonaws/services/s3/model/DeleteObjectsResult;
    .locals 9
    .param p1, "deleteObjectsRequest"    # Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;

    .prologue
    const/4 v8, 0x0

    .line 2086
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v6, v8, p1, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v4

    .line 2088
    .local v4, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;>;"
    const-string v6, "delete"

    invoke-interface {v4, v6, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2091
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestWithMfaDetails(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V

    .line 2094
    :cond_0
    new-instance v6, Lcom/amazonaws/services/s3/model/transform/MultiObjectDeleteXmlFactory;

    invoke-direct {v6}, Lcom/amazonaws/services/s3/model/transform/MultiObjectDeleteXmlFactory;-><init>()V

    .line 2095
    invoke-virtual {v6, p1}, Lcom/amazonaws/services/s3/model/transform/MultiObjectDeleteXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;)[B

    move-result-object v0

    .line 2096
    .local v0, "content":[B
    const-string v6, "Content-Length"

    array-length v7, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    const-string v6, "Content-Type"

    const-string v7, "application/xml"

    invoke-interface {v4, v6, v7}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v4, v6}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2100
    :try_start_0
    invoke-static {v0}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash([B)[B

    move-result-object v2

    .line 2101
    .local v2, "md5":[B
    invoke-static {v2}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v3

    .line 2102
    .local v3, "md5Base64":Ljava/lang/String;
    const-string v6, "Content-MD5"

    invoke-interface {v4, v6, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2107
    new-instance v6, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteObjectsResultUnmarshaller;

    invoke-direct {v6}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$DeleteObjectsResultUnmarshaller;-><init>()V

    .line 2109
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v7

    .line 2107
    invoke-direct {p0, v4, v6, v7, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;

    .line 2114
    .local v5, "response":Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->getErrors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2115
    new-instance v6, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->getErrors()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->getDeletedObjects()Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    throw v6

    .line 2103
    .end local v2    # "md5":[B
    .end local v3    # "md5Base64":Ljava/lang/String;
    .end local v5    # "response":Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;
    :catch_0
    move-exception v1

    .line 2104
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/amazonaws/AmazonClientException;

    const-string v7, "Couldn\'t compute md5 sum"

    invoke-direct {v6, v7, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2118
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "md5":[B
    .restart local v3    # "md5Base64":Ljava/lang/String;
    .restart local v5    # "response":Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;
    :cond_1
    new-instance v6, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->getDeletedObjects()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult;-><init>(Ljava/util/List;)V

    return-object v6
.end method

.method public deleteVersion(Lcom/amazonaws/services/s3/model/DeleteVersionRequest;)V
    .locals 5
    .param p1, "deleteVersionRequest"    # Lcom/amazonaws/services/s3/model/DeleteVersionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 2142
    const-string v4, "The delete version request object must be specified when deleting a version"

    invoke-direct {p0, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2145
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2146
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 2147
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->getVersionId()Ljava/lang/String;

    move-result-object v3

    .line 2149
    .local v3, "versionId":Ljava/lang/String;
    const-string v4, "The bucket name must be specified when deleting a version"

    invoke-direct {p0, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2151
    const-string v4, "The key must be specified when deleting a version"

    invoke-direct {p0, v1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2152
    const-string v4, "The version ID must be specified when deleting a version"

    invoke-direct {p0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2155
    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 2157
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/DeleteVersionRequest;>;"
    if-eqz v3, :cond_0

    .line 2158
    const-string/jumbo v4, "versionId"

    invoke-interface {v2, v4, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2161
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;->getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestWithMfaDetails(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V

    .line 2164
    :cond_1
    iget-object v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v2, v4, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2165
    return-void
.end method

.method public deleteVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 2130
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/DeleteVersionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->deleteVersion(Lcom/amazonaws/services/s3/model/DeleteVersionRequest;)V

    .line 2131
    return-void
.end method

.method public disableRequesterPays(Ljava/lang/String;)V
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 4404
    new-instance v0, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    sget-object v1, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;->BucketOwner:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;-><init>(Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;)V

    .line 4407
    .local v0, "configuration":Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;
    new-instance v1, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;

    invoke-direct {v1, p1, v0}, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;)V

    invoke-direct {p0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketRequestPayment(Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;)V

    .line 4409
    return-void
.end method

.method public doesBucketExist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1205
    :try_start_0
    new-instance v2, Lcom/amazonaws/services/s3/model/HeadBucketRequest;

    invoke-direct {v2, p1}, Lcom/amazonaws/services/s3/model/HeadBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->headBucket(Lcom/amazonaws/services/s3/model/HeadBucketRequest;)Lcom/amazonaws/services/s3/model/HeadBucketResult;
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1215
    :cond_0
    :goto_0
    return v1

    .line 1207
    :catch_0
    move-exception v0

    .line 1210
    .local v0, "ase":Lcom/amazonaws/AmazonServiceException;
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12d

    if-eq v2, v3, :cond_0

    .line 1211
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v2

    const/16 v3, 0x193

    if-eq v2, v3, :cond_0

    .line 1214
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_1

    .line 1215
    const/4 v1, 0x0

    goto :goto_0

    .line 1217
    :cond_1
    throw v0
.end method

.method public doesObjectExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1226
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->getObjectMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    const/4 v1, 0x1

    .line 1230
    :goto_0
    return v1

    .line 1228
    :catch_0
    move-exception v0

    .line 1229
    .local v0, "e":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_0

    .line 1230
    const/4 v1, 0x0

    goto :goto_0

    .line 1232
    :cond_0
    throw v0
.end method

.method public enableRequesterPays(Ljava/lang/String;)V
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 4390
    new-instance v0, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    sget-object v1, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;->Requester:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;-><init>(Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;)V

    .line 4393
    .local v0, "configuration":Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;
    new-instance v1, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;

    invoke-direct {v1, p1, v0}, Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;)V

    invoke-direct {p0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketRequestPayment(Lcom/amazonaws/services/s3/model/SetRequestPaymentConfigurationRequest;)V

    .line 4395
    return-void
.end method

.method public generatePresignedUrl(Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;)Ljava/net/URL;
    .locals 14
    .param p1, "generatePresignedUrlRequest"    # Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3074
    const-string v0, "The request parameter must be specified when generating a pre-signed URL"

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3077
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    .line 3078
    .local v3, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 3080
    .local v4, "key":Ljava/lang/String;
    const-string v0, "The bucket name parameter must be specified when generating a pre-signed URL"

    invoke-direct {p0, v3, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3082
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getMethod()Lcom/amazonaws/HttpMethod;

    move-result-object v0

    const-string v2, "The HTTP method request parameter must be specified when generating a pre-signed URL"

    invoke-direct {p0, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3085
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getExpiration()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3086
    new-instance v0, Ljava/util/Date;

    .line 3087
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0xdbba0

    add-long/2addr v10, v12

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 3086
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setExpiration(Ljava/util/Date;)V

    .line 3090
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getMethod()Lcom/amazonaws/HttpMethod;

    move-result-object v0

    .line 3091
    invoke-virtual {v0}, Lcom/amazonaws/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3090
    invoke-static {v0}, Lcom/amazonaws/http/HttpMethodName;->valueOf(Ljava/lang/String;)Lcom/amazonaws/http/HttpMethodName;

    move-result-object v8

    .line 3098
    .local v8, "httpMethod":Lcom/amazonaws/http/HttpMethodName;
    invoke-virtual {p0, v3, v4, p1, v8}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 3101
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;>;"
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getRequestParameters()Ljava/util/Map;

    move-result-object v0

    .line 3102
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 3101
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 3103
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3106
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3107
    const-string v0, "Content-Type"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3110
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getContentMd5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3111
    const-string v0, "Content-MD5"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getContentMd5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3114
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSseCpkRequestParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 3116
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getResponseHeaders()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->addResponseHeaderParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    .line 3118
    invoke-virtual {p0, v1, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createSigner(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object v9

    .line 3120
    .local v9, "signer":Lcom/amazonaws/auth/Signer;
    instance-of v0, v9, Lcom/amazonaws/auth/Presigner;

    if-eqz v0, :cond_4

    .line 3123
    check-cast v9, Lcom/amazonaws/auth/Presigner;

    .end local v9    # "signer":Lcom/amazonaws/auth/Signer;
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 3125
    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 3126
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getExpiration()Ljava/util/Date;

    move-result-object v2

    .line 3123
    invoke-interface {v9, v1, v0, v2}, Lcom/amazonaws/auth/Presigner;->presignRequest(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;Ljava/util/Date;)V

    .line 3141
    :goto_1
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->convertRequestToUrl(Lcom/amazonaws/Request;Z)Ljava/net/URL;

    move-result-object v0

    return-object v0

    .line 3133
    .restart local v9    # "signer":Lcom/amazonaws/auth/Signer;
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getMethod()Lcom/amazonaws/HttpMethod;

    move-result-object v2

    .line 3136
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->getExpiration()Ljava/util/Date;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    .line 3131
    invoke-virtual/range {v0 .. v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->presignRequest(Lcom/amazonaws/Request;Lcom/amazonaws/HttpMethod;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public generatePresignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/net/URL;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "expiration"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3045
    sget-object v0, Lcom/amazonaws/HttpMethod;->GET:Lcom/amazonaws/HttpMethod;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->generatePresignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/amazonaws/HttpMethod;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public generatePresignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/amazonaws/HttpMethod;)Ljava/net/URL;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "expiration"    # Ljava/util/Date;
    .param p4, "method"    # Lcom/amazonaws/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3058
    new-instance v0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;

    invoke-direct {v0, p1, p2, p4}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/HttpMethod;)V

    .line 3060
    .local v0, "request":Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setExpiration(Ljava/util/Date;)V

    .line 3062
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->generatePresignedUrl(Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;)Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method

.method public getBucketAccelerateConfiguration(Lcom/amazonaws/services/s3/model/GetBucketAccelerateConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;
    .locals 4
    .param p1, "getBucketAccelerateConfigurationRequest"    # Lcom/amazonaws/services/s3/model/GetBucketAccelerateConfigurationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2846
    const-string v2, "getBucketAccelerateConfigurationRequest must be specified."

    invoke-direct {p0, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2848
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketAccelerateConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2849
    .local v0, "bucketName":Ljava/lang/String;
    const-string v2, "The bucket name parameter must be specified when querying accelerate configuration"

    invoke-direct {p0, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2852
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 2854
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GetBucketAccelerateConfigurationRequest;>;"
    const-string v2, "accelerate"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketAccelerateConfigurationUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketAccelerateConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;

    return-object v2
.end method

.method public getBucketAccelerateConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2837
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketAccelerateConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketAccelerateConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketAccelerateConfiguration(Lcom/amazonaws/services/s3/model/GetBucketAccelerateConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getBucketAcl(Lcom/amazonaws/services/s3/model/GetBucketAclRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 3
    .param p1, "getBucketAclRequest"    # Lcom/amazonaws/services/s3/model/GetBucketAclRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1060
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketAclRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 1061
    .local v0, "bucketName":Ljava/lang/String;
    const-string v1, "The bucket name parameter must be specified when requesting a bucket\'s ACL"

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1064
    invoke-direct {p0, v0, v2, v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->getAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v1

    return-object v1
.end method

.method public getBucketAcl(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1045
    const-string v0, "The bucket name parameter must be specified when requesting a bucket\'s ACL"

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1048
    invoke-direct {p0, p1, v1, v1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->getAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v0

    return-object v0
.end method

.method public getBucketCrossOriginConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;
    .locals 5
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2399
    new-instance v2, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v2, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, v3, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 2401
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GenericBucketRequest;>;"
    const-string v2, "cors"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2404
    :try_start_0
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketCrossOriginConfigurationUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketCrossOriginConfigurationUnmarshaller;-><init>()V

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2409
    :goto_0
    return-object v2

    .line 2406
    :catch_0
    move-exception v0

    .line 2407
    .local v0, "ase":Lcom/amazonaws/AmazonServiceException;
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2411
    throw v0

    :pswitch_0
    move-object v2, v3

    .line 2409
    goto :goto_0

    .line 2407
    nop

    :pswitch_data_0
    .packed-switch 0x194
        :pswitch_0
    .end packed-switch
.end method

.method public getBucketLifecycleConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
    .locals 5
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2283
    new-instance v2, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v2, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, v3, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 2285
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GenericBucketRequest;>;"
    const-string v2, "lifecycle"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    :try_start_0
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLifecycleConfigurationUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLifecycleConfigurationUnmarshaller;-><init>()V

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2293
    :goto_0
    return-object v2

    .line 2290
    :catch_0
    move-exception v0

    .line 2291
    .local v0, "ase":Lcom/amazonaws/AmazonServiceException;
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2295
    throw v0

    :pswitch_0
    move-object v2, v3

    .line 2293
    goto :goto_0

    .line 2291
    nop

    :pswitch_data_0
    .packed-switch 0x194
        :pswitch_0
    .end packed-switch
.end method

.method public getBucketLocation(Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;)Ljava/lang/String;
    .locals 4
    .param p1, "getBucketLocationRequest"    # Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 810
    const-string v2, "The request parameter must be specified when requesting a bucket\'s location"

    invoke-direct {p0, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 812
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, "bucketName":Ljava/lang/String;
    const-string v2, "The bucket name parameter must be specified when requesting a bucket\'s location"

    invoke-direct {p0, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 818
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;>;"
    const-string v2, "location"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLocationUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLocationUnmarshaller;-><init>()V

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public getBucketLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 831
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketLocation(Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBucketLoggingConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2788
    const-string v1, "The bucket name parameter must be specified when requesting a bucket\'s logging status"

    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2791
    new-instance v1, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v1, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2793
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GenericBucketRequest;>;"
    const-string v1, "logging"

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLoggingConfigurationnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketLoggingConfigurationnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;

    return-object v1
.end method

.method public getBucketNotificationConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2768
    const-string v1, "The bucket name parameter must be specified when querying notification configuration"

    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2771
    new-instance v1, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v1, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2773
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GenericBucketRequest;>;"
    const-string v1, "notification"

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2775
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketNotificationConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketNotificationConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    return-object v1
.end method

.method public getBucketPolicy(Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;)Lcom/amazonaws/services/s3/model/BucketPolicy;
    .locals 7
    .param p1, "getBucketPolicyRequest"    # Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2953
    const-string v5, "The request object must be specified when getting a bucket policy"

    invoke-direct {p0, p1, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2956
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 2957
    .local v1, "bucketName":Ljava/lang/String;
    const-string v5, "The bucket name must be specified when getting a bucket policy"

    invoke-direct {p0, v1, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2960
    sget-object v5, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v1, v6, p1, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v3

    .line 2962
    .local v3, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;>;"
    const-string v5, "policy"

    invoke-interface {v3, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2964
    new-instance v4, Lcom/amazonaws/services/s3/model/BucketPolicy;

    invoke-direct {v4}, Lcom/amazonaws/services/s3/model/BucketPolicy;-><init>()V

    .line 2966
    .local v4, "result":Lcom/amazonaws/services/s3/model/BucketPolicy;
    :try_start_0
    new-instance v5, Lcom/amazonaws/services/s3/internal/S3StringResponseHandler;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/internal/S3StringResponseHandler;-><init>()V

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v1, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2967
    .local v2, "policyText":Ljava/lang/String;
    invoke-virtual {v4, v2}, Lcom/amazonaws/services/s3/model/BucketPolicy;->setPolicyText(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2977
    .end local v2    # "policyText":Ljava/lang/String;
    :cond_0
    return-object v4

    .line 2969
    :catch_0
    move-exception v0

    .line 2976
    .local v0, "ase":Lcom/amazonaws/AmazonServiceException;
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NoSuchBucketPolicy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2978
    throw v0
.end method

.method public getBucketPolicy(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketPolicy;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 2906
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketPolicy(Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;)Lcom/amazonaws/services/s3/model/BucketPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getBucketReplicationConfiguration(Lcom/amazonaws/services/s3/model/GetBucketReplicationConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
    .locals 4
    .param p1, "getBucketReplicationConfigurationRequest"    # Lcom/amazonaws/services/s3/model/GetBucketReplicationConfigurationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4593
    const-string v2, "The bucket request parameter must be specified when retrieving replication configuration"

    invoke-direct {p0, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4596
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketReplicationConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 4597
    .local v0, "bucketName":Ljava/lang/String;
    const-string v2, "The bucket request must specify a bucket name when retrieving replication configuration"

    invoke-direct {p0, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4601
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 4603
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GetBucketReplicationConfigurationRequest;>;"
    const-string v2, "replication"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4605
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketReplicationConfigurationUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketReplicationConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

    return-object v2
.end method

.method public getBucketReplicationConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 4584
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketReplicationConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketReplicationConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketReplicationConfiguration(Lcom/amazonaws/services/s3/model/GetBucketReplicationConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getBucketTaggingConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;
    .locals 5
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2515
    new-instance v2, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v2, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, v3, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 2517
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GenericBucketRequest;>;"
    const-string/jumbo v2, "tagging"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    :try_start_0
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketTaggingConfigurationUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketTaggingConfigurationUnmarshaller;-><init>()V

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2525
    :goto_0
    return-object v2

    .line 2522
    :catch_0
    move-exception v0

    .line 2523
    .local v0, "ase":Lcom/amazonaws/AmazonServiceException;
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2527
    throw v0

    :pswitch_0
    move-object v2, v3

    .line 2525
    goto :goto_0

    .line 2523
    :pswitch_data_0
    .packed-switch 0x194
        :pswitch_0
    .end packed-switch
.end method

.method public getBucketVersioningConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2222
    const-string v1, "The bucket name parameter must be specified when querying versioning configuration"

    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2225
    new-instance v1, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v1, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2227
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GenericBucketRequest;>;"
    const-string/jumbo v1, "versioning"

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketVersioningConfigurationUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketVersioningConfigurationUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;

    return-object v1
.end method

.method public getBucketWebsiteConfiguration(Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    .locals 6
    .param p1, "getBucketWebsiteConfigurationRequest"    # Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2255
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 2257
    .local v1, "bucketName":Ljava/lang/String;
    const-string v3, "The bucket name parameter must be specified when requesting a bucket\'s website configuration"

    invoke-direct {p0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2260
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v1, v4, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 2262
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;>;"
    const-string/jumbo v3, "website"

    invoke-interface {v2, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2263
    const-string v3, "Content-Type"

    const-string v5, "application/xml"

    invoke-interface {v2, v3, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    :try_start_0
    new-instance v3, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketWebsiteConfigurationUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$BucketWebsiteConfigurationUnmarshaller;-><init>()V

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v1, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2270
    :goto_0
    return-object v3

    .line 2268
    :catch_0
    move-exception v0

    .line 2269
    .local v0, "ase":Lcom/amazonaws/AmazonServiceException;
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v3

    const/16 v5, 0x194

    if-ne v3, v5, :cond_0

    move-object v3, v4

    .line 2270
    goto :goto_0

    .line 2271
    :cond_0
    throw v0
.end method

.method public getBucketWebsiteConfiguration(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 2242
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketWebsiteConfiguration(Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/S3ResponseMetadata;
    .locals 1
    .param p1, "request"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 3512
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/S3ResponseMetadata;

    return-object v0
.end method

.method public getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 6
    .param p1, "getObjectRequest"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .param p2, "destinationFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1453
    const-string v2, "The destination file parameter must be specified when downloading an object directly to a file"

    invoke-direct {p0, p2, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1455
    const/4 v0, 0x0

    .line 1456
    .local v0, "mode":Z
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1457
    const/4 v0, 0x1

    .line 1459
    :cond_0
    new-instance v2, Lcom/amazonaws/services/s3/AmazonS3Client$1;

    invoke-direct {v2, p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client$1;-><init>(Lcom/amazonaws/services/s3/AmazonS3Client;Lcom/amazonaws/services/s3/model/GetObjectRequest;)V

    invoke-static {p2, v2, v0}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->retryableDownloadS3ObjectToFile(Ljava/io/File;Lcom/amazonaws/services/s3/internal/ServiceUtils$RetryableS3DownloadTask;Z)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v1

    .line 1474
    .local v1, "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    if-nez v1, :cond_1

    .line 1475
    const/4 v2, 0x0

    .line 1477
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    goto :goto_0
.end method

.method public getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 24
    .param p1, "getObjectRequest"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1299
    const-string v20, "The GetObjectRequest parameter must be specified when requesting an object"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1301
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "The bucket name parameter must be specified when requesting an object"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1303
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v20

    const-string v21, "The key parameter must be specified when requesting an object"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1306
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v20

    .line 1307
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    .line 1306
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, p1

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v17

    .line 1309
    .local v17, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GetObjectRequest;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 1310
    const-string/jumbo v20, "versionId"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v15

    .line 1315
    .local v15, "range":[J
    if-eqz v15, :cond_2

    .line 1316
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "bytes="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    aget-wide v22, v15, v21

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1317
    .local v16, "rangeHeader":Ljava/lang/String;
    const/16 v20, 0x1

    aget-wide v20, v15, v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-ltz v20, :cond_1

    .line 1323
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    aget-wide v22, v15, v21

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1325
    :cond_1
    const-string v20, "Range"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    .end local v16    # "rangeHeader":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->isRequesterPays()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1329
    const-string/jumbo v20, "x-amz-request-payer"

    const-string v21, "requester"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getResponseHeaders()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addResponseHeaderParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    .line 1335
    const-string v20, "If-Modified-Since"

    .line 1336
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getModifiedSinceConstraint()Ljava/util/Date;

    move-result-object v21

    .line 1335
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->addDateHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    .line 1337
    const-string v20, "If-Unmodified-Since"

    .line 1338
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getUnmodifiedSinceConstraint()Ljava/util/Date;

    move-result-object v21

    .line 1337
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->addDateHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    .line 1339
    const-string v20, "If-Match"

    .line 1340
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getMatchingETagConstraints()Ljava/util/List;

    move-result-object v21

    .line 1339
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->addStringListHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 1341
    const-string v20, "If-None-Match"

    .line 1342
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getNonmatchingETagConstraints()Ljava/util/List;

    move-result-object v21

    .line 1341
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->addStringListHeader(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 1345
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSseCpkRequestParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 1352
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object v12

    .line 1354
    .local v12, "progressListener":Lcom/amazonaws/event/ProgressListener;
    invoke-static {v12}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->wrapListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object v13

    .line 1357
    .local v13, "progressListenerCallbackExecutor":Lcom/amazonaws/event/ProgressListenerCallbackExecutor;
    :try_start_0
    new-instance v20, Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;

    invoke-direct/range {v20 .. v20}, Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;-><init>()V

    .line 1358
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v22

    .line 1357
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/amazonaws/services/s3/model/S3Object;

    .line 1365
    .local v18, "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/S3Object;->setBucketName(Ljava/lang/String;)V

    .line 1366
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/S3Object;->setKey(Ljava/lang/String;)V

    .line 1368
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v10

    .line 1373
    .local v10, "input":Ljava/io/InputStream;
    new-instance v11, Lcom/amazonaws/util/ServiceClientHolderInputStream;

    move-object/from16 v0, p0

    invoke-direct {v11, v10, v0}, Lcom/amazonaws/util/ServiceClientHolderInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/AmazonWebServiceClient;)V

    .line 1377
    .end local v10    # "input":Ljava/io/InputStream;
    .local v11, "input":Ljava/io/InputStream;
    if-eqz v13, :cond_4

    .line 1379
    new-instance v14, Lcom/amazonaws/event/ProgressReportingInputStream;

    invoke-direct {v14, v11, v13}, Lcom/amazonaws/event/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V

    .line 1381
    .local v14, "progressReportingInputStream":Lcom/amazonaws/event/ProgressReportingInputStream;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/amazonaws/event/ProgressReportingInputStream;->setFireCompletedEvent(Z)V

    .line 1382
    move-object v10, v14

    .line 1383
    .end local v11    # "input":Ljava/io/InputStream;
    .restart local v10    # "input":Ljava/io/InputStream;
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    move-object v11, v10

    .line 1391
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v14    # "progressReportingInputStream":Lcom/amazonaws/event/ProgressReportingInputStream;
    .restart local v11    # "input":Ljava/io/InputStream;
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->skipMd5CheckPerRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 1392
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->skipMd5CheckPerResponse(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 1393
    const/16 v19, 0x0

    .line 1394
    .local v19, "serverSideHash":[B
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v9

    .line 1395
    .local v9, "etag":Ljava/lang/String;
    if-eqz v9, :cond_5

    invoke-static {v9}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->isMultipartUploadETag(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 1396
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/amazonaws/util/BinaryUtils;->fromHex(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    .line 1401
    :try_start_1
    const-string v20, "MD5"

    invoke-static/range {v20 .. v20}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 1402
    .local v7, "digest":Ljava/security/MessageDigest;
    new-instance v10, Lcom/amazonaws/services/s3/internal/DigestValidationInputStream;

    move-object/from16 v0, v19

    invoke-direct {v10, v11, v7, v0}, Lcom/amazonaws/services/s3/internal/DigestValidationInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;[B)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1421
    .end local v7    # "digest":Ljava/security/MessageDigest;
    .end local v9    # "etag":Ljava/lang/String;
    .end local v11    # "input":Ljava/io/InputStream;
    .end local v19    # "serverSideHash":[B
    .restart local v10    # "input":Ljava/io/InputStream;
    :goto_0
    :try_start_2
    new-instance v20, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v10}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/S3Object;->setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V

    .line 1435
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v18    # "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    :goto_1
    return-object v18

    .line 1403
    .restart local v9    # "etag":Ljava/lang/String;
    .restart local v11    # "input":Ljava/io/InputStream;
    .restart local v18    # "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    .restart local v19    # "serverSideHash":[B
    :catch_0
    move-exception v8

    .line 1404
    .local v8, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v20, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    const-string v21, "No MD5 digest algorithm available.  Unable to calculate checksum and verify data integrity."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v8}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .end local v8    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_5
    move-object v10, v11

    .end local v11    # "input":Ljava/io/InputStream;
    .restart local v10    # "input":Ljava/io/InputStream;
    goto :goto_0

    .line 1411
    .end local v9    # "etag":Ljava/lang/String;
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v19    # "serverSideHash":[B
    .restart local v11    # "input":Ljava/io/InputStream;
    :cond_6
    new-instance v10, Lcom/amazonaws/util/LengthCheckInputStream;

    .line 1412
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v20

    const/16 v22, 0x1

    move-wide/from16 v0, v20

    move/from16 v2, v22

    invoke-direct {v10, v11, v0, v1, v2}, Lcom/amazonaws/util/LengthCheckInputStream;-><init>(Ljava/io/InputStream;JZ)V
    :try_end_2
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v11    # "input":Ljava/io/InputStream;
    .restart local v10    # "input":Ljava/io/InputStream;
    goto :goto_0

    .line 1424
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v18    # "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    :catch_1
    move-exception v6

    .line 1432
    .local v6, "ase":Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getStatusCode()I

    move-result v20

    const/16 v21, 0x19c

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getStatusCode()I

    move-result v20

    const/16 v21, 0x130

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 1433
    :cond_7
    const/16 v20, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 1435
    const/16 v18, 0x0

    goto :goto_1

    .line 1438
    :cond_8
    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 1440
    throw v6
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1193
    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v0

    return-object v0
.end method

.method public getObjectAcl(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 943
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v0

    return-object v0
.end method

.method public getObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 954
    const-string v0, "The bucket name parameter must be specified when requesting an object\'s ACL"

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 956
    const-string v0, "The key parameter must be specified when requesting an object\'s ACL"

    invoke-direct {p0, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 959
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v0

    return-object v0
.end method

.method public getObjectMetadata(Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 5
    .param p1, "getObjectMetadataRequest"    # Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1163
    const-string v4, "The GetObjectMetadataRequest parameter must be specified when requesting an object\'s metadata"

    invoke-direct {p0, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1166
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 1167
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1168
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->getVersionId()Ljava/lang/String;

    move-result-object v3

    .line 1170
    .local v3, "versionId":Ljava/lang/String;
    const-string v4, "The bucket name parameter must be specified when requesting an object\'s metadata"

    invoke-direct {p0, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1172
    const-string v4, "The key parameter must be specified when requesting an object\'s metadata"

    invoke-direct {p0, v1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1175
    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->HEAD:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 1177
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;>;"
    if-eqz v3, :cond_0

    .line 1178
    const-string/jumbo v4, "versionId"

    invoke-interface {v2, v4, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSseCpkRequestParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 1182
    new-instance v4, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    invoke-direct {v4}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;-><init>()V

    invoke-direct {p0, v2, v4, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-object v4
.end method

.method public getObjectMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1151
    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->getObjectMetadata(Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getRegion()Lcom/amazonaws/services/s3/model/Region;
    .locals 4

    .prologue
    .line 4224
    iget-object v2, p0, Lcom/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 4225
    .local v0, "authority":Ljava/lang/String;
    sget-object v2, Lcom/amazonaws/services/s3/internal/Constants;->S3_HOSTNAME:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4226
    sget-object v2, Lcom/amazonaws/services/s3/model/Region;->US_Standard:Lcom/amazonaws/services/s3/model/Region;

    .line 4230
    :goto_0
    return-object v2

    .line 4228
    :cond_0
    sget-object v2, Lcom/amazonaws/services/s3/model/Region;->S3_REGIONAL_ENDPOINT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 4229
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4230
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/services/s3/model/Region;->fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Region;

    move-result-object v2

    goto :goto_0

    .line 4232
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "S3 client with invalid S3 endpoint configured"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getResourceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 4197
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->getUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4199
    :goto_0
    return-object v1

    .line 4198
    :catch_0
    move-exception v0

    .line 4199
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getS3AccountOwner()Lcom/amazonaws/services/s3/model/Owner;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 774
    new-instance v1, Lcom/amazonaws/services/s3/model/ListBucketsRequest;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/ListBucketsRequest;-><init>()V

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v3, v3, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 776
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/ListBucketsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketsOwnerUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketsOwnerUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1, v3, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/Owner;

    return-object v1
.end method

.method public getUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 4218
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    sget-object v1, Lcom/amazonaws/services/s3/internal/Constants;->S3_SERVICE_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Ljava/lang/String;)V

    .line 4219
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-direct {p0, v0, p1, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->configRequest(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4220
    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->convertRequestToUrl(Lcom/amazonaws/Request;)Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method

.method public headBucket(Lcom/amazonaws/services/s3/model/HeadBucketRequest;)Lcom/amazonaws/services/s3/model/HeadBucketResult;
    .locals 4
    .param p1, "headBucketRequest"    # Lcom/amazonaws/services/s3/model/HeadBucketRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1240
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/HeadBucketRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 1242
    .local v0, "bucketName":Ljava/lang/String;
    const-string v2, "The bucketName parameter must be specified."

    invoke-direct {p0, v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1245
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->HEAD:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 1247
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/HeadBucketRequest;>;"
    new-instance v2, Lcom/amazonaws/services/s3/model/transform/HeadBucketResultHandler;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/HeadBucketResultHandler;-><init>()V

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/HeadBucketResult;

    return-object v2
.end method

.method public initiateMultipartUpload(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .locals 6
    .param p1, "initiateMultipartUploadRequest"    # Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3235
    const-string v2, "The request parameter must be specified when initiating a multipart upload"

    invoke-direct {p0, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3238
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The bucket name parameter must be specified when initiating a multipart upload"

    invoke-direct {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3240
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The key parameter must be specified when initiating a multipart upload"

    invoke-direct {p0, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3244
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 3245
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    .line 3243
    invoke-virtual {p0, v2, v3, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 3247
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;>;"
    const-string/jumbo v2, "uploads"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3249
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getStorageClass()Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3250
    const-string/jumbo v2, "x-amz-storage-class"

    .line 3251
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getStorageClass()Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3250
    invoke-interface {v0, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3253
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3254
    const-string/jumbo v2, "x-amz-website-redirect-location"

    .line 3255
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v3

    .line 3254
    invoke-interface {v0, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3258
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3259
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->addAclHeaders(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 3265
    :cond_2
    :goto_0
    iget-object v2, p1, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->objectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    if-eqz v2, :cond_3

    .line 3266
    iget-object v2, p1, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->objectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-static {v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestMetadata(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 3270
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSseCpkRequestParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 3274
    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setZeroContentLength(Lcom/amazonaws/Request;)V

    .line 3279
    new-instance v2, Ljava/io/ByteArrayInputStream;

    new-array v3, v5, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 3282
    new-instance v1, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v2, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$InitiateMultipartUploadResultUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$InitiateMultipartUploadResultUnmarshaller;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    new-instance v4, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    invoke-direct {v4}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    aput-object v4, v3, v5

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 3288
    .local v1, "responseHandler":Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;, "Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain<Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;>;"
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 3289
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 3287
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    return-object v2

    .line 3260
    .end local v1    # "responseHandler":Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;, "Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain<Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;>;"
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getCannedACL()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3261
    const-string/jumbo v2, "x-amz-acl"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getCannedACL()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v3

    .line 3262
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3261
    invoke-interface {v0, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isRequesterPaysEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 4419
    new-instance v1, Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;

    invoke-direct {v1, p1}, Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->getBucketRequestPayment(Lcom/amazonaws/services/s3/model/GetRequestPaymentConfigurationRequest;)Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    move-result-object v0

    .line 4421
    .local v0, "configuration":Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;->getPayer()Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;->Requester:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public listBuckets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/Bucket;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 798
    new-instance v0, Lcom/amazonaws/services/s3/model/ListBucketsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListBucketsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->listBuckets(Lcom/amazonaws/services/s3/model/ListBucketsRequest;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listBuckets(Lcom/amazonaws/services/s3/model/ListBucketsRequest;)Ljava/util/List;
    .locals 3
    .param p1, "listBucketsRequest"    # Lcom/amazonaws/services/s3/model/ListBucketsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/ListBucketsRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/Bucket;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 786
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v2, v2, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 788
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/ListBucketsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketsUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListBucketsUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public listMultipartUploads(Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;)Lcom/amazonaws/services/s3/model/MultipartUploadListing;
    .locals 4
    .param p1, "listMultipartUploadsRequest"    # Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3302
    const-string v1, "The request parameter must be specified when listing multipart uploads"

    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3305
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when listing multipart uploads"

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3309
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    .line 3308
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 3311
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;>;"
    const-string/jumbo v1, "uploads"

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3313
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getKeyMarker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3314
    const-string v1, "key-marker"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getKeyMarker()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3315
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getMaxUploads()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3316
    const-string v1, "max-uploads"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getMaxUploads()Ljava/lang/Integer;

    move-result-object v2

    .line 3317
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3316
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3318
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getUploadIdMarker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3319
    const-string/jumbo v1, "upload-id-marker"

    .line 3320
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getUploadIdMarker()Ljava/lang/String;

    move-result-object v2

    .line 3319
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3321
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3322
    const-string v1, "delimiter"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3323
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3324
    const-string v1, "prefix"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3325
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3326
    const-string v1, "encoding-type"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3328
    :cond_5
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListMultipartUploadsResultUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListMultipartUploadsResultUnmarshaller;-><init>()V

    .line 3329
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 3328
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    return-object v1
.end method

.method public listNextBatchOfObjects(Lcom/amazonaws/services/s3/model/ObjectListing;)Lcom/amazonaws/services/s3/model/ObjectListing;
    .locals 8
    .param p1, "previousObjectListing"    # Lcom/amazonaws/services/s3/model/ObjectListing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 741
    const-string v0, "The previous object listing parameter must be specified when listing the next batch of objects in a bucket"

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 745
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->isTruncated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    new-instance v6, Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-direct {v6}, Lcom/amazonaws/services/s3/model/ObjectListing;-><init>()V

    .line 747
    .local v6, "emptyListing":Lcom/amazonaws/services/s3/model/ObjectListing;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->setBucketName(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getDelimiter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->setDelimiter(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getNextMarker()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->setMarker(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getMaxKeys()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->setMaxKeys(I)V

    .line 751
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->setPrefix(Ljava/lang/String;)V

    .line 752
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getEncodingType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->setEncodingType(Ljava/lang/String;)V

    .line 753
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->setTruncated(Z)V

    .line 758
    .end local v6    # "emptyListing":Lcom/amazonaws/services/s3/model/ObjectListing;
    :goto_0
    return-object v6

    :cond_0
    new-instance v0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    .line 759
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 760
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 761
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getNextMarker()Ljava/lang/String;

    move-result-object v3

    .line 762
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getDelimiter()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    .line 763
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getMaxKeys()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 764
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getEncodingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->withEncodingType(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    move-result-object v0

    .line 758
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->listObjects(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object v6

    goto :goto_0
.end method

.method public listNextBatchOfVersions(Lcom/amazonaws/services/s3/model/VersionListing;)Lcom/amazonaws/services/s3/model/VersionListing;
    .locals 9
    .param p1, "previousVersionListing"    # Lcom/amazonaws/services/s3/model/VersionListing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 539
    const-string v0, "The previous version listing parameter must be specified when listing the next batch of versions in a bucket"

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->isTruncated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    new-instance v7, Lcom/amazonaws/services/s3/model/VersionListing;

    invoke-direct {v7}, Lcom/amazonaws/services/s3/model/VersionListing;-><init>()V

    .line 545
    .local v7, "emptyListing":Lcom/amazonaws/services/s3/model/VersionListing;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/amazonaws/services/s3/model/VersionListing;->setBucketName(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getDelimiter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/amazonaws/services/s3/model/VersionListing;->setDelimiter(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getNextKeyMarker()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/amazonaws/services/s3/model/VersionListing;->setKeyMarker(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getNextVersionIdMarker()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/amazonaws/services/s3/model/VersionListing;->setVersionIdMarker(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getMaxKeys()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/amazonaws/services/s3/model/VersionListing;->setMaxKeys(I)V

    .line 550
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/amazonaws/services/s3/model/VersionListing;->setPrefix(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getEncodingType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/amazonaws/services/s3/model/VersionListing;->setEncodingType(Ljava/lang/String;)V

    .line 552
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/amazonaws/services/s3/model/VersionListing;->setTruncated(Z)V

    .line 557
    .end local v7    # "emptyListing":Lcom/amazonaws/services/s3/model/VersionListing;
    :goto_0
    return-object v7

    :cond_0
    new-instance v0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    .line 558
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 560
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getNextKeyMarker()Ljava/lang/String;

    move-result-object v3

    .line 561
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getNextVersionIdMarker()Ljava/lang/String;

    move-result-object v4

    .line 562
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getDelimiter()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/Integer;

    .line 563
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getMaxKeys()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/VersionListing;->getEncodingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->withEncodingType(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object v0

    .line 557
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->listVersions(Lcom/amazonaws/services/s3/model/ListVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;

    move-result-object v7

    goto :goto_0
.end method

.method public listObjects(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;
    .locals 4
    .param p1, "listObjectsRequest"    # Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 663
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when listing objects in a bucket"

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 668
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/ListObjectsRequest;>;"
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 669
    const-string v1, "prefix"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getMarker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 671
    const-string v1, "marker"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getMarker()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 673
    const-string v1, "delimiter"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getMaxKeys()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 675
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getMaxKeys()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_3

    .line 676
    const-string v1, "max-keys"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getMaxKeys()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 678
    const-string v1, "encoding-type"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :cond_4
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListObjectsUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListObjectsUnmarshaller;-><init>()V

    .line 681
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 680
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/ObjectListing;

    return-object v1
.end method

.method public listObjects(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ObjectListing;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 640
    new-instance v0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->listObjects(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object v0

    return-object v0
.end method

.method public listObjects(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ObjectListing;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 651
    new-instance v0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->listObjects(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object v0

    return-object v0
.end method

.method public listObjectsV2(Lcom/amazonaws/services/s3/model/ListObjectsV2Request;)Lcom/amazonaws/services/s3/model/ListObjectsV2Result;
    .locals 4
    .param p1, "listObjectsV2Request"    # Lcom/amazonaws/services/s3/model/ListObjectsV2Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 700
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getBucketName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when listing objects in a bucket"

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getBucketName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 708
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/ListObjectsV2Request;>;"
    const-string v1, "list-type"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getStartAfter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 711
    const-string/jumbo v1, "start-after"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getStartAfter()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getContinuationToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 713
    const-string v1, "continuation-token"

    .line 714
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getContinuationToken()Ljava/lang/String;

    move-result-object v2

    .line 713
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getDelimiter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 716
    const-string v1, "delimiter"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getDelimiter()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getMaxKeys()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 718
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getMaxKeys()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_3

    .line 719
    const-string v1, "max-keys"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getMaxKeys()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 721
    const-string v1, "prefix"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getEncodingType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 723
    const-string v1, "encoding-type"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getEncodingType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->isFetchOwner()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 725
    const-string v1, "fetch-owner"

    .line 726
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->isFetchOwner()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 725
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :cond_6
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListObjectsV2Unmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListObjectsV2Unmarshaller;-><init>()V

    .line 729
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 728
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    return-object v1
.end method

.method public listObjectsV2(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Result;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 687
    new-instance v0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->listObjectsV2(Lcom/amazonaws/services/s3/model/ListObjectsV2Request;)Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    move-result-object v0

    return-object v0
.end method

.method public listObjectsV2(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Result;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 693
    new-instance v0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;-><init>()V

    .line 694
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->withPrefix(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;

    move-result-object v0

    .line 693
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->listObjectsV2(Lcom/amazonaws/services/s3/model/ListObjectsV2Request;)Lcom/amazonaws/services/s3/model/ListObjectsV2Result;

    move-result-object v0

    return-object v0
.end method

.method public listParts(Lcom/amazonaws/services/s3/model/ListPartsRequest;)Lcom/amazonaws/services/s3/model/PartListing;
    .locals 4
    .param p1, "listPartsRequest"    # Lcom/amazonaws/services/s3/model/ListPartsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 3341
    const-string v1, "The request parameter must be specified when listing parts"

    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3344
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when listing parts"

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3346
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The key parameter must be specified when listing parts"

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3348
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getUploadId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The upload ID parameter must be specified when listing parts"

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3351
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 3352
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    .line 3351
    invoke-virtual {p0, v1, v2, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 3353
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/ListPartsRequest;>;"
    const-string/jumbo v1, "uploadId"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getUploadId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3355
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getMaxParts()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3356
    const-string v1, "max-parts"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getMaxParts()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3357
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getPartNumberMarker()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3358
    const-string v1, "part-number-marker"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getPartNumberMarker()Ljava/lang/Integer;

    move-result-object v2

    .line 3359
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3358
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3360
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3361
    const-string v1, "encoding-type"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3363
    :cond_2
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListPartsResultUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$ListPartsResultUnmarshaller;-><init>()V

    .line 3364
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 3363
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/PartListing;

    return-object v1
.end method

.method public listVersions(Lcom/amazonaws/services/s3/model/ListVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;
    .locals 4
    .param p1, "listVersionsRequest"    # Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 608
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when listing versions in a bucket"

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 613
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/ListVersionsRequest;>;"
    const-string/jumbo v1, "versions"

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 616
    const-string v1, "prefix"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getKeyMarker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 618
    const-string v1, "key-marker"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getKeyMarker()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getVersionIdMarker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 620
    const-string/jumbo v1, "version-id-marker"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getVersionIdMarker()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 622
    const-string v1, "delimiter"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 624
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_4

    .line 625
    const-string v1, "max-keys"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 627
    const-string v1, "encoding-type"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_5
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$VersionListUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$VersionListUnmarshaller;-><init>()V

    .line 630
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 629
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/VersionListing;

    return-object v1
.end method

.method public listVersions(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/VersionListing;
    .locals 7
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 575
    new-instance v0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->listVersions(Lcom/amazonaws/services/s3/model/ListVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;

    move-result-object v0

    return-object v0
.end method

.method public listVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/VersionListing;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "keyMarker"    # Ljava/lang/String;
    .param p4, "versionIdMarker"    # Ljava/lang/String;
    .param p5, "delimiter"    # Ljava/lang/String;
    .param p6, "maxKeys"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 589
    new-instance v1, Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;-><init>()V

    .line 590
    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object v1

    .line 591
    invoke-virtual {v1, p2}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->withPrefix(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object v1

    .line 592
    invoke-virtual {v1, p5}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->withDelimiter(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object v1

    .line 593
    invoke-virtual {v1, p3}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->withKeyMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object v1

    .line 594
    invoke-virtual {v1, p4}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->withVersionIdMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object v1

    .line 595
    invoke-virtual {v1, p6}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->withMaxResults(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;

    move-result-object v0

    .line 596
    .local v0, "request":Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->listVersions(Lcom/amazonaws/services/s3/model/ListVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;

    move-result-object v1

    return-object v1
.end method

.method protected presignRequest(Lcom/amazonaws/Request;Lcom/amazonaws/HttpMethod;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 7
    .param p2, "methodName"    # Lcom/amazonaws/HttpMethod;
    .param p3, "bucketName"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "expiration"    # Ljava/util/Date;
    .param p6, "subResource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request",
            "<TT;>;",
            "Lcom/amazonaws/HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3811
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<TT;>;"
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->beforeRequest(Lcom/amazonaws/Request;)V

    .line 3813
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p4, :cond_3

    const/4 v4, 0x1

    .line 3815
    invoke-static {p4, v4}, Lcom/amazonaws/util/HttpUtils;->urlEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p6, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3823
    .local v2, "resourcePath":Ljava/lang/String;
    const-string v4, "(?<=/)/"

    const-string v5, "%2F"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3825
    iget-object v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v4}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 3826
    .local v0, "credentials":Lcom/amazonaws/auth/AWSCredentials;
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    .line 3827
    .local v1, "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3828
    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 3831
    :cond_0
    new-instance v4, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;

    invoke-virtual {p2}, Lcom/amazonaws/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2, p5}, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {v4, p1, v0}, Lcom/amazonaws/services/s3/internal/S3QueryStringSigner;->sign(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V

    .line 3839
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "x-amz-security-token"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3840
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "x-amz-security-token"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3841
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "x-amz-security-token"

    invoke-interface {p1, v4, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3842
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "x-amz-security-token"

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3844
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-void

    .line 3813
    .end local v0    # "credentials":Lcom/amazonaws/auth/AWSCredentials;
    .end local v1    # "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    .end local v2    # "resourcePath":Ljava/lang/String;
    :cond_2
    const-string v4, ""

    goto/16 :goto_0

    .line 3815
    :cond_3
    const-string v4, ""

    goto :goto_1

    :cond_4
    const-string v4, ""

    goto :goto_2
.end method

.method public putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 36
    .param p1, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1545
    const-string v32, "The PutObjectRequest parameter must be specified when uploading an object"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1548
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v6

    .line 1549
    .local v6, "bucketName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v19

    .line 1550
    .local v19, "key":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v24

    .line 1551
    .local v24, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    .line 1558
    .local v17, "input":Ljava/io/InputStream;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object v25

    .line 1560
    .local v25, "progressListener":Lcom/amazonaws/event/ProgressListener;
    invoke-static/range {v25 .. v25}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->wrapListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object v26

    .line 1562
    .local v26, "progressListenerCallbackExecutor":Lcom/amazonaws/event/ProgressListenerCallbackExecutor;
    if-nez v24, :cond_0

    .line 1563
    new-instance v24, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .end local v24    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    invoke-direct/range {v24 .. v24}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 1565
    .restart local v24    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :cond_0
    const-string v32, "The bucket name parameter must be specified when uploading an object"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v6, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1567
    const-string v32, "The key parameter must be specified when uploading an object"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1570
    invoke-static/range {p1 .. p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->skipMd5CheckPerRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result v31

    .line 1574
    .local v31, "skipContentMd5Check":Z
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v32

    if-eqz v32, :cond_3

    .line 1575
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v13

    .line 1577
    .local v13, "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v32

    move-object/from16 v0, v24

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 1579
    invoke-virtual/range {v24 .. v24}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v32

    if-nez v32, :cond_a

    const/4 v7, 0x1

    .line 1582
    .local v7, "calculateMD5":Z
    :goto_0
    invoke-virtual/range {v24 .. v24}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v32

    if-nez v32, :cond_1

    .line 1583
    invoke-static {}, Lcom/amazonaws/services/s3/util/Mimetypes;->getInstance()Lcom/amazonaws/services/s3/util/Mimetypes;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Lcom/amazonaws/services/s3/util/Mimetypes;->getMimetype(Ljava/io/File;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 1586
    :cond_1
    if-eqz v7, :cond_2

    if-nez v31, :cond_2

    .line 1588
    :try_start_0
    invoke-static {v13}, Lcom/amazonaws/util/Md5Utils;->md5AsBase64(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    .line 1589
    .local v11, "contentMd5_b64":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentMD5(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1597
    .end local v11    # "contentMd5_b64":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v17, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    .end local v17    # "input":Ljava/io/InputStream;
    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1603
    .end local v7    # "calculateMD5":Z
    .end local v13    # "file":Ljava/io/File;
    .restart local v17    # "input":Ljava/io/InputStream;
    :cond_3
    sget-object v32, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v27

    .line 1606
    .local v27, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/PutObjectRequest;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v32

    if-eqz v32, :cond_b

    .line 1607
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->addAclHeaders(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 1612
    :cond_4
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_5

    .line 1613
    const-string/jumbo v32, "x-amz-storage-class"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_6

    .line 1617
    const-string/jumbo v32, "x-amz-website-redirect-location"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    if-nez v17, :cond_6

    .line 1619
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->setZeroContentLength(Lcom/amazonaws/Request;)V

    .line 1620
    new-instance v17, Ljava/io/ByteArrayInputStream;

    .end local v17    # "input":Ljava/io/InputStream;
    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [B

    move-object/from16 v32, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1625
    .restart local v17    # "input":Ljava/io/InputStream;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSseCpkRequestParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 1628
    const-string v32, "Content-Length"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getRawMetadataValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 1629
    .local v9, "contentLength":Ljava/lang/Long;
    if-nez v9, :cond_d

    .line 1637
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->markSupported()Z

    move-result v32

    if-nez v32, :cond_c

    .line 1638
    sget-object v32, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    const-string v33, "No content length specified for stream data.  Stream contents will be buffered in memory and could result in out of memory errors."

    invoke-interface/range {v32 .. v33}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 1641
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->toByteArray(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;

    move-result-object v5

    .line 1642
    .local v5, "bais":Ljava/io/ByteArrayInputStream;
    const-string v32, "Content-Length"

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    move-object/from16 v17, v5

    move-object/from16 v18, v17

    .line 1666
    .end local v5    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v17    # "input":Ljava/io/InputStream;
    .local v18, "input":Ljava/io/InputStream;
    :goto_2
    if-eqz v26, :cond_10

    .line 1667
    new-instance v17, Lcom/amazonaws/event/ProgressReportingInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/event/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V

    .line 1668
    .end local v18    # "input":Ljava/io/InputStream;
    .restart local v17    # "input":Ljava/io/InputStream;
    const/16 v32, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 1671
    :goto_3
    const/16 v21, 0x0

    .line 1672
    .local v21, "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    invoke-virtual/range {v24 .. v24}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v32

    if-nez v32, :cond_7

    if-nez v31, :cond_7

    .line 1680
    new-instance v21, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;

    .end local v21    # "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;-><init>(Ljava/io/InputStream;)V

    .restart local v21    # "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    move-object/from16 v17, v21

    .line 1683
    :cond_7
    invoke-virtual/range {v24 .. v24}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v32

    if-nez v32, :cond_8

    .line 1688
    const-string v32, "application/octet-stream"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 1691
    :cond_8
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestMetadata(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 1692
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 1700
    const-string v32, "Expect"

    const-string v33, "100-continue"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    const/16 v29, 0x0

    .line 1704
    .local v29, "returnedMetadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :try_start_2
    new-instance v32, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    invoke-direct/range {v32 .. v32}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "returnedMetadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    check-cast v29, Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :try_end_2
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1710
    .restart local v29    # "returnedMetadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Lcom/amazonaws/AbortedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1717
    :goto_4
    invoke-virtual/range {v24 .. v24}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v10

    .line 1718
    .local v10, "contentMd5":Ljava/lang/String;
    if-eqz v21, :cond_9

    .line 1719
    invoke-virtual/range {v21 .. v21}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->getMd5Digest()[B

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v10

    .line 1722
    :cond_9
    if-eqz v29, :cond_f

    if-eqz v10, :cond_f

    if-nez v31, :cond_f

    .line 1723
    invoke-static {v10}, Lcom/amazonaws/util/BinaryUtils;->fromBase64(Ljava/lang/String;)[B

    move-result-object v8

    .line 1724
    .local v8, "clientSideHash":[B
    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/BinaryUtils;->fromHex(Ljava/lang/String;)[B

    move-result-object v30

    .line 1726
    .local v30, "serverSideHash":[B
    move-object/from16 v0, v30

    invoke-static {v8, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v32

    if-nez v32, :cond_f

    .line 1727
    const/16 v32, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 1729
    new-instance v32, Lcom/amazonaws/AmazonClientException;

    const-string v33, "Unable to verify integrity of data upload.  Client calculated content hash didn\'t match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3."

    invoke-direct/range {v32 .. v33}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 1579
    .end local v8    # "clientSideHash":[B
    .end local v9    # "contentLength":Ljava/lang/Long;
    .end local v10    # "contentMd5":Ljava/lang/String;
    .end local v21    # "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    .end local v27    # "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/PutObjectRequest;>;"
    .end local v29    # "returnedMetadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .end local v30    # "serverSideHash":[B
    .restart local v13    # "file":Ljava/io/File;
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1590
    .restart local v7    # "calculateMD5":Z
    :catch_0
    move-exception v12

    .line 1591
    .local v12, "e":Ljava/lang/Exception;
    new-instance v32, Lcom/amazonaws/AmazonClientException;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Unable to calculate MD5 hash: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 1592
    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v12}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v32

    .line 1598
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v17    # "input":Ljava/io/InputStream;
    :catch_1
    move-exception v16

    .line 1599
    .local v16, "fnfe":Ljava/io/FileNotFoundException;
    new-instance v32, Lcom/amazonaws/AmazonClientException;

    const-string v33, "Unable to find file to upload"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v32

    .line 1608
    .end local v7    # "calculateMD5":Z
    .end local v13    # "file":Ljava/io/File;
    .end local v16    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v17    # "input":Ljava/io/InputStream;
    .restart local v27    # "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/PutObjectRequest;>;"
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v32

    if-eqz v32, :cond_4

    .line 1609
    const-string/jumbo v32, "x-amz-acl"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1645
    .restart local v9    # "contentLength":Ljava/lang/Long;
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->calculateContentLength(Ljava/io/InputStream;)J

    move-result-wide v22

    .line 1646
    .local v22, "len":J
    const-string v32, "Content-Length"

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v17

    .line 1647
    .end local v17    # "input":Ljava/io/InputStream;
    .restart local v18    # "input":Ljava/io/InputStream;
    goto/16 :goto_2

    .line 1649
    .end local v18    # "input":Ljava/io/InputStream;
    .end local v22    # "len":J
    .restart local v17    # "input":Ljava/io/InputStream;
    :cond_d
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1650
    .local v14, "expectedLength":J
    const-wide/16 v32, 0x0

    cmp-long v32, v14, v32

    if-ltz v32, :cond_e

    .line 1657
    new-instance v20, Lcom/amazonaws/util/LengthCheckInputStream;

    const/16 v32, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v32

    invoke-direct {v0, v1, v14, v15, v2}, Lcom/amazonaws/util/LengthCheckInputStream;-><init>(Ljava/io/InputStream;JZ)V

    .line 1661
    .local v20, "lcis":Lcom/amazonaws/util/LengthCheckInputStream;
    move-object/from16 v17, v20

    .line 1662
    const-string v32, "Content-Length"

    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .end local v20    # "lcis":Lcom/amazonaws/util/LengthCheckInputStream;
    :cond_e
    move-object/from16 v18, v17

    .end local v17    # "input":Ljava/io/InputStream;
    .restart local v18    # "input":Ljava/io/InputStream;
    goto/16 :goto_2

    .line 1712
    .end local v14    # "expectedLength":J
    .end local v18    # "input":Ljava/io/InputStream;
    .restart local v17    # "input":Ljava/io/InputStream;
    .restart local v21    # "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    .restart local v29    # "returnedMetadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :catch_2
    move-exception v12

    .line 1713
    .restart local v12    # "e":Ljava/lang/Exception;
    sget-object v32, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Unable to cleanly close input stream: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v12}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1705
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v29    # "returnedMetadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :catch_3
    move-exception v4

    .line 1706
    .local v4, "ace":Lcom/amazonaws/AmazonClientException;
    const/16 v32, 0x8

    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 1707
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1709
    .end local v4    # "ace":Lcom/amazonaws/AmazonClientException;
    :catchall_0
    move-exception v32

    .line 1710
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Lcom/amazonaws/AbortedException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1714
    :goto_5
    throw v32

    .line 1712
    :catch_4
    move-exception v12

    .line 1713
    .restart local v12    # "e":Ljava/lang/Exception;
    sget-object v33, Lcom/amazonaws/services/s3/AmazonS3Client;->log:Lorg/apache/commons/logging/Log;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Unable to cleanly close input stream: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v12}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 1738
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v10    # "contentMd5":Ljava/lang/String;
    .restart local v29    # "returnedMetadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :cond_f
    const/16 v32, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 1740
    new-instance v28, Lcom/amazonaws/services/s3/model/PutObjectResult;

    invoke-direct/range {v28 .. v28}, Lcom/amazonaws/services/s3/model/PutObjectResult;-><init>()V

    .line 1741
    .local v28, "result":Lcom/amazonaws/services/s3/model/PutObjectResult;
    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setETag(Ljava/lang/String;)V

    .line 1742
    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getVersionId()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setVersionId(Ljava/lang/String;)V

    .line 1743
    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setSSEAlgorithm(Ljava/lang/String;)V

    .line 1744
    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSEKMSKeyId()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setSSEKMSKeyId(Ljava/lang/String;)V

    .line 1745
    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerAlgorithm()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setSSECustomerAlgorithm(Ljava/lang/String;)V

    .line 1746
    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerKeyMd5()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setSSECustomerKeyMd5(Ljava/lang/String;)V

    .line 1747
    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getExpirationTime()Ljava/util/Date;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setExpirationTime(Ljava/util/Date;)V

    .line 1748
    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getExpirationTimeRuleId()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setExpirationTimeRuleId(Ljava/lang/String;)V

    .line 1749
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setContentMd5(Ljava/lang/String;)V

    .line 1751
    return-object v28

    .line 1711
    .end local v10    # "contentMd5":Ljava/lang/String;
    .end local v28    # "result":Lcom/amazonaws/services/s3/model/PutObjectResult;
    :catch_5
    move-exception v32

    goto/16 :goto_4

    .end local v29    # "returnedMetadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :catch_6
    move-exception v33

    goto/16 :goto_5

    .end local v17    # "input":Ljava/io/InputStream;
    .end local v21    # "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    .restart local v18    # "input":Ljava/io/InputStream;
    :cond_10
    move-object/from16 v17, v18

    .end local v18    # "input":Ljava/io/InputStream;
    .restart local v17    # "input":Ljava/io/InputStream;
    goto/16 :goto_3
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1519
    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    new-instance v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 1520
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    .line 1519
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v0

    return-object v0
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1533
    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v0

    return-object v0
.end method

.method public restoreObject(Lcom/amazonaws/services/s3/model/RestoreObjectRequest;)V
    .locals 11
    .param p1, "restoreObjectRequest"    # Lcom/amazonaws/services/s3/model/RestoreObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 3524
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 3525
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 3526
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v8

    .line 3527
    .local v8, "versionId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;->getExpirationInDays()I

    move-result v3

    .line 3529
    .local v3, "expirationIndays":I
    const-string v9, "The bucket name parameter must be specified when copying a glacier object"

    invoke-direct {p0, v0, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3531
    const-string v9, "The key parameter must be specified when copying a glacier object"

    invoke-direct {p0, v4, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3533
    const/4 v9, -0x1

    if-ne v3, v9, :cond_0

    .line 3534
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "The expiration in days parameter must be specified when copying a glacier object"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 3538
    :cond_0
    sget-object v9, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v4, p1, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v7

    .line 3540
    .local v7, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/RestoreObjectRequest;>;"
    const-string v9, "restore"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3541
    if-eqz v8, :cond_1

    .line 3542
    const-string/jumbo v9, "versionId"

    invoke-interface {v7, v9, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3545
    :cond_1
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/RestoreObjectRequest;)[B

    move-result-object v1

    .line 3546
    .local v1, "content":[B
    const-string v9, "Content-Length"

    array-length v10, v1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3547
    const-string v9, "Content-Type"

    const-string v10, "application/xml"

    invoke-interface {v7, v9, v10}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3548
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v7, v9}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 3550
    :try_start_0
    invoke-static {v1}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash([B)[B

    move-result-object v5

    .line 3551
    .local v5, "md5":[B
    invoke-static {v5}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v6

    .line 3552
    .local v6, "md5Base64":Ljava/lang/String;
    const-string v9, "Content-MD5"

    invoke-interface {v7, v9, v6}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3557
    iget-object v9, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v7, v9, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 3558
    return-void

    .line 3553
    .end local v5    # "md5":[B
    .end local v6    # "md5Base64":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3554
    .local v2, "e":Ljava/lang/Exception;
    new-instance v9, Lcom/amazonaws/AmazonClientException;

    const-string v10, "Couldn\'t compute md5 sum"

    invoke-direct {v9, v10, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method public restoreObject(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "expirationInDays"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 3570
    new-instance v0, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/RestoreObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->restoreObject(Lcom/amazonaws/services/s3/model/RestoreObjectRequest;)V

    .line 3571
    return-void
.end method

.method public setBucketAccelerateConfiguration(Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;)V
    .locals 7
    .param p1, "setBucketAccelerateConfigurationRequest"    # Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2873
    const-string v4, "setBucketAccelerateConfigurationRequest must be specified"

    invoke-direct {p0, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2876
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 2878
    .local v1, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;->getAccelerateConfiguration()Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;

    move-result-object v0

    .line 2880
    .local v0, "accelerateConfiguration":Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;
    const-string v4, "The bucket name parameter must be specified when setting accelerate configuration."

    invoke-direct {p0, v1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2882
    const-string v4, "The bucket accelerate configuration parameter must be specified."

    invoke-direct {p0, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2884
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, "The status parameter must be specified when updating bucket accelerate configuration."

    invoke-direct {p0, v4, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2887
    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v1, v6, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v3

    .line 2890
    .local v3, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;>;"
    const-string v4, "accelerate"

    invoke-interface {v3, v4, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2892
    sget-object v4, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-virtual {v4, v0}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;)[B

    move-result-object v2

    .line 2893
    .local v2, "bytes":[B
    const-string v4, "Content-Length"

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2894
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v3, v4}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2896
    iget-object v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2897
    return-void
.end method

.method public setBucketAccelerateConfiguration(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "accelerateConfiguration"    # Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2864
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketAccelerateConfiguration(Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;)V

    .line 2866
    return-void
.end method

.method public setBucketAcl(Lcom/amazonaws/services/s3/model/SetBucketAclRequest;)V
    .locals 11
    .param p1, "setBucketAclRequest"    # Lcom/amazonaws/services/s3/model/SetBucketAclRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1097
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketAclRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 1098
    .local v1, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketAclRequest;->getAcl()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v4

    .line 1099
    .local v4, "acl":Lcom/amazonaws/services/s3/model/AccessControlList;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketAclRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v9

    .line 1100
    .local v9, "cannedAcl":Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    const-string v0, "The bucket name parameter must be specified when setting a bucket\'s ACL"

    invoke-direct {p0, v1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1103
    if-eqz v4, :cond_0

    move-object v0, p0

    move-object v3, v2

    move-object v5, p1

    .line 1104
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/AmazonWebServiceRequest;)V

    .line 1111
    :goto_0
    return-void

    .line 1105
    :cond_0
    if-eqz v9, :cond_1

    move-object v5, p0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v2

    move-object v10, p1

    .line 1106
    invoke-direct/range {v5 .. v10}, Lcom/amazonaws/services/s3/AmazonS3Client;->setAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/AmazonWebServiceRequest;)V

    goto :goto_0

    .line 1108
    :cond_1
    const-string v0, "The ACL parameter must be specified when setting a bucket\'s ACL"

    invoke-direct {p0, v2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBucketAcl(Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "acl"    # Lcom/amazonaws/services/s3/model/AccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1070
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketAcl0(Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 1071
    return-void
.end method

.method public setBucketAcl(Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "acl"    # Lcom/amazonaws/services/s3/model/AccessControlList;
    .param p3, "requestMetricCollector"    # Lcom/amazonaws/metrics/RequestMetricCollector;

    .prologue
    .line 1079
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketAcl0(Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 1080
    return-void
.end method

.method public setBucketAcl(Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "acl"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketAcl0(Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 1117
    return-void
.end method

.method public setBucketAcl(Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "acl"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .param p3, "requestMetricCollector"    # Lcom/amazonaws/metrics/RequestMetricCollector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1126
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketAcl0(Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 1127
    return-void
.end method

.method public setBucketCrossOriginConfiguration(Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;)V
    .locals 10
    .param p1, "setBucketCrossOriginConfigurationRequest"    # Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;

    .prologue
    const/4 v9, 0x0

    .line 2439
    const-string v7, "The set bucket cross origin configuration request object must be specified."

    invoke-direct {p0, p1, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2442
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 2444
    .local v1, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;->getCrossOriginConfiguration()Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;

    move-result-object v0

    .line 2446
    .local v0, "bucketCrossOriginConfiguration":Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;
    const-string v7, "The bucket name parameter must be specified when setting bucket cross origin configuration."

    invoke-direct {p0, v1, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2448
    const-string v7, "The cross origin configuration parameter must be specified when setting bucket cross origin configuration."

    invoke-direct {p0, v0, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2452
    sget-object v7, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v1, v9, p1, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v6

    .line 2454
    .local v6, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;>;"
    const-string v7, "cors"

    invoke-interface {v6, v7, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    new-instance v7, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {v7}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;-><init>()V

    .line 2457
    invoke-virtual {v7, v0}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)[B

    move-result-object v2

    .line 2458
    .local v2, "content":[B
    const-string v7, "Content-Length"

    array-length v8, v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    const-string v7, "Content-Type"

    const-string v8, "application/xml"

    invoke-interface {v6, v7, v8}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v6, v7}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2462
    :try_start_0
    invoke-static {v2}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash([B)[B

    move-result-object v4

    .line 2463
    .local v4, "md5":[B
    invoke-static {v4}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v5

    .line 2464
    .local v5, "md5Base64":Ljava/lang/String;
    const-string v7, "Content-MD5"

    invoke-interface {v6, v7, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2469
    iget-object v7, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v6, v7, v1, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2470
    return-void

    .line 2465
    .end local v4    # "md5":[B
    .end local v5    # "md5Base64":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2466
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/amazonaws/AmazonClientException;

    const-string v8, "Couldn\'t compute md5 sum"

    invoke-direct {v7, v8, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public setBucketCrossOriginConfiguration(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "bucketCrossOriginConfiguration"    # Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;

    .prologue
    .line 2426
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketCrossOriginConfiguration(Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;)V

    .line 2428
    return-void
.end method

.method public setBucketLifecycleConfiguration(Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;)V
    .locals 10
    .param p1, "setBucketLifecycleConfigurationRequest"    # Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;

    .prologue
    const/4 v9, 0x0

    .line 2323
    const-string v7, "The set bucket lifecycle configuration request object must be specified."

    invoke-direct {p0, p1, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2326
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 2328
    .local v1, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;->getLifecycleConfiguration()Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    move-result-object v0

    .line 2330
    .local v0, "bucketLifecycleConfiguration":Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
    const-string v7, "The bucket name parameter must be specified when setting bucket lifecycle configuration."

    invoke-direct {p0, v1, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2332
    const-string v7, "The lifecycle configuration parameter must be specified when setting bucket lifecycle configuration."

    invoke-direct {p0, v0, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2336
    sget-object v7, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v1, v9, p1, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v6

    .line 2338
    .local v6, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;>;"
    const-string v7, "lifecycle"

    invoke-interface {v6, v7, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    new-instance v7, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {v7}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;-><init>()V

    .line 2341
    invoke-virtual {v7, v0}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;)[B

    move-result-object v2

    .line 2342
    .local v2, "content":[B
    const-string v7, "Content-Length"

    array-length v8, v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2343
    const-string v7, "Content-Type"

    const-string v8, "application/xml"

    invoke-interface {v6, v7, v8}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v6, v7}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2346
    :try_start_0
    invoke-static {v2}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash([B)[B

    move-result-object v4

    .line 2347
    .local v4, "md5":[B
    invoke-static {v4}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v5

    .line 2348
    .local v5, "md5Base64":Ljava/lang/String;
    const-string v7, "Content-MD5"

    invoke-interface {v6, v7, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2353
    iget-object v7, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v6, v7, v1, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2354
    return-void

    .line 2349
    .end local v4    # "md5":[B
    .end local v5    # "md5Base64":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2350
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/amazonaws/AmazonClientException;

    const-string v8, "Couldn\'t compute md5 sum"

    invoke-direct {v7, v8, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public setBucketLifecycleConfiguration(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "bucketLifecycleConfiguration"    # Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    .prologue
    .line 2310
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketLifecycleConfiguration(Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;)V

    .line 2312
    return-void
.end method

.method public setBucketLoggingConfiguration(Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;)V
    .locals 7
    .param p1, "setBucketLoggingConfigurationRequest"    # Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2809
    const-string v4, "The set bucket logging configuration request object must be specified when enabling server access logging"

    invoke-direct {p0, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2813
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2815
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;->getLoggingConfiguration()Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;

    move-result-object v2

    .line 2817
    .local v2, "loggingConfiguration":Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;
    const-string v4, "The bucket name parameter must be specified when enabling server access logging"

    invoke-direct {p0, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2819
    const-string v4, "The logging configuration parameter must be specified when enabling server access logging"

    invoke-direct {p0, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2822
    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v6, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v3

    .line 2824
    .local v3, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;>;"
    const-string v4, "logging"

    invoke-interface {v3, v4, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2826
    sget-object v4, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-virtual {v4, v2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;)[B

    move-result-object v1

    .line 2827
    .local v1, "bytes":[B
    const-string v4, "Content-Length"

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2828
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v3, v4}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2830
    iget-object v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v3, v4, v0, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2831
    return-void
.end method

.method public setBucketNotificationConfiguration(Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;)V
    .locals 7
    .param p1, "setBucketNotificationConfigurationRequest"    # Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2734
    const-string v4, "The set bucket notification configuration request object must be specified."

    invoke-direct {p0, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2737
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2739
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->getNotificationConfiguration()Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    move-result-object v1

    .line 2741
    .local v1, "bucketNotificationConfiguration":Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
    const-string v4, "The bucket name parameter must be specified when setting bucket notification configuration."

    invoke-direct {p0, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2743
    const-string v4, "The notification configuration parameter must be specified when setting bucket notification configuration."

    invoke-direct {p0, v1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2747
    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v6, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v3

    .line 2749
    .local v3, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;>;"
    const-string v4, "notification"

    invoke-interface {v3, v4, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2751
    sget-object v4, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    .line 2752
    invoke-virtual {v4, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;)[B

    move-result-object v2

    .line 2753
    .local v2, "bytes":[B
    const-string v4, "Content-Length"

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2754
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v3, v4}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2756
    iget-object v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v3, v4, v0, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2757
    return-void
.end method

.method public setBucketNotificationConfiguration(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "bucketNotificationConfiguration"    # Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 2719
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketNotificationConfiguration(Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;)V

    .line 2721
    return-void
.end method

.method public setBucketPolicy(Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;)V
    .locals 7
    .param p1, "setBucketPolicyRequest"    # Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2991
    const-string v4, "The request object must be specified when setting a bucket policy"

    invoke-direct {p0, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2994
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2995
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->getPolicyText()Ljava/lang/String;

    move-result-object v2

    .line 2997
    .local v2, "policyText":Ljava/lang/String;
    const-string v4, "The bucket name must be specified when setting a bucket policy"

    invoke-direct {p0, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2999
    const-string v4, "The policy text must be specified when setting a bucket policy"

    invoke-direct {p0, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3002
    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v6, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v3

    .line 3004
    .local v3, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;>;"
    const-string v4, "policy"

    invoke-interface {v3, v4, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3005
    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 3006
    .local v1, "bytes":[B
    const-string v4, "Content-Length"

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3007
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v3, v4}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 3009
    iget-object v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v3, v4, v0, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 3010
    return-void
.end method

.method public setBucketPolicy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "policyText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2917
    const-string v2, "The bucket name must be specified when setting a bucket policy"

    invoke-direct {p0, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2919
    const-string v2, "The policy text must be specified when setting a bucket policy"

    invoke-direct {p0, p2, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2922
    new-instance v2, Lcom/amazonaws/services/s3/model/GenericBucketRequest;

    invoke-direct {v2, p1}, Lcom/amazonaws/services/s3/model/GenericBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, p1, v4, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    .line 2924
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/GenericBucketRequest;>;"
    const-string v2, "policy"

    invoke-interface {v1, v2, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2925
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 2926
    .local v0, "bytes":[B
    const-string v2, "Content-Length"

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2927
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v1, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2929
    iget-object v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v1, v2, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2930
    return-void
.end method

.method public setBucketReplicationConfiguration(Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;)V
    .locals 8
    .param p1, "setBucketReplicationConfigurationRequest"    # Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 4540
    const-string v5, "The set bucket replication configuration request object must be specified."

    invoke-direct {p0, p1, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4544
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 4547
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;->getReplicationConfiguration()Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

    move-result-object v1

    .line 4549
    .local v1, "bucketReplicationConfiguration":Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
    const-string v5, "The bucket name parameter must be specified when setting replication configuration."

    invoke-direct {p0, v0, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4552
    const-string v5, "The replication configuration parameter must be specified when setting replication configuration."

    invoke-direct {p0, v1, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4556
    sget-object v5, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v7, p1, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v4

    .line 4559
    .local v4, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;>;"
    const-string v5, "replication"

    invoke-interface {v4, v5, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4561
    sget-object v5, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    .line 4562
    invoke-virtual {v5, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;)[B

    move-result-object v2

    .line 4564
    .local v2, "bytes":[B
    const-string v5, "Content-Length"

    array-length v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4565
    const-string v5, "Content-Type"

    const-string v6, "application/xml"

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4566
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v4, v5}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 4569
    :try_start_0
    const-string v5, "Content-MD5"

    .line 4570
    invoke-static {v2}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash([B)[B

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v6

    .line 4569
    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4577
    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v4, v5, v0, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 4578
    return-void

    .line 4571
    :catch_0
    move-exception v3

    .line 4572
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/amazonaws/AmazonClientException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not able to compute MD5 of the replication rule configuration. Exception Message : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4574
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public setBucketReplicationConfiguration(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "configuration"    # Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 4532
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketReplicationConfiguration(Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;)V

    .line 4534
    return-void
.end method

.method public setBucketTaggingConfiguration(Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;)V
    .locals 10
    .param p1, "setBucketTaggingConfigurationRequest"    # Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;

    .prologue
    const/4 v9, 0x0

    .line 2555
    const-string v7, "The set bucket tagging configuration request object must be specified."

    invoke-direct {p0, p1, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2558
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2560
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;->getTaggingConfiguration()Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;

    move-result-object v1

    .line 2562
    .local v1, "bucketTaggingConfiguration":Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;
    const-string v7, "The bucket name parameter must be specified when setting bucket tagging configuration."

    invoke-direct {p0, v0, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2564
    const-string v7, "The tagging configuration parameter must be specified when setting bucket tagging configuration."

    invoke-direct {p0, v1, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2567
    sget-object v7, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v9, p1, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v6

    .line 2569
    .local v6, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;>;"
    const-string/jumbo v7, "tagging"

    invoke-interface {v6, v7, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    new-instance v7, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {v7}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;-><init>()V

    .line 2572
    invoke-virtual {v7, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)[B

    move-result-object v2

    .line 2573
    .local v2, "content":[B
    const-string v7, "Content-Length"

    array-length v8, v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    const-string v7, "Content-Type"

    const-string v8, "application/xml"

    invoke-interface {v6, v7, v8}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2575
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v6, v7}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2577
    :try_start_0
    invoke-static {v2}, Lcom/amazonaws/util/Md5Utils;->computeMD5Hash([B)[B

    move-result-object v4

    .line 2578
    .local v4, "md5":[B
    invoke-static {v4}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v5

    .line 2579
    .local v5, "md5Base64":Ljava/lang/String;
    const-string v7, "Content-MD5"

    invoke-interface {v6, v7, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2584
    iget-object v7, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v6, v7, v0, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2585
    return-void

    .line 2580
    .end local v4    # "md5":[B
    .end local v5    # "md5Base64":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2581
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/amazonaws/AmazonClientException;

    const-string v8, "Couldn\'t compute md5 sum"

    invoke-direct {v7, v8, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public setBucketTaggingConfiguration(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "bucketTaggingConfiguration"    # Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;

    .prologue
    .line 2542
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketTaggingConfiguration(Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;)V

    .line 2544
    return-void
.end method

.method public setBucketVersioningConfiguration(Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;)V
    .locals 7
    .param p1, "setBucketVersioningConfigurationRequest"    # Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2177
    const-string v4, "The SetBucketVersioningConfigurationRequest object must be specified when setting versioning configuration"

    invoke-direct {p0, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2181
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2183
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->getVersioningConfiguration()Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;

    move-result-object v3

    .line 2185
    .local v3, "versioningConfiguration":Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
    const-string v4, "The bucket name parameter must be specified when setting versioning configuration"

    invoke-direct {p0, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2187
    const-string v4, "The bucket versioning parameter must be specified when setting versioning configuration"

    invoke-direct {p0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2189
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->isMfaDeleteEnabled()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2191
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v4

    const-string v5, "The MFA parameter must be specified when changing MFA Delete status in the versioning configuration"

    .line 2190
    invoke-direct {p0, v4, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2195
    :cond_0
    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v6, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 2197
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;>;"
    const-string/jumbo v4, "versioning"

    invoke-interface {v2, v4, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->isMfaDeleteEnabled()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2200
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2202
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    move-result-object v4

    .line 2201
    invoke-direct {p0, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateRequestWithMfaDetails(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V

    .line 2206
    :cond_1
    sget-object v4, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-virtual {v4, v3}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;)[B

    move-result-object v1

    .line 2207
    .local v1, "bytes":[B
    const-string v4, "Content-Length"

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v2, v4}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2210
    iget-object v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v2, v4, v0, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2211
    return-void
.end method

.method public setBucketWebsiteConfiguration(Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;)V
    .locals 7
    .param p1, "setBucketWebsiteConfigurationRequest"    # Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2645
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 2647
    .local v0, "bucketName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;->getConfiguration()Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    move-result-object v2

    .line 2649
    .local v2, "configuration":Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    const-string v4, "The bucket name parameter must be specified when setting a bucket\'s website configuration"

    invoke-direct {p0, v0, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2651
    const-string v4, "The bucket website configuration parameter must be specified when setting a bucket\'s website configuration"

    invoke-direct {p0, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2654
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getRedirectAllRequestsTo()Lcom/amazonaws/services/s3/model/RedirectRule;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2656
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getIndexDocumentSuffix()Ljava/lang/String;

    move-result-object v4

    const-string v5, "The bucket website configuration parameter must specify the index document suffix when setting a bucket\'s website configuration"

    .line 2655
    invoke-direct {p0, v4, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2660
    :cond_0
    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v6, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v3

    .line 2662
    .local v3, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;>;"
    const-string/jumbo v4, "website"

    invoke-interface {v3, v4, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2663
    const-string v4, "Content-Type"

    const-string v5, "application/xml"

    invoke-interface {v3, v4, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2665
    sget-object v4, Lcom/amazonaws/services/s3/AmazonS3Client;->bucketConfigurationXmlFactory:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-virtual {v4, v2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)[B

    move-result-object v1

    .line 2666
    .local v1, "bytes":[B
    const-string v4, "Content-Length"

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v3, v4}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 2669
    iget-object v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->voidResponseHandler:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v3, v4, v0, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2670
    return-void
.end method

.method public setBucketWebsiteConfiguration(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "configuration"    # Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 2631
    new-instance v0, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->setBucketWebsiteConfiguration(Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;)V

    .line 2633
    return-void
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 2
    .param p1, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 490
    const-string v0, "s3-accelerate.amazonaws.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "To enable accelerate mode, please use AmazonS3Client.setS3ClientOptions(S3ClientOptions.builder().setAccelerateModeEnabled(true).build());"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_0
    invoke-super {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->setEndpoint(Ljava/lang/String;)V

    .line 499
    sget-object v0, Lcom/amazonaws/services/s3/internal/Constants;->S3_HOSTNAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->endpoint:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "s3"

    invoke-static {v0, v1}, Lcom/amazonaws/util/AwsHostNameUtils;->parseRegionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientRegion:Ljava/lang/String;

    .line 503
    :cond_1
    return-void
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "acl"    # Lcom/amazonaws/services/s3/model/AccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 965
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->setObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 966
    return-void
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "acl"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 971
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->setObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    .line 972
    return-void
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;
    .param p4, "acl"    # Lcom/amazonaws/services/s3/model/AccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 977
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->setObjectAcl0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 978
    return-void
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;
    .param p4, "acl"    # Lcom/amazonaws/services/s3/model/AccessControlList;
    .param p5, "requestMetricCollector"    # Lcom/amazonaws/metrics/RequestMetricCollector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 987
    invoke-direct/range {p0 .. p5}, Lcom/amazonaws/services/s3/AmazonS3Client;->setObjectAcl0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 988
    return-void
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;
    .param p4, "acl"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1009
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->setObjectAcl0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 1010
    return-void
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;
    .param p4, "acl"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .param p5, "requestMetricCollector"    # Lcom/amazonaws/metrics/RequestMetricCollector;

    .prologue
    .line 1020
    invoke-direct/range {p0 .. p5}, Lcom/amazonaws/services/s3/AmazonS3Client;->setObjectAcl0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 1021
    return-void
.end method

.method public setObjectRedirectLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newRedirectLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 1279
    const-string v0, "The bucketName parameter must be specified when changing an object\'s storage class"

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1281
    const-string v0, "The key parameter must be specified when changing an object\'s storage class"

    invoke-direct {p0, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1283
    const-string v0, "The newStorageClass parameter must be specified when changing an object\'s storage class"

    invoke-direct {p0, p3, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1286
    new-instance v0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-direct {v0, p1, p2, p1, p2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v0, p3}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->withRedirectLocation(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    move-result-object v0

    .line 1286
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->copyObject(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/services/s3/model/CopyObjectResult;

    .line 1288
    return-void
.end method

.method public setRegion(Lcom/amazonaws/regions/Region;)V
    .locals 1
    .param p1, "region"    # Lcom/amazonaws/regions/Region;

    .prologue
    .line 507
    invoke-super {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->setRegion(Lcom/amazonaws/regions/Region;)V

    .line 514
    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientRegion:Ljava/lang/String;

    .line 515
    return-void
.end method

.method public setS3ClientOptions(Lcom/amazonaws/services/s3/S3ClientOptions;)V
    .locals 1
    .param p1, "clientOptions"    # Lcom/amazonaws/services/s3/S3ClientOptions;

    .prologue
    .line 527
    new-instance v0, Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>(Lcom/amazonaws/services/s3/S3ClientOptions;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->clientOptions:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 528
    return-void
.end method

.method public uploadPart(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .locals 24
    .param p1, "uploadPartRequest"    # Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 3376
    const-string v3, "The request parameter must be specified when uploading a part"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3379
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getBucketName()Ljava/lang/String;

    move-result-object v10

    .line 3380
    .local v10, "bucketName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getKey()Ljava/lang/String;

    move-result-object v14

    .line 3381
    .local v14, "key":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v23

    .line 3382
    .local v23, "uploadId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartNumber()I

    move-result v17

    .line 3383
    .local v17, "partNumber":I
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v6

    .line 3385
    .local v6, "partSize":J
    const-string v3, "The bucket name parameter must be specified when uploading a part"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3387
    const-string v3, "The key parameter must be specified when uploading a part"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3389
    const-string v3, "The upload ID parameter must be specified when uploading a part"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3391
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "The part number parameter must be specified when uploading a part"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3393
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "The part size parameter must be specified when uploading a part"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3396
    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v14, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->createRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v20

    .line 3398
    .local v20, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/s3/model/UploadPartRequest;>;"
    const-string/jumbo v3, "uploadId"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v3, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3399
    const-string v3, "partNumber"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3401
    const-string v3, "Content-MD5"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-static {v0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->addHeaderIfNotNull(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 3402
    const-string v3, "Content-Length"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3403
    const-string v3, "Expect"

    const-string v4, "100-continue"

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3406
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->populateSseCpkRequestParameters(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 3408
    const/4 v2, 0x0

    .line 3409
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3410
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 3424
    :goto_0
    const/4 v15, 0x0

    .line 3425
    .local v15, "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3426
    invoke-static/range {p1 .. p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->skipMd5CheckPerRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3433
    new-instance v15, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;

    .end local v15    # "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    invoke-direct {v15, v2}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;-><init>(Ljava/io/InputStream;)V

    .restart local v15    # "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    move-object v2, v15

    .line 3441
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object v18

    .line 3443
    .local v18, "progressListener":Lcom/amazonaws/event/ProgressListener;
    invoke-static/range {v18 .. v18}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->wrapListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object v19

    .line 3445
    .local v19, "progressListenerCallbackExecutor":Lcom/amazonaws/event/ProgressListenerCallbackExecutor;
    if-eqz v19, :cond_1

    .line 3446
    new-instance v13, Lcom/amazonaws/event/ProgressReportingInputStream;

    move-object/from16 v0, v19

    invoke-direct {v13, v2, v0}, Lcom/amazonaws/event/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V

    .line 3448
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .local v13, "inputStream":Ljava/io/InputStream;
    const/16 v3, 0x400

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    move-object v2, v13

    .line 3453
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :cond_1
    :try_start_0
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 3454
    new-instance v3, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3, v10, v14}, Lcom/amazonaws/services/s3/AmazonS3Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 3457
    .local v16, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    if-eqz v16, :cond_5

    if-eqz v15, :cond_5

    .line 3458
    invoke-static/range {v16 .. v16}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->skipMd5CheckPerResponse(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3459
    invoke-virtual {v15}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->getMd5Digest()[B

    move-result-object v11

    .line 3460
    .local v11, "clientSideHash":[B
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/BinaryUtils;->fromHex(Ljava/lang/String;)[B

    move-result-object v22

    .line 3462
    .local v22, "serverSideHash":[B
    move-object/from16 v0, v22

    invoke-static {v11, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3463
    new-instance v3, Lcom/amazonaws/AmazonClientException;

    const-string v4, "Unable to verify integrity of data upload.  Client calculated content hash didn\'t match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3."

    invoke-direct {v3, v4}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3483
    .end local v11    # "clientSideHash":[B
    .end local v16    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .end local v22    # "serverSideHash":[B
    :catch_0
    move-exception v9

    .line 3484
    .local v9, "ace":Lcom/amazonaws/AmazonClientException;
    const/16 v3, 0x1000

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 3493
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3495
    .end local v9    # "ace":Lcom/amazonaws/AmazonClientException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 3497
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 3499
    :cond_2
    :goto_1
    throw v3

    .line 3411
    .end local v15    # "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    .end local v18    # "progressListener":Lcom/amazonaws/event/ProgressListener;
    .end local v19    # "progressListenerCallbackExecutor":Lcom/amazonaws/event/ProgressListenerCallbackExecutor;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3413
    :try_start_3
    new-instance v2, Lcom/amazonaws/services/s3/internal/InputSubstream;

    .end local v2    # "inputStream":Ljava/io/InputStream;
    new-instance v3, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    .line 3414
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V

    .line 3415
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFileOffset()J

    move-result-wide v4

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 3416
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v12

    .line 3417
    .local v12, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The specified file doesn\'t exist"

    invoke-direct {v3, v4, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3420
    .end local v12    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A File or InputStream must be specified when uploading part"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3472
    .restart local v15    # "md5DigestStream":Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
    .restart local v16    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .restart local v18    # "progressListener":Lcom/amazonaws/event/ProgressListener;
    .restart local v19    # "progressListenerCallbackExecutor":Lcom/amazonaws/event/ProgressListenerCallbackExecutor;
    :cond_5
    const/16 v3, 0x800

    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->fireProgressEvent(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 3475
    new-instance v21, Lcom/amazonaws/services/s3/model/UploadPartResult;

    invoke-direct/range {v21 .. v21}, Lcom/amazonaws/services/s3/model/UploadPartResult;-><init>()V

    .line 3476
    .local v21, "result":Lcom/amazonaws/services/s3/model/UploadPartResult;
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setETag(Ljava/lang/String;)V

    .line 3477
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setPartNumber(I)V

    .line 3478
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setSSEAlgorithm(Ljava/lang/String;)V

    .line 3479
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSEKMSKeyId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setSSEKMSKeyId(Ljava/lang/String;)V

    .line 3480
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerAlgorithm()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setSSECustomerAlgorithm(Ljava/lang/String;)V

    .line 3481
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerKeyMd5()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setSSECustomerKeyMd5(Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3495
    if-eqz v2, :cond_6

    .line 3497
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 3482
    :cond_6
    :goto_2
    return-object v21

    .line 3498
    :catch_2
    move-exception v3

    goto :goto_2

    .end local v16    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .end local v21    # "result":Lcom/amazonaws/services/s3/model/UploadPartResult;
    :catch_3
    move-exception v4

    goto :goto_1
.end method
