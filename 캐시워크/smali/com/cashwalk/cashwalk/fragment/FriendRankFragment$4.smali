.class Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$4;
.super Ljava/lang/Object;
.source "FriendRankFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)V

    .line 164
    return-void
.end method
