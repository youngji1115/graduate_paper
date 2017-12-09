.class public Lcom/kakao/friends/api/FriendsApi;
.super Ljava/lang/Object;
.source "FriendsApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestFriends(Lcom/kakao/friends/FriendContext;)Lcom/kakao/friends/response/FriendsResponse;
    .locals 4
    .param p0, "context"    # Lcom/kakao/friends/FriendContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/kakao/auth/SingleNetworkTask;

    invoke-direct {v0}, Lcom/kakao/auth/SingleNetworkTask;-><init>()V

    .line 40
    .local v0, "networkTask":Lcom/kakao/auth/SingleNetworkTask;
    new-instance v3, Lcom/kakao/friends/request/FriendsRequest;

    invoke-direct {v3, p0}, Lcom/kakao/friends/request/FriendsRequest;-><init>(Lcom/kakao/friends/FriendContext;)V

    invoke-virtual {v0, v3}, Lcom/kakao/auth/SingleNetworkTask;->requestApi(Lcom/kakao/network/IRequest;)Lcom/kakao/network/response/ResponseData;

    move-result-object v2

    .line 41
    .local v2, "result":Lcom/kakao/network/response/ResponseData;
    new-instance v1, Lcom/kakao/friends/response/FriendsResponse;

    invoke-direct {v1, v2}, Lcom/kakao/friends/response/FriendsResponse;-><init>(Lcom/kakao/network/response/ResponseData;)V

    .line 43
    .local v1, "response":Lcom/kakao/friends/response/FriendsResponse;
    invoke-virtual {v1}, Lcom/kakao/friends/response/FriendsResponse;->getBeforeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/kakao/friends/FriendContext;->setBeforeUrl(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1}, Lcom/kakao/friends/response/FriendsResponse;->getAfterUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/kakao/friends/FriendContext;->setAfterUrl(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1}, Lcom/kakao/friends/response/FriendsResponse;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/kakao/friends/FriendContext;->setId(Ljava/lang/String;)V

    .line 47
    return-object v1
.end method

.method public static requestFriendsOperation(Lcom/kakao/friends/FriendOperationContext;)Lcom/kakao/friends/response/FriendsResponse;
    .locals 4
    .param p0, "context"    # Lcom/kakao/friends/FriendOperationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/kakao/auth/SingleNetworkTask;

    invoke-direct {v0}, Lcom/kakao/auth/SingleNetworkTask;-><init>()V

    .line 58
    .local v0, "networkTask":Lcom/kakao/auth/SingleNetworkTask;
    new-instance v3, Lcom/kakao/friends/request/FriendsOperationRequest;

    invoke-direct {v3, p0}, Lcom/kakao/friends/request/FriendsOperationRequest;-><init>(Lcom/kakao/friends/FriendOperationContext;)V

    invoke-virtual {v0, v3}, Lcom/kakao/auth/SingleNetworkTask;->requestApi(Lcom/kakao/network/IRequest;)Lcom/kakao/network/response/ResponseData;

    move-result-object v2

    .line 59
    .local v2, "result":Lcom/kakao/network/response/ResponseData;
    new-instance v1, Lcom/kakao/friends/response/FriendsResponse;

    invoke-direct {v1, v2}, Lcom/kakao/friends/response/FriendsResponse;-><init>(Lcom/kakao/network/response/ResponseData;)V

    .line 60
    .local v1, "response":Lcom/kakao/friends/response/FriendsResponse;
    invoke-virtual {v1}, Lcom/kakao/friends/response/FriendsResponse;->getBeforeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/kakao/friends/FriendOperationContext;->setBeforeUrl(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1}, Lcom/kakao/friends/response/FriendsResponse;->getAfterUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/kakao/friends/FriendOperationContext;->setAfterUrl(Ljava/lang/String;)V

    .line 62
    return-object v1
.end method
