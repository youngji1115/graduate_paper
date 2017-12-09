.class public final enum Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;
.super Ljava/lang/Enum;
.source "ReplicationRuleStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;

.field public static final enum Disabled:Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;

.field public static final enum Enabled:Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;


# instance fields
.field private final status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;

    const-string v1, "Enabled"

    const-string v2, "Enabled"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;->Enabled:Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;

    .line 24
    new-instance v0, Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;

    const-string v1, "Disabled"

    const-string v2, "Disabled"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;->Disabled:Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;

    sget-object v1, Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;->Enabled:Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;->Disabled:Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;->$VALUES:[Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;->status:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;->$VALUES:[Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;

    return-object v0
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ReplicationRuleStatus;->status:Ljava/lang/String;

    return-object v0
.end method
