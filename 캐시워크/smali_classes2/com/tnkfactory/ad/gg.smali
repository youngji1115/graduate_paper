.class Lcom/tnkfactory/ad/gg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/tnkfactory/ad/NativeAdItem;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/gg;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/gg;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/NativeAdItem;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tnkfactory/ad/NativeAdItem;->c(Lcom/tnkfactory/ad/NativeAdItem;)V

    :cond_0
    return-void
.end method
