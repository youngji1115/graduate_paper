.class final Lcom/amazonaws/http/HttpClientFactory$LocationHeaderNotRequiredRedirectHandler;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "HttpClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/http/HttpClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocationHeaderNotRequiredRedirectHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/http/HttpClientFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/amazonaws/http/HttpClientFactory$1;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/amazonaws/http/HttpClientFactory$LocationHeaderNotRequiredRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 157
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 158
    .local v1, "statusCode":I
    const-string v2, "location"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 162
    .local v0, "locationHeader":Lorg/apache/http/Header;
    if-nez v0, :cond_0

    const/16 v2, 0x12d

    if-ne v1, v2, :cond_0

    .line 164
    const/4 v2, 0x0

    .line 166
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    goto :goto_0
.end method
