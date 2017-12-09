.class public Lcom/kakao/network/KakaoNetworkImpl;
.super Ljava/lang/Object;
.source "KakaoNetworkImpl.java"

# interfaces
.implements Lcom/kakao/network/INetwork;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/network/KakaoNetworkImpl$SimpleX509TrustManager;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONNECTION_TO_IN_MS:I = 0x1388

.field private static final DEFAULT_REQUEST_TO_IN_MS:I = 0x7530

.field private static final DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

.field private static final ISO_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field private static final SIMPLE_TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;


# instance fields
.field private charset:Ljava/lang/String;

.field private final header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kakao/network/multipart/Part;",
            ">;"
        }
    .end annotation
.end field

.field private statusCode:I

.field private urlConnection:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/kakao/network/KakaoNetworkImpl$SimpleX509TrustManager;

    invoke-direct {v2, v3, v3}, Lcom/kakao/network/KakaoNetworkImpl$SimpleX509TrustManager;-><init>(Ljava/security/KeyStore;Lcom/kakao/network/KakaoNetworkImpl$1;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/kakao/network/KakaoNetworkImpl;->SIMPLE_TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    .line 72
    new-instance v0, Lcom/kakao/network/KakaoNetworkImpl$1;

    invoke-direct {v0}, Lcom/kakao/network/KakaoNetworkImpl$1;-><init>()V

    sput-object v0, Lcom/kakao/network/KakaoNetworkImpl;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kakao/network/KakaoNetworkImpl;->parts:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kakao/network/KakaoNetworkImpl;->params:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kakao/network/KakaoNetworkImpl;->header:Ljava/util/Map;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    .line 67
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/kakao/network/KakaoNetworkImpl;->charset:Ljava/lang/String;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/kakao/network/KakaoNetworkImpl;->statusCode:I

    return-void
.end method

.method private getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 3
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-ge v1, v2, :cond_1

    .line 227
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 230
    :cond_0
    :goto_0
    return-object v0

    .line 229
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 230
    .local v0, "ein":Ljava/io/InputStream;
    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    .end local v0    # "ein":Ljava/io/InputStream;
    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method

.method private getPostDataString(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 215
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 216
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/kakao/network/KakaoNetworkImpl;->charset:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/kakao/network/KakaoNetworkImpl;->charset:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 222
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/kakao/network/KakaoNetworkImpl;->header:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/kakao/network/KakaoNetworkImpl;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-void
.end method

.method public addPart(Lcom/kakao/network/multipart/Part;)V
    .locals 1
    .param p1, "part"    # Lcom/kakao/network/multipart/Part;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/kakao/network/KakaoNetworkImpl;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public configure()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 108
    iget-object v5, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 109
    iget-object v5, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    const/16 v6, 0x1388

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 110
    iget-object v5, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    const/16 v6, 0x7530

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 111
    iget-object v5, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 112
    iget-object v5, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    const-string v6, "Connection"

    const-string v7, "keep-alive"

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v5, p0, Lcom/kakao/network/KakaoNetworkImpl;->header:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 115
    iget-object v5, p0, Lcom/kakao/network/KakaoNetworkImpl;->header:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    .local v1, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    iget-object v5, p0, Lcom/kakao/network/KakaoNetworkImpl;->header:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v1, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "reqType":Ljava/lang/String;
    const-string v5, "POST"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "PUT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 122
    :cond_1
    iget-object v5, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    const-string v6, "Content-Length"

    const-string v7, "0"

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v5, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "contentLength":I
    const/4 v3, 0x0

    .line 126
    .local v3, "postParamString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 127
    .local v2, "mre":Lcom/kakao/network/multipart/MultipartRequestEntity;
    iget-object v5, p0, Lcom/kakao/network/KakaoNetworkImpl;->params:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 128
    iget-object v5, p0, Lcom/kakao/network/KakaoNetworkImpl;->params:Ljava/util/Map;

    invoke-direct {p0, v5}, Lcom/kakao/network/KakaoNetworkImpl;->getPostDataString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    .line 136
    :cond_2
    :goto_1
    if-lez v0, :cond_3

    .line 137
    iget-object v5, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 138
    iget-object v5, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    const-string v6, "Content-Length"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 142
    iget-object v5, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iget-object v6, p0, Lcom/kakao/network/KakaoNetworkImpl;->charset:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 145
    :cond_4
    if-eqz v2, :cond_5

    .line 146
    iget-object v5, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/kakao/network/multipart/MultipartRequestEntity;->writeRequest(Ljava/io/OutputStream;)V

    .line 149
    .end local v0    # "contentLength":I
    .end local v2    # "mre":Lcom/kakao/network/multipart/MultipartRequestEntity;
    .end local v3    # "postParamString":Ljava/lang/String;
    :cond_5
    return-void

    .line 130
    .restart local v0    # "contentLength":I
    .restart local v2    # "mre":Lcom/kakao/network/multipart/MultipartRequestEntity;
    .restart local v3    # "postParamString":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/kakao/network/KakaoNetworkImpl;->parts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 131
    new-instance v2, Lcom/kakao/network/multipart/MultipartRequestEntity;

    .end local v2    # "mre":Lcom/kakao/network/multipart/MultipartRequestEntity;
    iget-object v5, p0, Lcom/kakao/network/KakaoNetworkImpl;->parts:Ljava/util/List;

    invoke-direct {v2, v5}, Lcom/kakao/network/multipart/MultipartRequestEntity;-><init>(Ljava/util/List;)V

    .line 132
    .restart local v2    # "mre":Lcom/kakao/network/multipart/MultipartRequestEntity;
    int-to-long v6, v0

    invoke-virtual {v2}, Lcom/kakao/network/multipart/MultipartRequestEntity;->getContentLength()J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v0, v6

    .line 133
    iget-object v5, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    const-string v6, "Content-Type"

    invoke-virtual {v2}, Lcom/kakao/network/multipart/MultipartRequestEntity;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/kakao/network/KakaoNetworkImpl;->statusCode:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/kakao/network/KakaoNetworkImpl;->statusCode:I

    goto :goto_0
.end method

.method public create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "++ url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "++ method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 89
    iput-object p3, p0, Lcom/kakao/network/KakaoNetworkImpl;->charset:Ljava/lang/String;

    .line 90
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v3, v4}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    iput-object v3, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    .line 91
    const-string v3, "https"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    iget-object v1, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 95
    .local v1, "secure":Ljavax/net/ssl/HttpsURLConnection;
    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 96
    .local v2, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    sget-object v4, Lcom/kakao/network/KakaoNetworkImpl;->SIMPLE_TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 101
    sget-object v3, Lcom/kakao/network/KakaoNetworkImpl;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 103
    .end local v1    # "secure":Ljavax/net/ssl/HttpsURLConnection;
    .end local v2    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_0
    iget-object v3, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 104
    return-void

    .line 97
    .restart local v1    # "secure":Ljavax/net/ssl/HttpsURLConnection;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/kakao/network/KakaoNetworkImpl;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 163
    iget-object v0, p0, Lcom/kakao/network/KakaoNetworkImpl;->header:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 164
    iget-object v0, p0, Lcom/kakao/network/KakaoNetworkImpl;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 165
    iget-object v0, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 168
    :cond_0
    const/16 v0, 0xc8

    iput v0, p0, Lcom/kakao/network/KakaoNetworkImpl;->statusCode:I

    .line 169
    return-void
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/kakao/network/KakaoNetworkImpl;->statusCode:I

    return v0
.end method

.method public readFully()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v4, p0, Lcom/kakao/network/KakaoNetworkImpl;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v4}, Lcom/kakao/network/KakaoNetworkImpl;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2

    .line 190
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 191
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 193
    .local v1, "byteBuffer":[B
    :goto_0
    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v2, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .local v3, "nLength":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 194
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 198
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "byteBuffer":[B
    .end local v3    # "nLength":I
    :catchall_0
    move-exception v4

    .line 199
    if-eqz v2, :cond_0

    .line 200
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 203
    :cond_0
    :goto_1
    throw v4

    .line 196
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteBuffer":[B
    .restart local v3    # "nLength":I
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 199
    if-eqz v2, :cond_2

    .line 200
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 203
    :cond_2
    :goto_2
    return-object v4

    .line 202
    :catch_0
    move-exception v5

    goto :goto_2

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "byteBuffer":[B
    .end local v3    # "nLength":I
    :catch_1
    move-exception v5

    goto :goto_1
.end method
