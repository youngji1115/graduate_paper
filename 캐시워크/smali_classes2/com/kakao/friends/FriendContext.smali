.class public Lcom/kakao/friends/FriendContext;
.super Lcom/kakao/auth/common/PageableContext;
.source "FriendContext.java"


# instance fields
.field private final friendFilter:Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

.field private final friendOrder:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

.field private final friendType:Lcom/kakao/friends/request/FriendsRequest$FriendType;

.field private id:Ljava/lang/String;

.field private final limit:I

.field private final offset:I

.field private final order:Ljava/lang/String;

.field private final secureResource:Z


# direct methods
.method private constructor <init>(Lcom/kakao/friends/request/FriendsRequest$FriendType;Lcom/kakao/friends/request/FriendsRequest$FriendFilter;Lcom/kakao/friends/request/FriendsRequest$FriendOrder;ZIILjava/lang/String;)V
    .locals 0
    .param p1, "friendType"    # Lcom/kakao/friends/request/FriendsRequest$FriendType;
    .param p2, "friendFilter"    # Lcom/kakao/friends/request/FriendsRequest$FriendFilter;
    .param p3, "friendOrder"    # Lcom/kakao/friends/request/FriendsRequest$FriendOrder;
    .param p4, "secureResource"    # Z
    .param p5, "offset"    # I
    .param p6, "limit"    # I
    .param p7, "order"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kakao/auth/common/PageableContext;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/kakao/friends/FriendContext;->friendType:Lcom/kakao/friends/request/FriendsRequest$FriendType;

    .line 35
    iput-object p2, p0, Lcom/kakao/friends/FriendContext;->friendFilter:Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

    .line 36
    iput-object p3, p0, Lcom/kakao/friends/FriendContext;->friendOrder:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    .line 37
    iput-boolean p4, p0, Lcom/kakao/friends/FriendContext;->secureResource:Z

    .line 38
    iput p5, p0, Lcom/kakao/friends/FriendContext;->offset:I

    .line 39
    iput p6, p0, Lcom/kakao/friends/FriendContext;->limit:I

    .line 40
    iput-object p7, p0, Lcom/kakao/friends/FriendContext;->order:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static createContext(Lcom/kakao/friends/request/FriendsRequest$FriendType;Lcom/kakao/friends/request/FriendsRequest$FriendFilter;Lcom/kakao/friends/request/FriendsRequest$FriendOrder;ZIILjava/lang/String;)Lcom/kakao/friends/FriendContext;
    .locals 8
    .param p0, "friendType"    # Lcom/kakao/friends/request/FriendsRequest$FriendType;
    .param p1, "friendFilter"    # Lcom/kakao/friends/request/FriendsRequest$FriendFilter;
    .param p2, "friendOrder"    # Lcom/kakao/friends/request/FriendsRequest$FriendOrder;
    .param p3, "secureResource"    # Z
    .param p4, "offset"    # I
    .param p5, "limit"    # I
    .param p6, "order"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Lcom/kakao/friends/FriendContext;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/kakao/friends/FriendContext;-><init>(Lcom/kakao/friends/request/FriendsRequest$FriendType;Lcom/kakao/friends/request/FriendsRequest$FriendFilter;Lcom/kakao/friends/request/FriendsRequest$FriendOrder;ZIILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getFriendFilter()Lcom/kakao/friends/request/FriendsRequest$FriendFilter;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kakao/friends/FriendContext;->friendFilter:Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

    return-object v0
.end method

.method public getFriendOrder()Lcom/kakao/friends/request/FriendsRequest$FriendOrder;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kakao/friends/FriendContext;->friendOrder:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    return-object v0
.end method

.method public getFriendType()Lcom/kakao/friends/request/FriendsRequest$FriendType;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kakao/friends/FriendContext;->friendType:Lcom/kakao/friends/request/FriendsRequest$FriendType;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kakao/friends/FriendContext;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/kakao/friends/FriendContext;->limit:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/kakao/friends/FriendContext;->offset:I

    return v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kakao/friends/FriendContext;->order:Ljava/lang/String;

    return-object v0
.end method

.method public isSecureResource()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/kakao/friends/FriendContext;->secureResource:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/kakao/friends/FriendContext;->id:Ljava/lang/String;

    .line 89
    return-void
.end method
