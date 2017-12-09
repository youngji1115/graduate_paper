.class final Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OnSwipeTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# static fields
.field private static final SWIPE_THRESHOLD:I = 0x64

.field private static final SWIPE_VELOCITY_THRESHOLD:I = 0x64


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;


# direct methods
.method private constructor <init>(Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener$GestureListener;->this$0:Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;
    .param p2, "x1"    # Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener$1;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener$GestureListener;-><init>(Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    .line 35
    const/4 v3, 0x0

    .line 37
    .local v3, "result":Z
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float v1, v4, v5

    .line 38
    .local v1, "diffY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float v0, v4, v5

    .line 39
    .local v0, "diffX":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 40
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    .line 41
    cmpl-float v4, v0, v7

    if-lez v4, :cond_1

    .line 42
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener$GestureListener;->this$0:Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;->onSwipeRight()V

    .line 46
    :goto_0
    const/4 v3, 0x1

    .line 60
    .end local v0    # "diffX":F
    .end local v1    # "diffY":F
    :cond_0
    :goto_1
    return v3

    .line 44
    .restart local v0    # "diffX":F
    .restart local v1    # "diffY":F
    :cond_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener$GestureListener;->this$0:Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;->onSwipeLeft()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    .end local v0    # "diffX":F
    .end local v1    # "diffY":F
    :catch_0
    move-exception v2

    .line 58
    .local v2, "exception":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 49
    .end local v2    # "exception":Ljava/lang/Exception;
    .restart local v0    # "diffX":F
    .restart local v1    # "diffY":F
    :cond_2
    :try_start_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    .line 50
    cmpl-float v4, v1, v7

    if-lez v4, :cond_3

    .line 51
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener$GestureListener;->this$0:Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;->onSwipeBottom()V

    .line 55
    :goto_2
    const/4 v3, 0x1

    goto :goto_1

    .line 53
    :cond_3
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener$GestureListener;->this$0:Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;->onSwipeTop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
