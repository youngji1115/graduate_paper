.class public Lcom/amazonaws/services/s3/model/Grant;
.super Ljava/lang/Object;
.source "Grant.java"


# instance fields
.field private grantee:Lcom/amazonaws/services/s3/model/Grantee;

.field private permission:Lcom/amazonaws/services/s3/model/Permission;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/Grantee;Lcom/amazonaws/services/s3/model/Permission;)V
    .locals 1
    .param p1, "grantee"    # Lcom/amazonaws/services/s3/model/Grantee;
    .param p2, "permission"    # Lcom/amazonaws/services/s3/model/Permission;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/Grant;->grantee:Lcom/amazonaws/services/s3/model/Grantee;

    .line 28
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/Grant;->permission:Lcom/amazonaws/services/s3/model/Permission;

    .line 39
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Grant;->grantee:Lcom/amazonaws/services/s3/model/Grantee;

    .line 40
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/Grant;->permission:Lcom/amazonaws/services/s3/model/Permission;

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    if-ne p0, p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v1

    .line 84
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 87
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 88
    check-cast v0, Lcom/amazonaws/services/s3/model/Grant;

    .line 89
    .local v0, "other":Lcom/amazonaws/services/s3/model/Grant;
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/Grant;->grantee:Lcom/amazonaws/services/s3/model/Grantee;

    if-nez v3, :cond_4

    .line 90
    iget-object v3, v0, Lcom/amazonaws/services/s3/model/Grant;->grantee:Lcom/amazonaws/services/s3/model/Grantee;

    if-eqz v3, :cond_5

    move v1, v2

    .line 91
    goto :goto_0

    .line 92
    :cond_4
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/Grant;->grantee:Lcom/amazonaws/services/s3/model/Grantee;

    iget-object v4, v0, Lcom/amazonaws/services/s3/model/Grant;->grantee:Lcom/amazonaws/services/s3/model/Grantee;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 93
    goto :goto_0

    .line 94
    :cond_5
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/Grant;->permission:Lcom/amazonaws/services/s3/model/Permission;

    iget-object v4, v0, Lcom/amazonaws/services/s3/model/Grant;->permission:Lcom/amazonaws/services/s3/model/Permission;

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 95
    goto :goto_0
.end method

.method public getGrantee()Lcom/amazonaws/services/s3/model/Grantee;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Grant;->grantee:Lcom/amazonaws/services/s3/model/Grantee;

    return-object v0
.end method

.method public getPermission()Lcom/amazonaws/services/s3/model/Permission;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Grant;->permission:Lcom/amazonaws/services/s3/model/Permission;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 69
    const/16 v0, 0x1f

    .line 70
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 71
    .local v1, "result":I
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/Grant;->grantee:Lcom/amazonaws/services/s3/model/Grantee;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 72
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/amazonaws/services/s3/model/Grant;->permission:Lcom/amazonaws/services/s3/model/Permission;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 73
    return v1

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/Grant;->grantee:Lcom/amazonaws/services/s3/model/Grantee;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 72
    :cond_1
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/Grant;->permission:Lcom/amazonaws/services/s3/model/Permission;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/Permission;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Grant [grantee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/Grant;->grantee:Lcom/amazonaws/services/s3/model/Grantee;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/Grant;->permission:Lcom/amazonaws/services/s3/model/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
