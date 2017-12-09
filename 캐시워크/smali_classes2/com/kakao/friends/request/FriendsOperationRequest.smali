.class public Lcom/kakao/friends/request/FriendsOperationRequest;
.super Lcom/kakao/auth/network/request/ApiRequest;
.source "FriendsOperationRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/friends/request/FriendsOperationRequest$Operation;
    }
.end annotation


# instance fields
.field private final firstId:Ljava/lang/String;

.field private final limit:I

.field private final offset:I

.field private final operation:Lcom/kakao/friends/request/FriendsOperationRequest$Operation;

.field private final order:Ljava/lang/String;

.field private final secondId:Ljava/lang/String;

.field private final secureResource:Z

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kakao/friends/FriendOperationContext;)V
    .locals 1
    .param p1, "context"    # Lcom/kakao/friends/FriendOperationContext;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/kakao/auth/network/request/ApiRequest;-><init>()V

    .line 52
    invoke-virtual {p1}, Lcom/kakao/friends/FriendOperationContext;->getFirstId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/friends/request/FriendsOperationRequest;->firstId:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/kakao/friends/FriendOperationContext;->getSecondId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/friends/request/FriendsOperationRequest;->secondId:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lcom/kakao/friends/FriendOperationContext;->getOperation()Lcom/kakao/friends/request/FriendsOperationRequest$Operation;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/friends/request/FriendsOperationRequest;->operation:Lcom/kakao/friends/request/FriendsOperationRequest$Operation;

    .line 55
    invoke-virtual {p1}, Lcom/kakao/friends/FriendOperationContext;->isSecureResource()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kakao/friends/request/FriendsOperationRequest;->secureResource:Z

    .line 56
    invoke-virtual {p1}, Lcom/kakao/friends/FriendOperationContext;->getOffset()I

    move-result v0

    iput v0, p0, Lcom/kakao/friends/request/FriendsOperationRequest;->offset:I

    .line 57
    invoke-virtual {p1}, Lcom/kakao/friends/FriendOperationContext;->getLimit()I

    move-result v0

    iput v0, p0, Lcom/kakao/friends/request/FriendsOperationRequest;->limit:I

    .line 58
    invoke-virtual {p1}, Lcom/kakao/friends/FriendOperationContext;->getOrder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/friends/request/FriendsOperationRequest;->order:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lcom/kakao/friends/FriendOperationContext;->getAfterUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/friends/request/FriendsOperationRequest;->url:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "GET"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    iget-object v2, p0, Lcom/kakao/friends/request/FriendsOperationRequest;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kakao/friends/request/FriendsOperationRequest;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/kakao/friends/request/FriendsOperationRequest;->url:Ljava/lang/String;

    .line 81
    :goto_0
    return-object v2

    .line 72
    :cond_0
    sget-object v2, Lcom/kakao/network/ServerProtocol;->API_AUTHORITY:Ljava/lang/String;

    const-string v3, "v1/friends/operation"

    invoke-static {v2, v3}, Lcom/kakao/auth/network/request/ApiRequest;->createBaseURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "baseUrl":Ljava/lang/String;
    new-instance v1, Lcom/kakao/network/helper/QueryString;

    invoke-direct {v1}, Lcom/kakao/network/helper/QueryString;-><init>()V

    .line 74
    .local v1, "qs":Lcom/kakao/network/helper/QueryString;
    const-string v2, "first_id"

    iget-object v3, p0, Lcom/kakao/friends/request/FriendsOperationRequest;->firstId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v2, "second_id"

    iget-object v3, p0, Lcom/kakao/friends/request/FriendsOperationRequest;->secondId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "operator"

    iget-object v3, p0, Lcom/kakao/friends/request/FriendsOperationRequest;->operation:Lcom/kakao/friends/request/FriendsOperationRequest$Operation;

    invoke-static {v3}, Lcom/kakao/friends/request/FriendsOperationRequest$Operation;->access$000(Lcom/kakao/friends/request/FriendsOperationRequest$Operation;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v2, "secure_resource"

    iget-boolean v3, p0, Lcom/kakao/friends/request/FriendsOperationRequest;->secureResource:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v2, "offset"

    iget v3, p0, Lcom/kakao/friends/request/FriendsOperationRequest;->offset:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v2, "limit"

    iget v3, p0, Lcom/kakao/friends/request/FriendsOperationRequest;->limit:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v2, "order"

    iget-object v3, p0, Lcom/kakao/friends/request/FriendsOperationRequest;->order:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
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
