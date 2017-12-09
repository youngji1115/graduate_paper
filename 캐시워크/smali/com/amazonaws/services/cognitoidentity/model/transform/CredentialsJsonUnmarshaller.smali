.class Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;
.super Ljava/lang/Object;
.source "CredentialsJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/cognitoidentity/model/Credentials;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;->instance:Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;->instance:Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;

    .line 63
    :cond_0
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;->instance:Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentity/model/Credentials;
    .locals 4
    .param p1, "context"    # Lcom/amazonaws/transform/JsonUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getReader()Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v2

    .line 30
    .local v2, "reader":Lcom/amazonaws/util/json/AwsJsonReader;
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonReader;->isContainer()Z

    move-result v3

    if-nez v3, :cond_0

    .line 31
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    .line 32
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    .line 34
    :cond_0
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/Credentials;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;-><init>()V

    .line 35
    .local v0, "credentials":Lcom/amazonaws/services/cognitoidentity/model/Credentials;
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 36
    :goto_1
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 37
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "name":Ljava/lang/String;
    const-string v3, "AccessKeyId"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v3

    .line 40
    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->setAccessKeyId(Ljava/lang/String;)V

    goto :goto_1

    .line 41
    :cond_1
    const-string v3, "SecretKey"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 42
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v3

    .line 43
    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->setSecretKey(Ljava/lang/String;)V

    goto :goto_1

    .line 44
    :cond_2
    const-string v3, "SessionToken"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 45
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v3

    .line 46
    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->setSessionToken(Ljava/lang/String;)V

    goto :goto_1

    .line 47
    :cond_3
    const-string v3, "Expiration"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 48
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller;

    move-result-object v3

    .line 49
    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Date;

    move-result-object v3

    .line 48
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/cognitoidentity/model/Credentials;->setExpiration(Ljava/util/Date;)V

    goto :goto_1

    .line 51
    :cond_4
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_1

    .line 54
    .end local v1    # "name":Ljava/lang/String;
    :cond_5
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonReader;->endObject()V

    goto :goto_0
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentity/model/Credentials;

    move-result-object v0

    return-object v0
.end method
