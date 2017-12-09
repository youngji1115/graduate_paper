.class public Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;
.super Ljava/lang/Object;
.source "FloatingActionMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;,
        Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$MenuStateChangeListener;,
        Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;,
        Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ItemViewQueueListener;,
        Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ActionViewClickListener;
    }
.end annotation


# instance fields
.field private animated:Z

.field private animationHandler:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;

.field private endAngle:I

.field private mainActionView:Landroid/view/View;

.field private open:Z

.field private radius:I

.field private startAngle:I

.field private stateChangeListener:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$MenuStateChangeListener;

.field private subActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;IIILjava/util/ArrayList;Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;ZLcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$MenuStateChangeListener;)V
    .locals 4
    .param p1, "mainActionView"    # Landroid/view/View;
    .param p2, "startAngle"    # I
    .param p3, "endAngle"    # I
    .param p4, "radius"    # I
    .param p6, "animationHandler"    # Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;
    .param p7, "animated"    # Z
    .param p8, "stateChangeListener"    # Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$MenuStateChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "III",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;",
            ">;",
            "Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;",
            "Z",
            "Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$MenuStateChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p5, "subActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->mainActionView:Landroid/view/View;

    .line 68
    iput p2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->startAngle:I

    .line 69
    iput p3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->endAngle:I

    .line 70
    iput p4, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->radius:I

    .line 71
    iput-object p5, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    .line 72
    iput-object p6, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->animationHandler:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;

    .line 73
    iput-boolean p7, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->animated:Z

    .line 75
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->open:Z

    .line 77
    iput-object p8, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->stateChangeListener:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$MenuStateChangeListener;

    .line 81
    iget-object v2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->mainActionView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 82
    iget-object v2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->mainActionView:Landroid/view/View;

    new-instance v3, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ActionViewClickListener;

    invoke-direct {v3, p0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ActionViewClickListener;-><init>(Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    if-eqz p6, :cond_0

    .line 86
    invoke-virtual {p6, p0}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;->setMenu(Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;)V

    .line 90
    :cond_0
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    .line 91
    .local v1, "item":Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;
    iget v2, v1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->width:I

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->height:I

    if-nez v2, :cond_1

    .line 94
    :cond_2
    invoke-virtual {p0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getActivityContentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 96
    iget-object v2, v1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 98
    iget-object v2, v1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    new-instance v3, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ItemViewQueueListener;

    invoke-direct {v3, p0, v1}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$ItemViewQueueListener;-><init>(Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 101
    .end local v1    # "item":Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->animated:Z

    return v0
.end method

.method private calculateItemPositions()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 258
    invoke-virtual {p0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getActionViewCenter()Landroid/graphics/Point;

    move-result-object v1

    .line 259
    .local v1, "center":Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/RectF;

    iget v7, v1, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->radius:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, v1, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->radius:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v1, Landroid/graphics/Point;->x:I

    iget v10, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->radius:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, v1, Landroid/graphics/Point;->y:I

    iget v11, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->radius:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-direct {v0, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 261
    .local v0, "area":Landroid/graphics/RectF;
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 262
    .local v6, "orbit":Landroid/graphics/Path;
    iget v7, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->startAngle:I

    int-to-float v7, v7

    iget v8, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->endAngle:I

    iget v9, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->startAngle:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v6, v0, v7, v8}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 264
    new-instance v5, Landroid/graphics/PathMeasure;

    invoke-direct {v5, v6, v12}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 268
    .local v5, "measure":Landroid/graphics/PathMeasure;
    iget v7, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->endAngle:I

    iget v8, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->startAngle:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/16 v8, 0x168

    if-ge v7, v8, :cond_0

    iget-object v7, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, v13, :cond_1

    .line 269
    :cond_0
    iget-object v7, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 276
    .local v3, "divisor":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v7, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 277
    const/4 v7, 0x2

    new-array v2, v7, [F

    fill-array-data v2, :array_0

    .line 278
    .local v2, "coords":[F
    int-to-float v7, v4

    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    mul-float/2addr v7, v8

    int-to-float v8, v3

    div-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v2, v8}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 280
    iget-object v7, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    aget v8, v2, v12

    float-to-int v9, v8

    iget-object v8, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget v8, v8, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->width:I

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v9, v8

    iput v8, v7, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->x:I

    .line 281
    iget-object v7, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    aget v8, v2, v13

    float-to-int v9, v8

    iget-object v8, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget v8, v8, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->height:I

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v9, v8

    iput v8, v7, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->y:I

    .line 276
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 272
    .end local v2    # "coords":[F
    .end local v3    # "divisor":I
    .end local v4    # "i":I
    :cond_1
    iget-object v7, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .restart local v3    # "divisor":I
    goto :goto_0

    .line 283
    .restart local v4    # "i":I
    :cond_2
    return-void

    .line 277
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getActionViewCoordinates()Landroid/graphics/Point;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 231
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 233
    .local v1, "coords":[I
    iget-object v2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->mainActionView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 234
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "activityFrame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getActivityContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 236
    aget v2, v1, v5

    invoke-direct {p0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getScreenSize()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getActivityContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, v1, v5

    .line 237
    aget v2, v1, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getActivityContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, v1, v6

    .line 238
    new-instance v2, Landroid/graphics/Point;

    aget v3, v1, v5

    aget v4, v1, v6

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method private getScreenSize()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 312
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 313
    .local v0, "size":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->mainActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 314
    return-object v0
.end method


# virtual methods
.method public close(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    .line 163
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->animationHandler:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;

    if-eqz v1, :cond_3

    .line 164
    iget-object v1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->animationHandler:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;

    invoke-virtual {v1}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->animationHandler:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;

    invoke-virtual {p0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getActionViewCenter()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;->animateMenuClosing(Landroid/graphics/Point;)V

    .line 177
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->open:Z

    .line 179
    iget-object v1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->stateChangeListener:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$MenuStateChangeListener;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->stateChangeListener:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$MenuStateChangeListener;

    invoke-interface {v1, p0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$MenuStateChangeListener;->onMenuClosed(Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;)V

    goto :goto_0

    .line 172
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getActivityContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget-object v2, v2, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getActionViewCenter()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getActionViewCoordinates()Landroid/graphics/Point;

    move-result-object v0

    .line 247
    .local v0, "point":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->mainActionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 248
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->mainActionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 249
    return-object v0
.end method

.method public getActivityContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->mainActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->radius:I

    return v0
.end method

.method public getSubActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->open:Z

    return v0
.end method

.method public open(Z)V
    .locals 8
    .param p1, "animated"    # Z

    .prologue
    const/16 v7, 0x33

    const/4 v6, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getActionViewCenter()Landroid/graphics/Point;

    move-result-object v0

    .line 111
    .local v0, "center":Landroid/graphics/Point;
    invoke-direct {p0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->calculateItemPositions()V

    .line 113
    if-eqz p1, :cond_5

    iget-object v3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->animationHandler:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;

    if-eqz v3, :cond_5

    .line 115
    iget-object v3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->animationHandler:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;

    invoke-virtual {v3}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 124
    iget-object v3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget-object v3, v3, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 125
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "All of the sub action items have to be independent from a parent."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    :cond_2
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget v4, v3, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->width:I

    iget-object v3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget v3, v3, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->height:I

    invoke-direct {v2, v4, v3, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 130
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget v3, v3, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v4, v3

    iget v5, v0, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget v3, v3, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v5, v3

    invoke-virtual {v2, v4, v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 132
    invoke-virtual {p0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getActivityContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget-object v4, v4, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 135
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iget-object v3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->animationHandler:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;

    invoke-virtual {v3, v0}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;->animateMenuOpening(Landroid/graphics/Point;)V

    .line 150
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->open:Z

    .line 152
    iget-object v3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->stateChangeListener:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$MenuStateChangeListener;

    if-eqz v3, :cond_0

    .line 153
    iget-object v3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->stateChangeListener:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$MenuStateChangeListener;

    invoke-interface {v3, p0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$MenuStateChangeListener;->onMenuOpened(Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;)V

    goto/16 :goto_0

    .line 139
    .end local v1    # "i":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 141
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget v4, v3, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->width:I

    iget-object v3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget v3, v3, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->height:I

    invoke-direct {v2, v4, v3, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 142
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget v4, v3, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->x:I

    iget-object v3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget v3, v3, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->y:I

    invoke-virtual {v2, v4, v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 143
    iget-object v3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget-object v3, v3, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-virtual {p0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->getActivityContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget-object v4, v4, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public setStateChangeListener(Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$MenuStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$MenuStateChangeListener;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->stateChangeListener:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$MenuStateChangeListener;

    .line 319
    return-void
.end method

.method public toggle(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->open:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0, p1}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->close(Z)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->open(Z)V

    goto :goto_0
.end method

.method public updateItemPositions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 209
    invoke-virtual {p0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 222
    :cond_0
    return-void

    .line 213
    :cond_1
    invoke-direct {p0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->calculateItemPositions()V

    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 218
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget v3, v2, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->width:I

    iget-object v2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget v2, v2, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->height:I

    const/16 v4, 0x33

    invoke-direct {v1, v3, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 219
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget v3, v2, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->x:I

    iget-object v2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget v2, v2, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->y:I

    invoke-virtual {v1, v3, v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 220
    iget-object v2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;->subActionItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    iget-object v2, v2, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;->view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
