.class public final enum Lcom/kakao/auth/Session$RequestType;
.super Ljava/lang/Enum;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/auth/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/auth/Session$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/auth/Session$RequestType;

.field public static final enum GETTING_ACCESS_TOKEN:Lcom/kakao/auth/Session$RequestType;

.field public static final enum GETTING_AUTHORIZATION_CODE:Lcom/kakao/auth/Session$RequestType;

.field public static final enum REFRESHING_ACCESS_TOKEN:Lcom/kakao/auth/Session$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 853
    new-instance v0, Lcom/kakao/auth/Session$RequestType;

    const-string v1, "GETTING_AUTHORIZATION_CODE"

    invoke-direct {v0, v1, v2}, Lcom/kakao/auth/Session$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/auth/Session$RequestType;->GETTING_AUTHORIZATION_CODE:Lcom/kakao/auth/Session$RequestType;

    .line 858
    new-instance v0, Lcom/kakao/auth/Session$RequestType;

    const-string v1, "GETTING_ACCESS_TOKEN"

    invoke-direct {v0, v1, v3}, Lcom/kakao/auth/Session$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/auth/Session$RequestType;->GETTING_ACCESS_TOKEN:Lcom/kakao/auth/Session$RequestType;

    .line 863
    new-instance v0, Lcom/kakao/auth/Session$RequestType;

    const-string v1, "REFRESHING_ACCESS_TOKEN"

    invoke-direct {v0, v1, v4}, Lcom/kakao/auth/Session$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/auth/Session$RequestType;->REFRESHING_ACCESS_TOKEN:Lcom/kakao/auth/Session$RequestType;

    .line 849
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kakao/auth/Session$RequestType;

    sget-object v1, Lcom/kakao/auth/Session$RequestType;->GETTING_AUTHORIZATION_CODE:Lcom/kakao/auth/Session$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kakao/auth/Session$RequestType;->GETTING_ACCESS_TOKEN:Lcom/kakao/auth/Session$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kakao/auth/Session$RequestType;->REFRESHING_ACCESS_TOKEN:Lcom/kakao/auth/Session$RequestType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kakao/auth/Session$RequestType;->$VALUES:[Lcom/kakao/auth/Session$RequestType;

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
    .line 849
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/kakao/auth/Session$RequestType;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kakao/auth/Session$RequestType;

    .prologue
    .line 849
    invoke-direct {p0}, Lcom/kakao/auth/Session$RequestType;->isAccessTokenRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/kakao/auth/Session$RequestType;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kakao/auth/Session$RequestType;

    .prologue
    .line 849
    invoke-direct {p0}, Lcom/kakao/auth/Session$RequestType;->isRefreshingTokenRequest()Z

    move-result v0

    return v0
.end method

.method private isAccessTokenRequest()Z
    .locals 1

    .prologue
    .line 870
    sget-object v0, Lcom/kakao/auth/Session$RequestType;->GETTING_ACCESS_TOKEN:Lcom/kakao/auth/Session$RequestType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAuthorizationCodeRequest()Z
    .locals 1

    .prologue
    .line 866
    sget-object v0, Lcom/kakao/auth/Session$RequestType;->GETTING_AUTHORIZATION_CODE:Lcom/kakao/auth/Session$RequestType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRefreshingTokenRequest()Z
    .locals 1

    .prologue
    .line 874
    sget-object v0, Lcom/kakao/auth/Session$RequestType;->REFRESHING_ACCESS_TOKEN:Lcom/kakao/auth/Session$RequestType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/auth/Session$RequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 849
    const-class v0, Lcom/kakao/auth/Session$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/auth/Session$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/kakao/auth/Session$RequestType;
    .locals 1

    .prologue
    .line 849
    sget-object v0, Lcom/kakao/auth/Session$RequestType;->$VALUES:[Lcom/kakao/auth/Session$RequestType;

    invoke-virtual {v0}, [Lcom/kakao/auth/Session$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/auth/Session$RequestType;

    return-object v0
.end method
