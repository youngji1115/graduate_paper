.class public Lcom/kakao/auth/AgeAuthParamBuilder;
.super Ljava/lang/Object;
.source "AgeAuthParamBuilder.java"


# instance fields
.field private ageLimit:Lcom/kakao/auth/AuthService$AgeLimit;

.field private authFrom:Ljava/lang/String;

.field private authLevel:Lcom/kakao/auth/AuthService$AgeAuthLevel;

.field private isSkipTerms:Z

.field private isWesternAge:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "token_type"

    const-string v2, "api"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "access_token"

    invoke-static {}, Lcom/kakao/auth/Session;->getCurrentSession()Lcom/kakao/auth/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakao/auth/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "return_url"

    invoke-static {}, Lcom/kakao/auth/Session;->getCurrentSession()Lcom/kakao/auth/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakao/auth/Session;->generateAgeAuthRedirectUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/kakao/auth/AgeAuthParamBuilder;->authLevel:Lcom/kakao/auth/AuthService$AgeAuthLevel;

    if-eqz v1, :cond_0

    .line 83
    const-string v1, "ageauth_level"

    iget-object v2, p0, Lcom/kakao/auth/AgeAuthParamBuilder;->authLevel:Lcom/kakao/auth/AuthService$AgeAuthLevel;

    invoke-virtual {v2}, Lcom/kakao/auth/AuthService$AgeAuthLevel;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/kakao/auth/AgeAuthParamBuilder;->ageLimit:Lcom/kakao/auth/AuthService$AgeLimit;

    if-eqz v1, :cond_1

    .line 86
    const-string v1, "age_limit"

    iget-object v2, p0, Lcom/kakao/auth/AgeAuthParamBuilder;->ageLimit:Lcom/kakao/auth/AuthService$AgeLimit;

    invoke-virtual {v2}, Lcom/kakao/auth/AuthService$AgeLimit;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_1
    iget-boolean v1, p0, Lcom/kakao/auth/AgeAuthParamBuilder;->isWesternAge:Z

    if-eqz v1, :cond_2

    .line 89
    const-string v1, "is_western_age"

    iget-boolean v2, p0, Lcom/kakao/auth/AgeAuthParamBuilder;->isWesternAge:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_2
    iget-boolean v1, p0, Lcom/kakao/auth/AgeAuthParamBuilder;->isSkipTerms:Z

    if-eqz v1, :cond_3

    .line 92
    const-string v1, "skip_term"

    iget-boolean v2, p0, Lcom/kakao/auth/AgeAuthParamBuilder;->isSkipTerms:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/kakao/auth/AgeAuthParamBuilder;->authFrom:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 95
    const-string v1, "auth_from"

    iget-object v2, p0, Lcom/kakao/auth/AgeAuthParamBuilder;->authFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_4
    return-object v0
.end method

.method public setAgeLimit(Lcom/kakao/auth/AuthService$AgeLimit;)Lcom/kakao/auth/AgeAuthParamBuilder;
    .locals 0
    .param p1, "ageLimit"    # Lcom/kakao/auth/AuthService$AgeLimit;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/kakao/auth/AgeAuthParamBuilder;->ageLimit:Lcom/kakao/auth/AuthService$AgeLimit;

    .line 37
    return-object p0
.end method

.method public setAuthFrom(Ljava/lang/String;)Lcom/kakao/auth/AgeAuthParamBuilder;
    .locals 0
    .param p1, "authFrom"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/kakao/auth/AgeAuthParamBuilder;->authFrom:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public setAuthLevel(Lcom/kakao/auth/AuthService$AgeAuthLevel;)Lcom/kakao/auth/AgeAuthParamBuilder;
    .locals 0
    .param p1, "authLevel"    # Lcom/kakao/auth/AuthService$AgeAuthLevel;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/kakao/auth/AgeAuthParamBuilder;->authLevel:Lcom/kakao/auth/AuthService$AgeAuthLevel;

    .line 27
    return-object p0
.end method

.method public setIsWesternAge(Z)Lcom/kakao/auth/AgeAuthParamBuilder;
    .locals 0
    .param p1, "isWesternAge"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/kakao/auth/AgeAuthParamBuilder;->isWesternAge:Z

    .line 49
    return-object p0
.end method

.method public setSkipTerm(Z)Lcom/kakao/auth/AgeAuthParamBuilder;
    .locals 0
    .param p1, "isSkipTerms"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/kakao/auth/AgeAuthParamBuilder;->isSkipTerms:Z

    .line 59
    return-object p0
.end method
