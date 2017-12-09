.class public final enum Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;
.super Ljava/lang/Enum;
.source "BucketAccelerateStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;

.field public static final enum Enabled:Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;

.field public static final enum Suspended:Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;


# instance fields
.field private final accelerateStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;

    const-string v1, "Enabled"

    const-string v2, "Enabled"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;->Enabled:Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;

    new-instance v0, Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;

    const-string v1, "Suspended"

    const-string v2, "Suspended"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;->Suspended:Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;

    sget-object v1, Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;->Enabled:Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;->Suspended:Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;->$VALUES:[Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;->accelerateStatus:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;
    .locals 5
    .param p0, "statusString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {}, Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;->values()[Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 30
    .local v0, "accelerateStatus":Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    return-object v0

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "accelerateStatus":Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create enum from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;->$VALUES:[Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketAccelerateStatus;->accelerateStatus:Ljava/lang/String;

    return-object v0
.end method
