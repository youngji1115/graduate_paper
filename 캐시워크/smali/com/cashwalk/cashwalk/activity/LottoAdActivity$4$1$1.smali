.class Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1$1;
.super Ljava/lang/Object;
.source "LottoAdActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const v5, 0x7f020221

    .line 426
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$800(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    new-instance v3, Lorg/joda/time/DateTime;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;->val$winner:Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Winner;->created:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/util/Utils;->getAgoString(Landroid/content/Context;Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;->val$winner:Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v0, v1, Lcom/cashwalk/cashwalk/util/network/model/Winner;->imageUrl:Ljava/lang/String;

    .line 429
    .local v0, "path":Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    .line 431
    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 432
    invoke-virtual {v1, v5}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    .line 433
    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$900(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 442
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$1000(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    const v3, 0x7f0901f0

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;->val$winner:Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Winner;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;->val$winnerUserList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 446
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->mAnimationEndHandler:Landroid/os/Handler;

    const/16 v2, 0x2328

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 450
    :goto_1
    return-void

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    .line 437
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v2

    .line 438
    invoke-virtual {v2, v0}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 436
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 439
    invoke-virtual {v1, v5}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    .line 440
    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$900(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 448
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$1108(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)I

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 455
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 422
    return-void
.end method
