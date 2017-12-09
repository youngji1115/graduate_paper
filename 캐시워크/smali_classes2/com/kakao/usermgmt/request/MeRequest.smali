.class public Lcom/kakao/usermgmt/request/MeRequest;
.super Lcom/kakao/auth/network/request/ApiRequest;
.source "MeRequest.java"


# instance fields
.field private final propertyKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final secureResource:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .param p2, "secureResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "propertyKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/kakao/auth/network/request/ApiRequest;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/kakao/usermgmt/request/MeRequest;->propertyKeyList:Ljava/util/List;

    .line 36
    iput-boolean p2, p0, Lcom/kakao/usermgmt/request/MeRequest;->secureResource:Z

    .line 37
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "GET"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 46
    sget-object v2, Lcom/kakao/network/ServerProtocol;->API_AUTHORITY:Ljava/lang/String;

    const-string v3, "v1/user/me"

    invoke-static {v2, v3}, Lcom/kakao/auth/network/request/ApiRequest;->createBaseURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "baseUrl":Ljava/lang/String;
    new-instance v1, Lcom/kakao/network/helper/QueryString;

    invoke-direct {v1}, Lcom/kakao/network/helper/QueryString;-><init>()V

    .line 48
    .local v1, "qs":Lcom/kakao/network/helper/QueryString;
    const-string v2, "secure_resource"

    iget-boolean v3, p0, Lcom/kakao/usermgmt/request/MeRequest;->secureResource:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/kakao/usermgmt/request/MeRequest;->propertyKeyList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kakao/usermgmt/request/MeRequest;->propertyKeyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 51
    const-string v2, "propertyKeys"

    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/kakao/usermgmt/request/MeRequest;->propertyKeyList:Ljava/util/List;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kakao/network/helper/QueryString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
