.class public final enum Lcom/kakao/friends/request/FriendsRequest$FriendType;
.super Ljava/lang/Enum;
.source "FriendsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/friends/request/FriendsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FriendType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/friends/request/FriendsRequest$FriendType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/friends/request/FriendsRequest$FriendType;

.field public static final enum KAKAO_STORY:Lcom/kakao/friends/request/FriendsRequest$FriendType;

.field public static final enum KAKAO_TALK:Lcom/kakao/friends/request/FriendsRequest$FriendType;

.field public static final enum KAKAO_TALK_AND_STORY:Lcom/kakao/friends/request/FriendsRequest$FriendType;

.field public static final enum UNDEFINED:Lcom/kakao/friends/request/FriendsRequest$FriendType;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    new-instance v0, Lcom/kakao/friends/request/FriendsRequest$FriendType;

    const-string v1, "UNDEFINED"

    const-string v2, "undefined"

    const/4 v3, -0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/kakao/friends/request/FriendsRequest$FriendType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/kakao/friends/request/FriendsRequest$FriendType;->UNDEFINED:Lcom/kakao/friends/request/FriendsRequest$FriendType;

    .line 37
    new-instance v0, Lcom/kakao/friends/request/FriendsRequest$FriendType;

    const-string v1, "KAKAO_TALK"

    const-string v2, "talk"

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/kakao/friends/request/FriendsRequest$FriendType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/kakao/friends/request/FriendsRequest$FriendType;->KAKAO_TALK:Lcom/kakao/friends/request/FriendsRequest$FriendType;

    .line 38
    new-instance v0, Lcom/kakao/friends/request/FriendsRequest$FriendType;

    const-string v1, "KAKAO_STORY"

    const-string v2, "story"

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/kakao/friends/request/FriendsRequest$FriendType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/kakao/friends/request/FriendsRequest$FriendType;->KAKAO_STORY:Lcom/kakao/friends/request/FriendsRequest$FriendType;

    .line 39
    new-instance v0, Lcom/kakao/friends/request/FriendsRequest$FriendType;

    const-string v1, "KAKAO_TALK_AND_STORY"

    const-string v2, "talkstory"

    invoke-direct {v0, v1, v7, v2, v6}, Lcom/kakao/friends/request/FriendsRequest$FriendType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/kakao/friends/request/FriendsRequest$FriendType;->KAKAO_TALK_AND_STORY:Lcom/kakao/friends/request/FriendsRequest$FriendType;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kakao/friends/request/FriendsRequest$FriendType;

    sget-object v1, Lcom/kakao/friends/request/FriendsRequest$FriendType;->UNDEFINED:Lcom/kakao/friends/request/FriendsRequest$FriendType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kakao/friends/request/FriendsRequest$FriendType;->KAKAO_TALK:Lcom/kakao/friends/request/FriendsRequest$FriendType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kakao/friends/request/FriendsRequest$FriendType;->KAKAO_STORY:Lcom/kakao/friends/request/FriendsRequest$FriendType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kakao/friends/request/FriendsRequest$FriendType;->KAKAO_TALK_AND_STORY:Lcom/kakao/friends/request/FriendsRequest$FriendType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/kakao/friends/request/FriendsRequest$FriendType;->$VALUES:[Lcom/kakao/friends/request/FriendsRequest$FriendType;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lcom/kakao/friends/request/FriendsRequest$FriendType;->name:Ljava/lang/String;

    .line 45
    iput p4, p0, Lcom/kakao/friends/request/FriendsRequest$FriendType;->value:I

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/kakao/friends/request/FriendsRequest$FriendType;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kakao/friends/request/FriendsRequest$FriendType;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kakao/friends/request/FriendsRequest$FriendType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/friends/request/FriendsRequest$FriendType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/kakao/friends/request/FriendsRequest$FriendType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/friends/request/FriendsRequest$FriendType;

    return-object v0
.end method

.method public static values()[Lcom/kakao/friends/request/FriendsRequest$FriendType;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/kakao/friends/request/FriendsRequest$FriendType;->$VALUES:[Lcom/kakao/friends/request/FriendsRequest$FriendType;

    invoke-virtual {v0}, [Lcom/kakao/friends/request/FriendsRequest$FriendType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/friends/request/FriendsRequest$FriendType;

    return-object v0
.end method
