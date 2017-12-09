.class Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ItemViewQueueListener;
.super Ljava/lang/Object;
.source "FloatingActionMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemViewQueueListener"
.end annotation


# static fields
.field private static final MAX_TRIES:I = 0xa


# instance fields
.field private item:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

.field final synthetic this$0:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

.field private tries:I


# direct methods
.method public constructor <init>(Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;)V
    .locals 1
    .param p2, "item"    # Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ItemViewQueueListener;->this$0:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-object p2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ItemViewQueueListener;->item:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    .line 343
    const/4 v0, 0x0

    iput v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ItemViewQueueListener;->tries:I

    .line 344
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ItemViewQueueListener;->item:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget-object v0, v0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ItemViewQueueListener;->tries:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ItemViewQueueListener;->item:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget-object v0, v0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 361
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ItemViewQueueListener;->item:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget-object v1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ItemViewQueueListener;->item:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget-object v1, v1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->width:I

    .line 355
    iget-object v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ItemViewQueueListener;->item:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget-object v1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ItemViewQueueListener;->item:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget-object v1, v1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->height:I

    .line 358
    iget-object v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ItemViewQueueListener;->item:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget-object v0, v0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 360
    iget-object v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ItemViewQueueListener;->this$0:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-virtual {v0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getActivityContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ItemViewQueueListener;->item:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget-object v1, v1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method
