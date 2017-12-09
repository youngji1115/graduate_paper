.class public Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenRequestMarshaller;
.super Ljava/lang/Object;
.source "GetOpenIdTokenRequestMarshaller.java"

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
        "Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;",
        ">;",
        "Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;)Lcom/amazonaws/Request;
    .locals 16
    .param p1, "getOpenIdTokenRequest"    # Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v13, Lcom/amazonaws/AmazonClientException;

    const-string v14, "Invalid argument passed to marshall(GetOpenIdTokenRequest)"

    invoke-direct {v13, v14}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 49
    :cond_0
    new-instance v7, Lcom/amazonaws/DefaultRequest;

    const-string v13, "AmazonCognitoIdentity"

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v13}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 51
    .local v7, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;>;"
    const-string v11, "AWSCognitoIdentityService.GetOpenIdToken"

    .line 52
    .local v11, "target":Ljava/lang/String;
    const-string v13, "X-Amz-Target"

    invoke-interface {v7, v13, v11}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v13, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-interface {v7, v13}, Lcom/amazonaws/Request;->setHttpMethod(Lcom/amazonaws/http/HttpMethodName;)V

    .line 55
    const-string v12, "/"

    .line 56
    .local v12, "uriResourcePath":Ljava/lang/String;
    invoke-interface {v7, v12}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 58
    :try_start_0
    new-instance v9, Ljava/io/StringWriter;

    invoke-direct {v9}, Ljava/io/StringWriter;-><init>()V

    .line 59
    .local v9, "stringWriter":Ljava/io/StringWriter;
    invoke-static {v9}, Lcom/amazonaws/util/json/JsonUtils;->getJsonWriter(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v3

    .line 60
    .local v3, "jsonWriter":Lcom/amazonaws/util/json/AwsJsonWriter;
    invoke-interface {v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;->getIdentityId()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;->getIdentityId()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "identityId":Ljava/lang/String;
    const-string v13, "IdentityId"

    invoke-interface {v3, v13}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 65
    invoke-interface {v3, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 67
    .end local v2    # "identityId":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;->getLogins()Ljava/util/Map;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;->getLogins()Ljava/util/Map;

    move-result-object v4

    .line 69
    .local v4, "logins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "Logins"

    invoke-interface {v3, v13}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 70
    invoke-interface {v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 71
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 72
    .local v5, "loginsEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 73
    .local v6, "loginsValue":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 74
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v3, v13}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 75
    invoke-interface {v3, v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v3    # "jsonWriter":Lcom/amazonaws/util/json/AwsJsonWriter;
    .end local v4    # "logins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "loginsEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "loginsValue":Ljava/lang/String;
    .end local v9    # "stringWriter":Ljava/io/StringWriter;
    :catch_0
    move-exception v10

    .line 88
    .local v10, "t":Ljava/lang/Throwable;
    new-instance v13, Lcom/amazonaws/AmazonClientException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to marshall request to JSON: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 89
    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v10}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 78
    .end local v10    # "t":Ljava/lang/Throwable;
    .restart local v3    # "jsonWriter":Lcom/amazonaws/util/json/AwsJsonWriter;
    .restart local v4    # "logins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "stringWriter":Ljava/io/StringWriter;
    :cond_3
    :try_start_1
    invoke-interface {v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 81
    .end local v4    # "logins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 82
    invoke-interface {v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->close()V

    .line 83
    invoke-virtual {v9}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 84
    .local v8, "snippet":Ljava/lang/String;
    sget-object v13, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 85
    .local v1, "content":[B
    new-instance v13, Lcom/amazonaws/util/StringInputStream;

    invoke-direct {v13, v8}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v13}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 86
    const-string v13, "Content-Length"

    array-length v14, v1

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7, v13, v14}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    invoke-interface {v7}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v13

    const-string v14, "Content-Type"

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 92
    const-string v13, "Content-Type"

    const-string v14, "application/x-amz-json-1.1"

    invoke-interface {v7, v13, v14}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_5
    return-object v7
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    check-cast p1, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenRequestMarshaller;->marshall(Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
