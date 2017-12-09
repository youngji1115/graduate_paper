.class public Lcom/cashwalk/cashwalk/util/network/model/Point;
.super Ljava/lang/Object;
.source "Point.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x231ab3b0364fa216L


# instance fields
.field public currentPoint:I

.field public expiredAtNextMonth:I

.field public raffleUsed:I

.field public shopUsed:I

.field public totalPoint:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Point;->currentPoint:I

    .line 8
    iput v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Point;->expiredAtNextMonth:I

    .line 9
    iput v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Point;->totalPoint:I

    .line 10
    iput v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Point;->raffleUsed:I

    .line 11
    iput v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Point;->shopUsed:I

    return-void
.end method
