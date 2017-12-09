.class Lcom/tnkfactory/ad/ir;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/iq;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/iq;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ir;->a:Lcom/tnkfactory/ad/iq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/ir;->a:Lcom/tnkfactory/ad/iq;

    invoke-static {v0}, Lcom/tnkfactory/ad/iq;->a(Lcom/tnkfactory/ad/iq;)Lcom/tnkfactory/ad/ck;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ir;->a:Lcom/tnkfactory/ad/iq;

    invoke-static {v0}, Lcom/tnkfactory/ad/iq;->b(Lcom/tnkfactory/ad/iq;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ir;->a:Lcom/tnkfactory/ad/iq;

    invoke-static {v0}, Lcom/tnkfactory/ad/iq;->a(Lcom/tnkfactory/ad/iq;)Lcom/tnkfactory/ad/ck;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ir;->a:Lcom/tnkfactory/ad/iq;

    invoke-static {v1}, Lcom/tnkfactory/ad/iq;->c(Lcom/tnkfactory/ad/iq;)Lcom/tnkfactory/ad/VideoAdItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/ck;->b(Lcom/tnkfactory/ad/ImageAdItem;)V

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ir;->a:Lcom/tnkfactory/ad/iq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/iq;->a(Lcom/tnkfactory/ad/iq;Z)Z

    iget-object v0, p0, Lcom/tnkfactory/ad/ir;->a:Lcom/tnkfactory/ad/iq;

    invoke-static {v0}, Lcom/tnkfactory/ad/iq;->d(Lcom/tnkfactory/ad/iq;)V

    return-void
.end method
