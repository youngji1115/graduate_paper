.class Lcom/tnkfactory/ad/hj;
.super Lcom/tnkfactory/ad/hi;


# instance fields
.field protected f:Lcom/tnkfactory/ad/hr;

.field final synthetic g:Lcom/tnkfactory/ad/hg;


# direct methods
.method public constructor <init>(Lcom/tnkfactory/ad/hg;Landroid/content/Context;ZLcom/tnkfactory/ad/hr;Lcom/tnkfactory/ad/ServiceCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/tnkfactory/ad/hj;->g:Lcom/tnkfactory/ad/hg;

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/tnkfactory/ad/hi;-><init>(Lcom/tnkfactory/ad/hg;Landroid/content/Context;ZLcom/tnkfactory/ad/ServiceCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/hj;->f:Lcom/tnkfactory/ad/hr;

    iput-object p4, p0, Lcom/tnkfactory/ad/hj;->f:Lcom/tnkfactory/ad/hr;

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-super {p0, p1}, Lcom/tnkfactory/ad/hi;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/hj;->f:Lcom/tnkfactory/ad/hr;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tnkfactory/ad/hj;->f:Lcom/tnkfactory/ad/hr;

    iget-object v2, p0, Lcom/tnkfactory/ad/hj;->a:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lcom/tnkfactory/ad/hr;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method
