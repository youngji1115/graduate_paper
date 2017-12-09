.class public Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
.super Ljava/lang/Object;
.source "GetFederationTokenResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private credentials:Lcom/amazonaws/services/securitytoken/model/Credentials;

.field private federatedUser:Lcom/amazonaws/services/securitytoken/model/FederatedUser;

.field private packedPolicySize:Ljava/lang/Integer;


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

    .line 331
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 355
    :cond_0
    :goto_0
    return v3

    .line 333
    :cond_1
    if-eqz p1, :cond_0

    .line 336
    instance-of v1, p1, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 338
    check-cast v0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;

    .line 340
    .local v0, "other":Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 343
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/securitytoken/model/Credentials;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 347
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 348
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/securitytoken/model/FederatedUser;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 352
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 353
    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 355
    goto :goto_0

    :cond_5
    move v1, v3

    .line 340
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 345
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 350
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->credentials:Lcom/amazonaws/services/securitytoken/model/Credentials;

    return-object v0
.end method

.method public getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->federatedUser:Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    return-object v0
.end method

.method public getPackedPolicySize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->packedPolicySize:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 317
    const/16 v1, 0x1f

    .line 318
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 321
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 322
    mul-int/lit8 v4, v0, 0x1f

    .line 323
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 324
    mul-int/lit8 v2, v0, 0x1f

    .line 325
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 326
    return v0

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/securitytoken/model/Credentials;->hashCode()I

    move-result v2

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/securitytoken/model/FederatedUser;->hashCode()I

    move-result v2

    goto :goto_1

    .line 325
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setCredentials(Lcom/amazonaws/services/securitytoken/model/Credentials;)V
    .locals 0
    .param p1, "credentials"    # Lcom/amazonaws/services/securitytoken/model/Credentials;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->credentials:Lcom/amazonaws/services/securitytoken/model/Credentials;

    .line 121
    return-void
.end method

.method public setFederatedUser(Lcom/amazonaws/services/securitytoken/model/FederatedUser;)V
    .locals 0
    .param p1, "federatedUser"    # Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->federatedUser:Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    .line 199
    return-void
.end method

.method public setPackedPolicySize(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "packedPolicySize"    # Ljava/lang/Integer;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->packedPolicySize:Ljava/lang/Integer;

    .line 266
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Credentials: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FederatedUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getFederatedUser()Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackedPolicySize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_2
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withCredentials(Lcom/amazonaws/services/securitytoken/model/Credentials;)Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
    .locals 0
    .param p1, "credentials"    # Lcom/amazonaws/services/securitytoken/model/Credentials;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->credentials:Lcom/amazonaws/services/securitytoken/model/Credentials;

    .line 156
    return-object p0
.end method

.method public withFederatedUser(Lcom/amazonaws/services/securitytoken/model/FederatedUser;)Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
    .locals 0
    .param p1, "federatedUser"    # Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->federatedUser:Lcom/amazonaws/services/securitytoken/model/FederatedUser;

    .line 225
    return-object p0
.end method

.method public withPackedPolicySize(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
    .locals 0
    .param p1, "packedPolicySize"    # Ljava/lang/Integer;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;->packedPolicySize:Ljava/lang/Integer;

    .line 291
    return-object p0
.end method
