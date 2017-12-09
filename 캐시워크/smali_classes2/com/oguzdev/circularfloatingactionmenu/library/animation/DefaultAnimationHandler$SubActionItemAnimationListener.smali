.class public Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler$SubActionItemAnimationListener;
.super Ljava/lang/Object;
.source "DefaultAnimationHandler.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SubActionItemAnimationListener"
.end annotation


# instance fields
.field private actionType:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

.field private subActionItem:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

.field final synthetic this$0:Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;


# direct methods
.method public constructor <init>(Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;)V
    .locals 0
    .param p2, "subActionItem"    # Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;
    .param p3, "actionType"    # Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler$SubActionItemAnimationListener;->this$0:Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler$SubActionItemAnimationListener;->subActionItem:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    .line 121
    iput-object p3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler$SubActionItemAnimationListener;->actionType:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

    .line 122
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler$SubActionItemAnimationListener;->this$0:Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;

    iget-object v1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler$SubActionItemAnimationListener;->subActionItem:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget-object v2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler$SubActionItemAnimationListener;->actionType:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

    invoke-virtual {v0, v1, v2}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->restoreSubActionViewAfterAnimation(Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;)V

    .line 137
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler$SubActionItemAnimationListener;->this$0:Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;

    iget-object v1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler$SubActionItemAnimationListener;->subActionItem:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget-object v2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler$SubActionItemAnimationListener;->actionType:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

    invoke-virtual {v0, v1, v2}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->restoreSubActionViewAfterAnimation(Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;)V

    .line 132
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 139
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 127
    return-void
.end method
