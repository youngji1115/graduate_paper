.class public Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
.super Ljava/lang/Object;
.source "TimelineItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1901fd60a864cb1L


# instance fields
.field public addCount:I

.field public address:Ljava/lang/String;

.field public body:Ljava/lang/String;

.field public commentCount:I

.field public dateTime:Lorg/joda/time/DateTime;

.field public habit:Lcom/cashwalk/cashwalk/util/network/model/Habit;

.field public hitCount:I

.field public id:Ljava/lang/String;

.field public imgUrl:Ljava/lang/String;

.field public isLike:Z

.field public isNotice:Z

.field public likeCount:I

.field public location:Lcom/cashwalk/cashwalk/util/network/model/LatLng;

.field public ogTag:Lcom/cashwalk/cashwalk/util/network/model/OGTag;

.field public raffle:Z

.field public stepBetId:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public user:Lcom/cashwalk/cashwalk/util/network/model/User;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/util/network/model/User;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    .line 16
    new-instance v0, Lcom/cashwalk/cashwalk/util/network/model/Habit;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/util/network/model/Habit;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->habit:Lcom/cashwalk/cashwalk/util/network/model/Habit;

    .line 17
    iput v1, p0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->commentCount:I

    .line 18
    iput v1, p0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    .line 19
    iput v1, p0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->addCount:I

    .line 20
    iput v1, p0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->hitCount:I

    .line 21
    new-instance v0, Lcom/cashwalk/cashwalk/util/network/model/LatLng;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/util/network/model/LatLng;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->location:Lcom/cashwalk/cashwalk/util/network/model/LatLng;

    .line 23
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->raffle:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->ogTag:Lcom/cashwalk/cashwalk/util/network/model/OGTag;

    .line 26
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->isNotice:Z

    .line 27
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->isLike:Z

    return-void
.end method
