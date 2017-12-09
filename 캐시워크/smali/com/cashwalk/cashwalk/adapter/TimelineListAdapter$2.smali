.class Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$2;
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


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$2;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$2;->val$contentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$2;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->access$200(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$2;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->access$200(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "item"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$2;->val$contentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 144
    return-void
.end method
