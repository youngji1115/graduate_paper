.class public Lcom/amazonaws/ClientConfiguration;
.super Ljava/lang/Object;
.source "ClientConfiguration.java"


# static fields
.field public static final DEFAULT_CONNECTION_TIMEOUT:I = 0x3a98

.field public static final DEFAULT_MAX_CONNECTIONS:I = 0xa

.field public static final DEFAULT_RETRY_POLICY:Lcom/amazonaws/retry/RetryPolicy;

.field public static final DEFAULT_SOCKET_TIMEOUT:I = 0x3a98

.field public static final DEFAULT_USER_AGENT:Ljava/lang/String;

.field public static final DEFAULT_USE_REAPER:Z = true


# instance fields
.field private connectionTimeout:I

.field private localAddress:Ljava/net/InetAddress;

.field private maxConnections:I

.field private maxErrorRetry:I

.field private preemptiveBasicProxyAuth:Z

.field private protocol:Lcom/amazonaws/Protocol;

.field private proxyDomain:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private proxyHost:Ljava/lang/String;

.field private proxyPassword:Ljava/lang/String;

.field private proxyPort:I

.field private proxyUsername:Ljava/lang/String;

.field private proxyWorkstation:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private retryPolicy:Lcom/amazonaws/retry/RetryPolicy;

.field private signerOverride:Ljava/lang/String;

.field private socketReceiveBufferSizeHint:I

.field private socketSendBufferSizeHint:I

.field private socketTimeout:I

.field private trustManager:Ljavax/net/ssl/TrustManager;

