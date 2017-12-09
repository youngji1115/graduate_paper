.class Lcom/google/android/cameraview/Camera2$5;
.super Ljava/lang/Object;
.source "Camera2.java"

# interfaces
.implements Lcom/google/android/cameraview/PreviewImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/Camera2;-><init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/cameraview/Camera2;


# direct methods
.method constructor <init>(Lcom/google/android/cameraview/Camera2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/cameraview/Camera2;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2$5;->this$0:Lcom/google/android/cameraview/Camera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2$5;->this$0:Lcom/google/android/cameraview/Camera2;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Camera2;->startCaptureSession()V

    .line 206
    return-void
.end method
