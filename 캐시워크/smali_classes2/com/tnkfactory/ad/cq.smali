.class Lcom/tnkfactory/ad/cq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/tnkfactory/ad/cp;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/cp;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/cq;->b:Lcom/tnkfactory/ad/cp;

    iput-object p2, p0, Lcom/tnkfactory/ad/cq;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/cq;->b:Lcom/tnkfactory/ad/cp;

    iget-object v0, v0, Lcom/tnkfactory/ad/cp;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->k(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/il;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/cq;->b:Lcom/tnkfactory/ad/cp;

    iget-object v0, v0, Lcom/tnkfactory/ad/cp;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-static {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->k(Lcom/tnkfactory/ad/AdMediaActivity;)Lcom/tnkfactory/ad/il;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/cq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/il;->setCardImage(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
