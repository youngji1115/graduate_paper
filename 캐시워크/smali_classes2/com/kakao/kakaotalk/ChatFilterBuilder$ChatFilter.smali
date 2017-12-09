.class public final enum Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;
.super Ljava/lang/Enum;
.source "ChatFilterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/kakaotalk/ChatFilterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChatFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

.field public static final enum DIRECT:Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

.field public static final enum MULTI:Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

.field public static final enum OPEN:Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

.field public static final enum REGULAR:Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

    const-string v1, "OPEN"

    const-string v2, "open"

    invoke-direct {v0, v1, v3, v2}, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;->OPEN:Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

    .line 37
    new-instance v0, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

    const-string v1, "REGULAR"

    const-string v2, "regular"

    invoke-direct {v0, v1, v4, v2}, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;->REGULAR:Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

    .line 42
    new-instance v0, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

    const-string v1, "MULTI"

    const-string v2, "multi"

    invoke-direct {v0, v1, v5, v2}, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;->MULTI:Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

    .line 47
    new-instance v0, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

    const-string v1, "DIRECT"

    const-string v2, "direct"

    invoke-direct {v0, v1, v6, v2}, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;->DIRECT:Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

    sget-object v1, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;->OPEN:Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;->REGULAR:Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;->MULTI:Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;->DIRECT:Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

    aput-object v1, v0, v6

    sput-object v0, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;->$VALUES:[Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;->value:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;->value:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

    return-object v0
.end method

.method public static values()[Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;->$VALUES:[Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

    invoke-virtual {v0}, [Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/kakaotalk/ChatFilterBuilder$ChatFilter;

    return-object v0
.end method
