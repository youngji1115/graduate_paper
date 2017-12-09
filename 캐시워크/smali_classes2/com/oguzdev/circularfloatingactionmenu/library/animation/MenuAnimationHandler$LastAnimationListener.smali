.class public Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$LastAnimationListener;
.super Ljava/lang/Object;
.source "MenuAnimationHandler.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LastAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;


# direct methods
.method public constructor <init>(Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$LastAnimationListener;->this$0:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$LastAnimationListener;->this$0:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;->setAnimating(Z)V

    .line 98
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$LastAnimationListener;->this$0:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;->setAnimating(Z)V

    .line 93
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$LastAnimationListener;->this$0:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;->setAnimating(Z)V

    .line 103
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$LastAnimationListener;->this$0:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;->setAnimating(Z)V

    .line 88
    return-void
.end method
