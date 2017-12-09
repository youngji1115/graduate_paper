.class public Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;
.super Ljava/lang/Object;
.source "TimelineComment.java"


# instance fields
.field public body:Ljava/lang/String;

.field public dateString:Ljava/lang/String;

.field public dateTime:Lorg/joda/time/DateTime;

.field public id:Ljava/lang/String;

.field public user:Lcom/cashwalk/cashwalk/util/network/model/User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/util/network/model/User;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    return-void
.end method
