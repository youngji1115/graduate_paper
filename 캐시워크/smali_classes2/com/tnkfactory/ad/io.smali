.class Lcom/tnkfactory/ad/io;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/im;

.field private b:Landroid/content/Context;

.field private c:Lcom/tnkfactory/ad/hg;

.field private d:Lcom/tnkfactory/ad/in;


# direct methods
.method public constructor <init>(Lcom/tnkfactory/ad/im;Landroid/content/Context;Lcom/tnkfactory/ad/in;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/tnkfactory/ad/io;->a:Lcom/tnkfactory/ad/im;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/io;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/tnkfactory/ad/io;->c:Lcom/tnkfactory/ad/hg;

    iput-object v0, p0, Lcom/tnkfactory/ad/io;->d:Lcom/tnkfactory/ad/in;

    iput-object p2, p0, Lcom/tnkfactory/ad/io;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/tnkfactory/ad/ia;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ia;->c()Lcom/tnkfactory/ad/hg;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/io;->c:Lcom/tnkfactory/ad/hg;

    iput-object p3, p0, Lcom/tnkfactory/ad/io;->d:Lcom/tnkfactory/ad/in;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tnkfactory/ad/io;->a:Lcom/tnkfactory/ad/im;

    iget-object v2, v2, Lcom/tnkfactory/ad/im;->d:Lcom/tnkfactory/ad/cx;

    invoke-virtual {v2}, Lcom/tnkfactory/ad/cx;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "VideoAd : request manager has shutdown.. cancel request task."

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/tnkfactory/ad/io;->c:Lcom/tnkfactory/ad/hg;

    iget-object v3, p0, Lcom/tnkfactory/ad/io;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/tnkfactory/ad/io;->d:Lcom/tnkfactory/ad/in;

    invoke-virtual {v4}, Lcom/tnkfactory/ad/in;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tnkfactory/ad/io;->a:Lcom/tnkfactory/ad/im;

    invoke-static {v5}, Lcom/tnkfactory/ad/im;->b(Lcom/tnkfactory/ad/im;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    :goto_1
    if-gez v0, :cond_0

    iget-object v1, p0, Lcom/tnkfactory/ad/io;->a:Lcom/tnkfactory/ad/im;

    iget-object v1, v1, Lcom/tnkfactory/ad/im;->b:Lcom/tnkfactory/ad/hu;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/tnkfactory/ad/hu;->n:J

    iget-object v1, p0, Lcom/tnkfactory/ad/io;->d:Lcom/tnkfactory/ad/in;

    iget-boolean v1, v1, Lcom/tnkfactory/ad/in;->d:Z

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/tnkfactory/ad/io;->a:Lcom/tnkfactory/ad/im;

    iget-object v0, v0, Lcom/tnkfactory/ad/im;->d:Lcom/tnkfactory/ad/cx;

    iget-object v1, p0, Lcom/tnkfactory/ad/io;->d:Lcom/tnkfactory/ad/in;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/cx;->a(Lcom/tnkfactory/ad/cw;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/io;->a:Lcom/tnkfactory/ad/im;

    invoke-static {v0}, Lcom/tnkfactory/ad/im;->c(Lcom/tnkfactory/ad/im;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tnkfactory/ad/ip;

    iget-object v2, p0, Lcom/tnkfactory/ad/io;->a:Lcom/tnkfactory/ad/im;

    iget-object v3, p0, Lcom/tnkfactory/ad/io;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/tnkfactory/ad/io;->d:Lcom/tnkfactory/ad/in;

    invoke-virtual {v4}, Lcom/tnkfactory/ad/in;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/tnkfactory/ad/ip;-><init>(Lcom/tnkfactory/ad/im;Landroid/content/Context;Ljava/lang/String;)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v3, "vdo_url"

    invoke-virtual {v2, v3}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v0, Lcom/tnkfactory/ad/VideoAdItem;

    invoke-direct {v0, v2}, Lcom/tnkfactory/ad/VideoAdItem;-><init>(Lcom/tnkfactory/framework/vo/ValueObject;)V

    invoke-static {v0}, Lcom/tnkfactory/ad/ii;->a(Landroid/os/Parcelable;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/tnkfactory/ad/io;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/tnkfactory/ad/io;->d:Lcom/tnkfactory/ad/in;

    invoke-virtual {v4}, Lcom/tnkfactory/ad/in;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/tnkfactory/ad/hv;->a(Landroid/content/Context;Ljava/lang/String;[B)V

    iget-object v2, p0, Lcom/tnkfactory/ad/io;->d:Lcom/tnkfactory/ad/in;

    iput-object v0, v2, Lcom/tnkfactory/ad/in;->a:Lcom/tnkfactory/ad/VideoAdItem;

    iget-object v0, p0, Lcom/tnkfactory/ad/io;->d:Lcom/tnkfactory/ad/in;

    iget-object v0, v0, Lcom/tnkfactory/ad/in;->a:Lcom/tnkfactory/ad/VideoAdItem;

    iget-wide v2, v0, Lcom/tnkfactory/ad/VideoAdItem;->O:J

    iget-object v0, p0, Lcom/tnkfactory/ad/io;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/tnkfactory/ad/io;->d:Lcom/tnkfactory/ad/in;

    invoke-virtual {v4}, Lcom/tnkfactory/ad/in;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2, v3}, Lcom/tnkfactory/ad/hv;->a(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/tnkfactory/ad/io;->a:Lcom/tnkfactory/ad/im;

    iget-object v0, v0, Lcom/tnkfactory/ad/im;->d:Lcom/tnkfactory/ad/cx;

    iget-object v2, p0, Lcom/tnkfactory/ad/io;->d:Lcom/tnkfactory/ad/in;

    invoke-virtual {v0, v2}, Lcom/tnkfactory/ad/cx;->b(Lcom/tnkfactory/ad/cw;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/io;->d:Lcom/tnkfactory/ad/in;

    iget-object v0, v0, Lcom/tnkfactory/ad/in;->c:Lcom/tnkfactory/ad/TnkAdListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tnkfactory/ad/io;->d:Lcom/tnkfactory/ad/in;

    iget-object v0, v0, Lcom/tnkfactory/ad/in;->c:Lcom/tnkfactory/ad/TnkAdListener;

    invoke-interface {v0}, Lcom/tnkfactory/ad/TnkAdListener;->onLoad()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    const/16 v0, -0x9

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/tnkfactory/ad/io;->d:Lcom/tnkfactory/ad/in;

    iget-object v1, v1, Lcom/tnkfactory/ad/in;->c:Lcom/tnkfactory/ad/TnkAdListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tnkfactory/ad/io;->d:Lcom/tnkfactory/ad/in;

    iget-object v1, v1, Lcom/tnkfactory/ad/in;->c:Lcom/tnkfactory/ad/TnkAdListener;

    invoke-interface {v1, v0}, Lcom/tnkfactory/ad/TnkAdListener;->onFailure(I)V

    goto/16 :goto_0
.end method
