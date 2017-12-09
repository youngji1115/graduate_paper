.class Lcom/handmark/pulltorefresh/library/PullToRefreshBase$5;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->showViewTopLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;


# direct methods
.method constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0

    .prologue
    .line 1543
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$5;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase.5;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$5;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 1547
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$5;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase.5;"
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 1551
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$5;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase.5;"
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 1555
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$5;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase.5;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$5;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->access$400(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1556
    return-void
.end method
