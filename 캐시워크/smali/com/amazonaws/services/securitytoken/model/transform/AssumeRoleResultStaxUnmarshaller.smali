.class public Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleResultStaxUnmarshaller;
.super Ljava/lang/Object;
.source "AssumeRoleResultStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleResultStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleResultStaxUnmarshaller;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleResultStaxUnmarshaller;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleResultStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleResultStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleResultStaxUnmarshaller;

    .line 79
    :cond_0
    sget-object v0, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleResultStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;
    .locals 5
    .param p1, "context"    # Lcom/amazonaws/transform/StaxUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;

    invoke-direct {v0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;-><init>()V

    .line 38
    .local v0, "assumeRoleResult":Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v1

    .line 39
    .local v1, "originalDepth":I
    add-int/lit8 v2, v1, 0x1

    .line 41
    .local v2, "targetDepth":I
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->isStartOfDocument()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    add-int/lit8 v2, v2, 0x2

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->nextEvent()I

    move-result v3

    .line 46
    .local v3, "xmlEvent":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 71
    :goto_1
    return-object v0

    .line 49
    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 50
    const-string v4, "Credentials"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 51
    invoke-static {}, Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;

    move-result-object v4

    .line 52
    invoke-virtual {v4, p1}, Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v4

    .line 51
    invoke-virtual {v0, v4}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->setCredentials(Lcom/amazonaws/services/securitytoken/model/Credentials;)V

    goto :goto_0

    .line 55
    :cond_2
    const-string v4, "AssumedRoleUser"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 57
    invoke-static {}, Lcom/amazonaws/services/securitytoken/model/transform/AssumedRoleUserStaxUnmarshaller;->getInstance()Lcom/amazonaws/services/securitytoken/model/transform/AssumedRoleUserStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/securitytoken/model/transform/AssumedRoleUserStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    move-result-object v4

    .line 56
    invoke-virtual {v0, v4}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->setAssumedRoleUser(Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;)V

    goto :goto_0

    .line 60
    :cond_3
    const-string v4, "PackedPolicySize"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;

    move-result-object v4

    .line 62
    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/Integer;

    move-result-object v4

    .line 61
    invoke-virtual {v0, v4}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;->setPackedPolicySize(Ljava/lang/Integer;)V

    goto :goto_0

    .line 65
    :cond_4
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v4

    if-ge v4, v1, :cond_0

    goto :goto_1
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    check-cast p1, Lcom/amazonaws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/model/transform/AssumeRoleResultStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;

    move-result-object v0

    return-object v0
.end method
