.class Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$1;
.super Ljava/lang/Object;
.source "StepBetRankFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;-><init>(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;Ljava/util/ArrayList;)V
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
        "Lcom/cashwalk/cashwalk/util/network/model/Rank;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;

.field final synthetic val$this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$1;->this$1:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$1;->val$this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cashwalk/cashwalk/util/network/model/Rank;Lcom/cashwalk/cashwalk/util/network/model/Rank;)I
    .locals 2
    .param p1, "o1"    # Lcom/cashwalk/cashwalk/util/network/model/Rank;
    .param p2, "o2"    # Lcom/cashwalk/cashwalk/util/network/model/Rank;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$1;->this$1:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget v0, p2, Lcom/cashwalk/cashwalk/util/network/model/Rank;->steps:I

    iget v1, p1, Lcom/cashwalk/cashwalk/util/network/model/Rank;->steps:I

    sub-int/2addr v0, v1

    .line 250
    :goto_0
    return v0

    :cond_0
    iget v0, p2, Lcom/cashwalk/cashwalk/util/network/model/Rank;->totalSteps:I

    iget v1, p1, Lcom/cashwalk/cashwalk/util/network/model/Rank;->totalSteps:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 244
    check-cast p1, Lcom/cashwalk/cashwalk/util/network/model/Rank;

    check-cast p2, Lcom/cashwalk/cashwalk/util/network/model/Rank;

    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$1;->compare(Lcom/cashwalk/cashwalk/util/network/model/Rank;Lcom/cashwalk/cashwalk/util/network/model/Rank;)I

    move-result v0

    return v0
.end method
