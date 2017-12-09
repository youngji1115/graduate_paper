.class public Lcom/amazonaws/http/UrlHttpClient;
.super Ljava/lang/Object;
.source "UrlHttpClient.java"

# interfaces
.implements Lcom/amazonaws/http/HttpClient;


# instance fields
.field private final config:Lcom/amazonaws/ClientConfiguration;

.field private sc:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "config"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/http/UrlHttpClient;->sc:Ljavax/net/ssl/SSLContext;

    .line 55
    iput-object p1, p0, Lcom/amazonaws/http/UrlHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    .line 56
    return-void
.end method

.method private enableCustomTrustManager(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 5
    .param p1, "connection"    # Ljavax/net/ssl/HttpsURLConnection;

    .prologue
    .line 204
    iget-object v2, p0, Lcom/amazonaws/http/UrlHttpClient;->sc:Ljavax/net/ssl/SSLContext;

    if-nez v2, :cond_0

    .line 205
    const/4 v2, 0x1

    new-array v0, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazonaws/http/UrlHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    .line 206
    invoke-virtual {v3}, Lcom/amazonaws/ClientConfiguration;->getTrustManager()Ljavax/net/ssl/TrustManager;

    move-result-object v3

    aput-object v3, v0, v2

    .line 209
    .local v0, "customTrustManagers":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/http/UrlHttpClient;->sc:Ljavax/net/ssl/SSLContext;

    .line 210
    iget-object v2, p0, Lcom/amazonaws/http/UrlHttpClient;->sc:Ljavax/net/ssl/SSLContext;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v0    # "customTrustManagers":[Ljavax/net/ssl/TrustManager;
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/http/UrlHttpClient;->sc:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 217
    return-void

    .line 211
    .restart local v0    # "customTrustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private write(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const/16 v2, 0x2000

    new-array v0, v2, [B

    .line 171
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 172
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method applyHeadersAndMethod(Lcom/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p1, "request"    # Lcom/amazonaws/http/HttpRequest;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 139
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 140
    .local v0, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    .local v1, "key":Ljava/lang/String;
    const-string v3, "Content-Length"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Host"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 156
    const-string v3, "Expect"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    .end local v0    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "method":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 165
    return-object p2
.end method

.method configureConnection(Ljava/net/HttpURLConnection;)V
    .locals 3
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v1, p0, Lcom/amazonaws/http/UrlHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v1}, Lcom/amazonaws/ClientConfiguration;->getConnectionTimeout()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 179
    iget-object v1, p0, Lcom/amazonaws/http/UrlHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v1}, Lcom/amazonaws/ClientConfiguration;->getSocketTimeout()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 181
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 182
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 184
    instance-of v1, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 185
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 195
    .local v0, "https":Ljavax/net/ssl/HttpsURLConnection;
    iget-object v1, p0, Lcom/amazonaws/http/UrlHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v1}, Lcom/amazonaws/ClientConfiguration;->getTrustManager()Ljavax/net/ssl/TrustManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 196
    invoke-direct {p0, v0}, Lcom/amazonaws/http/UrlHttpClient;->enableCustomTrustManager(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 199
    .end local v0    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_0
    return-void
.end method

.method createHttpResponse(Lcom/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;)Lcom/amazonaws/http/HttpResponse;
    .locals 9
    .param p1, "request"    # Lcom/amazonaws/http/HttpRequest;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "statusText":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 74
    .local v3, "statusCode":I
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 75
    .local v1, "content":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    const-string v6, "HEAD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 79
    :try_start_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 87
    :cond_0
    :goto_0
    invoke-static {}, Lcom/amazonaws/http/HttpResponse;->builder()Lcom/amazonaws/http/HttpResponse$Builder;

    move-result-object v5

    .line 88
    invoke-virtual {v5, v3}, Lcom/amazonaws/http/HttpResponse$Builder;->statusCode(I)Lcom/amazonaws/http/HttpResponse$Builder;

    move-result-object v5

    .line 89
    invoke-virtual {v5, v4}, Lcom/amazonaws/http/HttpResponse$Builder;->statusText(Ljava/lang/String;)Lcom/amazonaws/http/HttpResponse$Builder;

    move-result-object v5

    .line 90
    invoke-virtual {v5, v1}, Lcom/amazonaws/http/HttpResponse$Builder;->content(Ljava/io/InputStream;)Lcom/amazonaws/http/HttpResponse$Builder;

    move-result-object v0

    .line 91
    .local v0, "builder":Lcom/amazonaws/http/HttpResponse$Builder;
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 93
    .local v2, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 98
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/amazonaws/http/HttpResponse$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/http/HttpResponse$Builder;

    goto :goto_1

    .line 101
    .end local v2    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/http/HttpResponse$Builder;->build()Lcom/amazonaws/http/HttpResponse;

    move-result-object v5

    return-object v5

    .line 80
    .end local v0    # "builder":Lcom/amazonaws/http/HttpResponse$Builder;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public execute(Lcom/amazonaws/http/HttpRequest;)Lcom/amazonaws/http/HttpResponse;
    .locals 3
    .param p1, "request"    # Lcom/amazonaws/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getUri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    .line 61
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 63
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {p0, v0}, Lcom/amazonaws/http/UrlHttpClient;->configureConnection(Ljava/net/HttpURLConnection;)V

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/http/UrlHttpClient;->applyHeadersAndMethod(Lcom/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/http/UrlHttpClient;->writeContentToConnection(Lcom/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;)V

    .line 66
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/http/UrlHttpClient;->createHttpResponse(Lcom/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;)Lcom/amazonaws/http/HttpResponse;

    move-result-object v2

    return-object v2
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method writeContentToConnection(Lcom/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;)V
    .locals 6
    .param p1, "request"    # Lcom/amazonaws/http/HttpRequest;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getContent()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 124
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 127
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getContentLength()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 128
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 129
    .local v0, "os":Ljava/io/OutputStream;
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/amazonaws/http/UrlHttpClient;->write(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 130
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 131
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 133
    .end local v0    # "os":Ljava/io/OutputStream;
    :cond_0
    return-void
.end method
