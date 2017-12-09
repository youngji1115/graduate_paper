.class Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "FriendRankFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;)V
    .locals 0
    .param p1, "this$3"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2$1;->this$3:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const v6, 0x7f090141

    const/4 v5, 0x0

    .line 624
    :try_start_0
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 625
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 626
    .local v1, "result":Z
    if-eqz v1, :cond_2

    .line 627
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2$1;->this$3:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;->this$2:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2$1;->this$3:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;->this$2:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09015c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 628
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2$1;->this$3:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;->this$2:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->access$1400(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2$1;->this$3:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;->this$2:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;

    iget v3, v3, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 630
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2$1;->this$3:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;->this$2:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->access$1400(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 631
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2$1;->this$3:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;->this$2:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)V

    .line 633
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2$1;->this$3:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;->this$2:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->notifyDataSetChanged()V

    .line 641
    .end local v1    # "result":Z
    :cond_1
    :goto_0
    return-void

    .line 635
    .restart local v1    # "result":Z
    :cond_2
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2$1;->this$3:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;->this$2:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2$1;->this$3:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;->this$2:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    const v4, 0x7f090141

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 638
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2$1;->this$3:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;->this$2:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2$1;->this$3:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4$2;->this$2:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-virtual {v3, v6}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