.field private useReaper:Z

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT:Lcom/amazonaws/retry/RetryPolicy;

    sput-object v0, Lcom/amazonaws/ClientConfiguration;->DEFAULT_RETRY_POLICY:Lcom/amazonaws/retry/RetryPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x3a98

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Lcom/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->userAgent:Ljava/lang/String;

    .line 77
    iput v2, p0, Lcom/amazonaws/ClientConfiguration;->maxErrorRetry:I

    .line 80
    sget-object v0, Lcom/amazonaws/ClientConfiguration;->DEFAULT_RETRY_POLICY:Lcom/amazonaws/retry/RetryPolicy;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->retryPolicy:Lcom/amazonaws/retry/RetryPolicy;

    .line 91
    sget-object v0, Lcom/amazonaws/Protocol;->HTTPS:Lcom/amazonaws/Protocol;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->protocol:Lcom/amazonaws/Protocol;

    .line 94
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyHost:Ljava/lang/String;

    .line 97
    iput v2, p0, Lcom/amazonaws/ClientConfiguration;->proxyPort:I

    .line 103
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyUsername:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyPassword:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyDomain:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyWorkstation:Ljava/lang/String;

    .line 125
    const/16 v0, 0xa

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->maxConnections:I

    .line 132
    iput v4, p0, Lcom/amazonaws/ClientConfiguration;->socketTimeout:I

    .line 139
    iput v4, p0, Lcom/amazonaws/ClientConfiguration;->connectionTimeout:I

    .line 146
    iput v3, p0, Lcom/amazonaws/ClientConfiguration;->socketSendBufferSizeHint:I

    .line 153
    iput v3, p0, Lcom/amazonaws/ClientConfiguration;->socketReceiveBufferSizeHint:I

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->useReaper:Z

    .line 175
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->trustManager:Ljavax/net/ssl/TrustManager;

    .line 178
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 5
    .param p1, "other"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    const/16 v4, 0x3a98

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Lcom/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->userAgent:Ljava/lang/String;

    .line 77
    iput v2, p0, Lcom/amazonaws/ClientConfiguration;->maxErrorRetry:I

    .line 80
    sget-object v0, Lcom/amazonaws/ClientConfiguration;->DEFAULT_RETRY_POLICY:Lcom/amazonaws/retry/RetryPolicy;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->retryPolicy:Lcom/amazonaws/retry/RetryPolicy;

    .line 91
    sget-object v0, Lcom/amazonaws/Protocol;->HTTPS:Lcom/amazonaws/Protocol;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->protocol:Lcom/amazonaws/Protocol;

    .line 94
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyHost:Ljava/lang/String;

    .line 97
    iput v2, p0, Lcom/amazonaws/ClientConfiguration;->proxyPort:I

    .line 103
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyUsername:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyPassword:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyDomain:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyWorkstation:Ljava/lang/String;

    .line 125
    const/16 v0, 0xa

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->maxConnections:I

    .line 132
    iput v4, p0, Lcom/amazonaws/ClientConfiguration;->socketTimeout:I

    .line 139
    iput v4, p0, Lcom/amazonaws/ClientConfiguration;->connectionTimeout:I

    .line 146
    iput v3, p0, Lcom/amazonaws/ClientConfiguration;->socketSendBufferSizeHint:I

    .line 153
    iput v3, p0, Lcom/amazonaws/ClientConfiguration;->socketReceiveBufferSizeHint:I

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->useReaper:Z

    .line 175
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->trustManager:Ljavax/net/ssl/TrustManager;

    .line 181
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->connectionTimeout:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->connectionTimeout:I

    .line 182
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->maxConnections:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->maxConnections:I

    .line 183
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->maxErrorRetry:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->maxErrorRetry:I

    .line 184
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->retryPolicy:Lcom/amazonaws/retry/RetryPolicy;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->retryPolicy:Lcom/amazonaws/retry/RetryPolicy;

    .line 185
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->localAddress:Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->localAddress:Ljava/net/InetAddress;

    .line 186
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->protocol:Lcom/amazonaws/Protocol;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->protocol:Lcom/amazonaws/Protocol;

    .line 187
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->proxyDomain:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyDomain:Ljava/lang/String;

    .line 188
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->proxyHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyHost:Ljava/lang/String;

    .line 189
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->proxyPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyPassword:Ljava/lang/String;

    .line 190
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->proxyPort:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyPort:I

    .line 191
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->proxyUsername:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyUsername:Ljava/lang/String;

    .line 192
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->proxyWorkstation:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyWorkstation:Ljava/lang/String;

    .line 193
    iget-boolean v0, p1, Lcom/amazonaws/ClientConfiguration;->preemptiveBasicProxyAuth:Z

    iput-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->preemptiveBasicProxyAuth:Z

    .line 194
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->socketTimeout:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->socketTimeout:I

    .line 195
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->userAgent:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->userAgent:Ljava/lang/String;

    .line 196
    iget-boolean v0, p1, Lcom/amazonaws/ClientConfiguration;->useReaper:Z

    iput-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->useReaper:Z

    .line 197
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->socketReceiveBufferSizeHint:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->socketReceiveBufferSizeHint:I

    .line 198
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->socketSendBufferSizeHint:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->socketSendBufferSizeHint:I

    .line 199
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->signerOverride:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->signerOverride:Ljava/lang/String;

    .line 200
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->trustManager:Ljavax/net/ssl/TrustManager;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->trustManager:Ljavax/net/ssl/TrustManager;

    .line 201
    return-void
.end method


# virtual methods
.method public getConnectionTimeout()I
    .locals 1

    .prologue
    .line 687
    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->connectionTimeout:I

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getMaxConnections()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->maxConnections:I

    return v0
.end method

.method public getMaxErrorRetry()I
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->maxErrorRetry:I

    return v0
.end method

.method public getProtocol()Lcom/amazonaws/Protocol;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->protocol:Lcom/amazonaws/Protocol;

    return-object v0
.end method

.method public getProxyDomain()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyPort:I

    return v0
.end method

.method public getProxyUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyWorkstation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyWorkstation:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryPolicy()Lcom/amazonaws/retry/RetryPolicy;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->retryPolicy:Lcom/amazonaws/retry/RetryPolicy;

    return-object v0
.end method

.method public getSignerOverride()Ljava/lang/String;
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->signerOverride:Ljava/lang/String;

    return-object v0
.end method

