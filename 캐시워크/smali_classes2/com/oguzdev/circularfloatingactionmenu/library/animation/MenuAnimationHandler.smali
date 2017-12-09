.class public abstract Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;
.super Ljava/lang/Object;
.source "MenuAnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$LastAnimationListener;,
        Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;
    }
.end annotation


# instance fields
.field protected menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public animateMenuClosing(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "center"    # Landroid/graphics/Point;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "MenuAnimationHandler cannot animate without a valid FloatingActionMenu."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    return-void
.end method

.method public animateMenuOpening(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "center"    # Landroid/graphics/Point;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "MenuAnimationHandler cannot animate without a valid FloatingActionMenu."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    return-void
.end method

.method public abstract isAnimating()Z
.end method

.method protected restoreSubActionViewAfterAnimation(Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;)V
    .locals 6
    .param p1, "subActionItem"    # Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;
    .param p2, "actionType"    # Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 60
    iget-object v2, p1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 62
    iget-object v2, p1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 63
    iget-object v2, p1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 64
    iget-object v2, p1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 65
    iget-object v2, p1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 66
    iget-object v2, p1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 67
    sget-object v2, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;->OPENING:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

    if-ne p2, v2, :cond_1

    .line 68
    iget v2, p1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->x:I

    iget v3, p1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->y:I

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 69
    iget-object v2, p1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    sget-object v2, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;->CLOSING:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

    if-ne p2, v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-virtual {v2}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getActionViewCenter()Landroid/graphics/Point;

    move-result-object v0

    .line 73
    .local v0, "center":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, p1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v4, p1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->height:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 74
    iget-object v2, p1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-virtual {v2}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getActivityContentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected abstract setAnimating(Z)V
.end method

.method public setMenu(Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;)V
    .locals 0
    .param p1, "menu"    # Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    .line 28
    return-void
.end method
