.class Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$4;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "StepBetTimelineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->setList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

.field final synthetic val$linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$4;->val$linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    const/4 v5, 0x0

    .line 266
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$4;->val$linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    .line 271
    .local v2, "visibleItemCount":I
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$4;->val$linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result v1

    .line 272
    .local v1, "totalItemCount":I
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$4;->val$linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 273
    .local v0, "pastVisibleItems":I
    add-int v3, v0, v2

    if-lt v3, v1, :cond_0

    .line 275
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->access$002(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;Z)Z

    .line 276
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4, v5}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->refresh(ZLjava/lang/String;Z)V

    goto :goto_0
.end method
