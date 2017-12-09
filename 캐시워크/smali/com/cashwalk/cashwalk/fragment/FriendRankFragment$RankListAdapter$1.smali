.class Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$1;
.super Ljava/lang/Object;
.source "FriendRankFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;-><init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/cashwalk/cashwalk/util/network/model/FriendRank;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

.field final synthetic val$this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$1;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$1;->val$this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cashwalk/cashwalk/util/network/model/FriendRank;Lcom/cashwalk/cashwalk/util/network/model/FriendRank;)I
    .locals 2
    .param p1, "o1"    # Lcom/cashwalk/cashwalk/util/network/model/FriendRank;
    .param p2, "o2"    # Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    .prologue
    .line 455
    iget v0, p2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->step:I

    iget v1, p1, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->step:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 452
    check-cast p1, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    check-cast p2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$1;->compare(Lcom/cashwalk/cashwalk/util/network/model/FriendRank;Lcom/cashwalk/cashwalk/util/network/model/FriendRank;)I

    move-result v0

    return v0
.end method
