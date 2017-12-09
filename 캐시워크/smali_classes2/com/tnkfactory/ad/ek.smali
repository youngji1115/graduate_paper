.class Lcom/tnkfactory/ad/ek;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/eg;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/eg;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ek;->a:Lcom/tnkfactory/ad/eg;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ek;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v0, v6}, Lcom/tnkfactory/ad/eg;->a(Lcom/tnkfactory/ad/eg;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ek;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v0}, Lcom/tnkfactory/ad/eg;->g(Lcom/tnkfactory/ad/eg;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/ek;->a:Lcom/tnkfactory/ad/eg;

    iget-object v1, p0, Lcom/tnkfactory/ad/ek;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v1}, Lcom/tnkfactory/ad/eg;->g(Lcom/tnkfactory/ad/eg;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/tnkfactory/ad/eg;->c(Lcom/tnkfactory/ad/eg;J)J

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v6, v0, v1}, Lcom/tnkfactory/ad/ek;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/ek;->a:Lcom/tnkfactory/ad/eg;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/eg;->b(Lcom/tnkfactory/ad/eg;Z)Z

    iget-object v0, p0, Lcom/tnkfactory/ad/ek;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v0}, Lcom/tnkfactory/ad/eg;->h(Lcom/tnkfactory/ad/eg;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tnkfactory/ad/ek;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v0}, Lcom/tnkfactory/ad/eg;->i(Lcom/tnkfactory/ad/eg;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
