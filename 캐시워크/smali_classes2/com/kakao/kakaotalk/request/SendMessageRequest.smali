.class public Lcom/kakao/kakaotalk/request/SendMessageRequest;
.super Lcom/kakao/auth/network/request/ApiRequest;
.source "SendMessageRequest.java"


# instance fields
.field private final args:Lorg/json/JSONObject;

.field private final receiverId:Ljava/lang/String;

.field private final receiverIdType:Ljava/lang/String;

.field private final templateId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kakao/auth/common/MessageSendable;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "receiverInfo"    # Lcom/kakao/auth/common/MessageSendable;
    .param p2, "templateId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/auth/common/MessageSendable;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p3, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/kakao/auth/network/request/ApiRequest;-><init>()V

    .line 61
    invoke-interface {p1}, Lcom/kakao/auth/common/MessageSendable;->getTargetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/request/SendMessageRequest;->receiverId:Ljava/lang/String;

    .line 62
    invoke-interface {p1}, Lcom/kakao/auth/common/MessageSendable;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/request/SendMessageRequest;->receiverIdType:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/kakao/kakaotalk/request/SendMessageRequest;->templateId:Ljava/lang/String;

    .line 64
    if-eqz p3, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lcom/kakao/kakaotalk/request/SendMessageRequest;->args:Lorg/json/JSONObject;

    .line 65
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
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
    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "receiver_id"

    iget-object v2, p0, Lcom/kakao/kakaotalk/request/SendMessageRequest;->receiverId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "receiver_id_type"

    iget-object v2, p0, Lcom/kakao/kakaotalk/request/SendMessageRequest;->receiverIdType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "template_id"

    iget-object v2, p0, Lcom/kakao/kakaotalk/request/SendMessageRequest;->templateId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v1, p0, Lcom/kakao/kakaotalk/request/SendMessageRequest;->args:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kakao/kakaotalk/request/SendMessageRequest;->args:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 50
    const-string v1, "args"

    iget-object v2, p0, Lcom/kakao/kakaotalk/request/SendMessageRequest;->args:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/kakao/network/ServerProtocol;->API_AUTHORITY:Ljava/lang/String;

    const-string v1, "v1/api/talk/message/send"

    invoke-static {v0, v1}, Lcom/kakao/auth/network/request/ApiRequest;->createBaseURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
