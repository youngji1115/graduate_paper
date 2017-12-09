.class public Lcom/kakao/kakaotalk/request/TalkProfileRequest;
.super Lcom/kakao/auth/network/request/ApiRequest;
.source "TalkProfileRequest.java"


# instance fields
.field private final secureResource:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/kakao/auth/network/request/ApiRequest;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kakao/kakaotalk/request/TalkProfileRequest;->secureResource:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "secureResource"    # Z

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kakao/auth/network/request/ApiRequest;-><init>()V

    .line 34
    iput-boolean p1, p0, Lcom/kakao/kakaotalk/request/TalkProfileRequest;->secureResource:Z

    .line 35
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "GET"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 44
    sget-object v2, Lcom/kakao/network/ServerProtocol;->API_AUTHORITY:Ljava/lang/String;

    const-string v3, "v1/api/talk/profile"

    invoke-static {v2, v3}, Lcom/kakao/auth/network/request/ApiRequest;->createBaseURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "url":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/kakao/kakaotalk/request/TalkProfileRequest;->secureResource:Z

    if-eqz v2, :cond_0

    .line 46
    new-instance v0, Lcom/kakao/network/helper/QueryString;

    invoke-direct {v0}, Lcom/kakao/network/helper/QueryString;-><init>()V

    .line 47
    .local v0, "qs":Lcom/kakao/network/helper/QueryString;
    const-string v2, "secure_resource"

    iget-boolean v3, p0, Lcom/kakao/kakaotalk/request/TalkProfileRequest;->secureResource:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kakao/network/helper/QueryString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .end local v0    # "qs":Lcom/kakao/network/helper/QueryString;
    :cond_0
    return-object v1
.end method
