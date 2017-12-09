.class public Lcom/kakao/kakaotalk/response/ChatListResponse;
.super Lcom/kakao/auth/network/response/JSONObjectResponse;
.source "ChatListResponse.java"


# instance fields
.field private afterUrl:Ljava/lang/String;

.field private beforeUrl:Ljava/lang/String;

.field private final chatInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kakao/kakaotalk/response/model/ChatInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final totalCount:I


# direct methods
.method public constructor <init>(Lcom/kakao/network/response/ResponseData;)V
    .locals 5
    .param p1, "responseData"    # Lcom/kakao/network/response/ResponseData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;,
            Lcom/kakao/auth/network/response/ApiResponse$ApiResponseStatusError;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 37
    invoke-direct {p0, p1}, Lcom/kakao/auth/network/response/JSONObjectResponse;-><init>(Lcom/kakao/network/response/ResponseData;)V

    .line 38
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/ChatListResponse;->body:Lcom/kakao/network/response/ResponseBody;

    const-string v1, "elements"

    sget-object v2, Lcom/kakao/kakaotalk/response/model/ChatInfo;->CONVERTER:Lcom/kakao/network/response/ResponseBody$BodyConverter;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/kakao/network/response/ResponseBody;->optConvertedList(Ljava/lang/String;Lcom/kakao/network/response/ResponseBody$Converter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/response/ChatListResponse;->chatInfoList:Ljava/util/List;

    .line 39
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/ChatListResponse;->body:Lcom/kakao/network/response/ResponseBody;

    const-string v1, "total_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kakao/network/response/ResponseBody;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kakao/kakaotalk/response/ChatListResponse;->totalCount:I

    .line 40
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/ChatListResponse;->body:Lcom/kakao/network/response/ResponseBody;

    const-string v1, "before_url"

    invoke-virtual {v0, v1, v4}, Lcom/kakao/network/response/ResponseBody;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/response/ChatListResponse;->beforeUrl:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/ChatListResponse;->body:Lcom/kakao/network/response/ResponseBody;

    const-string v1, "after_url"

    invoke-virtual {v0, v1, v4}, Lcom/kakao/network/response/ResponseBody;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/response/ChatListResponse;->afterUrl:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getAfterUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/ChatListResponse;->afterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBeforeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/ChatListResponse;->beforeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getChatInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kakao/kakaotalk/response/model/ChatInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/ChatListResponse;->chatInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/kakao/kakaotalk/response/ChatListResponse;->totalCount:I

    return v0
.end method

.method public merge(Lcom/kakao/kakaotalk/response/ChatListResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/kakao/kakaotalk/response/ChatListResponse;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/ChatListResponse;->chatInfoList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/kakao/kakaotalk/response/ChatListResponse;->getChatInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    invoke-virtual {p1}, Lcom/kakao/kakaotalk/response/ChatListResponse;->getBeforeUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/response/ChatListResponse;->beforeUrl:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcom/kakao/kakaotalk/response/ChatListResponse;->getAfterUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/response/ChatListResponse;->afterUrl:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/kakao/kakaotalk/response/ChatListResponse;->chatInfoList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/kakao/kakaotalk/response/ChatListResponse;->chatInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/kakaotalk/response/model/ChatInfo;

    .line 75
    .local v1, "info":Lcom/kakao/kakaotalk/response/model/ChatInfo;
    const-string v3, "\n["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/kakao/kakaotalk/response/model/ChatInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 79
    .end local v1    # "info":Lcom/kakao/kakaotalk/response/model/ChatInfo;
    :cond_0
    const-string v2, "totalCount : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/kakao/kakaotalk/response/ChatListResponse;->totalCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", beforeUrl : "

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kakao/kakaotalk/response/ChatListResponse;->beforeUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", afterUrl : "

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kakao/kakaotalk/response/ChatListResponse;->afterUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
