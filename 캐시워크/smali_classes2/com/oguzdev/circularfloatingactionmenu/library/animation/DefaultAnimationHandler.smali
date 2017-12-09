.class public Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;
.super Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;
.source "DefaultAnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler$SubActionItemAnimationListener;
    }
.end annotation


# static fields
.field protected static final DURATION:I = 0x1f4

.field protected static final LAG_BETWEEN_ITEMS:I = 0x14


# instance fields
.field private animating:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;-><init>()V

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->setAnimating(Z)V

    .line 31
    return-void
.end method


# virtual methods
.method public animateMenuClosing(Landroid/graphics/Point;)V
    .locals 14
    .param p1, "center"    # Landroid/graphics/Point;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;->animateMenuOpening(Landroid/graphics/Point;)V

    .line 76
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->setAnimating(Z)V

    .line 78
    const/4 v2, 0x0

    .line 79
    .local v2, "lastAnimation":Landroid/animation/Animator;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v9, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-virtual {v9}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getSubActionItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 80
    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v11, v9, [F

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-virtual {v9}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getSubActionItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget v9, v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->x:I

    iget v13, p1, Landroid/graphics/Point;->x:I

    sub-int v13, v9, v13

    iget-object v9, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-virtual {v9}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getSubActionItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget v9, v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->width:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v13

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 81
    .local v5, "pvhX":Landroid/animation/PropertyValuesHolder;
    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v11, v9, [F

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-virtual {v9}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getSubActionItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget v9, v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->y:I

    iget v13, p1, Landroid/graphics/Point;->y:I

    sub-int v13, v9, v13

    iget-object v9, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-virtual {v9}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getSubActionItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget v9, v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->height:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v13

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 82
    .local v6, "pvhY":Landroid/animation/PropertyValuesHolder;
    sget-object v9, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, -0x3bcc0000    # -720.0f

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 83
    .local v4, "pvhR":Landroid/animation/PropertyValuesHolder;
    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 84
    .local v7, "pvhsX":Landroid/animation/PropertyValuesHolder;
    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 85
    .local v8, "pvhsY":Landroid/animation/PropertyValuesHolder;
    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 87
    .local v3, "pvhA":Landroid/animation/PropertyValuesHolder;
    iget-object v9, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-virtual {v9}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getSubActionItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget-object v9, v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    const/4 v10, 0x6

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    const/4 v11, 0x2

    aput-object v4, v10, v11

    const/4 v11, 0x3

    aput-object v7, v10, v11

    const/4 v11, 0x4

    aput-object v8, v10, v11

    const/4 v11, 0x5

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 88
    .local v0, "animation":Landroid/animation/ObjectAnimator;
    const-wide/16 v10, 0x1f4

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 89
    new-instance v9, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 90
    new-instance v10, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler$SubActionItemAnimationListener;

    iget-object v9, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-virtual {v9}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getSubActionItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    sget-object v11, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;->CLOSING:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

    invoke-direct {v10, p0, v9, v11}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler$SubActionItemAnimationListener;-><init>(Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;)V

    invoke-virtual {v0, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 92
    if-nez v1, :cond_0

    .line 93
    move-object v2, v0

    .line 96
    :cond_0
    iget-object v9, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-virtual {v9}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getSubActionItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v1

    mul-int/lit8 v9, v9, 0x14

    int-to-long v10, v9

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 97
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 99
    .end local v0    # "animation":Landroid/animation/ObjectAnimator;
    .end local v3    # "pvhA":Landroid/animation/PropertyValuesHolder;
    .end local v4    # "pvhR":Landroid/animation/PropertyValuesHolder;
    .end local v5    # "pvhX":Landroid/animation/PropertyValuesHolder;
    .end local v6    # "pvhY":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "pvhsX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "pvhsY":Landroid/animation/PropertyValuesHolder;
    :cond_1
    if-eqz v2, :cond_2

    .line 100
    new-instance v9, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$LastAnimationListener;

    invoke-direct {v9, p0}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$LastAnimationListener;-><init>(Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;)V

    invoke-virtual {v2, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 102
    :cond_2
    return-void
.end method

.method public animateMenuOpening(Landroid/graphics/Point;)V
    .locals 14
    .param p1, "center"    # Landroid/graphics/Point;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;->animateMenuOpening(Landroid/graphics/Point;)V

    .line 37
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->setAnimating(Z)V

    .line 39
    const/4 v2, 0x0

    .line 40
    .local v2, "lastAnimation":Landroid/animation/Animator;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v9, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-virtual {v9}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getSubActionItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 42
    iget-object v9, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-virtual {v9}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getSubActionItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget-object v9, v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setScaleX(F)V

    .line 43
    iget-object v9, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-virtual {v9}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getSubActionItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget-object v9, v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setScaleY(F)V

    .line 44
    iget-object v9, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-virtual {v9}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getSubActionItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget-object v9, v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    .line 46
    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v11, v9, [F

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-virtual {v9}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getSubActionItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget v9, v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->x:I

    iget v13, p1, Landroid/graphics/Point;->x:I

    sub-int v13, v9, v13

    iget-object v9, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-virtual {v9}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getSubActionItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget v9, v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->width:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v13

    int-to-float v9, v9

    aput v9, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 47
    .local v5, "pvhX":Landroid/animation/PropertyValuesHolder;
    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v11, v9, [F

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-virtual {v9}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getSubActionItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget v9, v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->y:I

    iget v13, p1, Landroid/graphics/Point;->y:I

    sub-int v13, v9, v13

    iget-object v9, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-virtual {v9}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getSubActionItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget v9, v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->height:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v13

    int-to-float v9, v9

    aput v9, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 48
    .local v6, "pvhY":Landroid/animation/PropertyValuesHolder;
    sget-object v9, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x44340000    # 720.0f

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 49
    .local v4, "pvhR":Landroid/animation/PropertyValuesHolder;
    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 50
    .local v7, "pvhsX":Landroid/animation/PropertyValuesHolder;
    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 51
    .local v8, "pvhsY":Landroid/animation/PropertyValuesHolder;
    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 53
    .local v3, "pvhA":Landroid/animation/PropertyValuesHolder;
    iget-object v9, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-virtual {v9}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getSubActionItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget-object v9, v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    const/4 v10, 0x6

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    const/4 v11, 0x2

    aput-object v4, v10, v11

    const/4 v11, 0x3

    aput-object v7, v10, v11

    const/4 v11, 0x4

    aput-object v8, v10, v11

    const/4 v11, 0x5

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 54
    .local v0, "animation":Landroid/animation/ObjectAnimator;
    const-wide/16 v10, 0x1f4

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 55
    new-instance v9, Landroid/view/animation/OvershootInterpolator;

    const v10, 0x3f666666    # 0.9f

    invoke-direct {v9, v10}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 56
    new-instance v10, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler$SubActionItemAnimationListener;

    iget-object v9, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-virtual {v9}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getSubActionItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    sget-object v11, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;->OPENING:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

    invoke-direct {v10, p0, v9, v11}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler$SubActionItemAnimationListener;-><init>(Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;)V

    invoke-virtual {v0, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 58
    if-nez v1, :cond_0

    .line 59
    move-object v2, v0

    .line 63
    :cond_0
    iget-object v9, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->menu:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    invoke-virtual {v9}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getSubActionItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v1

    mul-int/lit8 v9, v9, 0x14

    int-to-long v10, v9

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 64
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 66
    .end local v0    # "animation":Landroid/animation/ObjectAnimator;
    .end local v3    # "pvhA":Landroid/animation/PropertyValuesHolder;
    .end local v4    # "pvhR":Landroid/animation/PropertyValuesHolder;
    .end local v5    # "pvhX":Landroid/animation/PropertyValuesHolder;
    .end local v6    # "pvhY":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "pvhsX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "pvhsY":Landroid/animation/PropertyValuesHolder;
    :cond_1
    if-eqz v2, :cond_2

    .line 67
    new-instance v9, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$LastAnimationListener;

    invoke-direct {v9, p0}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$LastAnimationListener;-><init>(Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;)V

    invoke-virtual {v2, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 70
    :cond_2
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->animating:Z

    return v0
.end method

.method protected setAnimating(Z)V
    .locals 0
    .param p1, "animating"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;->animating:Z

    .line 112
    return-void
.end method
