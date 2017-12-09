.class public Lcom/kakao/kakaotalk/request/SendMemoRequest;
.super Lcom/kakao/auth/network/request/ApiRequest;
.source "SendMemoRequest.java"


# instance fields
.field private final args:Lorg/json/JSONObject;

.field private final templateId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "templateId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/kakao/auth/network/request/ApiRequest;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/kakao/kakaotalk/request/SendMemoRequest;->templateId:Ljava/lang/String;

    .line 57
    if-eqz p2, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lcom/kakao/kakaotalk/request/SendMemoRequest;->args:Lorg/json/JSONObject;

    .line 58
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "POST"

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 3
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
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "template_id"

    iget-object v2, p0, Lcom/kakao/kakaotalk/request/SendMemoRequest;->templateId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lcom/kakao/kakaotalk/request/SendMemoRequest;->args:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kakao/kakaotalk/request/SendMemoRequest;->args:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 47
    const-string v1, "args"

    iget-object v2, p0, Lcom/kakao/kakaotalk/request/SendMemoRequest;->args:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/kakao/network/ServerProtocol;->API_AUTHORITY:Ljava/lang/String;

    const-string v1, "v1/api/talk/memo/send"

    invoke-static {v0, v1}, Lcom/kakao/auth/network/request/ApiRequest;->createBaseURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
