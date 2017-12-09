.class Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1$1;
.super Ljava/lang/Object;
.source "StepBetActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const v6, 0x7f020221

    .line 443
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$1000(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    new-instance v4, Lorg/joda/time/DateTime;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;->val$winner:Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/util/network/model/Winner;->created:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/util/Utils;->getAgoString(Landroid/content/Context;Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;->val$winner:Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v1, v2, Lcom/cashwalk/cashwalk/util/network/model/Winner;->imageUrl:Ljava/lang/String;

    .line 446
    .local v1, "path":Ljava/lang/String;
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 448
    invoke-virtual {v2, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 449
    invoke-virtual {v2, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .line 450
    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 460
    :goto_0
    const-string v0, ""

    .line 461
    .local v0, "nickname":Ljava/lang/String;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;->val$winner:Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/Winner;->nickname:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 462
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;->val$winner:Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v0, v2, Lcom/cashwalk/cashwalk/util/network/model/Winner;->nickname:Ljava/lang/String;

    .line 465
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    const v4, 0x7f0901f0

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$1300(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;->val$winnerUserList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    .line 469
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->mAnimationEndHandler:Landroid/os/Handler;

    const/16 v3, 0x2328

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 473
    :goto_1
    return-void

    .line 452
    .end local v0    # "nickname":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 454
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v3

    .line 455
    invoke-virtual {v3, v1}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 453
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 456
    invoke-virtual {v2, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .line 457
    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 471
    .restart local v0    # "nickname":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$1308(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)I

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 478
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 439
    return-void
.end method
