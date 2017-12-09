.class public Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;
.super Ljava/lang/Object;
.source "StepBetStat.java"


# instance fields
.field public avgSteps:I

.field public dropout:Z

.field public dropouts:[I

.field public dropoutsTotal:I

.field public participants:I

.field public pass:[I

.field public steps:[I

.field public stepsTotal:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->dropout:Z

    .line 5
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->steps:[I

    .line 6
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->pass:[I

    .line 12
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->dropouts:[I

    return-void
.end method
