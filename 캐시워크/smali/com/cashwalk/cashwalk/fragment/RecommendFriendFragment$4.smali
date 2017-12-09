.class Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$4;
.super Ljava/lang/Object;
.source "RecommendFriendFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$400(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 177
    return-void
.end method
