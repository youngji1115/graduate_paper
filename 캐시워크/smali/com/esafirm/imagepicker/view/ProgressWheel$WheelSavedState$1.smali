.class final Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState$1;
.super Ljava/lang/Object;
.source "ProgressWheel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 706
    new-instance v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcel;Lcom/esafirm/imagepicker/view/ProgressWheel$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0, p1}, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 710
    new-array v0, p1, [Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0, p1}, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState$1;->newArray(I)[Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;

    move-result-object v0

    return-object v0
.end method
