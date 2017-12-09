.class public Lcom/kakao/kakaotalk/api/KakaoTalkApi;
.super Ljava/lang/Object;
.source "KakaoTalkApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestChatList(Lcom/kakao/kakaotalk/ChatListContext;)Lcom/kakao/kakaotalk/response/ChatListResponse;
    .locals 4
    .param p0, "context"    # Lcom/kakao/kakaotalk/ChatListContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/kakao/auth/SingleNetworkTask;

    invoke-direct {v0}, Lcom/kakao/auth/SingleNetworkTask;-><init>()V

    .line 89
    .local v0, "networkTask":Lcom/kakao/auth/SingleNetworkTask;
    new-instance v3, Lcom/kakao/kakaotalk/request/ChatListRequest;

    invoke-direct {v3, p0}, Lcom/kakao/kakaotalk/request/ChatListRequest;-><init>(Lcom/kakao/kakaotalk/ChatListContext;)V

    invoke-virtual {v0, v3}, Lcom/kakao/auth/SingleNetworkTask;->requestApi(Lcom/kakao/network/IRequest;)Lcom/kakao/network/response/ResponseData;

    move-result-object v2

    .line 90
    .local v2, "result":Lcom/kakao/network/response/ResponseData;
    new-instance v1, Lcom/kakao/kakaotalk/response/ChatListResponse;

    invoke-direct {v1, v2}, Lcom/kakao/kakaotalk/response/ChatListResponse;-><init>(Lcom/kakao/network/response/ResponseData;)V

    .line 91
    .local v1, "response":Lcom/kakao/kakaotalk/response/ChatListResponse;
    invoke-virtual {v1}, Lcom/kakao/kakaotalk/response/ChatListResponse;->getAfterUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/kakao/kakaotalk/ChatListContext;->setAfterUrl(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1}, Lcom/kakao/kakaotalk/response/ChatListResponse;->getBeforeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/kakao/kakaotalk/ChatListContext;->setBeforeUrl(Ljava/lang/String;)V

    .line 93
    return-object v1
.end method

.method public static requestChatRoomList(Lcom/kakao/kakaotalk/ChatListContext;)Lcom/kakao/kakaotalk/response/ChatListResponse;
    .locals 4
    .param p0, "context"    # Lcom/kakao/kakaotalk/ChatListContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lcom/kakao/auth/SingleNetworkTask;

    invoke-direct {v0}, Lcom/kakao/auth/SingleNetworkTask;-><init>()V

    .line 107
    .local v0, "networkTask":Lcom/kakao/auth/SingleNetworkTask;
    new-instance v3, Lcom/kakao/kakaotalk/request/ChatRoomListRequest;

    invoke-direct {v3, p0}, Lcom/kakao/kakaotalk/request/ChatRoomListRequest;-><init>(Lcom/kakao/kakaotalk/ChatListContext;)V

    invoke-virtual {v0, v3}, Lcom/kakao/auth/SingleNetworkTask;->requestApi(Lcom/kakao/network/IRequest;)Lcom/kakao/network/response/ResponseData;

    move-result-object v2

    .line 108
    .local v2, "result":Lcom/kakao/network/response/ResponseData;
    new-instance v1, Lcom/kakao/kakaotalk/response/ChatListResponse;

    invoke-direct {v1, v2}, Lcom/kakao/kakaotalk/response/ChatListResponse;-><init>(Lcom/kakao/network/response/ResponseData;)V

    .line 109
    .local v1, "response":Lcom/kakao/kakaotalk/response/ChatListResponse;
    invoke-virtual {v1}, Lcom/kakao/kakaotalk/response/ChatListResponse;->getAfterUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/kakao/kakaotalk/ChatListContext;->setAfterUrl(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1}, Lcom/kakao/kakaotalk/response/ChatListResponse;->getBeforeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/kakao/kakaotalk/ChatListContext;->setBeforeUrl(Ljava/lang/String;)V

    .line 111
    return-object v1
.end method

