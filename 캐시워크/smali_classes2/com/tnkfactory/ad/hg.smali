.class Lcom/tnkfactory/ad/hg;
.super Lcom/tnkfactory/ad/gn;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/hu;Lcom/tnkfactory/ad/fa;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tnkfactory/ad/gn;-><init>(Lcom/tnkfactory/ad/hu;Lcom/tnkfactory/ad/fa;Z)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/tnkfactory/framework/vo/ValueObject;)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "no_inst"

    const-string v3, "N"

    invoke-virtual {p2, v0, v3}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Y"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "app_pkg"

    invoke-virtual {p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tnkfactory/ad/ii;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v0, "inst_apps"

    invoke-virtual {p2, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/ii;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    move v0, v2

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const-string v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/tnkfactory/ad/ii;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v0, v2

    :cond_3
    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    invoke-static {p1, v6}, Lcom/tnkfactory/ad/ii;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v0, v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/tnkfactory/ad/hg;Landroid/content/Context;Lcom/tnkfactory/framework/vo/ValueObject;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/framework/vo/ValueObject;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method a(Landroid/content/Context;)I
    .locals 4

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    :try_start_0
    sget-object v0, Lcom/tnkfactory/ad/fb;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/tnkfactory/ad/fb;->E:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2, v3}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method a(Landroid/content/Context;I)Lcom/tnkfactory/framework/vo/ValueObject;
    .locals 5

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/ii;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "no adid"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/hu;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v0

    const-string v1, "ic_type"

    invoke-virtual {v0, v1, p2}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;I)V

    sget-object v1, Lcom/tnkfactory/ad/fb;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fb;->J:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/framework/vo/ValueObject;

    return-object v0
.end method

.method a(Landroid/content/Context;J)Lcom/tnkfactory/framework/vo/ValueObject;
    .locals 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/hu;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tnkfactory/ad/fb;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fb;->L:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v4, p1}, Lcom/tnkfactory/ad/hu;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v0, 0x3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/framework/vo/ValueObject;

    return-object v0
.end method

.method a(Landroid/content/Context;JIILjava/lang/String;)Lcom/tnkfactory/framework/vo/ValueObject;
    .locals 6

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/hu;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tnkfactory/ad/fb;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fb;->L:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v5, p1}, Lcom/tnkfactory/ad/hu;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v0, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    aput-object p6, v3, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/framework/vo/ValueObject;

    return-object v0
.end method

.method a(Landroid/content/Context;JJI)Lcom/tnkfactory/framework/vo/ValueObject;
    .locals 6

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    const-string v0, "ad.p2"

    const-string v1, "requestPayForAttend"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v4, p1}, Lcom/tnkfactory/ad/hu;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/framework/vo/ValueObject;

    return-object v0
.end method

