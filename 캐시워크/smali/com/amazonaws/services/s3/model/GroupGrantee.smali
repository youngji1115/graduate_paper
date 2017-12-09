.class public final enum Lcom/amazonaws/services/s3/model/GroupGrantee;
.super Ljava/lang/Enum;
.source "GroupGrantee.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/Grantee;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/s3/model/GroupGrantee;",
        ">;",
        "Lcom/amazonaws/services/s3/model/Grantee;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/GroupGrantee;

.field public static final enum AllUsers:Lcom/amazonaws/services/s3/model/GroupGrantee;

.field public static final enum AuthenticatedUsers:Lcom/amazonaws/services/s3/model/GroupGrantee;

.field public static final enum LogDelivery:Lcom/amazonaws/services/s3/model/GroupGrantee;


# instance fields
.field private groupUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/amazonaws/services/s3/model/GroupGrantee;

    const-string v1, "AllUsers"

    const-string v2, "http://acs.amazonaws.com/groups/global/AllUsers"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/s3/model/GroupGrantee;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/GroupGrantee;->AllUsers:Lcom/amazonaws/services/s3/model/GroupGrantee;

    .line 44
    new-instance v0, Lcom/amazonaws/services/s3/model/GroupGrantee;

    const-string v1, "AuthenticatedUsers"

    const-string v2, "http://acs.amazonaws.com/groups/global/AuthenticatedUsers"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/s3/model/GroupGrantee;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/GroupGrantee;->AuthenticatedUsers:Lcom/amazonaws/services/s3/model/GroupGrantee;

    .line 52
    new-instance v0, Lcom/amazonaws/services/s3/model/GroupGrantee;

    const-string v1, "LogDelivery"

    const-string v2, "http://acs.amazonaws.com/groups/s3/LogDelivery"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/s3/model/GroupGrantee;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/GroupGrantee;->LogDelivery:Lcom/amazonaws/services/s3/model/GroupGrantee;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazonaws/services/s3/model/GroupGrantee;

    sget-object v1, Lcom/amazonaws/services/s3/model/GroupGrantee;->AllUsers:Lcom/amazonaws/services/s3/model/GroupGrantee;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/s3/model/GroupGrantee;->AuthenticatedUsers:Lcom/amazonaws/services/s3/model/GroupGrantee;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/s3/model/GroupGrantee;->LogDelivery:Lcom/amazonaws/services/s3/model/GroupGrantee;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amazonaws/services/s3/model/GroupGrantee;->$VALUES:[Lcom/amazonaws/services/s3/model/GroupGrantee;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "groupUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/GroupGrantee;->groupUri:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static parseGroupGrantee(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GroupGrantee;
    .locals 5
    .param p0, "groupUri"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {}, Lcom/amazonaws/services/s3/model/GroupGrantee;->values()[Lcom/amazonaws/services/s3/model/GroupGrantee;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 110
    .local v0, "grantee":Lcom/amazonaws/services/s3/model/GroupGrantee;
    iget-object v4, v0, Lcom/amazonaws/services/s3/model/GroupGrantee;->groupUri:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    .end local v0    # "grantee":Lcom/amazonaws/services/s3/model/GroupGrantee;
    :goto_1
    return-object v0

    .line 109
    .restart local v0    # "grantee":Lcom/amazonaws/services/s3/model/GroupGrantee;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "grantee":Lcom/amazonaws/services/s3/model/GroupGrantee;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GroupGrantee;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/amazonaws/services/s3/model/GroupGrantee;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/GroupGrantee;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/GroupGrantee;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/amazonaws/services/s3/model/GroupGrantee;->$VALUES:[Lcom/amazonaws/services/s3/model/GroupGrantee;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/GroupGrantee;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/GroupGrantee;

    return-object v0
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GroupGrantee;->groupUri:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "uri"

    return-object v0
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Group grantees have preset identifiers that cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GroupGrantee ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/GroupGrantee;->groupUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