.method public static requestProfile(Z)Lcom/kakao/kakaotalk/response/KakaoTalkProfile;
    .locals 3
    .param p0, "secureResource"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/kakao/auth/SingleNetworkTask;

    invoke-direct {v0}, Lcom/kakao/auth/SingleNetworkTask;-><init>()V

    .line 53
    .local v0, "networkTask":Lcom/kakao/auth/SingleNetworkTask;
    new-instance v2, Lcom/kakao/kakaotalk/request/TalkProfileRequest;

    invoke-direct {v2, p0}, Lcom/kakao/kakaotalk/request/TalkProfileRequest;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/kakao/auth/SingleNetworkTask;->requestApi(Lcom/kakao/network/IRequest;)Lcom/kakao/network/response/ResponseData;

    move-result-object v1

    .line 54
    .local v1, "result":Lcom/kakao/network/response/ResponseData;
    new-instance v2, Lcom/kakao/kakaotalk/response/TalkProfileResponse;

    invoke-direct {v2, v1}, Lcom/kakao/kakaotalk/response/TalkProfileResponse;-><init>(Lcom/kakao/network/response/ResponseData;)V

    invoke-virtual {v2}, Lcom/kakao/kakaotalk/response/TalkProfileResponse;->getProfile()Lcom/kakao/kakaotalk/response/KakaoTalkProfile;

    move-result-object v2

    return-object v2
.end method

.method public static requestProfile()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kakao/kakaotalk/api/KakaoTalkApi;->requestProfile(Z)Lcom/kakao/kakaotalk/response/KakaoTalkProfile;

    .line 45
    return-void
.end method

.method public static requestSendMemo(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3
    .param p0, "templateId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/kakao/auth/SingleNetworkTask;

    invoke-direct {v0}, Lcom/kakao/auth/SingleNetworkTask;-><init>()V

    .line 81
    .local v0, "networkTask":Lcom/kakao/auth/SingleNetworkTask;
    new-instance v2, Lcom/kakao/kakaotalk/request/SendMemoRequest;

    invoke-direct {v2, p0, p1}, Lcom/kakao/kakaotalk/request/SendMemoRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/kakao/auth/SingleNetworkTask;->requestApi(Lcom/kakao/network/IRequest;)Lcom/kakao/network/response/ResponseData;

    move-result-object v1

    .line 82
    .local v1, "result":Lcom/kakao/network/response/ResponseData;
    new-instance v2, Lcom/kakao/auth/network/response/ApiResponse$BlankApiResponse;

    invoke-direct {v2, v1}, Lcom/kakao/auth/network/response/ApiResponse$BlankApiResponse;-><init>(Lcom/kakao/network/response/ResponseData;)V

    .line 83
    const/4 v2, 0x1

    return v2
.end method

.method public static requestSendMessage(Lcom/kakao/auth/common/MessageSendable;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3
    .param p0, "receiverInfo"    # Lcom/kakao/auth/common/MessageSendable;
    .param p1, "templateId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/auth/common/MessageSendable;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/kakao/auth/SingleNetworkTask;

    invoke-direct {v0}, Lcom/kakao/auth/SingleNetworkTask;-><init>()V

    .line 66
    .local v0, "networkTask":Lcom/kakao/auth/SingleNetworkTask;
    new-instance v2, Lcom/kakao/kakaotalk/request/SendMessageRequest;

    invoke-direct {v2, p0, p1, p2}, Lcom/kakao/kakaotalk/request/SendMessageRequest;-><init>(Lcom/kakao/auth/common/MessageSendable;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/kakao/auth/SingleNetworkTask;->requestApi(Lcom/kakao/network/IRequest;)Lcom/kakao/network/response/ResponseData;

    move-result-object v1

    .line 67
    .local v1, "result":Lcom/kakao/network/response/ResponseData;
    new-instance v2, Lcom/kakao/auth/network/response/ApiResponse$BlankApiResponse;

    invoke-direct {v2, v1}, Lcom/kakao/auth/network/response/ApiResponse$BlankApiResponse;-><init>(Lcom/kakao/network/response/ResponseData;)V

    .line 68
    const/4 v2, 0x1

    return v2
.end method
