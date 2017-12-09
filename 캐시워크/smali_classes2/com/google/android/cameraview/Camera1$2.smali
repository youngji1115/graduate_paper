.class Lcom/google/android/cameraview/Camera1$2;
.super Ljava/lang/Object;
.source "Camera1.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/Camera1;->takePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/cameraview/Camera1;


# direct methods
.method constructor <init>(Lcom/google/android/cameraview/Camera1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/cameraview/Camera1;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1$2;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$2;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Camera1;->takePictureInternal()V

    .line 232
    return-void
.end method
