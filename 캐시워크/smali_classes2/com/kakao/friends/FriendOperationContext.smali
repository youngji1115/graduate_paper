.class public Lcom/kakao/friends/FriendOperationContext;
.super Lcom/kakao/auth/common/PageableContext;
.source "FriendOperationContext.java"


# instance fields
.field private final firstId:Ljava/lang/String;

.field private final limit:I

.field private final offset:I

.field private final operation:Lcom/kakao/friends/request/FriendsOperationRequest$Operation;

.field private final order:Ljava/lang/String;

.field private final secondId:Ljava/lang/String;

.field private final secureResource:Z


# direct methods
.method private constructor <init>(Lcom/kakao/friends/FriendContext;Lcom/kakao/friends/FriendContext;Lcom/kakao/friends/request/FriendsOperationRequest$Operation;ZIILjava/lang/String;)V
    .locals 1
    .param p1, "firstFriendContext"    # Lcom/kakao/friends/FriendContext;
    .param p2, "secondFriendContext"    # Lcom/kakao/friends/FriendContext;
    .param p3, "operation"    # Lcom/kakao/friends/request/FriendsOperationRequest$Operation;
    .param p4, "secureResource"    # Z
    .param p5, "offset"    # I
    .param p6, "limit"    # I
    .param p7, "order"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/kakao/auth/common/PageableContext;-><init>()V

    .line 35
    invoke-virtual {p1}, Lcom/kakao/friends/FriendContext;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/friends/FriendOperationContext;->firstId:Ljava/lang/String;

    .line 36
    invoke-virtual {p2}, Lcom/kakao/friends/FriendContext;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/friends/FriendOperationContext;->secondId:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/kakao/friends/FriendOperationContext;->operation:Lcom/kakao/friends/request/FriendsOperationRequest$Operation;

    .line 38
    iput-boolean p4, p0, Lcom/kakao/friends/FriendOperationContext;->secureResource:Z

    .line 39
    iput p5, p0, Lcom/kakao/friends/FriendOperationContext;->offset:I

    .line 40
    iput p6, p0, Lcom/kakao/friends/FriendOperationContext;->limit:I

    .line 41
    iput-object p7, p0, Lcom/kakao/friends/FriendOperationContext;->order:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static createContext(Lcom/kakao/friends/FriendContext;Lcom/kakao/friends/FriendContext;Lcom/kakao/friends/request/FriendsOperationRequest$Operation;ZIILjava/lang/String;)Lcom/kakao/friends/FriendOperationContext;
    .locals 8
    .param p0, "firstFriendContext"    # Lcom/kakao/friends/FriendContext;
    .param p1, "secondFriendContext"    # Lcom/kakao/friends/FriendContext;
    .param p2, "operation"    # Lcom/kakao/friends/request/FriendsOperationRequest$Operation;
    .param p3, "secureResource"    # Z
    .param p4, "offset"    # I
    .param p5, "limit"    # I
    .param p6, "order"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/util/KakaoParameterException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/kakao/friends/FriendContext;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/kakao/friends/FriendContext;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    new-instance v0, Lcom/kakao/util/KakaoParameterException;

    const-string v1, "Friend context Id is missing. Id is getting after requestFriends"

    invoke-direct {v0, v1}, Lcom/kakao/util/KakaoParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    new-instance v0, Lcom/kakao/friends/FriendOperationContext;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/kakao/friends/FriendOperationContext;-><init>(Lcom/kakao/friends/FriendContext;Lcom/kakao/friends/FriendContext;Lcom/kakao/friends/request/FriendsOperationRequest$Operation;ZIILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getFirstId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kakao/friends/FriendOperationContext;->firstId:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/kakao/friends/FriendOperationContext;->limit:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/kakao/friends/FriendOperationContext;->offset:I

    return v0
.end method

.method public getOperation()Lcom/kakao/friends/request/FriendsOperationRequest$Operation;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kakao/friends/FriendOperationContext;->operation:Lcom/kakao/friends/request/FriendsOperationRequest$Operation;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kakao/friends/FriendOperationContext;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kakao/friends/FriendOperationContext;->secondId:Ljava/lang/String;

    return-object v0
.end method

.method public isSecureResource()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/kakao/friends/FriendOperationContext;->secureResource:Z

    return v0
.end method
