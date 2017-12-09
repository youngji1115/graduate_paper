.class Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;
.super Ljava/lang/Object;
.source "FriendRankFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;)V
    .locals 0
    .param p1, "this$2"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;->this$2:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 614
    const-string v0, ""

    .line 615
    .local v0, "friendId":Ljava/lang/String;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;->this$2:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->val$item:Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->owner:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 616
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;->this$2:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->val$item:Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    iget-object v0, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->owner:Ljava/lang/String;

    .line 620
    :cond_0
    :goto_0
    new-instance v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2$1;-><init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;)V

    invoke-static {v0, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->deleteFriend(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .line 643
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;->this$2:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 644
    return-void

    .line 617
    .end local v1    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;->this$2:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->val$item:Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->friend:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 618
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;->this$2:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->val$item:Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    iget-object v0, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->friend:Ljava/lang/String;

    goto :goto_0
.end method
