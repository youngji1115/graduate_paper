.class Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment$ListFragmentSwipeRefreshLayout;
.super Landroid/support/v4/widget/SwipeRefreshLayout;
.source "SwipeRefreshListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListFragmentSwipeRefreshLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment$ListFragmentSwipeRefreshLayout;->this$0:Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;

    .line 107
    invoke-direct {p0, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    .line 108
    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 2

    .prologue
    .line 118
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment$ListFragmentSwipeRefreshLayout;->this$0:Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 119
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 120
    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;->access$000(Landroid/widget/ListView;)Z

    move-result v1

    .line 122
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
