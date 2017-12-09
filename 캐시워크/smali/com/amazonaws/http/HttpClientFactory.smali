.class Lcom/amazonaws/http/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/http/HttpClientFactory$LocationHeaderNotRequiredRedirectHandler;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createHttpClient(Lcom/amazonaws/ClientConfiguration;)Lorg/apache/http/client/HttpClient;
    .locals 22
    .param p1, "config"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 73
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 74
    .local v6, "httpClientParams":Lorg/apache/http/params/HttpParams;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getConnectionTimeout()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getSocketTimeout()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 76
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 77
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getSocketBufferSizeHints()[I

    move-result-object v19

    const/16 v20, 0x0

    aget v16, v19, v20

    .line 80
    .local v16, "socketSendBufferSizeHint":I
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getSocketBufferSizeHints()[I

    move-result-object v19

    const/16 v20, 0x1

    aget v15, v19, v20

    .line 81
    .local v15, "socketReceiveBufferSizeHint":I
    if-gtz v16, :cond_0

    if-lez v15, :cond_1

    .line 83
    :cond_0
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 82
    move/from16 v0, v19

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 87
    :cond_1
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/amazonaws/http/ConnectionManagerFactory;->createThreadSafeClientConnManager(Lcom/amazonaws/ClientConfiguration;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    move-result-object v3

    .line 88
    .local v3, "connectionManager":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v5, Lcom/amazonaws/http/impl/client/SdkHttpClient;

    invoke-direct {v5, v3, v6}, Lcom/amazonaws/http/impl/client/SdkHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 89
    .local v5, "httpClient":Lcom/amazonaws/http/impl/client/SdkHttpClient;
    sget-object v19, Lcom/amazonaws/http/impl/client/HttpRequestNoRetryHandler;->Singleton:Lcom/amazonaws/http/impl/client/HttpRequestNoRetryHandler;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/amazonaws/http/impl/client/SdkHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 90
    new-instance v19, Lcom/amazonaws/http/HttpClientFactory$LocationHeaderNotRequiredRedirectHandler;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Lcom/amazonaws/http/HttpClientFactory$LocationHeaderNotRequiredRedirectHandler;-><init>(Lcom/amazonaws/http/HttpClientFactory$1;)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/amazonaws/http/impl/client/SdkHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lorg/apache/http/conn/params/ConnRouteParams;->setLocalAddress(Lorg/apache/http/params/HttpParams;Ljava/net/InetAddress;)V

    .line 96
    :cond_2
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v19, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v20

    const/16 v21, 0x50

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v4, v0, v1, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 97
    .local v4, "http":Lorg/apache/http/conn/scheme/Scheme;
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v18

    .line 98
    .local v18, "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v19, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual/range {v18 .. v19}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 99
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v19, "https"

    const/16 v20, 0x1bb

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-direct {v7, v0, v1, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 100
    .local v7, "https":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v17

    .line 101
    .local v17, "sr":Lorg/apache/http/conn/scheme/SchemeRegistry;
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 102
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getProxyHost()Ljava/lang/String;

    move-result-object v9

    .line 122
    .local v9, "proxyHost":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getProxyPort()I

    move-result v12

    .line 123
    .local v12, "proxyPort":I
    if-eqz v9, :cond_3

    if-lez v12, :cond_3

    .line 124
    sget-object v19, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Configuring Proxy. Proxy Host: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " Proxy Port: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 126
    new-instance v10, Lorg/apache/http/HttpHost;

    invoke-direct {v10, v9, v12}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 127
    .local v10, "proxyHttpHost":Lorg/apache/http/HttpHost;
    invoke-virtual {v5}, Lcom/amazonaws/http/impl/client/SdkHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v19

    const-string v20, "http.route.default-proxy"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getProxyUsername()Ljava/lang/String;

    move-result-object v13

    .line 130
    .local v13, "proxyUsername":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getProxyPassword()Ljava/lang/String;

    move-result-object v11

    .line 131
    .local v11, "proxyPassword":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getProxyDomain()Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, "proxyDomain":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/ClientConfiguration;->getProxyWorkstation()Ljava/lang/String;

    move-result-object v14

    .line 134
    .local v14, "proxyWorkstation":Ljava/lang/String;
    if-eqz v13, :cond_3

    if-eqz v11, :cond_3

    .line 135
    invoke-virtual {v5}, Lcom/amazonaws/http/impl/client/SdkHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v19

    new-instance v20, Lorg/apache/http/auth/AuthScope;

    move-object/from16 v0, v20

    invoke-direct {v0, v9, v12}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    new-instance v21, Lorg/apache/http/auth/NTCredentials;

    move-object/from16 v0, v21

    invoke-direct {v0, v13, v11, v14, v8}, Lorg/apache/http/auth/NTCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v19 .. v21}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 144
    .end local v8    # "proxyDomain":Ljava/lang/String;
    .end local v10    # "proxyHttpHost":Lorg/apache/http/HttpHost;
    .end local v11    # "proxyPassword":Ljava/lang/String;
    .end local v13    # "proxyUsername":Ljava/lang/String;
    .end local v14    # "proxyWorkstation":Ljava/lang/String;
    :cond_3
    return-object v5
.end method
