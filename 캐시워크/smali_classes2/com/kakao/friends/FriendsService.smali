.class public Lcom/kakao/friends/FriendsService;
.super Ljava/lang/Object;
.source "FriendsService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestFriends(Lcom/kakao/network/callback/ResponseCallback;Lcom/kakao/friends/FriendContext;)V
    .locals 2
    .param p1, "context"    # Lcom/kakao/friends/FriendContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/network/callback/ResponseCallback",
            "<",
            "Lcom/kakao/friends/response/FriendsResponse;",
            ">;",
            "Lcom/kakao/friends/FriendContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "callback":Lcom/kakao/network/callback/ResponseCallback;, "Lcom/kakao/network/callback/ResponseCallback<Lcom/kakao/friends/response/FriendsResponse;>;"
    invoke-static {}, Lcom/kakao/network/tasks/KakaoTaskQueue;->getInstance()Lcom/kakao/network/tasks/KakaoTaskQueue;

    move-result-object v0

    new-instance v1, Lcom/kakao/friends/FriendsService$1;

    invoke-direct {v1, p0, p1}, Lcom/kakao/friends/FriendsService$1;-><init>(Lcom/kakao/network/callback/ResponseCallback;Lcom/kakao/friends/FriendContext;)V

    invoke-virtual {v0, v1}, Lcom/kakao/network/tasks/KakaoTaskQueue;->addTask(Lcom/kakao/network/tasks/KakaoResultTask;)Ljava/util/concurrent/Future;

    .line 45
    return-void
.end method

.method public static requestFriendsOperation(Lcom/kakao/network/callback/ResponseCallback;Lcom/kakao/friends/FriendOperationContext;)V
    .locals 2
    .param p1, "context"    # Lcom/kakao/friends/FriendOperationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/network/callback/ResponseCallback",
            "<",
            "Lcom/kakao/friends/response/FriendsResponse;",
            ">;",
            "Lcom/kakao/friends/FriendOperationContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "callback":Lcom/kakao/network/callback/ResponseCallback;, "Lcom/kakao/network/callback/ResponseCallback<Lcom/kakao/friends/response/FriendsResponse;>;"
    invoke-static {}, Lcom/kakao/network/tasks/KakaoTaskQueue;->getInstance()Lcom/kakao/network/tasks/KakaoTaskQueue;

    move-result-object v0

    new-instance v1, Lcom/kakao/friends/FriendsService$2;

    invoke-direct {v1, p0, p1}, Lcom/kakao/friends/FriendsService$2;-><init>(Lcom/kakao/network/callback/ResponseCallback;Lcom/kakao/friends/FriendOperationContext;)V

    invoke-virtual {v0, v1}, Lcom/kakao/network/tasks/KakaoTaskQueue;->addTask(Lcom/kakao/network/tasks/KakaoResultTask;)Ljava/util/concurrent/Future;

    .line 61
    return-void
.end method
