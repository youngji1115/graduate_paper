.class Lcom/cashwalk/cashwalk/MainActivity$26$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity$26$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cashwalk/cashwalk/MainActivity$26$1;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity$26$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/cashwalk/cashwalk/MainActivity$26$1;

    .prologue
    .line 1439
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$26$1$1;->this$2:Lcom/cashwalk/cashwalk/MainActivity$26$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const v5, 0x7f020221

    .line 1446
    iget-object v1, p0, Lcom/cashwalk/cashwalk/MainActivity$26$1$1;->this$2:Lcom/cashwalk/cashwalk/MainActivity$26$1;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity$26$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$26;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity$26;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/MainActivity;->access$2400(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity$26$1$1;->this$2:Lcom/cashwalk/cashwalk/MainActivity$26$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/MainActivity$26$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$26;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/MainActivity$26;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    new-instance v3, Lorg/joda/time/DateTime;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$26$1$1;->this$2:Lcom/cashwalk/cashwalk/MainActivity$26$1;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$26$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$26;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$26;->val$winner:Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Winner;->created:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/util/Utils;->getAgoString(Landroid/content/Context;Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1448
    iget-object v1, p0, Lcom/cashwalk/cashwalk/MainActivity$26$1$1;->this$2:Lcom/cashwalk/cashwalk/MainActivity$26$1;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity$26$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$26;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity$26;->val$winner:Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v0, v1, Lcom/cashwalk/cashwalk/util/network/model/Winner;->imageUrl:Ljava/lang/String;

    .line 1449
    .local v0, "path":Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1450
    iget-object v1, p0, Lcom/cashwalk/cashwalk/MainActivity$26$1$1;->this$2:Lcom/cashwalk/cashwalk/MainActivity$26$1;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity$26$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$26;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity$26;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    .line 1451
    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 1452
    invoke-virtual {v1, v5}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity$26$1$1;->this$2:Lcom/cashwalk/cashwalk/MainActivity$26$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/MainActivity$26$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$26;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/MainActivity$26;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    .line 1453
    invoke-static {v2}, Lcom/cashwalk/cashwalk/MainActivity;->access$2500(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 1462
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/MainActivity$26$1$1;->this$2:Lcom/cashwalk/cashwalk/MainActivity$26$1;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity$26$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$26;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity$26;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/MainActivity;->access$2600(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity$26$1$1;->this$2:Lcom/cashwalk/cashwalk/MainActivity$26$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/MainActivity$26$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$26;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/MainActivity$26;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const v3, 0x7f0901f0

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    iget-object v4, p0, Lcom/cashwalk/cashwalk/MainActivity$26$1$1;->this$2:Lcom/cashwalk/cashwalk/MainActivity$26$1;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$26$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$26;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/MainActivity$26;->val$winner:Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Winner;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1464
    iget-object v1, p0, Lcom/cashwalk/cashwalk/MainActivity$26$1$1;->this$2:Lcom/cashwalk/cashwalk/MainActivity$26$1;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity$26$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$26;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity$26;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/MainActivity;->access$2700(Lcom/cashwalk/cashwalk/MainActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity$26$1$1;->this$2:Lcom/cashwalk/cashwalk/MainActivity$26$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/MainActivity$26$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$26;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/MainActivity$26;->val$winnerUserList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1466
    iget-object v1, p0, Lcom/cashwalk/cashwalk/MainActivity$26$1$1;->this$2:Lcom/cashwalk/cashwalk/MainActivity$26$1;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity$26$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$26;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity$26;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity;->mAnimationEndHandler:Landroid/os/Handler;

    const/16 v2, 0x2328

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1470
    :goto_1
    return-void

    .line 1455
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/MainActivity$26$1$1;->this$2:Lcom/cashwalk/cashwalk/MainActivity$26$1;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity$26$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$26;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity$26;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    .line 1457
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v2

    .line 1458
    invoke-virtual {v2, v0}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1456
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 1459
    invoke-virtual {v1, v5}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity$26$1$1;->this$2:Lcom/cashwalk/cashwalk/MainActivity$26$1;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/MainActivity$26$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$26;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/MainActivity$26;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    .line 1460
    invoke-static {v2}, Lcom/cashwalk/cashwalk/MainActivity;->access$2500(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 1468
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/MainActivity$26$1$1;->this$2:Lcom/cashwalk/cashwalk/MainActivity$26$1;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity$26$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$26;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity$26;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/MainActivity;->access$2708(Lcom/cashwalk/cashwalk/MainActivity;)I

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1475
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1442
    return-void
.end method
