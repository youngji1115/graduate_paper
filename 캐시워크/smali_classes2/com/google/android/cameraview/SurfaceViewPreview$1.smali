.class Lcom/google/android/cameraview/SurfaceViewPreview$1;
.super Ljava/lang/Object;
.source "SurfaceViewPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/SurfaceViewPreview;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/cameraview/SurfaceViewPreview;


# direct methods
.method constructor <init>(Lcom/google/android/cameraview/SurfaceViewPreview;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/cameraview/SurfaceViewPreview;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/cameraview/SurfaceViewPreview$1;->this$0:Lcom/google/android/cameraview/SurfaceViewPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "h"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/cameraview/SurfaceViewPreview$1;->this$0:Lcom/google/android/cameraview/SurfaceViewPreview;

    invoke-virtual {v0, p3, p4}, Lcom/google/android/cameraview/SurfaceViewPreview;->setSize(II)V

    .line 45
    iget-object v0, p0, Lcom/google/android/cameraview/SurfaceViewPreview$1;->this$0:Lcom/google/android/cameraview/SurfaceViewPreview;

    iget-object v0, v0, Lcom/google/android/cameraview/SurfaceViewPreview;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isInLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/google/android/cameraview/SurfaceViewPreview$1;->this$0:Lcom/google/android/cameraview/SurfaceViewPreview;

    invoke-virtual {v0}, Lcom/google/android/cameraview/SurfaceViewPreview;->dispatchSurfaceChanged()V

    .line 48
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "h"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 40
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "h"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lcom/google/android/cameraview/SurfaceViewPreview$1;->this$0:Lcom/google/android/cameraview/SurfaceViewPreview;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/cameraview/SurfaceViewPreview;->setSize(II)V

    .line 53
    return-void
.end method
