.class Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$1;
.super Ljava/lang/Object;
.source "TimelineListFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
