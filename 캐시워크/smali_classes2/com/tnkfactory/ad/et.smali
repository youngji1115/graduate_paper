.class Lcom/tnkfactory/ad/et;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/ex;

.field final synthetic b:Lcom/tnkfactory/ad/eg;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/eg;Lcom/tnkfactory/ad/ex;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/et;->b:Lcom/tnkfactory/ad/eg;

    iput-object p2, p0, Lcom/tnkfactory/ad/et;->a:Lcom/tnkfactory/ad/ex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/et;->a:Lcom/tnkfactory/ad/ex;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/et;->a:Lcom/tnkfactory/ad/ex;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ex;->performClick()Z

    :cond_0
    return-void
.end method
