.class public Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetCallerIdentityRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    if-ne p0, p1, :cond_0

    .line 63
    :goto_0
    return v1

    .line 56
    :cond_0
    if-nez p1, :cond_1

    move v1, v2

    .line 57
    goto :goto_0

    .line 59
    :cond_1
    instance-of v3, p1, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;

    if-nez v3, :cond_2

    move v1, v2

    .line 60
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 61
    check-cast v0, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;

    .line 63
    .local v0, "other":Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 46
    const/16 v1, 0x1f

    .line 47
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 49
    .local v0, "hashCode":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
