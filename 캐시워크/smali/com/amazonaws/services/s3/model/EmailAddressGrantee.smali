.class public Lcom/amazonaws/services/s3/model/EmailAddressGrantee;
.super Ljava/lang/Object;
.source "EmailAddressGrantee.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/Grantee;


# instance fields
.field private emailAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->emailAddress:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->setIdentifier(Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    if-ne p0, p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v1

    .line 107
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 110
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 111
    check-cast v0, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;

    .line 112
    .local v0, "other":Lcom/amazonaws/services/s3/model/EmailAddressGrantee;
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->emailAddress:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 113
    iget-object v3, v0, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->emailAddress:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 114
    goto :goto_0

    .line 115
    :cond_4
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->emailAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->emailAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 116
    goto :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "emailAddress"

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 93
    const/16 v0, 0x1f

    .line 94
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 95
    .local v1, "result":I
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->emailAddress:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 96
    return v1

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->emailAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->emailAddress:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->emailAddress:Ljava/lang/String;

    return-object v0
.end method
