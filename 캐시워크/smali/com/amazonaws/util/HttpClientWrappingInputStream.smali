.class Lcom/amazonaws/util/HttpClientWrappingInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "HttpClientWrappingInputStream.java"


# instance fields
.field private final client:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 41
    invoke-direct {p0, p2}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 42
    iput-object p1, p0, Lcom/amazonaws/util/HttpClientWrappingInputStream;->client:Lorg/apache/http/client/HttpClient;

    .line 43
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    :try_start_0
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object v0, p0, Lcom/amazonaws/util/HttpClientWrappingInputStream;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 52
    return-void

    .line 50
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazonaws/util/HttpClientWrappingInputStream;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v0
.end method
