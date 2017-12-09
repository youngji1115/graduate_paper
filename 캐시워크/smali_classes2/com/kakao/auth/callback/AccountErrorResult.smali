.class public Lcom/kakao/auth/callback/AccountErrorResult;
.super Ljava/lang/Object;
.source "AccountErrorResult.java"


# instance fields
.field private final errorMessage:Ljava/lang/String;

.field private final status:Lcom/kakao/auth/AuthService$AgeAuthStatus;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/kakao/auth/AuthService$AgeAuthStatus;->valueOf(I)Lcom/kakao/auth/AuthService$AgeAuthStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/auth/callback/AccountErrorResult;->status:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    .line 26
    const-string v0, "Age Authentication failure"

    iput-object v0, p0, Lcom/kakao/auth/callback/AccountErrorResult;->errorMessage:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/kakao/auth/AuthService$AgeAuthStatus;->valueOf(I)Lcom/kakao/auth/AuthService$AgeAuthStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/auth/callback/AccountErrorResult;->status:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    .line 31
    iput-object p2, p0, Lcom/kakao/auth/callback/AccountErrorResult;->errorMessage:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kakao/auth/callback/AccountErrorResult;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/kakao/auth/AuthService$AgeAuthStatus;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kakao/auth/callback/AccountErrorResult;->status:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountErrorResult{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/auth/callback/AccountErrorResult;->status:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/auth/callback/AccountErrorResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
