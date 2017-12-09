.class Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;
.super Ljava/lang/Object;
.source "CredentialsJsonMarshaller.java"


# static fields
.field private static instance:Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;->instance:Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;->instance:Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;

    .line 56
    :cond_0
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;->instance:Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/cognitoidentity/model/Credentials;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .locals 5
    .param p1, "credentials"    # Lcom/amazonaws/services/cognitoidentity/model/Credentials;
    .param p2, "jsonWriter"    # Lcom/amazonaws/util/json/AwsJsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 28
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "accessKeyId":Ljava/lang/String;
    const-string v4, "AccessKeyId"

    invoke-interface {p2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 31
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    .end local v0    # "accessKeyId":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->getSecretKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 34
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->getSecretKey()Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "secretKey":Ljava/lang/String;
    const-string v4, "SecretKey"

    invoke-interface {p2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 36
    invoke-interface {p2, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 38
    .end local v2    # "secretKey":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 39
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "sessionToken":Ljava/lang/String;
    const-string v4, "SessionToken"

    invoke-interface {p2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 41
    invoke-interface {p2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 43
    .end local v3    # "sessionToken":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->getExpiration()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 44
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->getExpiration()Ljava/util/Date;

    move-result-object v1

    .line 45
    .local v1, "expiration":Ljava/util/Date;
    const-string v4, "Expiration"

    invoke-interface {p2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 46
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 48
    .end local v1    # "expiration":Ljava/util/Date;
    :cond_3
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 49
    return-void
.end method
