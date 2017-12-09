.class public Lcom/kakao/auth/authorization/AuthorizationResult;
.super Ljava/lang/Object;
.source "AuthorizationResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;
    }
.end annotation


# instance fields
.field private accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

.field private exception:Ljava/lang/Exception;

.field private redirectURL:Ljava/lang/String;

.field private final requestCode:I

.field private final resultCode:Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

.field private resultMessage:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "result"    # Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Lcom/kakao/auth/authorization/AuthorizationResult;->requestCode:I

    .line 135
    iput-object p2, p0, Lcom/kakao/auth/authorization/AuthorizationResult;->resultCode:Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

    .line 136
    return-void
.end method

.method private constructor <init>(ILcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "result"    # Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p1, p0, Lcom/kakao/auth/authorization/AuthorizationResult;->requestCode:I

    .line 140
    iput-object p2, p0, Lcom/kakao/auth/authorization/AuthorizationResult;->resultCode:Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

    .line 141
    iput-object p3, p0, Lcom/kakao/auth/authorization/AuthorizationResult;->exception:Ljava/lang/Exception;

    .line 142
    return-void
.end method

.method public static createAccessTokenErrorResult(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;
    .locals 3
    .param p0, "resultMessage"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Lcom/kakao/auth/authorization/AuthorizationResult;

    const/4 v1, 0x2

    sget-object v2, Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;->ERROR:Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

    invoke-direct {v0, v1, v2}, Lcom/kakao/auth/authorization/AuthorizationResult;-><init>(ILcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;)V

    invoke-direct {v0, p0}, Lcom/kakao/auth/authorization/AuthorizationResult;->setResultMessage(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v0

    return-object v0
.end method

.method public static createAccessTokenOAuthErrorResult(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;
    .locals 3
    .param p0, "resultMessage"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Lcom/kakao/auth/authorization/AuthorizationResult;

    const/4 v1, 0x2

    sget-object v2, Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;->OAUTH_ERROR:Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

    invoke-direct {v0, v1, v2}, Lcom/kakao/auth/authorization/AuthorizationResult;-><init>(ILcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;)V

    invoke-direct {v0, p0}, Lcom/kakao/auth/authorization/AuthorizationResult;->setResultMessage(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v0

    return-object v0
.end method

.method public static createAuthCodeCancelResult(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;
    .locals 3
    .param p0, "resultMessage"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Lcom/kakao/auth/authorization/AuthorizationResult;

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;->CANCEL:Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

    invoke-direct {v0, v1, v2}, Lcom/kakao/auth/authorization/AuthorizationResult;-><init>(ILcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;)V

    invoke-direct {v0, p0}, Lcom/kakao/auth/authorization/AuthorizationResult;->setResultMessage(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v0

    return-object v0
.end method

.method public static createAuthCodeOAuthErrorResult(Ljava/lang/Exception;)Lcom/kakao/auth/authorization/AuthorizationResult;
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 71
    new-instance v0, Lcom/kakao/auth/authorization/AuthorizationResult;

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;->OAUTH_ERROR:Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

    invoke-direct {v0, v1, v2, p0}, Lcom/kakao/auth/authorization/AuthorizationResult;-><init>(ILcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;Ljava/lang/Exception;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kakao/auth/authorization/AuthorizationResult;->setResultMessage(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v0

    return-object v0
.end method

.method public static createAuthCodeOAuthErrorResult(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;
    .locals 3
    .param p0, "resultMessage"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Lcom/kakao/auth/authorization/AuthorizationResult;

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;->OAUTH_ERROR:Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

    invoke-direct {v0, v1, v2}, Lcom/kakao/auth/authorization/AuthorizationResult;-><init>(ILcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;)V

    invoke-direct {v0, p0}, Lcom/kakao/auth/authorization/AuthorizationResult;->setResultMessage(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v0

    return-object v0
.end method

.method public static createAuthCodePassResult()Lcom/kakao/auth/authorization/AuthorizationResult;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lcom/kakao/auth/authorization/AuthorizationResult;

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;->PASS:Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

    invoke-direct {v0, v1, v2}, Lcom/kakao/auth/authorization/AuthorizationResult;-><init>(ILcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;)V

    return-object v0
.end method

.method public static createCancelResult(ILjava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;
    .locals 2
    .param p0, "requestType"    # I
    .param p1, "resultMessage"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Lcom/kakao/auth/authorization/AuthorizationResult;

    sget-object v1, Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;->CANCEL:Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

    invoke-direct {v0, p0, v1}, Lcom/kakao/auth/authorization/AuthorizationResult;-><init>(ILcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;)V

    invoke-direct {v0, p1}, Lcom/kakao/auth/authorization/AuthorizationResult;->setResultMessage(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v0

    return-object v0
.end method

.method public static createSuccessAccessTokenResult(Lcom/kakao/auth/authorization/accesstoken/AccessToken;)Lcom/kakao/auth/authorization/AuthorizationResult;
    .locals 3
    .param p0, "accessToken"    # Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    .prologue
    .line 47
    new-instance v0, Lcom/kakao/auth/authorization/AuthorizationResult;

    const/4 v1, 0x2

    sget-object v2, Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;->SUCCESS:Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

    invoke-direct {v0, v1, v2}, Lcom/kakao/auth/authorization/AuthorizationResult;-><init>(ILcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;)V

    invoke-direct {v0, p0}, Lcom/kakao/auth/authorization/AuthorizationResult;->setAccessToken(Lcom/kakao/auth/authorization/accesstoken/AccessToken;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v0

    return-object v0
.end method

.method public static createSuccessAuthCodeResult(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;
    .locals 3
    .param p0, "redirectURL"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Lcom/kakao/auth/authorization/AuthorizationResult;

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;->SUCCESS:Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

    invoke-direct {v0, v1, v2}, Lcom/kakao/auth/authorization/AuthorizationResult;-><init>(ILcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;)V

    invoke-direct {v0, p0}, Lcom/kakao/auth/authorization/AuthorizationResult;->setRedirectURL(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v0

    return-object v0
.end method

.method private setAccessToken(Lcom/kakao/auth/authorization/accesstoken/AccessToken;)Lcom/kakao/auth/authorization/AuthorizationResult;
    .locals 0
    .param p1, "accessToken"    # Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/kakao/auth/authorization/AuthorizationResult;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    .line 151
    return-object p0
.end method

.method private setRedirectURL(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;
    .locals 0
    .param p1, "redirectURL"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/kakao/auth/authorization/AuthorizationResult;->redirectURL:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method private setResultMessage(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;
    .locals 0
    .param p1, "resultMessage"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/kakao/auth/authorization/AuthorizationResult;->resultMessage:Ljava/lang/String;

    .line 156
    return-object p0
.end method


# virtual methods
.method public getAccessToken()Lcom/kakao/auth/authorization/accesstoken/AccessToken;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/kakao/auth/authorization/AuthorizationResult;->accessToken:Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/kakao/auth/authorization/AuthorizationResult;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getRedirectURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/kakao/auth/authorization/AuthorizationResult;->redirectURL:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kakao/auth/authorization/AuthorizationResult;->redirectURL:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kakao/auth/authorization/AuthorizationResult;->redirectURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/kakao/auth/authorization/AuthorizationResult;->requestCode:I

    return v0
.end method

.method public getResultMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kakao/auth/authorization/AuthorizationResult;->resultMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isAccessTokenRequest()Z
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lcom/kakao/auth/authorization/AuthorizationResult;->requestCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuthError()Z
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kakao/auth/authorization/AuthorizationResult;->resultCode:Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

    sget-object v1, Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;->OAUTH_ERROR:Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuthorizationCodeRequest()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 103
    iget v1, p0, Lcom/kakao/auth/authorization/AuthorizationResult;->requestCode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCanceled()Z
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kakao/auth/authorization/AuthorizationResult;->resultCode:Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

    sget-object v1, Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;->CANCEL:Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isError()Z
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kakao/auth/authorization/AuthorizationResult;->resultCode:Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

    sget-object v1, Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;->ERROR:Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPass()Z
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kakao/auth/authorization/AuthorizationResult;->resultCode:Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

    sget-object v1, Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;->PASS:Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kakao/auth/authorization/AuthorizationResult;->resultCode:Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

    sget-object v1, Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;->SUCCESS:Lcom/kakao/auth/authorization/AuthorizationResult$RESULT_CODE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
