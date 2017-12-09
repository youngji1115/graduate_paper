.class public Lcom/kakao/usermgmt/request/AgeAuthRequest;
.super Lcom/kakao/auth/network/request/ApiRequest;
.source "AgeAuthRequest.java"


# instance fields
.field private final ageLimit:Ljava/lang/String;

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


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "ageLimit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "propertyKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/kakao/auth/network/request/ApiRequest;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/kakao/usermgmt/request/AgeAuthRequest;->ageLimit:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/kakao/usermgmt/request/AgeAuthRequest;->propertyKeyList:Ljava/util/List;

    .line 39
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "GET"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 48
    sget-object v2, Lcom/kakao/network/ServerProtocol;->API_AUTHORITY:Ljava/lang/String;

    const-string v3, "v1/user/age_auth"

    invoke-static {v2, v3}, Lcom/kakao/usermgmt/request/AgeAuthRequest;->createBaseURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "baseUrl":Ljava/lang/String;
    new-instance v1, Lcom/kakao/network/helper/QueryString;

    invoke-direct {v1}, Lcom/kakao/network/helper/QueryString;-><init>()V

    .line 51
    .local v1, "qs":Lcom/kakao/network/helper/QueryString;
    iget-object v2, p0, Lcom/kakao/usermgmt/request/AgeAuthRequest;->ageLimit:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kakao/usermgmt/request/AgeAuthRequest;->ageLimit:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 52
    const-string v2, "age_limit"

    iget-object v3, p0, Lcom/kakao/usermgmt/request/AgeAuthRequest;->ageLimit:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/kakao/usermgmt/request/AgeAuthRequest;->propertyKeyList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kakao/usermgmt/request/AgeAuthRequest;->propertyKeyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 56
    const-string v2, "property_keys"

    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/kakao/usermgmt/request/AgeAuthRequest;->propertyKeyList:Ljava/util/List;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakao/network/helper/QueryString;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_1
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