.method public getSocketBufferSizeHints()[I
    .locals 3

    .prologue
    .line 787
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/amazonaws/ClientConfiguration;->socketSendBufferSizeHint:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/amazonaws/ClientConfiguration;->socketReceiveBufferSizeHint:I

    aput v2, v0, v1

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->socketTimeout:I

    return v0
.end method

.method public getTrustManager()Ljavax/net/ssl/TrustManager;
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->trustManager:Ljavax/net/ssl/TrustManager;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isPreemptiveBasicProxyAuth()Z
    .locals 1

    .prologue
    .line 968
    iget-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->preemptiveBasicProxyAuth:Z

    return v0
.end method

.method public setConnectionTimeout(I)V
    .locals 0
    .param p1, "connectionTimeout"    # I

    .prologue
    .line 700
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->connectionTimeout:I

    .line 701
    return-void
.end method

.method public setLocalAddress(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "localAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->localAddress:Ljava/net/InetAddress;

    .line 339
    return-void
.end method

.method public setMaxConnections(I)V
    .locals 0
    .param p1, "maxConnections"    # I

    .prologue
    .line 276
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->maxConnections:I

    .line 277
    return-void
.end method

.method public setMaxErrorRetry(I)V
    .locals 2
    .param p1, "maxErrorRetry"    # I

    .prologue
    .line 614
    if-gez p1, :cond_0

    .line 615
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxErrorRetry shoud be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_0
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->maxErrorRetry:I

    .line 618
    return-void
.end method

.method public setPreemptiveBasicProxyAuth(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "preemptiveBasicProxyAuth"    # Ljava/lang/Boolean;

    .prologue
    .line 979
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->preemptiveBasicProxyAuth:Z

    .line 980
    return-void
.end method

.method public setProtocol(Lcom/amazonaws/Protocol;)V
    .locals 0
    .param p1, "protocol"    # Lcom/amazonaws/Protocol;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->protocol:Lcom/amazonaws/Protocol;

    .line 236
    return-void
.end method

.method public setProxyDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyDomain"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 499
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->proxyDomain:Ljava/lang/String;

    .line 500
    return-void
.end method

.method public setProxyHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyHost"    # Ljava/lang/String;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->proxyHost:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public setProxyPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyPassword"    # Ljava/lang/String;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->proxyPassword:Ljava/lang/String;

    .line 464
    return-void
.end method

.method public setProxyPort(I)V
    .locals 0
    .param p1, "proxyPort"    # I

    .prologue
    .line 398
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->proxyPort:I

    .line 399
    return-void
.end method

.method public setProxyUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyUsername"    # Ljava/lang/String;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->proxyUsername:Ljava/lang/String;

    .line 432
    return-void
.end method

.method public setProxyWorkstation(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyWorkstation"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 540
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->proxyWorkstation:Ljava/lang/String;

    .line 541
    return-void
.end method

.method public setRetryPolicy(Lcom/amazonaws/retry/RetryPolicy;)V
    .locals 0
    .param p1, "retryPolicy"    # Lcom/amazonaws/retry/RetryPolicy;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->retryPolicy:Lcom/amazonaws/retry/RetryPolicy;

    .line 577
    return-void
.end method

.method public setSignerOverride(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 929
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->signerOverride:Ljava/lang/String;

    .line 930
    return-void
.end method

.method public setSocketBufferSizeHints(II)V
    .locals 0
    .param p1, "socketSendBufferSizeHint"    # I
    .param p2, "socketReceiveBufferSizeHint"    # I

    .prologue
    .line 829
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->socketSendBufferSizeHint:I

    .line 830
    iput p2, p0, Lcom/amazonaws/ClientConfiguration;->socketReceiveBufferSizeHint:I

    .line 831
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 0
    .param p1, "socketTimeout"    # I

    .prologue
    .line 659
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->socketTimeout:I

    .line 660
    return-void
.end method

.method public setTrustManager(Ljavax/net/ssl/TrustManager;)V
    .locals 0
    .param p1, "trustManager"    # Ljavax/net/ssl/TrustManager;

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->trustManager:Ljavax/net/ssl/TrustManager;

    .line 1016
    return-void
.end method

.method public setUseReaper(Z)V
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 737
    iput-boolean p1, p0, Lcom/amazonaws/ClientConfiguration;->useReaper:Z

    .line 738
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->userAgent:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public useReaper()Z
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->useReaper:Z

    return v0
.end method

.method public withConnectionTimeout(I)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "connectionTimeout"    # I

    .prologue
    .line 715
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setConnectionTimeout(I)V

    .line 716
    return-object p0
.end method

.method public withLocalAddress(Ljava/net/InetAddress;)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "localAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setLocalAddress(Ljava/net/InetAddress;)V

    .line 350
    return-object p0
.end method

.method public withMaxConnections(I)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "maxConnections"    # I

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setMaxConnections(I)V

    .line 290
    return-object p0
.end method

.method public withMaxErrorRetry(I)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "maxErrorRetry"    # I

    .prologue
    .line 630
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setMaxErrorRetry(I)V

    .line 631
    return-object p0
.end method

.method public withPreemptiveBasicProxyAuth(Z)Lcom/amazonaws/ClientConfiguration;
    .locals 1
    .param p1, "preemptiveBasicProxyAuth"    # Z

    .prologue
    .line 993
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/ClientConfiguration;->setPreemptiveBasicProxyAuth(Ljava/lang/Boolean;)V

    .line 994
    return-object p0
.end method

.method public withProtocol(Lcom/amazonaws/Protocol;)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "protocol"    # Lcom/amazonaws/Protocol;

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setProtocol(Lcom/amazonaws/Protocol;)V

    .line 257
    return-object p0
.end method

.method public withProxyDomain(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "proxyDomain"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 514
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setProxyDomain(Ljava/lang/String;)V

    .line 515
    return-object p0
.end method

.method public withProxyHost(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "proxyHost"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setProxyHost(Ljava/lang/String;)V

    .line 380
    return-object p0
.end method

.method public withProxyPassword(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "proxyPassword"    # Ljava/lang/String;

    .prologue
    .line 474
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setProxyPassword(Ljava/lang/String;)V

    .line 475
    return-object p0
.end method

.method public withProxyPort(I)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "proxyPort"    # I

    .prologue
    .line 409
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setProxyPort(I)V

    .line 410
    return-object p0
.end method

.method public withProxyUsername(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "proxyUsername"    # Ljava/lang/String;

    .prologue
    .line 443
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setProxyUsername(Ljava/lang/String;)V

    .line 444
    return-object p0
.end method

.method public withProxyWorkstation(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "proxyWorkstation"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 555
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setProxyWorkstation(Ljava/lang/String;)V

    .line 556
    return-object p0
.end method

.method public withReaper(Z)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 749
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setUseReaper(Z)V

    .line 750
    return-object p0
.end method

.method public withRetryPolicy(Lcom/amazonaws/retry/RetryPolicy;)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "retryPolicy"    # Lcom/amazonaws/retry/RetryPolicy;

    .prologue
    .line 587
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setRetryPolicy(Lcom/amazonaws/retry/RetryPolicy;)V

    .line 588
    return-object p0
.end method

.method public withSignerOverride(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 957
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setSignerOverride(Ljava/lang/String;)V

    .line 958
    return-object p0
.end method

.method public withSocketBufferSizeHints(II)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "socketSendBufferSizeHint"    # I
    .param p2, "socketReceiveBufferSizeHint"    # I

    .prologue
    .line 874
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/ClientConfiguration;->setSocketBufferSizeHints(II)V

    .line 875
    return-object p0
.end method

.method public withSocketTimeout(I)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "socketTimeout"    # I

    .prologue
    .line 674
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setSocketTimeout(I)V

    .line 675
    return-object p0
.end method

.method public withTrustManager(Ljavax/net/ssl/TrustManager;)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "trustManager"    # Ljavax/net/ssl/TrustManager;

    .prologue
    .line 1028
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setTrustManager(Ljavax/net/ssl/TrustManager;)V

    .line 1029
    return-object p0
.end method

.method public withUserAgent(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setUserAgent(Ljava/lang/String;)V

    .line 320
    return-object p0
.end method
