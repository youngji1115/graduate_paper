.class Lcom/cashwalk/cashwalk/activity/StepBetActivity$6;
.super Ljava/lang/Object;
.source "StepBetActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    .line 280
    sget-object v0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->instance:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    if-eqz v0, :cond_0

    .line 281
    sget-object v0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->instance:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->rl_add_connect_option:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->shareFriendRank()V

    .line 285
    const/4 v0, 0x1

    return v0
.end method
