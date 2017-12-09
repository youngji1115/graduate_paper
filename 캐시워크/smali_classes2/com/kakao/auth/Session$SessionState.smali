.class final enum Lcom/kakao/auth/Session$SessionState;
.super Ljava/lang/Enum;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/auth/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SessionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/auth/Session$SessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/auth/Session$SessionState;

.field public static final enum CLOSED:Lcom/kakao/auth/Session$SessionState;

.field public static final enum OPENABLE:Lcom/kakao/auth/Session$SessionState;

.field public static final enum OPENED:Lcom/kakao/auth/Session$SessionState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 816
    new-instance v0, Lcom/kakao/auth/Session$SessionState;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v2}, Lcom/kakao/auth/Session$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/auth/Session$SessionState;->CLOSED:Lcom/kakao/auth/Session$SessionState;

    .line 823
    new-instance v0, Lcom/kakao/auth/Session$SessionState;

    const-string v1, "OPENABLE"

    invoke-direct {v0, v1, v3}, Lcom/kakao/auth/Session$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/auth/Session$SessionState;->OPENABLE:Lcom/kakao/auth/Session$SessionState;

    .line 830
    new-instance v0, Lcom/kakao/auth/Session$SessionState;

    const-string v1, "OPENED"

    invoke-direct {v0, v1, v4}, Lcom/kakao/auth/Session$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/auth/Session$SessionState;->OPENED:Lcom/kakao/auth/Session$SessionState;

    .line 809
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kakao/auth/Session$SessionState;

    sget-object v1, Lcom/kakao/auth/Session$SessionState;->CLOSED:Lcom/kakao/auth/Session$SessionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kakao/auth/Session$SessionState;->OPENABLE:Lcom/kakao/auth/Session$SessionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kakao/auth/Session$SessionState;->OPENED:Lcom/kakao/auth/Session$SessionState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kakao/auth/Session$SessionState;->$VALUES:[Lcom/kakao/auth/Session$SessionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 809
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/kakao/auth/Session$SessionState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kakao/auth/Session$SessionState;

    .prologue
    .line 809
    invoke-direct {p0}, Lcom/kakao/auth/Session$SessionState;->isOpened()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/kakao/auth/Session$SessionState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kakao/auth/Session$SessionState;

    .prologue
    .line 809
    invoke-direct {p0}, Lcom/kakao/auth/Session$SessionState;->isOpenable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/kakao/auth/Session$SessionState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kakao/auth/Session$SessionState;

    .prologue
    .line 809
    invoke-direct {p0}, Lcom/kakao/auth/Session$SessionState;->isClosed()Z

    move-result v0

    return v0
.end method

.method private isClosed()Z
    .locals 1

    .prologue
    .line 833
    sget-object v0, Lcom/kakao/auth/Session$SessionState;->CLOSED:Lcom/kakao/auth/Session$SessionState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOpenable()Z
    .locals 1

    .prologue
    .line 837
    sget-object v0, Lcom/kakao/auth/Session$SessionState;->OPENABLE:Lcom/kakao/auth/Session$SessionState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOpened()Z
    .locals 1

    .prologue
    .line 841
    sget-object v0, Lcom/kakao/auth/Session$SessionState;->OPENED:Lcom/kakao/auth/Session$SessionState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/auth/Session$SessionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 809
    const-class v0, Lcom/kakao/auth/Session$SessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/auth/Session$SessionState;

    return-object v0
.end method

.method public static values()[Lcom/kakao/auth/Session$SessionState;
    .locals 1

    .prologue
    .line 809
    sget-object v0, Lcom/kakao/auth/Session$SessionState;->$VALUES:[Lcom/kakao/auth/Session$SessionState;

    invoke-virtual {v0}, [Lcom/kakao/auth/Session$SessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/auth/Session$SessionState;

    return-object v0
.end method
