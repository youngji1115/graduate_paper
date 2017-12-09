.class public final enum Lcom/kakao/friends/request/FriendsRequest$FriendOrder;
.super Ljava/lang/Enum;
.source "FriendsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/friends/request/FriendsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FriendOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/friends/request/FriendsRequest$FriendOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

.field public static final enum AFFINITY:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

.field public static final enum AGE:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

.field public static final enum LAST_CHAT_TIME:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

.field public static final enum NICKNAME:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

.field public static final enum TALK_CREATED_AT:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

.field public static final enum UNDEFINED:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 77
    new-instance v0, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    const-string v1, "UNDEFINED"

    const-string v2, "undefined"

    const/4 v3, -0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;->UNDEFINED:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    .line 78
    new-instance v0, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    const-string v1, "NICKNAME"

    const-string v2, "nickname"

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;->NICKNAME:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    .line 79
    new-instance v0, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    const-string v1, "LAST_CHAT_TIME"

    const-string v2, "last_chat_time"

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;->LAST_CHAT_TIME:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    .line 80
    new-instance v0, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    const-string v1, "TALK_CREATED_AT"

    const-string v2, "talk_created_at"

    invoke-direct {v0, v1, v7, v2, v6}, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;->TALK_CREATED_AT:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    .line 81
    new-instance v0, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    const-string v1, "AGE"

    const-string v2, "age"

    invoke-direct {v0, v1, v8, v2, v7}, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;->AGE:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    .line 82
    new-instance v0, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    const-string v1, "AFFINITY"

    const/4 v2, 0x5

    const-string v3, "affinity"

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;->AFFINITY:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    .line 76
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    sget-object v1, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;->UNDEFINED:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;->NICKNAME:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;->LAST_CHAT_TIME:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;->TALK_CREATED_AT:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;->AGE:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;->AFFINITY:Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;->$VALUES:[Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput-object p3, p0, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;->name:Ljava/lang/String;

    .line 88
    iput p4, p0, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;->value:I

    .line 89
    return-void
.end method

.method static synthetic access$200(Lcom/kakao/friends/request/FriendsRequest$FriendOrder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/friends/request/FriendsRequest$FriendOrder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    const-class v0, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    return-object v0
.end method

.method public static values()[Lcom/kakao/friends/request/FriendsRequest$FriendOrder;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/kakao/friends/request/FriendsRequest$FriendOrder;->$VALUES:[Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    invoke-virtual {v0}, [Lcom/kakao/friends/request/FriendsRequest$FriendOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/friends/request/FriendsRequest$FriendOrder;

    return-object v0
.end method
