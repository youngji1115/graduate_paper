.class Lcom/tnkfactory/ad/ga;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/fw;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/fw;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ga;->a:Lcom/tnkfactory/ad/fw;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tnkfactory/ad/ga;->a:Lcom/tnkfactory/ad/fw;

    iget-object v1, p0, Lcom/tnkfactory/ad/ga;->a:Lcom/tnkfactory/ad/fw;

    iget-object v1, v1, Lcom/tnkfactory/ad/fw;->i:Landroid/content/Context;

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lcom/tnkfactory/ad/AdItemList;->getAdItemList(Landroid/content/Context;II)Lcom/tnkfactory/ad/AdItemList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/fw;->a(Lcom/tnkfactory/ad/fw;Lcom/tnkfactory/ad/AdItemList;)Lcom/tnkfactory/ad/AdItemList;

    iget-object v0, p0, Lcom/tnkfactory/ad/ga;->a:Lcom/tnkfactory/ad/fw;

    invoke-static {v0}, Lcom/tnkfactory/ad/fw;->b(Lcom/tnkfactory/ad/fw;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
