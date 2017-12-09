.class Lcom/tnkfactory/ad/em;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout;

.field final synthetic b:Lcom/tnkfactory/ad/eg;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/eg;Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/em;->b:Lcom/tnkfactory/ad/eg;

    iput-object p2, p0, Lcom/tnkfactory/ad/em;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/em;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/tnkfactory/ad/em;->b:Lcom/tnkfactory/ad/eg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/eg;->a(Lcom/tnkfactory/ad/eg;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
