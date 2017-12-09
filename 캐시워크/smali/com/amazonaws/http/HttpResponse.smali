.class public Lcom/amazonaws/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/http/HttpResponse$Builder;
    }
.end annotation


# instance fields
.field private content:Ljava/io/InputStream;

.field private final headers:Ljava/util/Map;
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

.field private final rawContent:Ljava/io/InputStream;

.field private final statusCode:I

.field private final statusText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/util/Map;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "statusText"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p4, "rawContent"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazonaws/http/HttpResponse;->statusText:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/amazonaws/http/HttpResponse;->statusCode:I

    .line 42
    iput-object p3, p0, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    .line 43
    iput-object p4, p0, Lcom/amazonaws/http/HttpResponse;->rawContent:Ljava/io/InputStream;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/util/Map;Ljava/io/InputStream;Lcom/amazonaws/http/HttpResponse$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/util/Map;
    .param p4, "x3"    # Ljava/io/InputStream;
    .param p5, "x4"    # Lcom/amazonaws/http/HttpResponse$1;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/http/HttpResponse;-><init>(Ljava/lang/String;ILjava/util/Map;Ljava/io/InputStream;)V

    return-void
.end method

.method public static builder()Lcom/amazonaws/http/HttpResponse$Builder;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/amazonaws/http/HttpResponse$Builder;

    invoke-direct {v0}, Lcom/amazonaws/http/HttpResponse$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->content:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->rawContent:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    const-string v0, "gzip"

    iget-object v1, p0, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    const-string v2, "Content-Encoding"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/amazonaws/http/HttpResponse;->rawContent:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/amazonaws/http/HttpResponse;->content:Ljava/io/InputStream;

    .line 70
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->content:Ljava/io/InputStream;

    return-object v0

    .line 68
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->rawContent:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/amazonaws/http/HttpResponse;->content:Ljava/io/InputStream;

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
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
    .line 52
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getRawContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->rawContent:Ljava/io/InputStream;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/amazonaws/http/HttpResponse;->statusCode:I

    return v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->statusText:Ljava/lang/String;

    return-object v0
.end method
