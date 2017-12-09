.class public Lcom/amazonaws/services/s3/model/CanonicalGrantee;
.super Ljava/lang/Object;
.source "CanonicalGrantee.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/Grantee;


# instance fields
.field private displayName:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->id:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->displayName:Ljava/lang/String;

    .line 54
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->setIdentifier(Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 107
    instance-of v1, p1, Lcom/amazonaws/services/s3/model/CanonicalGrantee;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 108
    check-cast v0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;

    .line 109
    .local v0, "canonicalGrantee":Lcom/amazonaws/services/s3/model/CanonicalGrantee;
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 111
    .end local v0    # "canonicalGrantee":Lcom/amazonaws/services/s3/model/CanonicalGrantee;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "id"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->displayName:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->id:Ljava/lang/String;

    .line 67
    return-void
.end method
