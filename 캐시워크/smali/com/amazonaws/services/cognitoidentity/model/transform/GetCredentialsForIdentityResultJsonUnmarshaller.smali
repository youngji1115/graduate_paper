.class public Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "GetCredentialsForIdentityResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityResultJsonUnmarshaller;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityResultJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityResultJsonUnmarshaller;

    .line 58
    :cond_0
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    .locals 4
    .param p1, "context"    # Lcom/amazonaws/transform/JsonUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;-><init>()V

    .line 33
    .local v0, "getCredentialsForIdentityResult":Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getReader()Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v2

    .line 34
    .local v2, "reader":Lcom/amazonaws/util/json/AwsJsonReader;
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 35
    :goto_0
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 36
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "name":Ljava/lang/String;
    const-string v3, "IdentityId"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v3

    .line 39
    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->setIdentityId(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_0
    const-string v3, "Credentials"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    invoke-static {}, Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;

    move-result-object v3

    .line 43
    invoke-virtual {v3, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentity/model/Credentials;

    move-result-object v3

    .line 41
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;->setCredentials(Lcom/amazonaws/services/cognitoidentity/model/Credentials;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 48
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonReader;->endObject()V

    .line 50
    return-object v0
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

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityResultJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;

    move-result-object v0

    return-object v0
.end method
