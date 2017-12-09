.class Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxMarshaller;
.super Ljava/lang/Object;
.source "FederatedUserStaxMarshaller.java"


# static fields
.field private static instance:Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxMarshaller;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxMarshaller;->instance:Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxMarshaller;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxMarshaller;->instance:Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxMarshaller;

    .line 46
    :cond_0
    sget-object v0, Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxMarshaller;->instance:Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/securitytoken/model/FederatedUser;Lcom/amazonaws/Request;Ljava/lang/String;)V
    .locals 5
    .param p1, "_federatedUser"    # Lcom/amazonaws/services/securitytoken/model/FederatedUser;
    .param p3, "_prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/securitytoken/model/FederatedUser;",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/FederatedUser;->getFederatedUserId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "FederatedUserId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/FederatedUser;->getFederatedUserId()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "federatedUserId":Ljava/lang/String;
    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .end local v1    # "federatedUserId":Ljava/lang/String;
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/FederatedUser;->getArn()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Arn"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    .restart local v2    # "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/FederatedUser;->getArn()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "arn":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .end local v0    # "arn":Ljava/lang/String;
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_1
    return-void
.end method
