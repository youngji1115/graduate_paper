.class Lcom/tnkfactory/ad/dz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/dq;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/dz;->a:Lcom/tnkfactory/ad/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/dz;->a:Lcom/tnkfactory/ad/dq;

    invoke-virtual {v0, p2, p3}, Lcom/tnkfactory/ad/dq;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
