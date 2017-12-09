.class Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;
.super Ljava/lang/Object;
.source "MyFriendListActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 282
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 287
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0, p1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$002(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;I)I

    .line 288
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_search_bar_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 290
    if-nez p1, :cond_4

    .line 291
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$300(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$300(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 294
    :cond_0
    sget-object v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mMyFriendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    sget-boolean v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isRefresh:Z

    if-nez v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_search_bar_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$400(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->instent:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    sget-object v1, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mMyFriendList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->setList(Ljava/util/List;)V

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->et_input_search_text:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    const v2, 0x7f09016c

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 338
    :cond_1
    :goto_1
    return-void

    .line 300
    :cond_2
    sput-boolean v1, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isRefresh:Z

    .line 301
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getMyFriendList()V

    goto :goto_0

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_search_bar_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getMyFriendList()V

    goto :goto_0

    .line 309
    :cond_4
    if-ne p1, v3, :cond_7

    .line 310
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_search_bar_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 311
    sget-object v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 312
    sget-boolean v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isRefresh:Z

    if-nez v0, :cond_5

    .line 313
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$500(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->instent:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    sget-object v1, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendResultList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->setList(Ljava/util/List;)V

    .line 322
    :goto_2
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$600(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$300(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$300(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 315
    :cond_5
    sput-boolean v1, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isRefresh:Z

    .line 316
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getRecommendFriendList()V

    goto :goto_2

    .line 319
    :cond_6
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getRecommendFriendList()V

    goto :goto_2

    .line 328
    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 329
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$300(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 330
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$300(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 332
    :cond_8
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->rl_search_bar_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getRequestFriendList()V

    goto :goto_1

    .line 336
    :cond_9
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getMyFriendList()V

    goto/16 :goto_1
.end method
