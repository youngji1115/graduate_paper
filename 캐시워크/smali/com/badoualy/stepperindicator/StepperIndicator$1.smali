.class Lcom/badoualy/stepperindicator/StepperIndicator$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StepperIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badoualy/stepperindicator/StepperIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badoualy/stepperindicator/StepperIndicator;


# direct methods
.method constructor <init>(Lcom/badoualy/stepperindicator/StepperIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badoualy/stepperindicator/StepperIndicator;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/badoualy/stepperindicator/StepperIndicator$1;->this$0:Lcom/badoualy/stepperindicator/StepperIndicator;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 299
    .local v3, "xCord":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 301
    .local v4, "yCord":F
    const/4 v0, -0x1

    .line 302
    .local v0, "clickedStep":I
    iget-object v5, p0, Lcom/badoualy/stepperindicator/StepperIndicator$1;->this$0:Lcom/badoualy/stepperindicator/StepperIndicator;

    invoke-virtual {v5}, Lcom/badoualy/stepperindicator/StepperIndicator;->isOnStepClickListenerAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 303
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/badoualy/stepperindicator/StepperIndicator$1;->this$0:Lcom/badoualy/stepperindicator/StepperIndicator;

    invoke-static {v5}, Lcom/badoualy/stepperindicator/StepperIndicator;->access$000(Lcom/badoualy/stepperindicator/StepperIndicator;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 304
    iget-object v5, p0, Lcom/badoualy/stepperindicator/StepperIndicator$1;->this$0:Lcom/badoualy/stepperindicator/StepperIndicator;

    invoke-static {v5}, Lcom/badoualy/stepperindicator/StepperIndicator;->access$000(Lcom/badoualy/stepperindicator/StepperIndicator;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 305
    move v0, v1

    .line 313
    .end local v1    # "i":I
    :cond_0
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 314
    iget-object v5, p0, Lcom/badoualy/stepperindicator/StepperIndicator$1;->this$0:Lcom/badoualy/stepperindicator/StepperIndicator;

    invoke-static {v5}, Lcom/badoualy/stepperindicator/StepperIndicator;->access$100(Lcom/badoualy/stepperindicator/StepperIndicator;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badoualy/stepperindicator/StepperIndicator$OnStepClickListener;

    .line 315
    .local v2, "listener":Lcom/badoualy/stepperindicator/StepperIndicator$OnStepClickListener;
    invoke-interface {v2, v0}, Lcom/badoualy/stepperindicator/StepperIndicator$OnStepClickListener;->onStepClicked(I)V

    goto :goto_1

    .line 303
    .end local v2    # "listener":Lcom/badoualy/stepperindicator/StepperIndicator$OnStepClickListener;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v1    # "i":I
    :cond_2
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5
.end method
