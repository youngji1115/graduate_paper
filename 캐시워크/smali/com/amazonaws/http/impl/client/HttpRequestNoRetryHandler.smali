.class public Lcom/amazonaws/http/impl/client/HttpRequestNoRetryHandler;
.super Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
.source "HttpRequestNoRetryHandler.java"


# static fields
.field public static final Singleton:Lcom/amazonaws/http/impl/client/HttpRequestNoRetryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/amazonaws/http/impl/client/HttpRequestNoRetryHandler;

    invoke-direct {v0}, Lcom/amazonaws/http/impl/client/HttpRequestNoRetryHandler;-><init>()V

    sput-object v0, Lcom/amazonaws/http/impl/client/HttpRequestNoRetryHandler;->Singleton:Lcom/amazonaws/http/impl/client/HttpRequestNoRetryHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 1
    .param p1, "exception"    # Ljava/io/IOException;
    .param p2, "executionCount"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method
