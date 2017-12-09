.class public Lcom/kakao/usermgmt/request/SignupRequest;
.super Lcom/kakao/auth/network/request/ApiRequest;
.source "SignupRequest.java"


# instance fields
.field private final properties:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/kakao/auth/network/request/ApiRequest;-><init>()V

    .line 34
    if-eqz p1, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lcom/kakao/usermgmt/request/SignupRequest;->properties:Lorg/json/JSONObject;

    .line 35
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "POST"

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/kakao/usermgmt/request/SignupRequest;->properties:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 51
    const-string v1, "properties"

    iget-object v2, p0, Lcom/kakao/usermgmt/request/SignupRequest;->properties:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/kakao/network/ServerProtocol;->API_AUTHORITY:Ljava/lang/String;

    const-string v1, "v1/user/signup"

    invoke-static {v0, v1}, Lcom/kakao/usermgmt/request/SignupRequest;->createBaseURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
