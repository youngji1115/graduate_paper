.class public Lcom/kakao/usermgmt/response/AgeAuthResponse;
.super Lcom/kakao/auth/network/response/JSONObjectResponse;
.source "AgeAuthResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/usermgmt/response/AgeAuthResponse$AgeAuthLimitStatus;
    }
.end annotation


# instance fields
.field private final ageAuthLimitStatus:Lcom/kakao/usermgmt/response/AgeAuthResponse$AgeAuthLimitStatus;

.field private final authLevel:Lcom/kakao/auth/AuthService$AgeAuthLevel;

.field private final authLevelCode:I

.field private final authenticatedAt:Ljava/lang/String;

.field private final ci:Ljava/lang/String;

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
    const/4 v3, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/kakao/auth/network/response/JSONObjectResponse;-><init>(Lcom/kakao/network/response/ResponseData;)V

    .line 54
    iget-object v0, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->body:Lcom/kakao/network/response/ResponseBody;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/kakao/network/response/ResponseBody;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->userId:J

    .line 55
    iget-object v0, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->body:Lcom/kakao/network/response/ResponseBody;

    const-string v1, "auth_level"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/kakao/network/response/ResponseBody;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kakao/auth/AuthService$AgeAuthLevel;->convertByName(Ljava/lang/String;)Lcom/kakao/auth/AuthService$AgeAuthLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->authLevel:Lcom/kakao/auth/AuthService$AgeAuthLevel;

    .line 56
    iget-object v0, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->body:Lcom/kakao/network/response/ResponseBody;

    const-string v1, "auth_level_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kakao/network/response/ResponseBody;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->authLevelCode:I

    .line 57
    iget-object v0, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->body:Lcom/kakao/network/response/ResponseBody;

    const-string v1, "authenticated_at"

    invoke-virtual {v0, v1, v3}, Lcom/kakao/network/response/ResponseBody;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->authenticatedAt:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->body:Lcom/kakao/network/response/ResponseBody;

    const-string v1, "ci"

    invoke-virtual {v0, v1, v3}, Lcom/kakao/network/response/ResponseBody;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->ci:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->body:Lcom/kakao/network/response/ResponseBody;

    const-string v1, "bypass_age_limit"

    invoke-virtual {v0, v1}, Lcom/kakao/network/response/ResponseBody;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->body:Lcom/kakao/network/response/ResponseBody;

    const-string v1, "bypass_age_limit"

    invoke-virtual {v0, v1}, Lcom/kakao/network/response/ResponseBody;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kakao/usermgmt/response/AgeAuthResponse$AgeAuthLimitStatus;->BYPASS_AGE_LIMIT:Lcom/kakao/usermgmt/response/AgeAuthResponse$AgeAuthLimitStatus;

    :goto_0
    iput-object v0, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->ageAuthLimitStatus:Lcom/kakao/usermgmt/response/AgeAuthResponse$AgeAuthLimitStatus;

    .line 65
    :goto_1
    return-void

    .line 61
    :cond_0
    sget-object v0, Lcom/kakao/usermgmt/response/AgeAuthResponse$AgeAuthLimitStatus;->DONT_BYPASS_AGE_LIMIT:Lcom/kakao/usermgmt/response/AgeAuthResponse$AgeAuthLimitStatus;

    goto :goto_0

    .line 63
    :cond_1
    sget-object v0, Lcom/kakao/usermgmt/response/AgeAuthResponse$AgeAuthLimitStatus;->DONT_KNOW:Lcom/kakao/usermgmt/response/AgeAuthResponse$AgeAuthLimitStatus;

    iput-object v0, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->ageAuthLimitStatus:Lcom/kakao/usermgmt/response/AgeAuthResponse$AgeAuthLimitStatus;

    goto :goto_1
.end method


# virtual methods
.method public getAgeAuthLimitStatus()Lcom/kakao/usermgmt/response/AgeAuthResponse$AgeAuthLimitStatus;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->ageAuthLimitStatus:Lcom/kakao/usermgmt/response/AgeAuthResponse$AgeAuthLimitStatus;

    return-object v0
.end method

.method public getAuthLevel()Lcom/kakao/auth/AuthService$AgeAuthLevel;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->authLevel:Lcom/kakao/auth/AuthService$AgeAuthLevel;

    return-object v0
.end method

.method public getAuthLevelCode()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->authLevelCode:I

    return v0
.end method

.method public getAuthenticatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->authenticatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public getCI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->ci:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->userId:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AgeAuthResponse{userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->userId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authenticatedAt=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->authenticatedAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ci=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->ci:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->authLevel:Lcom/kakao/auth/AuthService$AgeAuthLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authLevelCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->authLevelCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ageAuthLimitStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/usermgmt/response/AgeAuthResponse;->ageAuthLimitStatus:Lcom/kakao/usermgmt/response/AgeAuthResponse$AgeAuthLimitStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
