.class Lcom/google/android/cameraview/DisplayOrientationDetector$1;
.super Landroid/view/OrientationEventListener;
.source "DisplayOrientationDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/DisplayOrientationDetector;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastKnownRotation:I

.field final synthetic this$0:Lcom/google/android/cameraview/DisplayOrientationDetector;


# direct methods
.method constructor <init>(Lcom/google/android/cameraview/DisplayOrientationDetector;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/android/cameraview/DisplayOrientationDetector;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/cameraview/DisplayOrientationDetector$1;->this$0:Lcom/google/android/cameraview/DisplayOrientationDetector;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/cameraview/DisplayOrientationDetector$1;->mLastKnownRotation:I

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 55
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/cameraview/DisplayOrientationDetector$1;->this$0:Lcom/google/android/cameraview/DisplayOrientationDetector;

    iget-object v1, v1, Lcom/google/android/cameraview/DisplayOrientationDetector;->mDisplay:Landroid/view/Display;

    if-nez v1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/google/android/cameraview/DisplayOrientationDetector$1;->this$0:Lcom/google/android/cameraview/DisplayOrientationDetector;

    iget-object v1, v1, Lcom/google/android/cameraview/DisplayOrientationDetector;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 60
    .local v0, "rotation":I
    iget v1, p0, Lcom/google/android/cameraview/DisplayOrientationDetector$1;->mLastKnownRotation:I

    if-eq v1, v0, :cond_0

    .line 61
    iput v0, p0, Lcom/google/android/cameraview/DisplayOrientationDetector$1;->mLastKnownRotation:I

    .line 62
    iget-object v1, p0, Lcom/google/android/cameraview/DisplayOrientationDetector$1;->this$0:Lcom/google/android/cameraview/DisplayOrientationDetector;

    sget-object v2, Lcom/google/android/cameraview/DisplayOrientationDetector;->DISPLAY_ORIENTATIONS:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/cameraview/DisplayOrientationDetector;->dispatchOnDisplayOrientationChanged(I)V

    goto :goto_0
.end method
