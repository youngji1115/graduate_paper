.class Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$1;
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

.field final synthetic val$holder:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$1;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$1;->val$holder:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$1;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->access$100(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$1;->val$holder:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->li_cashwalk_notice_layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$1;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->notifyDataSetChanged()V

    .line 105
    return-void
.end method
