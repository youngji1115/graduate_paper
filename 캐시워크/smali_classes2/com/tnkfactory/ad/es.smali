.class Lcom/tnkfactory/ad/es;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/er;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/er;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/es;->a:Lcom/tnkfactory/ad/er;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/es;->a:Lcom/tnkfactory/ad/er;

    iget-object v0, v0, Lcom/tnkfactory/ad/er;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

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
