.class public Lcom/kakao/friends/request/FriendsRequest;
.super Lcom/kakao/auth/network/request/ApiRequest;
.source "FriendsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/friends/request/FriendsRequest$FriendOrder;,
        Lcom/kakao/friends/request/FriendsRequest$FriendFilter;,
        Lcom/kakao/friends/request/FriendsRequest$FriendType;
    }
.end annotation


# instance fields
.field private final friendFilter:Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

.field private final friendOrder:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

.field private final friendType:Lcom/kakao/friends/request/FriendsRequest$FriendType;

.field private final limit:I

.field private final offset:I

.field private final order:Ljava/lang/String;

.field private final secureResource:Z

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kakao/friends/FriendContext;)V
    .locals 1
    .param p1, "context"    # Lcom/kakao/friends/FriendContext;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/kakao/auth/network/request/ApiRequest;-><init>()V

    .line 103
    invoke-virtual {p1}, Lcom/kakao/friends/FriendContext;->getFriendType()Lcom/kakao/friends/request/FriendsRequest$FriendType;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/friends/request/FriendsRequest;->friendType:Lcom/kakao/friends/request/FriendsRequest$FriendType;

    .line 104
    invoke-virtual {p1}, Lcom/kakao/friends/FriendContext;->getFriendFilter()Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/friends/request/FriendsRequest;->friendFilter:Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

    .line 105
    invoke-virtual {p1}, Lcom/kakao/friends/FriendContext;->getFriendOrder()Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/friends/request/FriendsRequest;->friendOrder:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    .line 106
    invoke-virtual {p1}, Lcom/kakao/friends/FriendContext;->isSecureResource()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kakao/friends/request/FriendsRequest;->secureResource:Z

    .line 107
    invoke-virtual {p1}, Lcom/kakao/friends/FriendContext;->getOffset()I

    move-result v0

    iput v0, p0, Lcom/kakao/friends/request/FriendsRequest;->offset:I

    .line 108
    invoke-virtual {p1}, Lcom/kakao/friends/FriendContext;->getLimit()I

    move-result v0

    iput v0, p0, Lcom/kakao/friends/request/FriendsRequest;->limit:I

    .line 109
    invoke-virtual {p1}, Lcom/kakao/friends/FriendContext;->getOrder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/friends/request/FriendsRequest;->order:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/kakao/friends/FriendContext;->getAfterUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/friends/request/FriendsRequest;->url:Ljava/lang/String;

    .line 111
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, "GET"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 120
    iget-object v2, p0, Lcom/kakao/friends/request/FriendsRequest;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kakao/friends/request/FriendsRequest;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/kakao/friends/request/FriendsRequest;->url:Ljava/lang/String;

    .line 132
    :goto_0
    return-object v2

    .line 123
    :cond_0
    sget-object v2, Lcom/kakao/network/ServerProtocol;->API_AUTHORITY:Ljava/lang/String;

    const-string v3, "v1/friends"

    invoke-static {v2, v3}, Lcom/kakao/auth/network/request/ApiRequest;->createBaseURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "baseUrl":Ljava/lang/String;
    new-instance v1, Lcom/kakao/network/helper/QueryString;

    invoke-direct {v1}, Lcom/kakao/network/helper/QueryString;-><init>()V

    .line 125
    .local v1, "qs":Lcom/kakao/network/helper/QueryString;
    const-string v2, "friend_type"

    iget-object v3, p0, Lcom/kakao/friends/request/FriendsRequest;->friendType:Lcom/kakao/friends/request/FriendsRequest$FriendType;

    invoke-static {v3}, Lcom/kakao/friends/request/FriendsRequest$FriendType;->access$000(Lcom/kakao/friends/request/FriendsRequest$FriendType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v2, "friend_filter"

    iget-object v3, p0, Lcom/kakao/friends/request/FriendsRequest;->friendFilter:Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

    invoke-static {v3}, Lcom/kakao/friends/request/FriendsRequest$FriendFilter;->access$100(Lcom/kakao/friends/request/FriendsRequest$FriendFilter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v2, "friend_order"

    iget-object v3, p0, Lcom/kakao/friends/request/FriendsRequest;->friendOrder:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    invoke-static {v3}, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;->access$200(Lcom/kakao/friends/request/FriendsRequest$FriendOrder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v2, "secure_resource"

    iget-boolean v3, p0, Lcom/kakao/friends/request/FriendsRequest;->secureResource:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v2, "offset"

    iget v3, p0, Lcom/kakao/friends/request/FriendsRequest;->offset:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v2, "limit"

    iget v3, p0, Lcom/kakao/friends/request/FriendsRequest;->limit:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v2, "order"

    iget-object v3, p0, Lcom/kakao/friends/request/FriendsRequest;->order:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kakao/network/helper/QueryString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
