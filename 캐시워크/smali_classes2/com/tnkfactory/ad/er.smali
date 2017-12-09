.class Lcom/tnkfactory/ad/er;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/RelativeLayout;

.field final synthetic c:Lcom/tnkfactory/ad/ex;

.field final synthetic d:Lcom/tnkfactory/ad/eg;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/eg;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Lcom/tnkfactory/ad/ex;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/er;->d:Lcom/tnkfactory/ad/eg;

    iput-object p2, p0, Lcom/tnkfactory/ad/er;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/tnkfactory/ad/er;->b:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/tnkfactory/ad/er;->c:Lcom/tnkfactory/ad/ex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/er;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tnkfactory/ad/ee;->c(I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/tnkfactory/ad/es;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/es;-><init>(Lcom/tnkfactory/ad/er;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/tnkfactory/ad/er;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/er;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tnkfactory/ad/er;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/er;->c:Lcom/tnkfactory/ad/ex;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/ex;->setClickable(Z)V

    :cond_0
    return-void
.end method
