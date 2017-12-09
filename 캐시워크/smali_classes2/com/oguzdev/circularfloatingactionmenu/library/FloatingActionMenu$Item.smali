.class public Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;
.super Ljava/lang/Object;
.source "FloatingActionMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public height:I

.field public view:Landroid/view/View;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    .line 377
    iput p2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->width:I

    .line 378
    iput p3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->height:I

    .line 379
    iput v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->x:I

    .line 380
    iput v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->y:I

    .line 381
    return-void
.end method
