.class Lcom/melnykov/fab/FloatingActionButton$2;
.super Ljava/lang/Object;
.source "FloatingActionButton.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/melnykov/fab/FloatingActionButton;->toggle(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/melnykov/fab/FloatingActionButton;

.field final synthetic val$animate:Z

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/melnykov/fab/FloatingActionButton;ZZ)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$2;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    iput-boolean p2, p0, Lcom/melnykov/fab/FloatingActionButton$2;->val$visible:Z

    iput-boolean p3, p0, Lcom/melnykov/fab/FloatingActionButton$2;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 318
    iget-object v1, p0, Lcom/melnykov/fab/FloatingActionButton$2;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    invoke-virtual {v1}, Lcom/melnykov/fab/FloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 319
    .local v0, "currentVto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/melnykov/fab/FloatingActionButton$2;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    iget-boolean v2, p0, Lcom/melnykov/fab/FloatingActionButton$2;->val$visible:Z

    iget-boolean v3, p0, Lcom/melnykov/fab/FloatingActionButton$2;->val$animate:Z

    invoke-static {v1, v2, v3, v4}, Lcom/melnykov/fab/FloatingActionButton;->access$200(Lcom/melnykov/fab/FloatingActionButton;ZZZ)V

    .line 323
    return v4
.end method
