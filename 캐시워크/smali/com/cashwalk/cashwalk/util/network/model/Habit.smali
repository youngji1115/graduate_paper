.class public Lcom/cashwalk/cashwalk/util/network/model/Habit;
.super Ljava/lang/Object;
.source "Habit.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public days:[Z

.field public goal:I

.field public id:Ljava/lang/String;

.field public isAlarm:Z

.field public isPublic:Z

.field public pageId:Ljava/lang/String;

.field public score:I

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public unit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x7

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Habit;->days:[Z

    .line 14
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/util/network/model/Habit;->isPublic:Z

    .line 15
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/util/network/model/Habit;->isAlarm:Z

    return-void
.end method
