.class Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1$1;
.super Ljava/lang/Object;
.source "LottoWinnerListActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const v6, 0x7f020221

    .line 500
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$1400(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    new-instance v4, Lorg/joda/time/DateTime;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;->val$winner:Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/util/network/model/Winner;->created:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/util/Utils;->getAgoString(Landroid/content/Context;Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;->val$winner:Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v1, v2, Lcom/cashwalk/cashwalk/util/network/model/Winner;->imageUrl:Ljava/lang/String;

    .line 503
    .local v1, "path":Ljava/lang/String;
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 504
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 505
    invoke-virtual {v2, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 506
    invoke-virtual {v2, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .line 507
    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$1500(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 517
    :goto_0
    const-string v0, ""

    .line 518
    .local v0, "nickname":Ljava/lang/String;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;->val$winner:Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/Winner;->nickname:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 519
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;->val$winner:Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v0, v2, Lcom/cashwalk/cashwalk/util/network/model/Winner;->nickname:Ljava/lang/String;

    .line 522
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$1600(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    const v4, 0x7f0901f0

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$1700(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;->val$winnerUserList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    .line 526
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->mAnimationEndHandler:Landroid/os/Handler;

    const/16 v3, 0x2328

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 530
    :goto_1
    return-void

    .line 509
    .end local v0    # "nickname":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 511
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v3

    .line 512
    invoke-virtual {v3, v1}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 510
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 513
    invoke-virtual {v2, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .line 514
    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$1500(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 528
    .restart local v0    # "nickname":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$1708(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)I

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 535
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 496
    return-void
.end method
