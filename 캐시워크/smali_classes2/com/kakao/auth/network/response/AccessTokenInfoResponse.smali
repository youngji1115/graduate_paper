.class public Lcom/kakao/auth/network/response/AccessTokenInfoResponse;
.super Lcom/kakao/auth/network/response/JSONObjectResponse;
.source "AccessTokenInfoResponse.java"


# instance fields
.field private final expiresInMillis:J

.field private final userId:J


# direct methods
.method public constructor <init>(Lcom/kakao/network/response/ResponseData;)V
    .locals 4
    .param p1, "responseData"    # Lcom/kakao/network/response/ResponseData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;,
            Lcom/kakao/auth/network/response/ApiResponse$ApiResponseStatusError;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcom/kakao/auth/network/response/JSONObjectResponse;-><init>(Lcom/kakao/network/response/ResponseData;)V

    .line 32
    iget-object v0, p0, Lcom/kakao/auth/network/response/AccessTokenInfoResponse;->body:Lcom/kakao/network/response/ResponseBody;

    const-string v1, "id"

    invoke-virtual {v0, v1, v2, v3}, Lcom/kakao/network/response/ResponseBody;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kakao/auth/network/response/AccessTokenInfoResponse;->userId:J

    .line 33
    iget-object v0, p0, Lcom/kakao/auth/network/response/AccessTokenInfoResponse;->body:Lcom/kakao/network/response/ResponseBody;

    const-string v1, "expiresInMillis"

    invoke-virtual {v0, v1, v2, v3}, Lcom/kakao/network/response/ResponseBody;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kakao/auth/network/response/AccessTokenInfoResponse;->expiresInMillis:J

    .line 34
    return-void
.end method


# virtual methods
.method public getExpiresInMillis()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/kakao/auth/network/response/AccessTokenInfoResponse;->expiresInMillis:J

    return-wide v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/kakao/auth/network/response/AccessTokenInfoResponse;->userId:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccessTokenInfoResponse{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/kakao/auth/network/response/AccessTokenInfoResponse;->userId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, ", expiresInMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/kakao/auth/network/response/AccessTokenInfoResponse;->expiresInMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
