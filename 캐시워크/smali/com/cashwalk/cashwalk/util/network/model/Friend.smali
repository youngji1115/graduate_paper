.class public Lcom/cashwalk/cashwalk/util/network/model/Friend;
.super Ljava/lang/Object;
.source "Friend.java"


# instance fields
.field public fb_id:Ljava/lang/String;

.field public friend:Ljava/lang/String;

.field public friend_status:I

.field public id:Ljava/lang/String;

.field public isConnectIcon:Z

.field public isFriend:Z

.field public nickname:Ljava/lang/String;

.field public owner:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public profileUrl:Ljava/lang/String;

.field public realName:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->id:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->fb_id:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->owner:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->profileUrl:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->nickname:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->phone:Ljava/lang/String;

    .line 16
    iput v1, p0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->status:I

    .line 17
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->realName:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->isFriend:Z

    .line 19
    iput v1, p0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend_status:I

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->isConnectIcon:Z

    return-void
.end method
