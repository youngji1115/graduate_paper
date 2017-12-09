.class Lcom/tnkfactory/ad/fy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/fw;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/fw;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/fy;->a:Lcom/tnkfactory/ad/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/fy;->a:Lcom/tnkfactory/ad/fw;

    const/4 v1, 0x2

    iput v1, v0, Lcom/tnkfactory/ad/fw;->e:I

    iget-object v0, p0, Lcom/tnkfactory/ad/fy;->a:Lcom/tnkfactory/ad/fw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/fw;->removeFromParent(Z)V

    return-void
.end method
