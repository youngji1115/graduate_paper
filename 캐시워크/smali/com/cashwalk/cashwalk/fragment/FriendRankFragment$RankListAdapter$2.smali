.class Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$2;
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


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$2;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 521
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$2;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 522
    .local v0, "startMyFriendList":Landroid/content/Intent;
    const-string v1, "postion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 523
    const-string v1, "ref"

    const-string v2, "rank"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    const-string/jumbo v1, "type"

    const-string v2, "find"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$2;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-virtual {v1, v0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->startActivity(Landroid/content/Intent;)V

    .line 526
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$2;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 527
    return-void
.end method
