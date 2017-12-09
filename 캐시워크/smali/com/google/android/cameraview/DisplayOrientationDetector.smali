.class abstract Lcom/google/android/cameraview/DisplayOrientationDetector;
.super Ljava/lang/Object;
.source "DisplayOrientationDetector.java"


# static fields
.field static final DISPLAY_ORIENTATIONS:Landroid/util/SparseIntArray;


# instance fields
.field mDisplay:Landroid/view/Display;

.field private mLastKnownDisplayOrientation:I

.field private final mOrientationEventListener:Landroid/view/OrientationEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 34
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/google/android/cameraview/DisplayOrientationDetector;->DISPLAY_ORIENTATIONS:Landroid/util/SparseIntArray;

    .line 37
    sget-object v0, Lcom/google/android/cameraview/DisplayOrientationDetector;->DISPLAY_ORIENTATIONS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget-object v0, Lcom/google/android/cameraview/DisplayOrientationDetector;->DISPLAY_ORIENTATIONS:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object v0, Lcom/google/android/cameraview/DisplayOrientationDetector;->DISPLAY_ORIENTATIONS:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object v0, Lcom/google/android/cameraview/DisplayOrientationDetector;->DISPLAY_ORIENTATIONS:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/16 v2, 0x10e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/cameraview/DisplayOrientationDetector;->mLastKnownDisplayOrientation:I

    .line 48
    new-instance v0, Lcom/google/android/cameraview/DisplayOrientationDetector$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/cameraview/DisplayOrientationDetector$1;-><init>(Lcom/google/android/cameraview/DisplayOrientationDetector;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/cameraview/DisplayOrientationDetector;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 66
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/cameraview/DisplayOrientationDetector;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/cameraview/DisplayOrientationDetector;->mDisplay:Landroid/view/Display;

    .line 78
    return-void
.end method

.method dispatchOnDisplayOrientationChanged(I)V
    .locals 0
    .param p1, "displayOrientation"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/google/android/cameraview/DisplayOrientationDetector;->mLastKnownDisplayOrientation:I

    .line 86
    invoke-virtual {p0, p1}, Lcom/google/android/cameraview/DisplayOrientationDetector;->onDisplayOrientationChanged(I)V

    .line 87
    return-void
.end method

.method public enable(Landroid/view/Display;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/cameraview/DisplayOrientationDetector;->mDisplay:Landroid/view/Display;

    .line 70
    iget-object v0, p0, Lcom/google/android/cameraview/DisplayOrientationDetector;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 72
    sget-object v0, Lcom/google/android/cameraview/DisplayOrientationDetector;->DISPLAY_ORIENTATIONS:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/cameraview/DisplayOrientationDetector;->dispatchOnDisplayOrientationChanged(I)V

    .line 73
    return-void
.end method

.method public getLastKnownDisplayOrientation()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/cameraview/DisplayOrientationDetector;->mLastKnownDisplayOrientation:I

    return v0
.end method

.method public abstract onDisplayOrientationChanged(I)V
.end method
