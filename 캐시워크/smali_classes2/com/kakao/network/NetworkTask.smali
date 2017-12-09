.class public Lcom/kakao/network/NetworkTask;
.super Ljava/lang/Object;
.source "NetworkTask.java"


# instance fields
.field private final network:Lcom/kakao/network/INetwork;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/kakao/network/KakaoNetworkImpl;

    invoke-direct {v0}, Lcom/kakao/network/KakaoNetworkImpl;-><init>()V

    iput-object v0, p0, Lcom/kakao/network/NetworkTask;->network:Lcom/kakao/network/INetwork;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/kakao/network/INetwork;)V
    .locals 0
    .param p1, "network"    # Lcom/kakao/network/INetwork;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/kakao/network/NetworkTask;->network:Lcom/kakao/network/INetwork;

    .line 41
    return-void
.end method


# virtual methods
.method public request(Lcom/kakao/network/IRequest;)Lcom/kakao/network/response/ResponseData;
    .locals 10
    .param p1, "request"    # Lcom/kakao/network/IRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-interface {p1}, Lcom/kakao/network/IRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 53
    :try_start_0
    iget-object v6, p0, Lcom/kakao/network/NetworkTask;->network:Lcom/kakao/network/INetwork;

    invoke-interface {p1}, Lcom/kakao/network/IRequest;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lcom/kakao/network/IRequest;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1}, Lcom/kakao/network/IRequest;->getBodyEncoding()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lcom/kakao/network/INetwork;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-interface {p1}, Lcom/kakao/network/IRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 56
    .local v0, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 58
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    .local v1, "key":Ljava/lang/String;
    const-string v6, "Expect"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 60
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Expect: 100-Continue not supported"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v0    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/kakao/network/NetworkTask;->network:Lcom/kakao/network/INetwork;

    invoke-interface {v7}, Lcom/kakao/network/INetwork;->disconnect()V

    throw v6

    .line 62
    .restart local v0    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "key":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/kakao/network/NetworkTask;->network:Lcom/kakao/network/INetwork;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v8, v1, v6}, Lcom/kakao/network/INetwork;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Lcom/kakao/network/IRequest;->getParams()Ljava/util/Map;

    move-result-object v2

    .line 67
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v8, p0, Lcom/kakao/network/NetworkTask;->network:Lcom/kakao/network/INetwork;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v8, v1, v6}, Lcom/kakao/network/INetwork;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 72
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Lcom/kakao/network/IRequest;->getMultiPartList()Ljava/util/List;

    move-result-object v4

    .line 73
    .local v4, "partList":Ljava/util/List;, "Ljava/util/List<Lcom/kakao/network/multipart/Part;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakao/network/multipart/Part;

    .line 74
    .local v3, "part":Lcom/kakao/network/multipart/Part;
    iget-object v7, p0, Lcom/kakao/network/NetworkTask;->network:Lcom/kakao/network/INetwork;

    invoke-interface {v7, v3}, Lcom/kakao/network/INetwork;->addPart(Lcom/kakao/network/multipart/Part;)V

    goto :goto_2

    .line 77
    .end local v3    # "part":Lcom/kakao/network/multipart/Part;
    :cond_3
    iget-object v6, p0, Lcom/kakao/network/NetworkTask;->network:Lcom/kakao/network/INetwork;

    invoke-interface {v6}, Lcom/kakao/network/INetwork;->configure()V

    .line 78
    iget-object v6, p0, Lcom/kakao/network/NetworkTask;->network:Lcom/kakao/network/INetwork;

    invoke-interface {v6}, Lcom/kakao/network/INetwork;->connect()V

    .line 80
    iget-object v6, p0, Lcom/kakao/network/NetworkTask;->network:Lcom/kakao/network/INetwork;

    invoke-interface {v6}, Lcom/kakao/network/INetwork;->getStatusCode()I

    move-result v5

    .line 81
    .local v5, "statusCode":I
    const-string v6, "++ httpStatus : [%s]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 82
    new-instance v6, Lcom/kakao/network/response/ResponseData;

    iget-object v7, p0, Lcom/kakao/network/NetworkTask;->network:Lcom/kakao/network/INetwork;

    invoke-interface {v7}, Lcom/kakao/network/INetwork;->readFully()[B

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/kakao/network/response/ResponseData;-><init>(I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    iget-object v7, p0, Lcom/kakao/network/NetworkTask;->network:Lcom/kakao/network/INetwork;

    invoke-interface {v7}, Lcom/kakao/network/INetwork;->disconnect()V

    return-object v6
.end method
