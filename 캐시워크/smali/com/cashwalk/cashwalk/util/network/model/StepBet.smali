.class public Lcom/cashwalk/cashwalk/util/network/model/StepBet;
.super Ljava/lang/Object;
.source "StepBet.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bgUrl:Ljava/lang/String;

.field public dropout:I

.field public endDate:Lorg/joda/time/DateTime;

.field public id:Ljava/lang/String;

.field public limit:I

.field public participants:I

.field public participation:Z

.field public point:I

.field public prize:I

.field public startDate:Lorg/joda/time/DateTime;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->participation:Z

    return-void
.end method
