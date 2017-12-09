.class public Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;
.super Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;
.source "ResponseHeaderHandlerChain.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final headerHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/internal/HeaderHandler",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TT;",
            "Ljava/io/InputStream;",
            ">;[",
            "Lcom/amazonaws/services/s3/internal/HeaderHandler",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;, "Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain<TT;>;"
    .local p1, "responseUnmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<TT;Ljava/io/InputStream;>;"
    .local p2, "headerHandlers":[Lcom/amazonaws/services/s3/internal/HeaderHandler;, "[Lcom/amazonaws/services/s3/internal/HeaderHandler<TT;>;"
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 37
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;->headerHandlers:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;
    .locals 5
    .param p1, "response"    # Lcom/amazonaws/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;, "Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain<TT;>;"
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    move-result-object v0

    .line 50
    .local v0, "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<TT;>;"
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceResponse;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 51
    .local v2, "result":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_0

    .line 52
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;->headerHandlers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/internal/HeaderHandler;

    .line 53
    .local v1, "handler":Lcom/amazonaws/services/s3/internal/HeaderHandler;, "Lcom/amazonaws/services/s3/internal/HeaderHandler<TT;>;"
    invoke-interface {v1, v2, p1}, Lcom/amazonaws/services/s3/internal/HeaderHandler;->handle(Ljava/lang/Object;Lcom/amazonaws/http/HttpResponse;)V

    goto :goto_0

    .line 57
    .end local v1    # "handler":Lcom/amazonaws/services/s3/internal/HeaderHandler;, "Lcom/amazonaws/services/s3/internal/HeaderHandler<TT;>;"
    :cond_0
    return-object v0
.end method

.method public bridge synthetic handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;, "Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain<TT;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;->handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    move-result-object v0

    return-object v0
.end method
