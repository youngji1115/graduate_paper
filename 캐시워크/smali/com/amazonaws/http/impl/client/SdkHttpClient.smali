.class public Lcom/amazonaws/http/impl/client/SdkHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "SdkHttpClient.java"


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "conman"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 30
    invoke-static {p1}, Lcom/amazonaws/http/conn/ClientConnectionManagerFactory;->wrap(Lorg/apache/http/conn/ClientConnectionManager;)Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected createRequestExecutor()Lorg/apache/http/protocol/HttpRequestExecutor;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/amazonaws/http/protocol/SdkHttpRequestExecutor;

    invoke-direct {v0}, Lcom/amazonaws/http/protocol/SdkHttpRequestExecutor;-><init>()V

    return-object v0
.end method
