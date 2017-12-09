.class Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$3;
.super Ljava/lang/Object;
.source "FriendRankFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

.field final synthetic val$item:Lcom/cashwalk/cashwalk/util/network/model/FriendRank;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;Lcom/cashwalk/cashwalk/util/network/model/FriendRank;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    .prologue
    .line 583
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$3;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$3;->val$item:Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 586
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$3;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 587
    .local v0, "startFeed":Landroid/content/Intent;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$3;->val$item:Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->friend:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$3;->val$item:Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->friend:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 588
    const-string v1, "id"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$3;->val$item:Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->friend:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    :goto_0
    const-string v1, "name"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$3;->val$item:Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$3;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-virtual {v1, v0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->startActivity(Landroid/content/Intent;)V

    .line 595
    return-void

    .line 590
    :cond_0
    const-string v1, "id"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$3;->val$item:Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->owner:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
