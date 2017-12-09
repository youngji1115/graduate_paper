.class final enum Lcom/kakao/friends/response/model/FriendInfo$Relation;
.super Ljava/lang/Enum;
.source "FriendInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/friends/response/model/FriendInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Relation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/friends/response/model/FriendInfo$Relation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/friends/response/model/FriendInfo$Relation;

.field public static final enum FRIEND:Lcom/kakao/friends/response/model/FriendInfo$Relation;

.field public static final enum NONE:Lcom/kakao/friends/response/model/FriendInfo$Relation;

.field public static final enum NOT_FRIEND:Lcom/kakao/friends/response/model/FriendInfo$Relation;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/kakao/friends/response/model/FriendInfo$Relation;

    const-string v1, "NONE"

    const-string v2, "N/A"

    invoke-direct {v0, v1, v3, v2}, Lcom/kakao/friends/response/model/FriendInfo$Relation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/friends/response/model/FriendInfo$Relation;->NONE:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    .line 35
    new-instance v0, Lcom/kakao/friends/response/model/FriendInfo$Relation;

    const-string v1, "FRIEND"

    const-string v2, "FRIEND"

    invoke-direct {v0, v1, v4, v2}, Lcom/kakao/friends/response/model/FriendInfo$Relation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/friends/response/model/FriendInfo$Relation;->FRIEND:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    .line 36
    new-instance v0, Lcom/kakao/friends/response/model/FriendInfo$Relation;

    const-string v1, "NOT_FRIEND"

    const-string v2, "NO_FRIEND"

    invoke-direct {v0, v1, v5, v2}, Lcom/kakao/friends/response/model/FriendInfo$Relation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/friends/response/model/FriendInfo$Relation;->NOT_FRIEND:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kakao/friends/response/model/FriendInfo$Relation;

    sget-object v1, Lcom/kakao/friends/response/model/FriendInfo$Relation;->NONE:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kakao/friends/response/model/FriendInfo$Relation;->FRIEND:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kakao/friends/response/model/FriendInfo$Relation;->NOT_FRIEND:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kakao/friends/response/model/FriendInfo$Relation;->$VALUES:[Lcom/kakao/friends/response/model/FriendInfo$Relation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/kakao/friends/response/model/FriendInfo$Relation;->name:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static convert(Ljava/lang/String;)Lcom/kakao/friends/response/model/FriendInfo$Relation;
    .locals 5
    .param p0, "i"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {}, Lcom/kakao/friends/response/model/FriendInfo$Relation;->values()[Lcom/kakao/friends/response/model/FriendInfo$Relation;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 45
    .local v0, "current":Lcom/kakao/friends/response/model/FriendInfo$Relation;
    iget-object v4, v0, Lcom/kakao/friends/response/model/FriendInfo$Relation;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    .end local v0    # "current":Lcom/kakao/friends/response/model/FriendInfo$Relation;
    :goto_1
    return-object v0

    .line 44
    .restart local v0    # "current":Lcom/kakao/friends/response/model/FriendInfo$Relation;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "current":Lcom/kakao/friends/response/model/FriendInfo$Relation;
    :cond_1
    sget-object v0, Lcom/kakao/friends/response/model/FriendInfo$Relation;->NONE:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/friends/response/model/FriendInfo$Relation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/kakao/friends/response/model/FriendInfo$Relation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/friends/response/model/FriendInfo$Relation;

    return-object v0
.end method

.method public static values()[Lcom/kakao/friends/response/model/FriendInfo$Relation;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/kakao/friends/response/model/FriendInfo$Relation;->$VALUES:[Lcom/kakao/friends/response/model/FriendInfo$Relation;

    invoke-virtual {v0}, [Lcom/kakao/friends/response/model/FriendInfo$Relation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/friends/response/model/FriendInfo$Relation;

    return-object v0
.end method
