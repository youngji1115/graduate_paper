.class public Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleRequestMarshaller;
.super Ljava/lang/Object;
.source "AssumeRoleRequestMarshaller.java"

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
        "Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;",
        ">;",
        "Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;",
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
.method public marshall(Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;)Lcom/amazonaws/Request;
    .locals 11
    .param p1, "assumeRoleRequest"    # Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v9, Lcom/amazonaws/AmazonClientException;

    const-string v10, "Invalid argument passed to marshall(AssumeRoleRequest)"

    invoke-direct {v9, v10}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 37
    :cond_0
    new-instance v4, Lcom/amazonaws/DefaultRequest;

    const-string v9, "AWSSecurityTokenService"

    invoke-direct {v4, p1, v9}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 39
    .local v4, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;>;"
    const-string v9, "Action"

    const-string v10, "AssumeRole"

    invoke-interface {v4, v9, v10}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v9, "Version"

    const-string v10, "2011-06-15"

    invoke-interface {v4, v9, v10}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 44
    const-string v3, "RoleArn"

    .line 45
    .local v3, "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, "roleArn":Ljava/lang/String;
    invoke-static {v5}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v3, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v5    # "roleArn":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 49
    const-string v3, "RoleSessionName"

    .line 50
    .restart local v3    # "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, "roleSessionName":Ljava/lang/String;
    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v3, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v6    # "roleSessionName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicy()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 54
    const-string v3, "Policy"

    .line 55
    .restart local v3    # "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicy()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "policy":Ljava/lang/String;
    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v3, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local v2    # "policy":Ljava/lang/String;
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 59
    const-string v3, "DurationSeconds"

    .line 60
    .restart local v3    # "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v0

    .line 61
    .local v0, "durationSeconds":Ljava/lang/Integer;
    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v3, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .end local v0    # "durationSeconds":Ljava/lang/Integer;
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getExternalId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 64
    const-string v3, "ExternalId"

    .line 65
    .restart local v3    # "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getExternalId()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "externalId":Ljava/lang/String;
    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v3, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .end local v1    # "externalId":Ljava/lang/String;
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 69
    const-string v3, "SerialNumber"

    .line 70
    .restart local v3    # "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "serialNumber":Ljava/lang/String;
    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v3, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v7    # "serialNumber":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 74
    const-string v3, "TokenCode"

    .line 75
    .restart local v3    # "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, "tokenCode":Ljava/lang/String;
    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v3, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v8    # "tokenCode":Ljava/lang/String;
    :cond_7
    return-object v4
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
    check-cast p1, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleRequestMarshaller;->marshall(Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
