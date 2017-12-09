.class public final enum Lcom/kakao/auth/AuthType;
.super Ljava/lang/Enum;
.source "AuthType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/auth/AuthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/auth/AuthType;

.field public static final enum KAKAO_ACCOUNT:Lcom/kakao/auth/AuthType;

.field public static final enum KAKAO_LOGIN_ALL:Lcom/kakao/auth/AuthType;

.field public static final enum KAKAO_STORY:Lcom/kakao/auth/AuthType;

.field public static final enum KAKAO_TALK:Lcom/kakao/auth/AuthType;

.field public static final enum KAKAO_TALK_EXCLUDE_NATIVE_LOGIN:Lcom/kakao/auth/AuthType;


# instance fields
.field private final number:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/kakao/auth/AuthType;

    const-string v1, "KAKAO_TALK"

    invoke-direct {v0, v1, v2, v2}, Lcom/kakao/auth/AuthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/auth/AuthType;->KAKAO_TALK:Lcom/kakao/auth/AuthType;

    .line 31
    new-instance v0, Lcom/kakao/auth/AuthType;

    const-string v1, "KAKAO_STORY"

    invoke-direct {v0, v1, v3, v3}, Lcom/kakao/auth/AuthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/auth/AuthType;->KAKAO_STORY:Lcom/kakao/auth/AuthType;

    .line 36
    new-instance v0, Lcom/kakao/auth/AuthType;

    const-string v1, "KAKAO_ACCOUNT"

    invoke-direct {v0, v1, v4, v4}, Lcom/kakao/auth/AuthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/auth/AuthType;->KAKAO_ACCOUNT:Lcom/kakao/auth/AuthType;

    .line 42
    new-instance v0, Lcom/kakao/auth/AuthType;

    const-string v1, "KAKAO_TALK_EXCLUDE_NATIVE_LOGIN"

    invoke-direct {v0, v1, v5, v5}, Lcom/kakao/auth/AuthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/auth/AuthType;->KAKAO_TALK_EXCLUDE_NATIVE_LOGIN:Lcom/kakao/auth/AuthType;

    .line 47
    new-instance v0, Lcom/kakao/auth/AuthType;

    const-string v1, "KAKAO_LOGIN_ALL"

    invoke-direct {v0, v1, v6, v6}, Lcom/kakao/auth/AuthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/auth/AuthType;->KAKAO_LOGIN_ALL:Lcom/kakao/auth/AuthType;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/kakao/auth/AuthType;

    sget-object v1, Lcom/kakao/auth/AuthType;->KAKAO_TALK:Lcom/kakao/auth/AuthType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kakao/auth/AuthType;->KAKAO_STORY:Lcom/kakao/auth/AuthType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kakao/auth/AuthType;->KAKAO_ACCOUNT:Lcom/kakao/auth/AuthType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kakao/auth/AuthType;->KAKAO_TALK_EXCLUDE_NATIVE_LOGIN:Lcom/kakao/auth/AuthType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kakao/auth/AuthType;->KAKAO_LOGIN_ALL:Lcom/kakao/auth/AuthType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/kakao/auth/AuthType;->$VALUES:[Lcom/kakao/auth/AuthType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/kakao/auth/AuthType;->number:I

    .line 53
    return-void
.end method

.method public static valueOf(I)Lcom/kakao/auth/AuthType;
    .locals 1
    .param p0, "number"    # I

    .prologue
    .line 60
    sget-object v0, Lcom/kakao/auth/AuthType;->KAKAO_TALK:Lcom/kakao/auth/AuthType;

    invoke-virtual {v0}, Lcom/kakao/auth/AuthType;->getNumber()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 61
    sget-object v0, Lcom/kakao/auth/AuthType;->KAKAO_TALK:Lcom/kakao/auth/AuthType;

    .line 71
    :goto_0
    return-object v0

    .line 62
    :cond_0
    sget-object v0, Lcom/kakao/auth/AuthType;->KAKAO_STORY:Lcom/kakao/auth/AuthType;

    invoke-virtual {v0}, Lcom/kakao/auth/AuthType;->getNumber()I

    move-result v0

    if-ne p0, v0, :cond_1

    .line 63
    sget-object v0, Lcom/kakao/auth/AuthType;->KAKAO_STORY:Lcom/kakao/auth/AuthType;

    goto :goto_0

    .line 64
    :cond_1
    sget-object v0, Lcom/kakao/auth/AuthType;->KAKAO_ACCOUNT:Lcom/kakao/auth/AuthType;

    invoke-virtual {v0}, Lcom/kakao/auth/AuthType;->getNumber()I

    move-result v0

    if-ne p0, v0, :cond_2

    .line 65
    sget-object v0, Lcom/kakao/auth/AuthType;->KAKAO_ACCOUNT:Lcom/kakao/auth/AuthType;

    goto :goto_0

    .line 66
    :cond_2
    sget-object v0, Lcom/kakao/auth/AuthType;->KAKAO_TALK_EXCLUDE_NATIVE_LOGIN:Lcom/kakao/auth/AuthType;

    invoke-virtual {v0}, Lcom/kakao/auth/AuthType;->getNumber()I

    move-result v0

    if-ne p0, v0, :cond_3

    .line 67
    sget-object v0, Lcom/kakao/auth/AuthType;->KAKAO_TALK_EXCLUDE_NATIVE_LOGIN:Lcom/kakao/auth/AuthType;

    goto :goto_0

    .line 68
    :cond_3
    sget-object v0, Lcom/kakao/auth/AuthType;->KAKAO_LOGIN_ALL:Lcom/kakao/auth/AuthType;

    invoke-virtual {v0}, Lcom/kakao/auth/AuthType;->getNumber()I

    move-result v0

    if-ne p0, v0, :cond_4

    .line 69
    sget-object v0, Lcom/kakao/auth/AuthType;->KAKAO_LOGIN_ALL:Lcom/kakao/auth/AuthType;

    goto :goto_0

    .line 71
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/auth/AuthType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/kakao/auth/AuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/auth/AuthType;

    return-object v0
.end method

.method public static values()[Lcom/kakao/auth/AuthType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/kakao/auth/AuthType;->$VALUES:[Lcom/kakao/auth/AuthType;

    invoke-virtual {v0}, [Lcom/kakao/auth/AuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/auth/AuthType;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/kakao/auth/AuthType;->number:I

    return v0
.end method
