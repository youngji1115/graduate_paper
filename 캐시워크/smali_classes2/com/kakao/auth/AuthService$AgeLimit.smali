.class public final enum Lcom/kakao/auth/AuthService$AgeLimit;
.super Ljava/lang/Enum;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/auth/AuthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AgeLimit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/auth/AuthService$AgeLimit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/auth/AuthService$AgeLimit;

.field public static final enum LIMIT_12:Lcom/kakao/auth/AuthService$AgeLimit;

.field public static final enum LIMIT_15:Lcom/kakao/auth/AuthService$AgeLimit;

.field public static final enum LIMIT_18:Lcom/kakao/auth/AuthService$AgeLimit;

.field public static final enum LIMIT_19:Lcom/kakao/auth/AuthService$AgeLimit;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    new-instance v0, Lcom/kakao/auth/AuthService$AgeLimit;

    const-string v1, "LIMIT_12"

    const-string v2, "12"

    invoke-direct {v0, v1, v3, v2}, Lcom/kakao/auth/AuthService$AgeLimit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/auth/AuthService$AgeLimit;->LIMIT_12:Lcom/kakao/auth/AuthService$AgeLimit;

    .line 84
    new-instance v0, Lcom/kakao/auth/AuthService$AgeLimit;

    const-string v1, "LIMIT_15"

    const-string v2, "15"

    invoke-direct {v0, v1, v4, v2}, Lcom/kakao/auth/AuthService$AgeLimit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/auth/AuthService$AgeLimit;->LIMIT_15:Lcom/kakao/auth/AuthService$AgeLimit;

    .line 89
    new-instance v0, Lcom/kakao/auth/AuthService$AgeLimit;

    const-string v1, "LIMIT_18"

    const-string v2, "18"

    invoke-direct {v0, v1, v5, v2}, Lcom/kakao/auth/AuthService$AgeLimit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/auth/AuthService$AgeLimit;->LIMIT_18:Lcom/kakao/auth/AuthService$AgeLimit;

    .line 94
    new-instance v0, Lcom/kakao/auth/AuthService$AgeLimit;

    const-string v1, "LIMIT_19"

    const-string v2, "19"

    invoke-direct {v0, v1, v6, v2}, Lcom/kakao/auth/AuthService$AgeLimit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/auth/AuthService$AgeLimit;->LIMIT_19:Lcom/kakao/auth/AuthService$AgeLimit;

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kakao/auth/AuthService$AgeLimit;

    sget-object v1, Lcom/kakao/auth/AuthService$AgeLimit;->LIMIT_12:Lcom/kakao/auth/AuthService$AgeLimit;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kakao/auth/AuthService$AgeLimit;->LIMIT_15:Lcom/kakao/auth/AuthService$AgeLimit;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kakao/auth/AuthService$AgeLimit;->LIMIT_18:Lcom/kakao/auth/AuthService$AgeLimit;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kakao/auth/AuthService$AgeLimit;->LIMIT_19:Lcom/kakao/auth/AuthService$AgeLimit;

    aput-object v1, v0, v6

    sput-object v0, Lcom/kakao/auth/AuthService$AgeLimit;->$VALUES:[Lcom/kakao/auth/AuthService$AgeLimit;

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
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput-object p3, p0, Lcom/kakao/auth/AuthService$AgeLimit;->value:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/auth/AuthService$AgeLimit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    const-class v0, Lcom/kakao/auth/AuthService$AgeLimit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/auth/AuthService$AgeLimit;

    return-object v0
.end method

.method public static values()[Lcom/kakao/auth/AuthService$AgeLimit;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/kakao/auth/AuthService$AgeLimit;->$VALUES:[Lcom/kakao/auth/AuthService$AgeLimit;

    invoke-virtual {v0}, [Lcom/kakao/auth/AuthService$AgeLimit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/auth/AuthService$AgeLimit;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kakao/auth/AuthService$AgeLimit;->value:Ljava/lang/String;

    return-object v0
.end method
