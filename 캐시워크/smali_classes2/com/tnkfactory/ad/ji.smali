.class Lcom/tnkfactory/ad/ji;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/jh;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/jh;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ji;->a:Lcom/tnkfactory/ad/jh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tnkfactory/ad/ji;->a:Lcom/tnkfactory/ad/jh;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/jh;->getMediaView()Lcom/tnkfactory/ad/fs;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/fs;->getPlayTimeLeft()I

    move-result v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ji;->a:Lcom/tnkfactory/ad/jh;

    invoke-static {v1, v0}, Lcom/tnkfactory/ad/jh;->a(Lcom/tnkfactory/ad/jh;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ji;->a:Lcom/tnkfactory/ad/jh;

    invoke-static {v0}, Lcom/tnkfactory/ad/jh;->a(Lcom/tnkfactory/ad/jh;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
