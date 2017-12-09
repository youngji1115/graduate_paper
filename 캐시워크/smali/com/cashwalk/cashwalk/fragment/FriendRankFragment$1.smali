.class Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$1;
.super Ljava/lang/Object;
.source "FriendRankFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 123
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->rl_add_connect_option:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 127
    return-void
.end method
