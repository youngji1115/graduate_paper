.class public Lcom/kakao/kakaotalk/request/ChatListRequest;
.super Lcom/kakao/auth/network/request/ApiRequest;
.source "ChatListRequest.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final chatType:Ljava/lang/String;

.field private final fromId:I

.field private final limit:I

.field private final order:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kakao/kakaotalk/ChatListContext;)V
    .locals 1
    .param p1, "context"    # Lcom/kakao/kakaotalk/ChatListContext;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/kakao/auth/network/request/ApiRequest;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcom/kakao/kakaotalk/ChatListContext;->getFromId()I

    move-result v0

    iput v0, p0, Lcom/kakao/kakaotalk/request/ChatListRequest;->fromId:I

    .line 44
    invoke-virtual {p1}, Lcom/kakao/kakaotalk/ChatListContext;->getLimit()I

    move-result v0

    iput v0, p0, Lcom/kakao/kakaotalk/request/ChatListRequest;->limit:I

    .line 45
    invoke-virtual {p1}, Lcom/kakao/kakaotalk/ChatListContext;->getOrder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/request/ChatListRequest;->order:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/kakao/kakaotalk/ChatListContext;->getAfterUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/request/ChatListRequest;->url:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lcom/kakao/kakaotalk/ChatListContext;->getChatType()Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/request/ChatListRequest;->chatType:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "GET"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    iget-object v2, p0, Lcom/kakao/kakaotalk/request/ChatListRequest;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kakao/kakaotalk/request/ChatListRequest;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/kakao/kakaotalk/request/ChatListRequest;->url:Ljava/lang/String;

    .line 66
    :goto_0
    return-object v2

    .line 60
    :cond_0
    sget-object v2, Lcom/kakao/network/ServerProtocol;->API_AUTHORITY:Ljava/lang/String;

    const-string/jumbo v3, "v1/api/talk/chats"

    invoke-static {v2, v3}, Lcom/kakao/auth/network/request/ApiRequest;->createBaseURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Lcom/kakao/network/helper/QueryString;

    invoke-direct {v0}, Lcom/kakao/network/helper/QueryString;-><init>()V

    .line 62
    .local v0, "qs":Lcom/kakao/network/helper/QueryString;
    const-string v2, "chat_type"

    iget-object v3, p0, Lcom/kakao/kakaotalk/request/ChatListRequest;->chatType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v2, "from_id"

    iget v3, p0, Lcom/kakao/kakaotalk/request/ChatListRequest;->fromId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "limit"

    iget v3, p0, Lcom/kakao/kakaotalk/request/ChatListRequest;->limit:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "order"

    iget-object v3, p0, Lcom/kakao/kakaotalk/request/ChatListRequest;->order:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kakao/network/helper/QueryString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
