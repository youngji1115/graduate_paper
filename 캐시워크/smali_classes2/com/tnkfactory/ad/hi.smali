.class Lcom/tnkfactory/ad/hi;
.super Lcom/tnkfactory/ad/g;


# instance fields
.field protected d:Lcom/tnkfactory/ad/ServiceCallback;

.field final synthetic e:Lcom/tnkfactory/ad/hg;

.field private f:J


# direct methods
.method public constructor <init>(Lcom/tnkfactory/ad/hg;Landroid/content/Context;ZLcom/tnkfactory/ad/ServiceCallback;)V
    .locals 4

    const-wide/16 v2, 0x0

    iput-object p1, p0, Lcom/tnkfactory/ad/hi;->e:Lcom/tnkfactory/ad/hg;

    invoke-direct {p0, p2, p3}, Lcom/tnkfactory/ad/g;-><init>(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/hi;->d:Lcom/tnkfactory/ad/ServiceCallback;

    iput-wide v2, p0, Lcom/tnkfactory/ad/hi;->f:J

    iput-object p4, p0, Lcom/tnkfactory/ad/hi;->d:Lcom/tnkfactory/ad/ServiceCallback;

    iput-wide v2, p0, Lcom/tnkfactory/ad/hi;->f:J

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/tnkfactory/ad/hi;->e:Lcom/tnkfactory/ad/hg;

    iget-object v1, p0, Lcom/tnkfactory/ad/hi;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tnkfactory/ad/hi;->e:Lcom/tnkfactory/ad/hg;

    iget-object v2, v2, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v0, v1, v2}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/ii;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "no adid"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/tnkfactory/ad/hi;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/tnkfactory/ad/hi;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :cond_1
    const/4 v0, 0x2

    aget-object v0, p1, v0

    instance-of v0, v0, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Lcom/tnkfactory/ad/hi;->e:Lcom/tnkfactory/ad/hg;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x2

    aget-object v2, p1, v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tnkfactory/ad/hi;->e:Lcom/tnkfactory/ad/hg;

    iget-object v0, v0, Lcom/tnkfactory/ad/hg;->b:Lcom/tnkfactory/ad/fa;

    invoke-virtual {v0, p1, p2}, Lcom/tnkfactory/ad/fa;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    aput-object p3, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/tnkfactory/ad/hi;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v3

    aput-object p3, v0, v4

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/hi;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/tnkfactory/ad/g;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/hi;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/hi;->d:Lcom/tnkfactory/ad/ServiceCallback;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/hi;->d:Lcom/tnkfactory/ad/ServiceCallback;

    iget-object v1, p0, Lcom/tnkfactory/ad/hi;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/tnkfactory/ad/ServiceCallback;->onReturn(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tnkfactory/ad/hi;->d:Lcom/tnkfactory/ad/ServiceCallback;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : Unexpected error at onReturn() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/hi;->d:Lcom/tnkfactory/ad/ServiceCallback;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/tnkfactory/ad/hi;->d:Lcom/tnkfactory/ad/ServiceCallback;

    iget-object v1, p0, Lcom/tnkfactory/ad/hi;->a:Landroid/content/Context;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1}, Lcom/tnkfactory/ad/ServiceCallback;->onError(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tnkfactory/ad/hi;->d:Lcom/tnkfactory/ad/ServiceCallback;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : Unexpected error at onError() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
