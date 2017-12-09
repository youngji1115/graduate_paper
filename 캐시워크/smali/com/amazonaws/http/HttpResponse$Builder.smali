.class public Lcom/amazonaws/http/HttpResponse$Builder;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/http/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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

.field private statusCode:I

.field private statusText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/HttpResponse$Builder;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public build()Lcom/amazonaws/http/HttpResponse;
    .locals 6

    .prologue
    .line 174
    new-instance v0, Lcom/amazonaws/http/HttpResponse;

    iget-object v1, p0, Lcom/amazonaws/http/HttpResponse$Builder;->statusText:Ljava/lang/String;

    iget v2, p0, Lcom/amazonaws/http/HttpResponse$Builder;->statusCode:I

    iget-object v3, p0, Lcom/amazonaws/http/HttpResponse$Builder;->headers:Ljava/util/Map;

    .line 175
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/http/HttpResponse$Builder;->content:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/http/HttpResponse;-><init>(Ljava/lang/String;ILjava/util/Map;Ljava/io/InputStream;Lcom/amazonaws/http/HttpResponse$1;)V

    .line 174
    return-object v0
.end method

.method public content(Ljava/io/InputStream;)Lcom/amazonaws/http/HttpResponse$Builder;
    .locals 0
    .param p1, "content"    # Ljava/io/InputStream;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/amazonaws/http/HttpResponse$Builder;->content:Ljava/io/InputStream;

    .line 153
    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/http/HttpResponse$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-object p0
.end method

.method public statusCode(I)Lcom/amazonaws/http/HttpResponse$Builder;
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/amazonaws/http/HttpResponse$Builder;->statusCode:I

    .line 142
    return-object p0
.end method

.method public statusText(Ljava/lang/String;)Lcom/amazonaws/http/HttpResponse$Builder;
    .locals 0
    .param p1, "statusText"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/amazonaws/http/HttpResponse$Builder;->statusText:Ljava/lang/String;

    .line 131
    return-object p0
.end method
