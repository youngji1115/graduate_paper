.class public Lcom/cashwalk/cashwalk/model/BandMovementCode;
.super Ljava/lang/Object;
.source "BandMovementCode.java"


# instance fields
.field public dayOfWeek:Ljava/lang/String;

.field public dayOfWeekCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "dayOfWeek"    # Ljava/lang/String;
    .param p2, "dayOfWeekCode"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/cashwalk/cashwalk/model/BandMovementCode;->dayOfWeekCode:I

    .line 13
    iput-object p1, p0, Lcom/cashwalk/cashwalk/model/BandMovementCode;->dayOfWeek:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/cashwalk/cashwalk/model/BandMovementCode;->dayOfWeekCode:I

    .line 15
    return-void
.end method
