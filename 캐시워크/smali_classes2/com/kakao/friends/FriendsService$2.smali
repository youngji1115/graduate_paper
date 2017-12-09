.class final Lcom/kakao/friends/FriendsService$2;
.super Lcom/kakao/network/tasks/KakaoResultTask;
.source "FriendsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/friends/FriendsService;->requestFriendsOperation(Lcom/kakao/network/callback/ResponseCallback;Lcom/kakao/friends/FriendOperationContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/network/tasks/KakaoResultTask",
        "<",
        "Lcom/kakao/friends/response/FriendsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Lcom/kakao/friends/FriendOperationContext;


# direct methods
.method constructor <init>(Lcom/kakao/network/callback/ResponseCallback;Lcom/kakao/friends/FriendOperationContext;)V
    .locals 0

    .prologue
    .line 55
    .local p1, "x0":Lcom/kakao/network/callback/ResponseCallback;, "Lcom/kakao/network/callback/ResponseCallback<Lcom/kakao/friends/response/FriendsResponse;>;"
    iput-object p2, p0, Lcom/kakao/friends/FriendsService$2;->val$context:Lcom/kakao/friends/FriendOperationContext;

    invoke-direct {p0, p1}, Lcom/kakao/network/tasks/KakaoResultTask;-><init>(Lcom/kakao/network/callback/ResponseCallback;)V

    return-void
.end method


# virtual methods
.method public call()Lcom/kakao/friends/response/FriendsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kakao/friends/FriendsService$2;->val$context:Lcom/kakao/friends/FriendOperationContext;

    invoke-static {v0}, Lcom/kakao/friends/api/FriendsApi;->requestFriendsOperation(Lcom/kakao/friends/FriendOperationContext;)Lcom/kakao/friends/response/FriendsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/kakao/friends/FriendsService$2;->call()Lcom/kakao/friends/response/FriendsResponse;

    move-result-object v0

    return-object v0
.end method
