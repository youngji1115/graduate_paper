.class public Lcom/cashwalk/cashwalk/util/network/model/FriendRank;
.super Ljava/lang/Object;
.source "FriendRank.java"


# instance fields
.field public date:Ljava/lang/String;

.field public friend:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public owner:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public profileUrl:Ljava/lang/String;

.field public rank:I

.field public recommendCount:I

.field public sort_value:Ljava/lang/String;

.field public status:I

.field public step:I

.field public totalStep:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput v1, p0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->rank:I

    .line 5
    iput v1, p0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->step:I

    .line 6
    iput v1, p0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->totalStep:I

    .line 7
    iput v1, p0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->status:I

    .line 8
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->nickname:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->profileUrl:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->owner:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->sort_value:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->date:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->friend:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->phone:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->recommendCount:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 25
    if-nez p1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 27
    check-cast v0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    .line 28
    .local v0, "temp":Lcom/cashwalk/cashwalk/util/network/model/FriendRank;
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->sort_value:Ljava/lang/String;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->sort_value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->sort_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
