.class public Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;
.super Ljava/lang/Object;
.source "GetCallerIdentityResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private account:Ljava/lang/String;

.field private arn:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 282
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 303
    :cond_0
    :goto_0
    return v3

    .line 284
    :cond_1
    if-eqz p1, :cond_0

    .line 287
    instance-of v1, p1, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 289
    check-cast v0, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;

    .line 291
    .local v0, "other":Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getUserId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getAccount()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getAccount()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 297
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getAccount()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getArn()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getArn()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 301
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getArn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getArn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 303
    goto :goto_0

    :cond_5
    move v1, v3

    .line 291
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 295
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 299
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getArn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->arn:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 271
    const/16 v1, 0x1f

    .line 272
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 274
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 275
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getAccount()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 276
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getArn()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 277
    return v0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 276
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->account:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setArn(Ljava/lang/String;)V
    .locals 0
    .param p1, "arn"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->arn:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->userId:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getAccount()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Arn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->getArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_2
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAccount(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;
    .locals 0
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->account:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public withArn(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;
    .locals 0
    .param p1, "arn"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->arn:Ljava/lang/String;

    .line 245
    return-object p0
.end method

.method public withUserId(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;->userId:Ljava/lang/String;

    .line 134
    return-object p0
.end method
