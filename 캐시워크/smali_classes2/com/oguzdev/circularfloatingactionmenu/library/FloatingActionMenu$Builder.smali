.class public Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;
.super Ljava/lang/Object;
.source "FloatingActionMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private actionView:Landroid/view/View;

.field private animated:Z

.field private animationHandler:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;

.field private endAngle:I

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
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->subActionItems:Ljava/util/ArrayList;

    .line 409
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oguzdev/circularfloatingactionmenu/library/R$dimen;->action_menu_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->radius:I

    .line 410
    const/16 v0, 0xb4

    iput v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->startAngle:I

    .line 411
    const/16 v0, 0x10e

    iput v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->endAngle:I

    .line 412
    new-instance v0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;

    invoke-direct {v0}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/DefaultAnimationHandler;-><init>()V

    iput-object v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->animationHandler:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->animated:Z

    .line 414
    return-void
.end method


# virtual methods
.method public addSubActionView(ILandroid/content/Context;)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;
    .locals 4
    .param p1, "resId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 452
    const-string v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 453
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 454
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, v3, v3}, Landroid/view/View;->measure(II)V

    .line 455
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->addSubActionView(Landroid/view/View;II)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;

    move-result-object v2

    return-object v2
.end method

.method public addSubActionView(Landroid/view/View;)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;
    .locals 1
    .param p1, "subActionView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 442
    invoke-virtual {p0, p1, v0, v0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->addSubActionView(Landroid/view/View;II)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addSubActionView(Landroid/view/View;II)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;
    .locals 2
    .param p1, "subActionView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 432
    iget-object v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->subActionItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;

    invoke-direct {v1, p1, p2, p3}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Item;-><init>(Landroid/view/View;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    return-object p0
.end method

.method public attachTo(Landroid/view/View;)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;
    .locals 0
    .param p1, "actionView"    # Landroid/view/View;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->actionView:Landroid/view/View;

    .line 491
    return-object p0
.end method

.method public build()Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;
    .locals 9

    .prologue
    .line 495
    new-instance v0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;

    iget-object v1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->actionView:Landroid/view/View;

    iget v2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->startAngle:I

    iget v3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->endAngle:I

    iget v4, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->radius:I

    iget-object v5, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->subActionItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->animationHandler:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;

    iget-boolean v7, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->animated:Z

    iget-object v8, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->stateChangeListener:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$MenuStateChangeListener;

    invoke-direct/range {v0 .. v8}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu;-><init>(Landroid/view/View;IIILjava/util/ArrayList;Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;ZLcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$MenuStateChangeListener;)V

    return-object v0
.end method

.method public disableAnimations()Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->animated:Z

    .line 475
    return-object p0
.end method

.method public enableAnimations()Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->animated:Z

    .line 470
    return-object p0
.end method

.method public setAnimationHandler(Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;
    .locals 0
    .param p1, "animationHandler"    # Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->animationHandler:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;

    .line 465
    return-object p0
.end method

.method public setEndAngle(I)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;
    .locals 0
    .param p1, "endAngle"    # I

    .prologue
    .line 422
    iput p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->endAngle:I

    .line 423
    return-object p0
.end method

.method public setRadius(I)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;
    .locals 0
    .param p1, "radius"    # I

    .prologue
    .line 427
    iput p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->radius:I

    .line 428
    return-object p0
.end method

.method public setStartAngle(I)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;
    .locals 0
    .param p1, "startAngle"    # I

    .prologue
    .line 417
    iput p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->startAngle:I

    .line 418
    return-object p0
.end method

.method public setStateChangeListener(Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$MenuStateChangeListener;)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;
    .locals 0
    .param p1, "listener"    # Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$MenuStateChangeListener;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$Builder;->stateChangeListener:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionMenu$MenuStateChangeListener;

    .line 480
    return-object p0
.end method
