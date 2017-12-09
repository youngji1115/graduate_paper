.class public Lcom/cashwalk/cashwalk/util/network/model/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x50297d08dd9c3bcfL


# instance fields
.field public anonymousId:Ljava/lang/String;

.field public bgImageUrl:Ljava/lang/String;

.field public birthday:Lorg/joda/time/DateTime;

.field public coachImageUrl:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public countryCode:Ljava/lang/String;

.field public createdAt:Lorg/joda/time/DateTime;

.field public fbUid:Ljava/lang/String;

.field public friendCode:Ljava/lang/String;

.field public gender:Ljava/lang/String;

.field public height:I

.field public isNew:Z

.field public kakaoUid:Ljava/lang/String;

.field public naverUid:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public playerId:Ljava/lang/String;

.field public point:I

.field public profileUrl:Ljava/lang/String;

.field public pushID:Ljava/lang/String;

.field public rank:I

.field public recommendPoint:I

.field public recommender:Ljava/lang/String;

.field public requestCount:I

.field public smsAuth:Z

.field public stepUpdated:Lorg/joda/time/DateTime;

.field public token:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public weight:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->uid:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->anonymousId:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->pushID:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->birthday:Lorg/joda/time/DateTime;

    .line 15
    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->createdAt:Lorg/joda/time/DateTime;

    .line 16
    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->stepUpdated:Lorg/joda/time/DateTime;

    .line 17
    iput v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->point:I

    .line 18
    iput v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->height:I

    .line 19
    iput v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->weight:I

    .line 20
    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->gender:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->kakaoUid:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->fbUid:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->naverUid:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->phone:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->countryCode:Ljava/lang/String;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->isNew:Z

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->rank:I

    .line 28
    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->recommender:Ljava/lang/String;

    .line 29
    iput v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->recommendPoint:I

    .line 30
    iput v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->requestCount:I

    .line 31
    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->code:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->friendCode:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->playerId:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->coachImageUrl:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->bgImageUrl:Ljava/lang/String;

    .line 36
    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->smsAuth:Z

    .line 37
    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->token:Ljava/lang/String;

    return-void
.end method
