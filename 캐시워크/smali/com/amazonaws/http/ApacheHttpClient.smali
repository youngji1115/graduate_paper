.class public Lcom/amazonaws/http/ApacheHttpClient;
.super Ljava/lang/Object;
.source "ApacheHttpClient.java"

# interfaces
.implements Lcom/amazonaws/http/HttpClient;


# instance fields
.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private params:Lorg/apache/http/params/HttpParams;


# direct methods
.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 6
    .param p1, "config"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    const/4 v5, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/amazonaws/http/ApacheHttpClient;->params:Lorg/apache/http/params/HttpParams;

    .line 49
    new-instance v0, Lcom/amazonaws/http/HttpClientFactory;

    invoke-direct {v0}, Lcom/amazonaws/http/HttpClientFactory;-><init>()V

    .line 50
    .local v0, "httpClientFactory":Lcom/amazonaws/http/HttpClientFactory;
    invoke-virtual {v0, p1}, Lcom/amazonaws/http/HttpClientFactory;->createHttpClient(Lcom/amazonaws/ClientConfiguration;)Lorg/apache/http/client/HttpClient;

    move-result-object v3

    iput-object v3, p0, Lcom/amazonaws/http/ApacheHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 52
    iget-object v3, p0, Lcom/amazonaws/http/ApacheHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    check-cast v3, Lorg/apache/http/impl/client/AbstractHttpClient;

    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v4, v5, v5}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    .line 53
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 55
    iget-object v3, p0, Lcom/amazonaws/http/ApacheHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    .line 56
    .local v2, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    const-string v3, "https"

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v1

    .line 57
    .local v1, "https":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v1}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v3

    check-cast v3, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    sget-object v4, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 58
    invoke-virtual {v3, v4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 59
    return-void
.end method

.method private createHttpRequest(Lcom/amazonaws/http/HttpRequest;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 10
    .param p1, "request"    # Lcom/amazonaws/http/HttpRequest;

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "method":Ljava/lang/String;
    const-string v6, "POST"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 95
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getUri()Ljava/net/URI;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 96
    .local v4, "postRequest":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getContent()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 97
    new-instance v6, Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 98
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getContentLength()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 97
    invoke-virtual {v4, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 100
    :cond_0
    move-object v1, v4

    .line 118
    .end local v4    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    .local v1, "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 119
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 120
    .local v0, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 127
    .local v2, "key":Ljava/lang/String;
    const-string v6, "Content-Length"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "Host"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 130
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 101
    .end local v0    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    const-string v6, "GET"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 102
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getUri()Ljava/net/URI;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .restart local v1    # "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_0

    .line 103
    .end local v1    # "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_3
    const-string v6, "PUT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 104
    new-instance v5, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getUri()Ljava/net/URI;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    .line 105
    .local v5, "putRequest":Lorg/apache/http/client/methods/HttpPut;
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getContent()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 106
    new-instance v6, Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 107
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getContentLength()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 106
    invoke-virtual {v5, v6}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 109
    :cond_4
    move-object v1, v5

    .line 110
    .restart local v1    # "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_0

    .end local v1    # "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v5    # "putRequest":Lorg/apache/http/client/methods/HttpPut;
    :cond_5
    const-string v6, "DELETE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 111
    new-instance v1, Lorg/apache/http/client/methods/HttpDelete;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getUri()Ljava/net/URI;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/net/URI;)V

    .restart local v1    # "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_0

    .line 112
    .end local v1    # "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_6
    const-string v6, "HEAD"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 113
    new-instance v1, Lorg/apache/http/client/methods/HttpHead;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getUri()Ljava/net/URI;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/net/URI;)V

    .restart local v1    # "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_0

    .line 115
    .end local v1    # "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_7
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported method: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 135
    .restart local v1    # "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_8
    iget-object v6, p0, Lcom/amazonaws/http/ApacheHttpClient;->params:Lorg/apache/http/params/HttpParams;

    if-nez v6, :cond_9

    .line 136
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v6, p0, Lcom/amazonaws/http/ApacheHttpClient;->params:Lorg/apache/http/params/HttpParams;

    .line 137
    iget-object v6, p0, Lcom/amazonaws/http/ApacheHttpClient;->params:Lorg/apache/http/params/HttpParams;

    const-string v7, "http.protocol.handle-redirects"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 139
    :cond_9
    iget-object v6, p0, Lcom/amazonaws/http/ApacheHttpClient;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 140
    return-object v1
.end method


# virtual methods
.method public execute(Lcom/amazonaws/http/HttpRequest;)Lcom/amazonaws/http/HttpResponse;
    .locals 12
    .param p1, "request"    # Lcom/amazonaws/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/amazonaws/http/ApacheHttpClient;->createHttpRequest(Lcom/amazonaws/http/HttpRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    .line 64
    .local v3, "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    iget-object v7, p0, Lcom/amazonaws/http/ApacheHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v7, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 66
    .local v4, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "statusText":Ljava/lang/String;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 68
    .local v5, "statusCode":I
    const/4 v1, 0x0

    .line 69
    .local v1, "content":Ljava/io/InputStream;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 70
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 73
    :cond_0
    invoke-static {}, Lcom/amazonaws/http/HttpResponse;->builder()Lcom/amazonaws/http/HttpResponse$Builder;

    move-result-object v7

    .line 74
    invoke-virtual {v7, v5}, Lcom/amazonaws/http/HttpResponse$Builder;->statusCode(I)Lcom/amazonaws/http/HttpResponse$Builder;

    move-result-object v7

    .line 75
    invoke-virtual {v7, v6}, Lcom/amazonaws/http/HttpResponse$Builder;->statusText(Ljava/lang/String;)Lcom/amazonaws/http/HttpResponse$Builder;

    move-result-object v7

    .line 76
    invoke-virtual {v7, v1}, Lcom/amazonaws/http/HttpResponse$Builder;->content(Ljava/io/InputStream;)Lcom/amazonaws/http/HttpResponse$Builder;

    move-result-object v0

    .line 77
    .local v0, "builder":Lcom/amazonaws/http/HttpResponse$Builder;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v8

    array-length v9, v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_1

    aget-object v2, v8, v7

    .line 78
    .local v2, "header":Lorg/apache/http/Header;
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lcom/amazonaws/http/HttpResponse$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/http/HttpResponse$Builder;

    .line 77
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 81
    .end local v2    # "header":Lorg/apache/http/Header;
    :cond_1
    invoke-virtual {v0}, Lcom/amazonaws/http/HttpResponse$Builder;->build()Lcom/amazonaws/http/HttpResponse;

    move-result-object v7

    return-object v7
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/amazonaws/http/ApacheHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 87
    return-void
.end method
