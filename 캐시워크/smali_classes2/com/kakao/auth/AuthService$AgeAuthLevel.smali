.class public final enum Lcom/kakao/auth/AuthService$AgeAuthLevel;
.super Ljava/lang/Enum;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/auth/AuthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AgeAuthLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/auth/AuthService$AgeAuthLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/auth/AuthService$AgeAuthLevel;

.field public static final enum LEVEL_1:Lcom/kakao/auth/AuthService$AgeAuthLevel;

.field public static final enum LEVEL_2:Lcom/kakao/auth/AuthService$AgeAuthLevel;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    new-instance v0, Lcom/kakao/auth/AuthService$AgeAuthLevel;

    const-string v1, "LEVEL_1"

    const-string v2, "10"

    const-string v3, "AUTH_LEVEL1"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/kakao/auth/AuthService$AgeAuthLevel;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/kakao/auth/AuthService$AgeAuthLevel;->LEVEL_1:Lcom/kakao/auth/AuthService$AgeAuthLevel;

    .line 44
    new-instance v0, Lcom/kakao/auth/AuthService$AgeAuthLevel;

    const-string v1, "LEVEL_2"

    const-string v2, "20"

    const-string v3, "AUTH_LEVEL2"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/kakao/auth/AuthService$AgeAuthLevel;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/kakao/auth/AuthService$AgeAuthLevel;->LEVEL_2:Lcom/kakao/auth/AuthService$AgeAuthLevel;

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kakao/auth/AuthService$AgeAuthLevel;

    sget-object v1, Lcom/kakao/auth/AuthService$AgeAuthLevel;->LEVEL_1:Lcom/kakao/auth/AuthService$AgeAuthLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kakao/auth/AuthService$AgeAuthLevel;->LEVEL_2:Lcom/kakao/auth/AuthService$AgeAuthLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kakao/auth/AuthService$AgeAuthLevel;->$VALUES:[Lcom/kakao/auth/AuthService$AgeAuthLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-object p3, p0, Lcom/kakao/auth/AuthService$AgeAuthLevel;->value:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/kakao/auth/AuthService$AgeAuthLevel;->name:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static convertByName(Ljava/lang/String;)Lcom/kakao/auth/AuthService$AgeAuthLevel;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {}, Lcom/kakao/auth/AuthService$AgeAuthLevel;->values()[Lcom/kakao/auth/AuthService$AgeAuthLevel;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 55
    .local v0, "value":Lcom/kakao/auth/AuthService$AgeAuthLevel;
    invoke-virtual {v0}, Lcom/kakao/auth/AuthService$AgeAuthLevel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    .end local v0    # "value":Lcom/kakao/auth/AuthService$AgeAuthLevel;
    :goto_1
    return-object v0

    .line 54
    .restart local v0    # "value":Lcom/kakao/auth/AuthService$AgeAuthLevel;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "value":Lcom/kakao/auth/AuthService$AgeAuthLevel;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/auth/AuthService$AgeAuthLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/kakao/auth/AuthService$AgeAuthLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/auth/AuthService$AgeAuthLevel;

    return-object v0
.end method

.method public static values()[Lcom/kakao/auth/AuthService$AgeAuthLevel;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/kakao/auth/AuthService$AgeAuthLevel;->$VALUES:[Lcom/kakao/auth/AuthService$AgeAuthLevel;

    invoke-virtual {v0}, [Lcom/kakao/auth/AuthService$AgeAuthLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/auth/AuthService$AgeAuthLevel;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kakao/auth/AuthService$AgeAuthLevel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kakao/auth/AuthService$AgeAuthLevel;->value:Ljava/lang/String;

    return-object v0
.end method
