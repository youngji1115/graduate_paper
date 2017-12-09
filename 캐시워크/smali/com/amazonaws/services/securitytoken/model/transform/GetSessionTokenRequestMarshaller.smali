.class public Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenRequestMarshaller;
.super Ljava/lang/Object;
.source "GetSessionTokenRequestMarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller",
        "<",
        "Lcom/amazonaws/Request",
        "<",
        "Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;",
        ">;",
        "Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;)Lcom/amazonaws/Request;
    .locals 7
    .param p1, "getSessionTokenRequest"    # Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v5, Lcom/amazonaws/AmazonClientException;

    const-string v6, "Invalid argument passed to marshall(GetSessionTokenRequest)"

    invoke-direct {v5, v6}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 37
    :cond_0
    new-instance v2, Lcom/amazonaws/DefaultRequest;

    const-string v5, "AWSSecurityTokenService"

    invoke-direct {v2, p1, v5}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 39
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;>;"
    const-string v5, "Action"

    const-string v6, "GetSessionToken"

    invoke-interface {v2, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v5, "Version"

    const-string v6, "2011-06-15"

    invoke-interface {v2, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 44
    const-string v1, "DurationSeconds"

    .line 45
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v0

    .line 46
    .local v0, "durationSeconds":Ljava/lang/Integer;
    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .end local v0    # "durationSeconds":Ljava/lang/Integer;
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 49
    const-string v1, "SerialNumber"

    .line 50
    .restart local v1    # "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "serialNumber":Ljava/lang/String;
    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v3    # "serialNumber":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 54
    const-string v1, "TokenCode"

    .line 55
    .restart local v1    # "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "tokenCode":Ljava/lang/String;
    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v4    # "tokenCode":Ljava/lang/String;
    :cond_3
    return-object v2
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    check-cast p1, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenRequestMarshaller;->marshall(Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
