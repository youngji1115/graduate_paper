.class Lcom/tnkfactory/ad/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/c;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/e;->a:Lcom/tnkfactory/ad/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/e;->a:Lcom/tnkfactory/ad/c;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/c;->c()V

    iget-object v0, p0, Lcom/tnkfactory/ad/e;->a:Lcom/tnkfactory/ad/c;

    invoke-static {v0}, Lcom/tnkfactory/ad/c;->a(Lcom/tnkfactory/ad/c;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/e;->a:Lcom/tnkfactory/ad/c;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/c;->a()V

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
