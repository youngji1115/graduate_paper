.class public final Lcom/google/android/cameraview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/cameraview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CameraView:[I

.field public static final CameraView_android_adjustViewBounds:I = 0x0

.field public static final CameraView_aspectRatio:I = 0x2

.field public static final CameraView_autoFocus:I = 0x3

.field public static final CameraView_facing:I = 0x1

.field public static final CameraView_flash:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/cameraview/R$styleable;->CameraView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101011e
        0x7f0100ae
        0x7f0100af
        0x7f0100b0
        0x7f0100b1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
