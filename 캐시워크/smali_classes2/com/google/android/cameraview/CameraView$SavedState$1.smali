.class final Lcom/google/android/cameraview/CameraView$SavedState$1;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/cameraview/CameraView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks",
        "<",
        "Lcom/google/android/cameraview/CameraView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/cameraview/CameraView$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 495
    new-instance v0, Lcom/google/android/cameraview/CameraView$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/google/android/cameraview/CameraView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 491
    invoke-virtual {p0, p1, p2}, Lcom/google/android/cameraview/CameraView$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/cameraview/CameraView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/cameraview/CameraView$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 500
    new-array v0, p1, [Lcom/google/android/cameraview/CameraView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 491
    invoke-virtual {p0, p1}, Lcom/google/android/cameraview/CameraView$SavedState$1;->newArray(I)[Lcom/google/android/cameraview/CameraView$SavedState;

    move-result-object v0

    return-object v0
.end method
