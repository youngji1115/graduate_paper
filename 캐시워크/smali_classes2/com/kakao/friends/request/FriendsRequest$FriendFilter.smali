.class public final enum Lcom/kakao/friends/request/FriendsRequest$FriendFilter;
.super Ljava/lang/Enum;
.source "FriendsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/friends/request/FriendsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FriendFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/friends/request/FriendsRequest$FriendFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

.field public static final enum INVITABLE:Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

.field public static final enum NONE:Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

.field public static final enum REGISTERED:Lcom/kakao/friends/request/FriendsRequest$FriendFilter;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-instance v0, Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

    const-string v1, "NONE"

    const-string v2, "none"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/kakao/friends/request/FriendsRequest$FriendFilter;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/kakao/friends/request/FriendsRequest$FriendFilter;->NONE:Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

    .line 57
    new-instance v0, Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

    const-string v1, "REGISTERED"

    const-string v2, "registered"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/kakao/friends/request/FriendsRequest$FriendFilter;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/kakao/friends/request/FriendsRequest$FriendFilter;->REGISTERED:Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

    .line 58
    new-instance v0, Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

    const-string v1, "INVITABLE"

    const-string v2, "invitable"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/kakao/friends/request/FriendsRequest$FriendFilter;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/kakao/friends/request/FriendsRequest$FriendFilter;->INVITABLE:Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

    sget-object v1, Lcom/kakao/friends/request/FriendsRequest$FriendFilter;->NONE:Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kakao/friends/request/FriendsRequest$FriendFilter;->REGISTERED:Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kakao/friends/request/FriendsRequest$FriendFilter;->INVITABLE:Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kakao/friends/request/FriendsRequest$FriendFilter;->$VALUES:[Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput-object p3, p0, Lcom/kakao/friends/request/FriendsRequest$FriendFilter;->name:Ljava/lang/String;

    .line 64
    iput p4, p0, Lcom/kakao/friends/request/FriendsRequest$FriendFilter;->value:I

    .line 65
    return-void
.end method

.method static synthetic access$100(Lcom/kakao/friends/request/FriendsRequest$FriendFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kakao/friends/request/FriendsRequest$FriendFilter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/friends/request/FriendsRequest$FriendFilter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

    return-object v0
.end method

.method public static values()[Lcom/kakao/friends/request/FriendsRequest$FriendFilter;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/kakao/friends/request/FriendsRequest$FriendFilter;->$VALUES:[Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

    invoke-virtual {v0}, [Lcom/kakao/friends/request/FriendsRequest$FriendFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/friends/request/FriendsRequest$FriendFilter;

    return-object v0
.end method