.method a(Landroid/content/Context;JZI)Lcom/tnkfactory/framework/vo/ValueObject;
    .locals 6

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    sget-object v0, Lcom/tnkfactory/ad/fb;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tnkfactory/ad/fb;->K:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    iget-object v4, v4, Lcom/tnkfactory/ad/hu;->h:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/framework/vo/ValueObject;

    return-object v0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;I)Lcom/tnkfactory/framework/vo/ValueObject;
    .locals 5

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    sget-object v0, Lcom/tnkfactory/ad/fb;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tnkfactory/ad/fb;->W:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v4, p1}, Lcom/tnkfactory/ad/hu;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/tnkfactory/ad/ht;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tnkfactory/ad/ht;-><init>(Lcom/tnkfactory/ad/hg;Lcom/tnkfactory/ad/hh;)V

    invoke-virtual {v1, p1, v0}, Lcom/tnkfactory/ad/ht;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/framework/vo/ValueObject;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;
    .locals 4

    iget-object v0, p2, Lcom/tnkfactory/ad/hu;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/tnkfactory/ad/eb;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/AdvertisingIdInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdvertisingIdInfo;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/tnkfactory/ad/hu;->l:Ljava/lang/String;

    iget-object v1, p2, Lcom/tnkfactory/ad/hu;->l:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/tnkfactory/ad/hv;->g(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdvertisingIdInfo;->isLimited()Z

    move-result v0

    iput-boolean v0, p2, Lcom/tnkfactory/ad/hu;->z:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p2, Lcom/tnkfactory/ad/hu;->l:Ljava/lang/String;

    return-object v0

    :cond_1
    :try_start_1
    const-string v1, ""

    iput-object v1, p2, Lcom/tnkfactory/ad/hu;->l:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GAID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/tnkfactory/ad/hu;->K:Ljava/lang/String;

    invoke-static {p1}, Lcom/tnkfactory/ad/hv;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/tnkfactory/ad/hu;->l:Ljava/lang/String;

    goto :goto_1
.end method

.method a(I)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/hu;->a(I)V

    return-void
.end method

.method a(Landroid/content/Context;ILjava/lang/String;Lcom/tnkfactory/ad/ServiceCallback;)V
    .locals 6

    const/4 v3, 0x0

    new-instance v4, Lcom/tnkfactory/ad/hl;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/tnkfactory/ad/hl;-><init>(Lcom/tnkfactory/ad/hg;Lcom/tnkfactory/ad/hh;)V

    new-instance v0, Lcom/tnkfactory/ad/hj;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tnkfactory/ad/hj;-><init>(Lcom/tnkfactory/ad/hg;Landroid/content/Context;ZLcom/tnkfactory/ad/hr;Lcom/tnkfactory/ad/ServiceCallback;)V

    sget-object v1, Lcom/tnkfactory/ad/fb;->t:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fb;->P:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v5, p1}, Lcom/tnkfactory/ad/hu;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x2

    aput-object p3, v4, v3

    invoke-virtual {v0, v1, v2, v4}, Lcom/tnkfactory/ad/hj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method a(Landroid/content/Context;ILjava/lang/String;Lcom/tnkfactory/ad/ServiceCallback;Z)V
    .locals 6

    new-instance v0, Lcom/tnkfactory/ad/hi;

    invoke-direct {v0, p0, p1, p5, p4}, Lcom/tnkfactory/ad/hi;-><init>(Lcom/tnkfactory/ad/hg;Landroid/content/Context;ZLcom/tnkfactory/ad/ServiceCallback;)V

    sget-object v1, Lcom/tnkfactory/ad/fb;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fb;->H:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    iget-object v5, v5, Lcom/tnkfactory/ad/hu;->q:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tnkfactory/ad/hi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method a(Landroid/content/Context;JII)V
    .locals 6

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    sget-object v0, Lcom/tnkfactory/ad/fb;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tnkfactory/ad/fb;->X:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a(Landroid/content/Context;JIIILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    sget-object v0, Lcom/tnkfactory/ad/fb;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tnkfactory/ad/fb;->V:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p7, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a(Landroid/content/Context;JIIILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    sget-object v0, Lcom/tnkfactory/ad/fb;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tnkfactory/ad/fb;->U:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p7, v2, v3

    const/4 v3, 0x5

    aput-object p8, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a(Landroid/content/Context;Lcom/tnkfactory/ad/ServiceCallback;Z)V
    .locals 4

    new-instance v0, Lcom/tnkfactory/ad/hi;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/tnkfactory/ad/hi;-><init>(Lcom/tnkfactory/ad/hg;Landroid/content/Context;ZLcom/tnkfactory/ad/ServiceCallback;)V

    sget-object v1, Lcom/tnkfactory/ad/fb;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fb;->E:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tnkfactory/ad/hi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    iget-boolean v0, v0, Lcom/tnkfactory/ad/hu;->y:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tnkfactory/ad/hs;

    invoke-direct {v0, p0, p1, p2}, Lcom/tnkfactory/ad/hs;-><init>(Lcom/tnkfactory/ad/hg;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tnkfactory/ad/hs;->start()V

    :cond_0
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;IILcom/tnkfactory/ad/ServiceCallback;)V
    .locals 6

    const/4 v3, 0x0

    new-instance v4, Lcom/tnkfactory/ad/hm;

    invoke-direct {v4, p0, p3, p4}, Lcom/tnkfactory/ad/hm;-><init>(Lcom/tnkfactory/ad/hg;II)V

    new-instance v0, Lcom/tnkfactory/ad/hj;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tnkfactory/ad/hj;-><init>(Lcom/tnkfactory/ad/hg;Landroid/content/Context;ZLcom/tnkfactory/ad/hr;Lcom/tnkfactory/ad/ServiceCallback;)V

    sget-object v1, Lcom/tnkfactory/ad/fb;->u:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fb;->R:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v5, p1}, Lcom/tnkfactory/ad/hu;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x2

    aput-object p2, v4, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0, v1, v2, v4}, Lcom/tnkfactory/ad/hj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;ILcom/tnkfactory/ad/ServiceCallback;)V
    .locals 6

    const/4 v3, 0x0

    new-instance v4, Lcom/tnkfactory/ad/hm;

    invoke-direct {v4, p0, p3}, Lcom/tnkfactory/ad/hm;-><init>(Lcom/tnkfactory/ad/hg;I)V

    new-instance v0, Lcom/tnkfactory/ad/hj;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tnkfactory/ad/hj;-><init>(Lcom/tnkfactory/ad/hg;Landroid/content/Context;ZLcom/tnkfactory/ad/hr;Lcom/tnkfactory/ad/ServiceCallback;)V

    sget-object v1, Lcom/tnkfactory/ad/fb;->u:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fb;->R:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v5, p1}, Lcom/tnkfactory/ad/hu;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x2

    aput-object p2, v4, v3

    invoke-virtual {v0, v1, v2, v4}, Lcom/tnkfactory/ad/hj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Lcom/tnkfactory/ad/ServiceCallback;Z)V
    .locals 6

    new-instance v0, Lcom/tnkfactory/ad/hi;

    invoke-direct {v0, p0, p1, p4, p3}, Lcom/tnkfactory/ad/hi;-><init>(Lcom/tnkfactory/ad/hg;Landroid/content/Context;ZLcom/tnkfactory/ad/ServiceCallback;)V

    sget-object v1, Lcom/tnkfactory/ad/fb;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fb;->I:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    iget-object v5, v5, Lcom/tnkfactory/ad/hu;->q:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tnkfactory/ad/hi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/tnkfactory/ad/hp;

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tnkfactory/ad/hp;-><init>(Lcom/tnkfactory/ad/hg;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tnkfactory/ad/hp;->start()V

    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Lcom/tnkfactory/ad/hn;

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/tnkfactory/ad/hn;-><init>(Lcom/tnkfactory/ad/hg;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tnkfactory/ad/hn;->start()V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    iput-object p1, v0, Lcom/tnkfactory/ad/hu;->q:Ljava/lang/String;

    return-void
.end method

.method a(J)[B
    .locals 5

    sget-object v0, Lcom/tnkfactory/ad/fb;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tnkfactory/ad/fb;->z:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method a(Landroid/content/Context;ILjava/lang/String;)[J
    .locals 12

    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    :try_start_0
    sget-object v0, Lcom/tnkfactory/ad/fb;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tnkfactory/ad/fb;->H:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    iget-object v4, v4, Lcom/tnkfactory/ad/hu;->q:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, [J

    check-cast v0, [J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v0, v7, [J

    aput-wide v10, v0, v5

    aput-wide v8, v0, v6

    goto :goto_0
.end method

.method b(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/ii;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "no adid"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/tnkfactory/ad/fb;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tnkfactory/ad/fb;->S:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v3, p1}, Lcom/tnkfactory/ad/hu;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/framework/vo/ValueObject;

    return-object v0
.end method

.method b(Landroid/content/Context;ILjava/lang/String;)Lcom/tnkfactory/framework/vo/ValueObject;
    .locals 5

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/ii;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "no adid"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/tnkfactory/ad/fb;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tnkfactory/ad/fb;->Q:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v4, p1}, Lcom/tnkfactory/ad/hu;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/framework/vo/ValueObject;

    return-object v0
.end method

.method b(Landroid/content/Context;J)Lcom/tnkfactory/framework/vo/ValueObject;
    .locals 6

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    sget-object v0, Lcom/tnkfactory/ad/fb;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tnkfactory/ad/fb;->B:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v4, p1}, Lcom/tnkfactory/ad/hu;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/framework/vo/ValueObject;

    return-object v0
.end method

.method b(Landroid/content/Context;JIILjava/lang/String;)Lcom/tnkfactory/framework/vo/ValueObject;
    .locals 6

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    sget-object v0, Lcom/tnkfactory/ad/fb;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tnkfactory/ad/fb;->T:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v4, p1}, Lcom/tnkfactory/ad/hu;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/framework/vo/ValueObject;

    return-object v0
.end method

.method b(Landroid/content/Context;ILjava/lang/String;Lcom/tnkfactory/ad/ServiceCallback;)V
    .locals 6

    const/4 v3, 0x0

    new-instance v4, Lcom/tnkfactory/ad/hk;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/tnkfactory/ad/hk;-><init>(Lcom/tnkfactory/ad/hg;Lcom/tnkfactory/ad/hh;)V

    new-instance v0, Lcom/tnkfactory/ad/hj;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tnkfactory/ad/hj;-><init>(Lcom/tnkfactory/ad/hg;Landroid/content/Context;ZLcom/tnkfactory/ad/hr;Lcom/tnkfactory/ad/ServiceCallback;)V

    sget-object v1, Lcom/tnkfactory/ad/fb;->w:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fb;->Z:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v5, p1}, Lcom/tnkfactory/ad/hu;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x2

    aput-object p3, v4, v3

    invoke-virtual {v0, v1, v2, v4}, Lcom/tnkfactory/ad/hj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method b(Landroid/content/Context;JIIILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    sget-object v0, Lcom/tnkfactory/ad/fb;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tnkfactory/ad/fb;->Y:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p7, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method b(Landroid/content/Context;Lcom/tnkfactory/ad/ServiceCallback;Z)V
    .locals 4

    new-instance v0, Lcom/tnkfactory/ad/hi;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/tnkfactory/ad/hi;-><init>(Lcom/tnkfactory/ad/hg;Landroid/content/Context;ZLcom/tnkfactory/ad/ServiceCallback;)V

    sget-object v1, Lcom/tnkfactory/ad/fb;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fb;->F:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tnkfactory/ad/hi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/tnkfactory/ad/hp;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/tnkfactory/ad/hp;-><init>(Lcom/tnkfactory/ad/hg;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tnkfactory/ad/hp;->start()V

    return-void
.end method

.method b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Lcom/tnkfactory/ad/hn;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/tnkfactory/ad/hn;-><init>(Lcom/tnkfactory/ad/hg;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tnkfactory/ad/hn;->start()V

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/hu;->a(Ljava/lang/String;)V

    return-void
.end method

.method c(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    :try_start_0
    sget-object v0, Lcom/tnkfactory/ad/fb;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/tnkfactory/ad/fb;->I:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    iget-object v5, v5, Lcom/tnkfactory/ad/hu;->q:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method c(Landroid/content/Context;J)Lcom/tnkfactory/framework/vo/ValueObject;
    .locals 6

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    sget-object v0, Lcom/tnkfactory/ad/fb;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tnkfactory/ad/fb;->A:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v4, p1}, Lcom/tnkfactory/ad/hu;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/framework/vo/ValueObject;

    return-object v0
.end method

.method c(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/tnkfactory/ad/hi;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/tnkfactory/ad/hi;-><init>(Lcom/tnkfactory/ad/hg;Landroid/content/Context;ZLcom/tnkfactory/ad/ServiceCallback;)V

    sget-object v1, Lcom/tnkfactory/ad/fb;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fb;->M:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tnkfactory/ad/hi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method c(Landroid/content/Context;JIIILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    sget-object v0, Lcom/tnkfactory/ad/fb;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tnkfactory/ad/fb;->aa:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p7, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method c(Landroid/content/Context;Lcom/tnkfactory/ad/ServiceCallback;Z)V
    .locals 4

    new-instance v0, Lcom/tnkfactory/ad/hi;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/tnkfactory/ad/hi;-><init>(Lcom/tnkfactory/ad/hg;Landroid/content/Context;ZLcom/tnkfactory/ad/ServiceCallback;)V

    sget-object v1, Lcom/tnkfactory/ad/fb;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fb;->G:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tnkfactory/ad/hi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/hu;->b(Ljava/lang/String;)V

    return-void
.end method

.method d(Landroid/content/Context;J)Lcom/tnkfactory/framework/vo/ValueObject;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    sget-object v0, Lcom/tnkfactory/ad/fb;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tnkfactory/ad/fb;->T:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v3, p1}, Lcom/tnkfactory/ad/hu;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/framework/vo/ValueObject;

    return-object v0
.end method

.method d(Landroid/content/Context;Lcom/tnkfactory/ad/ServiceCallback;Z)V
    .locals 6

    new-instance v4, Lcom/tnkfactory/ad/ho;

    invoke-direct {v4, p0}, Lcom/tnkfactory/ad/ho;-><init>(Lcom/tnkfactory/ad/hg;)V

    new-instance v0, Lcom/tnkfactory/ad/hj;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/tnkfactory/ad/hj;-><init>(Lcom/tnkfactory/ad/hg;Landroid/content/Context;ZLcom/tnkfactory/ad/hr;Lcom/tnkfactory/ad/ServiceCallback;)V

    sget-object v1, Lcom/tnkfactory/ad/fb;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fb;->J:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v5, p1}, Lcom/tnkfactory/ad/hu;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tnkfactory/ad/hj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/hu;->c(Ljava/lang/String;)V

    return-void
.end method

.method d(Landroid/content/Context;)[I
    .locals 5

    iget-object v0, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {p0, p1, v0}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    :try_start_0
    sget-object v0, Lcom/tnkfactory/ad/fb;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tnkfactory/ad/fb;->J:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v4, p1}, Lcom/tnkfactory/ad/hu;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/framework/vo/ValueObject;

    new-instance v1, Lcom/tnkfactory/ad/ho;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/ho;-><init>(Lcom/tnkfactory/ad/hg;)V

    invoke-interface {v1, p1, v0}, Lcom/tnkfactory/ad/hr;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method e(Landroid/content/Context;Lcom/tnkfactory/ad/ServiceCallback;Z)V
    .locals 6

    new-instance v4, Lcom/tnkfactory/ad/hh;

    invoke-direct {v4, p0}, Lcom/tnkfactory/ad/hh;-><init>(Lcom/tnkfactory/ad/hg;)V

    new-instance v0, Lcom/tnkfactory/ad/hj;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/tnkfactory/ad/hj;-><init>(Lcom/tnkfactory/ad/hg;Landroid/content/Context;ZLcom/tnkfactory/ad/hr;Lcom/tnkfactory/ad/ServiceCallback;)V

    sget-object v1, Lcom/tnkfactory/ad/fb;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fb;->J:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v5, p1}, Lcom/tnkfactory/ad/hu;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tnkfactory/ad/hj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
