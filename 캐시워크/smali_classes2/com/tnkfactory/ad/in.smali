.class public Lcom/tnkfactory/ad/in;
.super Lcom/tnkfactory/ad/cw;


# instance fields
.field public a:Lcom/tnkfactory/ad/VideoAdItem;

.field final synthetic b:Lcom/tnkfactory/ad/im;


# direct methods
.method public constructor <init>(Lcom/tnkfactory/ad/im;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/tnkfactory/ad/in;->b:Lcom/tnkfactory/ad/im;

    invoke-direct {p0, p2}, Lcom/tnkfactory/ad/cw;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/in;->a:Lcom/tnkfactory/ad/VideoAdItem;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/in;->b:Lcom/tnkfactory/ad/im;

    iget-object v0, v0, Lcom/tnkfactory/ad/im;->d:Lcom/tnkfactory/ad/cx;

    invoke-virtual {v0, p0}, Lcom/tnkfactory/ad/cx;->c(Lcom/tnkfactory/ad/cw;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/in;->c:Lcom/tnkfactory/ad/TnkAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/in;->c:Lcom/tnkfactory/ad/TnkAdListener;

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/TnkAdListener;->onFailure(I)V

    :cond_0
    return-void
.end method
