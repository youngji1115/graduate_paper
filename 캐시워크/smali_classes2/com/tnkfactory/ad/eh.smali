.class Lcom/tnkfactory/ad/eh;
.super Lcom/tnkfactory/ad/ServiceCallback;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/eg;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/eg;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/eh;->a:Lcom/tnkfactory/ad/eg;

    invoke-direct {p0}, Lcom/tnkfactory/ad/ServiceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/eh;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v0}, Lcom/tnkfactory/ad/eg;->a(Lcom/tnkfactory/ad/eg;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tnkfactory/ad/eh;->a:Lcom/tnkfactory/ad/eg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/eg;->a(Lcom/tnkfactory/ad/eg;I)I

    iget-object v0, p0, Lcom/tnkfactory/ad/eh;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v0}, Lcom/tnkfactory/ad/eg;->b(Lcom/tnkfactory/ad/eg;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/eh;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v0}, Lcom/tnkfactory/ad/eg;->b(Lcom/tnkfactory/ad/eg;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    iget-object v0, p0, Lcom/tnkfactory/ad/eh;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v0}, Lcom/tnkfactory/ad/eg;->c(Lcom/tnkfactory/ad/eg;)Lcom/tnkfactory/ad/ev;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/eh;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v0}, Lcom/tnkfactory/ad/eg;->c(Lcom/tnkfactory/ad/eg;)Lcom/tnkfactory/ad/ev;

    move-result-object v0

    const/16 v1, -0x9

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/ev;->a(I)V

    goto :goto_1
.end method

.method public onReturn(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 10

    const-wide/32 v0, 0x1b7740

    const/4 v9, 0x2

    const/4 v8, 0x0

    check-cast p2, Lcom/tnkfactory/framework/vo/ValueObject;

    iget-object v2, p0, Lcom/tnkfactory/ad/eh;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v2}, Lcom/tnkfactory/ad/eg;->a(Lcom/tnkfactory/ad/eg;)I

    move-result v2

    if-ne v2, v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/tnkfactory/ad/eh;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v2, v8}, Lcom/tnkfactory/ad/eg;->a(Lcom/tnkfactory/ad/eg;I)I

    iget-object v2, p0, Lcom/tnkfactory/ad/eh;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v2}, Lcom/tnkfactory/ad/eg;->b(Lcom/tnkfactory/ad/eg;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tnkfactory/ad/eh;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v2}, Lcom/tnkfactory/ad/eg;->b(Lcom/tnkfactory/ad/eg;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    iget-object v0, p0, Lcom/tnkfactory/ad/eh;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v0}, Lcom/tnkfactory/ad/eg;->c(Lcom/tnkfactory/ad/eg;)Lcom/tnkfactory/ad/ev;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/eh;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v0}, Lcom/tnkfactory/ad/eg;->c(Lcom/tnkfactory/ad/eg;)Lcom/tnkfactory/ad/ev;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/ev;->a(I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/tnkfactory/ad/eh;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/tnkfactory/ad/eg;->a(Lcom/tnkfactory/ad/eg;J)J

    iget-object v2, p0, Lcom/tnkfactory/ad/eh;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v2, p2}, Lcom/tnkfactory/ad/eg;->a(Lcom/tnkfactory/ad/eg;Lcom/tnkfactory/framework/vo/ValueObject;)Lcom/tnkfactory/framework/vo/ValueObject;

    iget-object v2, p0, Lcom/tnkfactory/ad/eh;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v2, v8}, Lcom/tnkfactory/ad/eg;->b(Lcom/tnkfactory/ad/eg;I)Lcom/tnkfactory/ad/BannerAdItem;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/tnkfactory/ad/eh;->a:Lcom/tnkfactory/ad/eg;

    invoke-virtual {v2}, Lcom/tnkfactory/ad/BannerAdItem;->e()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    invoke-virtual {v2}, Lcom/tnkfactory/ad/BannerAdItem;->e()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    :cond_5
    invoke-static {v3, v0, v1}, Lcom/tnkfactory/ad/eg;->b(Lcom/tnkfactory/ad/eg;J)J

    :cond_6
    iget-object v0, p0, Lcom/tnkfactory/ad/eh;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v0, v9}, Lcom/tnkfactory/ad/eg;->a(Lcom/tnkfactory/ad/eg;I)I

    iget-object v0, p0, Lcom/tnkfactory/ad/eh;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v0}, Lcom/tnkfactory/ad/eg;->b(Lcom/tnkfactory/ad/eg;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tnkfactory/ad/eh;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v0}, Lcom/tnkfactory/ad/eg;->b(Lcom/tnkfactory/ad/eg;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    iget-object v0, p0, Lcom/tnkfactory/ad/eh;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v0}, Lcom/tnkfactory/ad/eg;->c(Lcom/tnkfactory/ad/eg;)Lcom/tnkfactory/ad/ev;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/eh;->a:Lcom/tnkfactory/ad/eg;

    invoke-static {v0}, Lcom/tnkfactory/ad/eg;->c(Lcom/tnkfactory/ad/eg;)Lcom/tnkfactory/ad/ev;

    move-result-object v0

    invoke-interface {v0}, Lcom/tnkfactory/ad/ev;->a()V

    goto/16 :goto_0
.end method
