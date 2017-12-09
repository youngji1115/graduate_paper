.class Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;
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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;Lcom/cashwalk/cashwalk/util/network/model/FriendRank;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->val$item:Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    iput p3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 601
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 602
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09015d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 603
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$1;-><init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 610
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;-><init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 646
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 648
    return-void
.end method
