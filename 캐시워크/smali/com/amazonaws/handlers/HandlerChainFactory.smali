.class public Lcom/amazonaws/handlers/HandlerChainFactory;
.super Ljava/lang/Object;
.source "HandlerChainFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createRequestHandlerChain(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 13
    .param p1, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "handlerApiClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v3, "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/handlers/RequestHandler2;>;"
    const/4 v5, 0x0

    .line 67
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 68
    .local v4, "input":Ljava/io/InputStream;
    if-nez v4, :cond_1

    .line 108
    if-eqz v5, :cond_0

    .line 109
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    :cond_0
    :goto_0
    return-object v3

    .line 71
    :cond_1
    :try_start_2
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    sget-object v11, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v4, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v8

    .line 74
    .local v8, "requestHandlerClassName":Ljava/lang/String;
    if-nez v8, :cond_4

    .line 108
    if-eqz v6, :cond_3

    .line 109
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_2
    move-object v5, v6

    .line 114
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 76
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 77
    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 79
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object p2, v10, v11

    const/4 v11, 0x1

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    .line 79
    invoke-static {v8, v10}, Lcom/amazonaws/util/ClassLoaderHelper;->loadClass(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v7

    .line 82
    .local v7, "requestHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    .line 83
    .local v9, "requestHandlerObject":Ljava/lang/Object;
    invoke-virtual {p2, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 84
    const-class v10, Lcom/amazonaws/handlers/RequestHandler2;

    if-ne p2, v10, :cond_6

    .line 85
    move-object v0, v9

    check-cast v0, Lcom/amazonaws/handlers/RequestHandler2;

    move-object v2, v0

    .line 86
    .local v2, "h":Lcom/amazonaws/handlers/RequestHandler2;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 102
    .end local v2    # "h":Lcom/amazonaws/handlers/RequestHandler2;
    .end local v7    # "requestHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "requestHandlerClassName":Ljava/lang/String;
    .end local v9    # "requestHandlerObject":Ljava/lang/Object;
    :catch_0
    move-exception v1

    move-object v5, v6

    .line 103
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :goto_3
    :try_start_6
    new-instance v10, Lcom/amazonaws/AmazonClientException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to instantiate request handler chain for client: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 105
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 107
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 108
    :goto_4
    if-eqz v5, :cond_5

    .line 109
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 112
    :cond_5
    :goto_5
    throw v10

    .line 87
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "requestHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "requestHandlerClassName":Ljava/lang/String;
    .restart local v9    # "requestHandlerObject":Ljava/lang/Object;
    :cond_6
    :try_start_8
    const-class v10, Lcom/amazonaws/handlers/RequestHandler;

    if-ne p2, v10, :cond_7

    .line 88
    move-object v0, v9

    check-cast v0, Lcom/amazonaws/handlers/RequestHandler;

    move-object v2, v0

    .line 89
    .local v2, "h":Lcom/amazonaws/handlers/RequestHandler;
    invoke-static {v2}, Lcom/amazonaws/handlers/RequestHandler2;->adapt(Lcom/amazonaws/handlers/RequestHandler;)Lcom/amazonaws/handlers/RequestHandler2;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    .end local v2    # "h":Lcom/amazonaws/handlers/RequestHandler;
    .end local v7    # "requestHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "requestHandlerClassName":Ljava/lang/String;
    .end local v9    # "requestHandlerObject":Ljava/lang/Object;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 91
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "requestHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "requestHandlerClassName":Ljava/lang/String;
    .restart local v9    # "requestHandlerObject":Ljava/lang/Object;
    :cond_7
    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10}, Ljava/lang/IllegalStateException;-><init>()V

    throw v10

    .line 94
    :cond_8
    new-instance v10, Lcom/amazonaws/AmazonClientException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to instantiate request handler chain for client.  Listed request handler (\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\') does not implement the "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " API."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 111
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "requestHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "requestHandlerClassName":Ljava/lang/String;
    .end local v9    # "requestHandlerObject":Ljava/lang/Object;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v10

    goto/16 :goto_0

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "requestHandlerClassName":Ljava/lang/String;
    :catch_2
    move-exception v10

    goto/16 :goto_2

    .end local v4    # "input":Ljava/io/InputStream;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "requestHandlerClassName":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v11

    goto :goto_5

    .line 102
    :catch_4
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public newRequestHandler2Chain(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    const-class v0, Lcom/amazonaws/handlers/RequestHandler2;

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/handlers/HandlerChainFactory;->createRequestHandlerChain(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const-class v0, Lcom/amazonaws/handlers/RequestHandler;

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/handlers/HandlerChainFactory;->createRequestHandlerChain(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
