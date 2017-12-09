.class Lcom/tnkfactory/ad/iz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/iy;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/iy;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/iz;->a:Lcom/tnkfactory/ad/iy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/iz;->a:Lcom/tnkfactory/ad/iy;

    invoke-static {v0}, Lcom/tnkfactory/ad/iy;->a(Lcom/tnkfactory/ad/iy;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/iz;->a:Lcom/tnkfactory/ad/iy;

    invoke-static {v0}, Lcom/tnkfactory/ad/iy;->b(Lcom/tnkfactory/ad/iy;)Lcom/tnkfactory/ad/ck;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/iz;->a:Lcom/tnkfactory/ad/iy;

    invoke-static {v0}, Lcom/tnkfactory/ad/iy;->c(Lcom/tnkfactory/ad/iy;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/iz;->a:Lcom/tnkfactory/ad/iy;

    invoke-static {v0}, Lcom/tnkfactory/ad/iy;->b(Lcom/tnkfactory/ad/iy;)Lcom/tnkfactory/ad/ck;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/iz;->a:Lcom/tnkfactory/ad/iy;

    invoke-static {v1}, Lcom/tnkfactory/ad/iy;->d(Lcom/tnkfactory/ad/iy;)Lcom/tnkfactory/ad/InterstitialAdItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/ck;->b(Lcom/tnkfactory/ad/ImageAdItem;)V

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/iz;->a:Lcom/tnkfactory/ad/iy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/iy;->a(Lcom/tnkfactory/ad/iy;Z)Z

    return-void
.end method
