.class public Lcom/amazonaws/services/s3/model/Bucket;
.super Ljava/lang/Object;
.source "Bucket.java"


# static fields
.field private static final serialVersionUID:J = -0x77ffb7cc751194fcL


# instance fields
.field private creationDate:Ljava/util/Date;

.field private name:Ljava/lang/String;

.field private owner:Lcom/amazonaws/services/s3/model/Owner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/Bucket;->name:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/Bucket;->owner:Lcom/amazonaws/services/s3/model/Owner;

    .line 68
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/Bucket;->creationDate:Ljava/util/Date;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/Bucket;->name:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/Bucket;->owner:Lcom/amazonaws/services/s3/model/Owner;

    .line 68
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/Bucket;->creationDate:Ljava/util/Date;

    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Bucket;->name:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public getCreationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Bucket;->creationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Bucket;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/amazonaws/services/s3/model/Owner;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Bucket;->owner:Lcom/amazonaws/services/s3/model/Owner;

    return-object v0
.end method

.method public setCreationDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "creationDate"    # Ljava/util/Date;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Bucket;->creationDate:Ljava/util/Date;

    .line 141
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Bucket;->name:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setOwner(Lcom/amazonaws/services/s3/model/Owner;)V
    .locals 0
    .param p1, "owner"    # Lcom/amazonaws/services/s3/model/Owner;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Bucket;->owner:Lcom/amazonaws/services/s3/model/Owner;

    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S3Bucket [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/Bucket;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", creationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/Bucket;->getCreationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/Bucket;->getOwner()Lcom/amazonaws/services/s3/model/Owner;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    return-object v0
.end method
