.class Lcom/tnkfactory/ad/jj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/jh;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/jh;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/jj;->a:Lcom/tnkfactory/ad/jh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/jj;->a:Lcom/tnkfactory/ad/jh;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/jh;->a(Lcom/tnkfactory/ad/jh;Z)V

    return-void
.end method
