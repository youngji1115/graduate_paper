.class public Lcom/kakao/auth/network/request/AccessTokenInfoRequest;
.super Lcom/kakao/auth/network/request/ApiRequest;
.source "AccessTokenInfoRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/kakao/auth/network/request/ApiRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "GET"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/kakao/network/ServerProtocol;->API_AUTHORITY:Ljava/lang/String;

    const-string v1, "v1/user/access_token_info"

    invoke-static {v0, v1}, Lcom/kakao/auth/network/request/AccessTokenInfoRequest;->createBaseURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
