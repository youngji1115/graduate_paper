.class Lcom/tnkfactory/ad/hs;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/hg;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tnkfactory/ad/hg;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/tnkfactory/ad/hs;->a:Lcom/tnkfactory/ad/hg;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/tnkfactory/ad/hs;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/tnkfactory/ad/hs;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/tnkfactory/ad/hs;->a:Lcom/tnkfactory/ad/hg;

    iget-object v1, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tnkfactory/ad/hs;->a:Lcom/tnkfactory/ad/hg;

    iget-object v2, v2, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    invoke-virtual {v0, v1, v2}, Lcom/tnkfactory/ad/hg;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hu;)Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/hs;->a:Lcom/tnkfactory/ad/hg;

    sget-object v1, Lcom/tnkfactory/ad/fb;->s:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fb;->ac:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tnkfactory/ad/hs;->a:Lcom/tnkfactory/ad/hg;

    iget-object v5, v5, Lcom/tnkfactory/ad/hg;->a:Lcom/tnkfactory/ad/hu;

    iget-object v6, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/tnkfactory/ad/hu;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/tnkfactory/ad/hs;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tnkfactory/ad/hg;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TBTR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
