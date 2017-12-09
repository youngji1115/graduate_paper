.class public Lcom/amazonaws/services/s3/model/Owner;
.super Ljava/lang/Object;
.source "Owner.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7bbe980468bb7b1bL


# instance fields
.field private displayName:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Owner;->id:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/Owner;->displayName:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 115
    instance-of v6, p1, Lcom/amazonaws/services/s3/model/Owner;

    if-nez v6, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v0, p1

    .line 119
    check-cast v0, Lcom/amazonaws/services/s3/model/Owner;

    .line 121
    .local v0, "otherOwner":Lcom/amazonaws/services/s3/model/Owner;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/Owner;->getId()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "otherOwnerId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/Owner;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "otherOwnerName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/Owner;->getId()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "thisOwnerId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/Owner;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "thisOwnerName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 127
    const-string v1, ""

    .line 128
    :cond_2
    if-nez v2, :cond_3

    .line 129
    const-string v2, ""

    .line 130
    :cond_3
    if-nez v3, :cond_4

    .line 131
    const-string v3, ""

    .line 132
    :cond_4
    if-nez v4, :cond_5

    .line 133
    const-string v4, ""

    .line 135
    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Owner;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Owner;->id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Owner;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Owner;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Owner;->displayName:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Owner;->id:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S3Owner [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/Owner;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/Owner;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
