.class Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$3;
.super Ljava/lang/Object;
.source "TimelineListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->onBindViewHolder(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

.field final synthetic val$contentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;ILcom/cashwalk/cashwalk/util/network/model/TimelineItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$3;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    iput p2, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$3;->val$position:I

    iput-object p3, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$3;->val$contentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 182
    iget v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$3;->val$position:I

    sput v1, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->selectedIndex:I

    .line 183
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$3;->val$contentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    sput-object v1, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->selectedIndexItemId:Ljava/lang/String;

    .line 185
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$3;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->access$200(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v0, "startFeed":Landroid/content/Intent;
    const-string v1, "id"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$3;->val$contentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "name"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$3;->val$contentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 189
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$3;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->access$200(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 190
    return-void
.end method
