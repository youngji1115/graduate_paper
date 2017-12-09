.class Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$2;
.super Ljava/lang/Object;
.source "StepBetRankFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;

.field final synthetic val$item:Lcom/cashwalk/cashwalk/util/network/model/Rank;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;Lcom/cashwalk/cashwalk/util/network/model/Rank;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$2;->this$1:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$2;->val$item:Lcom/cashwalk/cashwalk/util/network/model/Rank;

    iput p3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 353
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$2;->this$1:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    .local v1, "startFeed":Landroid/content/Intent;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$2;->val$item:Lcom/cashwalk/cashwalk/util/network/model/Rank;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/Rank;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$2;->val$item:Lcom/cashwalk/cashwalk/util/network/model/Rank;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/Rank;->id:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 355
    const-string v2, "id"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$2;->val$item:Lcom/cashwalk/cashwalk/util/network/model/Rank;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Rank;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v2, "name"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$2;->val$item:Lcom/cashwalk/cashwalk/util/network/model/Rank;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Rank;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$2;->this$1:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-virtual {v2, v1}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->startActivity(Landroid/content/Intent;)V

    .line 363
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$2;->val$item:Lcom/cashwalk/cashwalk/util/network/model/Rank;

    iget v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$2;->val$position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/cashwalk/cashwalk/util/network/model/Rank;->rank:I

    .line 360
    new-instance v0, Lcom/cashwalk/cashwalk/dialog/ProfileDialog;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$2;->this$1:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$2;->val$item:Lcom/cashwalk/cashwalk/util/network/model/Rank;

    invoke-direct {v0, v2, v3}, Lcom/cashwalk/cashwalk/dialog/ProfileDialog;-><init>(Landroid/content/Context;Lcom/cashwalk/cashwalk/util/network/model/Rank;)V

    .line 361
    .local v0, "pd":Lcom/cashwalk/cashwalk/dialog/ProfileDialog;
    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/dialog/ProfileDialog;->show()V

    goto :goto_0
.end method
