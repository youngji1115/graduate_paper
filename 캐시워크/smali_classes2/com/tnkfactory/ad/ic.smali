.class Lcom/tnkfactory/ad/ic;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/TnkReceiver;

.field private b:Landroid/content/Context;

.field private c:Lcom/tnkfactory/ad/hg;

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tnkfactory/ad/TnkReceiver;Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/tnkfactory/ad/ic;->a:Lcom/tnkfactory/ad/TnkReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v2, p0, Lcom/tnkfactory/ad/ic;->b:Landroid/content/Context;

    iput-object v2, p0, Lcom/tnkfactory/ad/ic;->c:Lcom/tnkfactory/ad/hg;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tnkfactory/ad/ic;->d:J

    iput-object v2, p0, Lcom/tnkfactory/ad/ic;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/tnkfactory/ad/ic;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/tnkfactory/ad/ia;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ia;->c()Lcom/tnkfactory/ad/hg;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/ic;->c:Lcom/tnkfactory/ad/hg;

    iput-wide p4, p0, Lcom/tnkfactory/ad/ic;->d:J

    iput-object p3, p0, Lcom/tnkfactory/ad/ic;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/tnkfactory/ad/ic;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ic;->e:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/tnkfactory/ad/ic;->b:Landroid/content/Context;

    iget-wide v2, p0, Lcom/tnkfactory/ad/ic;->d:J

    invoke-static {v0, v2, v3}, Lcom/tnkfactory/ad/hv;->c(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tnkfactory/ad/ic;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " APIS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/tnkfactory/ad/ic;->c:Lcom/tnkfactory/ad/hg;

    iget-object v1, p0, Lcom/tnkfactory/ad/ic;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tnkfactory/ad/ic;->c:Lcom/tnkfactory/ad/hg;

    iget-object v2, v2, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v0, v1, v2}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tnkfactory/ad/ic;->c:Lcom/tnkfactory/ad/hg;

    sget-object v1, Lcom/tnkfactory/ad/fb;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fb;->B:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tnkfactory/ad/ic;->c:Lcom/tnkfactory/ad/hg;

    iget-object v5, v5, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    iget-object v6, p0, Lcom/tnkfactory/ad/ic;->b:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/tnkfactory/ad/hu;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v6, p0, Lcom/tnkfactory/ad/ic;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/framework/vo/ValueObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "ret_cd"

    invoke-virtual {v0, v1}, Lcom/tnkfactory/framework/vo/ValueObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ic;->b:Landroid/content/Context;

    iget-wide v2, p0, Lcom/tnkfactory/ad/ic;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "__tnk_install_"

    iget-object v4, p0, Lcom/tnkfactory/ad/ic;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tnkfactory/ad/hv;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APIS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_0
    .end sparse-switch
.end method
