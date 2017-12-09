.class public Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;
.super Ljava/lang/Object;
.source "OnSwipeTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener$GestureListener;
    }
.end annotation


# instance fields
.field private final gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener$GestureListener;-><init>(Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    .line 16
    return-void
.end method


# virtual methods
.method public onSwipeBottom()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public onSwipeLeft()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onSwipeRight()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onSwipeTop()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
