.class Lcom/google/android/cameraview/CameraView$CallbackBridge;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Lcom/google/android/cameraview/CameraViewImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/cameraview/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackBridge"
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/cameraview/CameraView$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestLayoutOnOpen:Z

.field final synthetic this$0:Lcom/google/android/cameraview/CameraView;


# direct methods
.method constructor <init>(Lcom/google/android/cameraview/CameraView;)V
    .locals 1

    .prologue
    .line 415
    iput-object p1, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->this$0:Lcom/google/android/cameraview/CameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mCallbacks:Ljava/util/ArrayList;

    .line 416
    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/cameraview/CameraView$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/cameraview/CameraView$Callback;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    return-void
.end method

.method public onCameraClosed()V
    .locals 3

    .prologue
    .line 439
    iget-object v1, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/cameraview/CameraView$Callback;

    .line 440
    .local v0, "callback":Lcom/google/android/cameraview/CameraView$Callback;
    iget-object v2, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->this$0:Lcom/google/android/cameraview/CameraView;

    invoke-virtual {v0, v2}, Lcom/google/android/cameraview/CameraView$Callback;->onCameraClosed(Lcom/google/android/cameraview/CameraView;)V

    goto :goto_0

    .line 442
    .end local v0    # "callback":Lcom/google/android/cameraview/CameraView$Callback;
    :cond_0
    return-void
.end method

.method public onCameraOpened()V
    .locals 3

    .prologue
    .line 428
    iget-boolean v1, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mRequestLayoutOnOpen:Z

    if-eqz v1, :cond_0

    .line 429
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mRequestLayoutOnOpen:Z

    .line 430
    iget-object v1, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->this$0:Lcom/google/android/cameraview/CameraView;

    invoke-virtual {v1}, Lcom/google/android/cameraview/CameraView;->requestLayout()V

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/cameraview/CameraView$Callback;

    .line 433
    .local v0, "callback":Lcom/google/android/cameraview/CameraView$Callback;
    iget-object v2, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->this$0:Lcom/google/android/cameraview/CameraView;

    invoke-virtual {v0, v2}, Lcom/google/android/cameraview/CameraView$Callback;->onCameraOpened(Lcom/google/android/cameraview/CameraView;)V

    goto :goto_0

    .line 435
    .end local v0    # "callback":Lcom/google/android/cameraview/CameraView$Callback;
    :cond_1
    return-void
.end method

.method public onPictureTaken([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 446
    iget-object v1, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/cameraview/CameraView$Callback;

    .line 447
    .local v0, "callback":Lcom/google/android/cameraview/CameraView$Callback;
    iget-object v2, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->this$0:Lcom/google/android/cameraview/CameraView;

    invoke-virtual {v0, v2, p1}, Lcom/google/android/cameraview/CameraView$Callback;->onPictureTaken(Lcom/google/android/cameraview/CameraView;[B)V

    goto :goto_0

    .line 449
    .end local v0    # "callback":Lcom/google/android/cameraview/CameraView$Callback;
    :cond_0
    return-void
.end method

.method public remove(Lcom/google/android/cameraview/CameraView$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/cameraview/CameraView$Callback;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 424
    return-void
.end method

.method public reserveRequestLayoutOnOpen()V
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mRequestLayoutOnOpen:Z

    .line 453
    return-void
.end method
