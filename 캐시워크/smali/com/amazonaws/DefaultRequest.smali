.class public Lcom/amazonaws/DefaultRequest;
.super Ljava/lang/Object;
.source "DefaultRequest.java"

# interfaces
.implements Lcom/amazonaws/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/Request",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private content:Ljava/io/InputStream;

.field private endpoint:Ljava/net/URI;

.field private headers:Ljava/util/Map;
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

.field private httpMethod:Lcom/amazonaws/http/HttpMethodName;

.field private metrics:Lcom/amazonaws/util/AWSRequestMetrics;

.field private final originalRequest:Lcom/amazonaws/AmazonWebServiceRequest;

.field private parameters:Ljava/util/Map;
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

.field private resourcePath:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;

.field private timeOffset:I


# direct methods
.method public constructor <init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V
    .locals 1
    .param p1, "originalRequest"    # Lcom/amazonaws/AmazonWebServiceRequest;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 83
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/DefaultRequest;->parameters:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/DefaultRequest;->headers:Ljava/util/Map;

    .line 63
    sget-object v0, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    iput-object v0, p0, Lcom/amazonaws/DefaultRequest;->httpMethod:Lcom/amazonaws/http/HttpMethodName;

    .line 84
    iput-object p2, p0, Lcom/amazonaws/DefaultRequest;->serviceName:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/amazonaws/DefaultRequest;->originalRequest:Lcom/amazonaws/AmazonWebServiceRequest;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 96
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 116
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 149
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method

.method public getAWSRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 310
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->metrics:Lcom/amazonaws/util/AWSRequestMetrics;

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 215
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getEndpoint()Ljava/net/URI;
    .locals 1

    .prologue
    .line 199
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->endpoint:Ljava/net/URI;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpMethod()Lcom/amazonaws/http/HttpMethodName;
    .locals 1

    .prologue
    .line 175
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->httpMethod:Lcom/amazonaws/http/HttpMethodName;

    return-object v0
.end method

.method public getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->originalRequest:Lcom/amazonaws/AmazonWebServiceRequest;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeOffset()I
    .locals 1

    .prologue
    .line 249
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget v0, p0, Lcom/amazonaws/DefaultRequest;->timeOffset:I

    return v0
.end method

.method public setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V
    .locals 2
    .param p1, "metrics"    # Lcom/amazonaws/util/AWSRequestMetrics;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->metrics:Lcom/amazonaws/util/AWSRequestMetrics;

    if-nez v0, :cond_0

    .line 317
    iput-object p1, p0, Lcom/amazonaws/DefaultRequest;->metrics:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 322
    return-void

    .line 319
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AWSRequestMetrics has already been set on this request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "content"    # Ljava/io/InputStream;

    .prologue
    .line 223
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iput-object p1, p0, Lcom/amazonaws/DefaultRequest;->content:Ljava/io/InputStream;

    .line 224
    return-void
.end method

.method public setEndpoint(Ljava/net/URI;)V
    .locals 0
    .param p1, "endpoint"    # Ljava/net/URI;

    .prologue
    .line 191
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iput-object p1, p0, Lcom/amazonaws/DefaultRequest;->endpoint:Ljava/net/URI;

    .line 192
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 232
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 233
    return-void
.end method

.method public setHttpMethod(Lcom/amazonaws/http/HttpMethodName;)V
    .locals 0
    .param p1, "httpMethod"    # Lcom/amazonaws/http/HttpMethodName;

    .prologue
    .line 183
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iput-object p1, p0, Lcom/amazonaws/DefaultRequest;->httpMethod:Lcom/amazonaws/http/HttpMethodName;

    .line 184
    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->parameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 241
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 242
    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 132
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iput-object p1, p0, Lcom/amazonaws/DefaultRequest;->resourcePath:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setTimeOffset(I)V
    .locals 0
    .param p1, "timeOffset"    # I

    .prologue
    .line 257
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    iput p1, p0, Lcom/amazonaws/DefaultRequest;->timeOffset:I

    .line 258
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 271
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getHttpMethod()Lcom/amazonaws/http/HttpMethodName;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getEndpoint()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getResourcePath()Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "resourcePath":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 277
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :goto_0
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getParameters()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 287
    const-string v4, "Parameters: ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getParameters()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 289
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getParameters()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 290
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 280
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 281
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 292
    :cond_2
    const-string v4, ") "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 296
    const-string v4, "Headers: ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 298
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 299
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 301
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    const-string v4, ") "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public withParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/Request;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazonaws/Request",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/DefaultRequest;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-object p0
.end method

.method public withTimeOffset(I)Lcom/amazonaws/Request;
    .locals 0
    .param p1, "timeOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/amazonaws/Request",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Lcom/amazonaws/DefaultRequest;, "Lcom/amazonaws/DefaultRequest<TT;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/DefaultRequest;->setTimeOffset(I)V

    .line 266
    return-object p0
.end method
