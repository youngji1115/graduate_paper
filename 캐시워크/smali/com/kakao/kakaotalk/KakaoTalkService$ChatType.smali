.class public final enum Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;
.super Ljava/lang/Enum;
.source "KakaoTalkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/kakaotalk/KakaoTalkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChatType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

.field public static final enum ALL:Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

.field public static final enum MULTI:Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

.field public static final enum SINGLE:Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

    const-string v1, "SINGLE"

    const-string v2, "single"

    invoke-direct {v0, v1, v3, v2}, Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;->SINGLE:Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

    .line 49
    new-instance v0, Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

    const-string v1, "MULTI"

    const-string v2, "multi"

    invoke-direct {v0, v1, v4, v2}, Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;->MULTI:Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

    .line 53
    new-instance v0, Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

    const-string v1, "ALL"

    const-string v2, "all"

    invoke-direct {v0, v1, v5, v2}, Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;->ALL:Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

    sget-object v1, Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;->SINGLE:Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;->MULTI:Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;->ALL:Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;->$VALUES:[Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;->name:Ljava/lang/String;

    .line 59
    return-void
.end method

.method protected static getType(Ljava/lang/String;)Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {}, Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;->values()[Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 63
    .local v0, "type":Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;
    iget-object v4, v0, Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    .end local v0    # "type":Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;
    :goto_1
    return-object v0

    .line 62
    .restart local v0    # "type":Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "type":Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;
    :cond_1
    sget-object v0, Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;->MULTI:Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

    return-object v0
.end method

.method public static values()[Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;->$VALUES:[Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

    invoke-virtual {v0}, [Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

    return-object v0
.end method
