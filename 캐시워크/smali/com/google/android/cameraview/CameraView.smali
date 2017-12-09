.class public Lcom/google/android/cameraview/CameraView;
.super Landroid/widget/FrameLayout;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/cameraview/CameraView$Callback;,
        Lcom/google/android/cameraview/CameraView$SavedState;,
        Lcom/google/android/cameraview/CameraView$CallbackBridge;,
        Lcom/google/android/cameraview/CameraView$Flash;,
        Lcom/google/android/cameraview/CameraView$Facing;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final FACING_BACK:I = 0x0

.field public static final FACING_FRONT:I = 0x1

.field public static final FLASH_AUTO:I = 0x3

.field public static final FLASH_OFF:I = 0x0

.field public static final FLASH_ON:I = 0x1

.field public static final FLASH_RED_EYE:I = 0x4

.field public static final FLASH_TORCH:I = 0x2


# instance fields
.field private mAdjustViewBounds:Z

.field private final mCallbacks:Lcom/google/android/cameraview/CameraView$CallbackBridge;

.field private final mDisplayOrientationDetector:Lcom/google/android/cameraview/DisplayOrientationDetector;

.field mImpl:Lcom/google/android/cameraview/CameraViewImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/google/android/cameraview/CameraView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/cameraview/CameraView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/cameraview/CameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/cameraview/CameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/cameraview/CameraView;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    iput-object v4, p0, Lcom/google/android/cameraview/CameraView;->mCallbacks:Lcom/google/android/cameraview/CameraView$CallbackBridge;

    .line 93
    iput-object v4, p0, Lcom/google/android/cameraview/CameraView;->mDisplayOrientationDetector:Lcom/google/android/cameraview/DisplayOrientationDetector;

    .line 127
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/cameraview/CameraView;->createPreviewImpl(Landroid/content/Context;)Lcom/google/android/cameraview/PreviewImpl;

    move-result-object v2

    .line 98
    .local v2, "preview":Lcom/google/android/cameraview/PreviewImpl;
    new-instance v3, Lcom/google/android/cameraview/CameraView$CallbackBridge;

    invoke-direct {v3, p0}, Lcom/google/android/cameraview/CameraView$CallbackBridge;-><init>(Lcom/google/android/cameraview/CameraView;)V

    iput-object v3, p0, Lcom/google/android/cameraview/CameraView;->mCallbacks:Lcom/google/android/cameraview/CameraView$CallbackBridge;

    .line 99
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_1

    .line 100
    new-instance v3, Lcom/google/android/cameraview/Camera1;

    iget-object v4, p0, Lcom/google/android/cameraview/CameraView;->mCallbacks:Lcom/google/android/cameraview/CameraView$CallbackBridge;

    invoke-direct {v3, v4, v2}, Lcom/google/android/cameraview/Camera1;-><init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;)V

    iput-object v3, p0, Lcom/google/android/cameraview/CameraView;->mImpl:Lcom/google/android/cameraview/CameraViewImpl;

    .line 107
    :goto_1
    sget-object v3, Lcom/google/android/cameraview/R$styleable;->CameraView:[I

    sget v4, Lcom/google/android/cameraview/R$style;->Widget_CameraView:I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/google/android/cameraview/R$styleable;->CameraView_android_adjustViewBounds:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/cameraview/CameraView;->mAdjustViewBounds:Z

    .line 110
    sget v3, Lcom/google/android/cameraview/R$styleable;->CameraView_facing:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/cameraview/CameraView;->setFacing(I)V

    .line 111
    sget v3, Lcom/google/android/cameraview/R$styleable;->CameraView_aspectRatio:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "aspectRatio":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 113
    invoke-static {v1}, Lcom/google/android/cameraview/AspectRatio;->parse(Ljava/lang/String;)Lcom/google/android/cameraview/AspectRatio;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/cameraview/CameraView;->setAspectRatio(Lcom/google/android/cameraview/AspectRatio;)V

    .line 117
    :goto_2
    sget v3, Lcom/google/android/cameraview/R$styleable;->CameraView_autoFocus:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/cameraview/CameraView;->setAutoFocus(Z)V

    .line 118
    sget v3, Lcom/google/android/cameraview/R$styleable;->CameraView_flash:I

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/cameraview/CameraView;->setFlash(I)V

    .line 119
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    new-instance v3, Lcom/google/android/cameraview/CameraView$1;

    invoke-direct {v3, p0, p1}, Lcom/google/android/cameraview/CameraView$1;-><init>(Lcom/google/android/cameraview/CameraView;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/cameraview/CameraView;->mDisplayOrientationDetector:Lcom/google/android/cameraview/DisplayOrientationDetector;

    goto :goto_0

    .line 101
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "aspectRatio":Ljava/lang/String;
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_2

    .line 102
    new-instance v3, Lcom/google/android/cameraview/Camera2;

    iget-object v4, p0, Lcom/google/android/cameraview/CameraView;->mCallbacks:Lcom/google/android/cameraview/CameraView$CallbackBridge;

    invoke-direct {v3, v4, v2, p1}, Lcom/google/android/cameraview/Camera2;-><init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/cameraview/CameraView;->mImpl:Lcom/google/android/cameraview/CameraViewImpl;

    goto :goto_1

    .line 104
    :cond_2
    new-instance v3, Lcom/google/android/cameraview/Camera2Api23;

    iget-object v4, p0, Lcom/google/android/cameraview/CameraView;->mCallbacks:Lcom/google/android/cameraview/CameraView$CallbackBridge;

    invoke-direct {v3, v4, v2, p1}, Lcom/google/android/cameraview/Camera2Api23;-><init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/cameraview/CameraView;->mImpl:Lcom/google/android/cameraview/CameraViewImpl;

    goto :goto_1

    .line 115
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "aspectRatio":Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/google/android/cameraview/Constants;->DEFAULT_ASPECT_RATIO:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {p0, v3}, Lcom/google/android/cameraview/CameraView;->setAspectRatio(Lcom/google/android/cameraview/AspectRatio;)V

    goto :goto_2
.end method

.method private createPreviewImpl(Landroid/content/Context;)Lcom/google/android/cameraview/PreviewImpl;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 132
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 133
    new-instance v0, Lcom/google/android/cameraview/SurfaceViewPreview;

    invoke-direct {v0, p1, p0}, Lcom/google/android/cameraview/SurfaceViewPreview;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 137
    .local v0, "preview":Lcom/google/android/cameraview/PreviewImpl;
    :goto_0
    return-object v0

    .line 135
    .end local v0    # "preview":Lcom/google/android/cameraview/PreviewImpl;
    :cond_0
    new-instance v0, Lcom/google/android/cameraview/TextureViewPreview;

    invoke-direct {v0, p1, p0}, Lcom/google/android/cameraview/TextureViewPreview;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .restart local v0    # "preview":Lcom/google/android/cameraview/PreviewImpl;
    goto :goto_0
.end method


# virtual methods
.method public addCallback(Lcom/google/android/cameraview/CameraView$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/cameraview/CameraView$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView;->mCallbacks:Lcom/google/android/cameraview/CameraView$CallbackBridge;

    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/CameraView$CallbackBridge;->add(Lcom/google/android/cameraview/CameraView$Callback;)V

    .line 278
    return-void
.end method

.method public getAdjustViewBounds()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/google/android/cameraview/CameraView;->mAdjustViewBounds:Z

    return v0
.end method

.method public getAspectRatio()Lcom/google/android/cameraview/AspectRatio;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView;->mImpl:Lcom/google/android/cameraview/CameraViewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/CameraViewImpl;->getAspectRatio()Lcom/google/android/cameraview/AspectRatio;

    move-result-object v0

    return-object v0
.end method

.method public getAutoFocus()Z
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView;->mImpl:Lcom/google/android/cameraview/CameraViewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/CameraViewImpl;->getAutoFocus()Z

    move-result v0

    return v0
.end method

.method public getFacing()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView;->mImpl:Lcom/google/android/cameraview/CameraViewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/CameraViewImpl;->getFacing()I

    move-result v0

    return v0
.end method

.method public getFlash()I
    .locals 1
    .annotation build Lcom/google/android/cameraview/CameraView$Flash;
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView;->mImpl:Lcom/google/android/cameraview/CameraViewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/CameraViewImpl;->getFlash()I

    move-result v0

    return v0
.end method

.method public getSupportedAspectRatios()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/cameraview/AspectRatio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView;->mImpl:Lcom/google/android/cameraview/CameraViewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/CameraViewImpl;->getSupportedAspectRatios()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isCameraOpened()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView;->mImpl:Lcom/google/android/cameraview/CameraViewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/CameraViewImpl;->isCameraOpened()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 143
    invoke-virtual {p0}, Lcom/google/android/cameraview/CameraView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView;->mDisplayOrientationDetector:Lcom/google/android/cameraview/DisplayOrientationDetector;

    invoke-virtual {p0}, Lcom/google/android/cameraview/CameraView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/cameraview/DisplayOrientationDetector;->enable(Landroid/view/Display;)V

    .line 146
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/android/cameraview/CameraView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView;->mDisplayOrientationDetector:Lcom/google/android/cameraview/DisplayOrientationDetector;

    invoke-virtual {v0}, Lcom/google/android/cameraview/DisplayOrientationDetector;->disable()V

    .line 153
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 154
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, -0x80000000

    const/high16 v9, 0x40000000    # 2.0f

    .line 158
    invoke-virtual {p0}, Lcom/google/android/cameraview/CameraView;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 159
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 214
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-boolean v5, p0, Lcom/google/android/cameraview/CameraView;->mAdjustViewBounds:Z

    if-eqz v5, :cond_9

    .line 164
    invoke-virtual {p0}, Lcom/google/android/cameraview/CameraView;->isCameraOpened()Z

    move-result v5

    if-nez v5, :cond_1

    .line 165
    iget-object v5, p0, Lcom/google/android/cameraview/CameraView;->mCallbacks:Lcom/google/android/cameraview/CameraView$CallbackBridge;

    invoke-virtual {v5}, Lcom/google/android/cameraview/CameraView$CallbackBridge;->reserveRequestLayoutOnOpen()V

    .line 166
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 170
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 171
    .local v1, "heightMode":I
    if-ne v4, v9, :cond_5

    if-eq v1, v9, :cond_5

    .line 172
    invoke-virtual {p0}, Lcom/google/android/cameraview/CameraView;->getAspectRatio()Lcom/google/android/cameraview/AspectRatio;

    move-result-object v2

    .line 173
    .local v2, "ratio":Lcom/google/android/cameraview/AspectRatio;
    sget-boolean v5, Lcom/google/android/cameraview/CameraView;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    if-nez v2, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 174
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Lcom/google/android/cameraview/AspectRatio;->toFloat()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 175
    .local v0, "height":I
    if-ne v1, v7, :cond_3

    .line 176
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 179
    :cond_3
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 178
    invoke-super {p0, p1, v5}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 196
    .end local v0    # "height":I
    .end local v1    # "heightMode":I
    .end local v2    # "ratio":Lcom/google/android/cameraview/AspectRatio;
    .end local v4    # "widthMode":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/cameraview/CameraView;->getMeasuredWidth()I

    move-result v3

    .line 197
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/google/android/cameraview/CameraView;->getMeasuredHeight()I

    move-result v0

    .line 198
    .restart local v0    # "height":I
    invoke-virtual {p0}, Lcom/google/android/cameraview/CameraView;->getAspectRatio()Lcom/google/android/cameraview/AspectRatio;

    move-result-object v2

    .line 199
    .restart local v2    # "ratio":Lcom/google/android/cameraview/AspectRatio;
    iget-object v5, p0, Lcom/google/android/cameraview/CameraView;->mDisplayOrientationDetector:Lcom/google/android/cameraview/DisplayOrientationDetector;

    invoke-virtual {v5}, Lcom/google/android/cameraview/DisplayOrientationDetector;->getLastKnownDisplayOrientation()I

    move-result v5

    rem-int/lit16 v5, v5, 0xb4

    if-nez v5, :cond_4

    .line 200
    invoke-virtual {v2}, Lcom/google/android/cameraview/AspectRatio;->inverse()Lcom/google/android/cameraview/AspectRatio;

    move-result-object v2

    .line 202
    :cond_4
    sget-boolean v5, Lcom/google/android/cameraview/CameraView;->$assertionsDisabled:Z

    if-nez v5, :cond_a

    if-nez v2, :cond_a

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 180
    .end local v0    # "height":I
    .end local v2    # "ratio":Lcom/google/android/cameraview/AspectRatio;
    .end local v3    # "width":I
    .restart local v1    # "heightMode":I
    .restart local v4    # "widthMode":I
    :cond_5
    if-eq v4, v9, :cond_8

    if-ne v1, v9, :cond_8

    .line 181
    invoke-virtual {p0}, Lcom/google/android/cameraview/CameraView;->getAspectRatio()Lcom/google/android/cameraview/AspectRatio;

    move-result-object v2

    .line 182
    .restart local v2    # "ratio":Lcom/google/android/cameraview/AspectRatio;
    sget-boolean v5, Lcom/google/android/cameraview/CameraView;->$assertionsDisabled:Z

    if-nez v5, :cond_6

    if-nez v2, :cond_6

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 183
    :cond_6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Lcom/google/android/cameraview/AspectRatio;->toFloat()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 184
    .restart local v3    # "width":I
    if-ne v4, v7, :cond_7

    .line 185
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 187
    :cond_7
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-super {p0, v5, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1

    .line 190
    .end local v2    # "ratio":Lcom/google/android/cameraview/AspectRatio;
    .end local v3    # "width":I
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1

    .line 193
    .end local v1    # "heightMode":I
    .end local v4    # "widthMode":I
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1

    .line 203
    .restart local v0    # "height":I
    .restart local v2    # "ratio":Lcom/google/android/cameraview/AspectRatio;
    .restart local v3    # "width":I
    :cond_a
    invoke-virtual {v2}, Lcom/google/android/cameraview/AspectRatio;->getY()I

    move-result v5

    mul-int/2addr v5, v3

    invoke-virtual {v2}, Lcom/google/android/cameraview/AspectRatio;->getX()I

    move-result v6

    div-int/2addr v5, v6

    if-ge v0, v5, :cond_b

    .line 204
    iget-object v5, p0, Lcom/google/android/cameraview/CameraView;->mImpl:Lcom/google/android/cameraview/CameraViewImpl;

    invoke-virtual {v5}, Lcom/google/android/cameraview/CameraViewImpl;->getView()Landroid/view/View;

    move-result-object v5

    .line 205
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 206
    invoke-virtual {v2}, Lcom/google/android/cameraview/AspectRatio;->getY()I

    move-result v7

    mul-int/2addr v7, v3

    invoke-virtual {v2}, Lcom/google/android/cameraview/AspectRatio;->getX()I

    move-result v8

    div-int/2addr v7, v8

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 204
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    goto/16 :goto_0

    .line 209
    :cond_b
    iget-object v5, p0, Lcom/google/android/cameraview/CameraView;->mImpl:Lcom/google/android/cameraview/CameraViewImpl;

    invoke-virtual {v5}, Lcom/google/android/cameraview/CameraViewImpl;->getView()Landroid/view/View;

    move-result-object v5

    .line 210
    invoke-virtual {v2}, Lcom/google/android/cameraview/AspectRatio;->getX()I

    move-result v6

    mul-int/2addr v6, v0

    invoke-virtual {v2}, Lcom/google/android/cameraview/AspectRatio;->getY()I

    move-result v7

    div-int/2addr v6, v7

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 212
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 209
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    goto/16 :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 228
    instance-of v1, p1, Lcom/google/android/cameraview/CameraView$SavedState;

    if-nez v1, :cond_0

    .line 229
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 238
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 232
    check-cast v0, Lcom/google/android/cameraview/CameraView$SavedState;

    .line 233
    .local v0, "ss":Lcom/google/android/cameraview/CameraView$SavedState;
    invoke-virtual {v0}, Lcom/google/android/cameraview/CameraView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 234
    iget v1, v0, Lcom/google/android/cameraview/CameraView$SavedState;->facing:I

    invoke-virtual {p0, v1}, Lcom/google/android/cameraview/CameraView;->setFacing(I)V

    .line 235
    iget-object v1, v0, Lcom/google/android/cameraview/CameraView$SavedState;->ratio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {p0, v1}, Lcom/google/android/cameraview/CameraView;->setAspectRatio(Lcom/google/android/cameraview/AspectRatio;)V

    .line 236
    iget-boolean v1, v0, Lcom/google/android/cameraview/CameraView$SavedState;->autoFocus:Z

    invoke-virtual {p0, v1}, Lcom/google/android/cameraview/CameraView;->setAutoFocus(Z)V

    .line 237
    iget v1, v0, Lcom/google/android/cameraview/CameraView$SavedState;->flash:I

    invoke-virtual {p0, v1}, Lcom/google/android/cameraview/CameraView;->setFlash(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 218
    new-instance v0, Lcom/google/android/cameraview/CameraView$SavedState;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/cameraview/CameraView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 219
    .local v0, "state":Lcom/google/android/cameraview/CameraView$SavedState;
    invoke-virtual {p0}, Lcom/google/android/cameraview/CameraView;->getFacing()I

    move-result v1

    iput v1, v0, Lcom/google/android/cameraview/CameraView$SavedState;->facing:I

    .line 220
    invoke-virtual {p0}, Lcom/google/android/cameraview/CameraView;->getAspectRatio()Lcom/google/android/cameraview/AspectRatio;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/cameraview/CameraView$SavedState;->ratio:Lcom/google/android/cameraview/AspectRatio;

    .line 221
    invoke-virtual {p0}, Lcom/google/android/cameraview/CameraView;->getAutoFocus()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/cameraview/CameraView$SavedState;->autoFocus:Z

    .line 222
    invoke-virtual {p0}, Lcom/google/android/cameraview/CameraView;->getFlash()I

    move-result v1

    iput v1, v0, Lcom/google/android/cameraview/CameraView$SavedState;->flash:I

    .line 223
    return-object v0
.end method

.method public removeCallback(Lcom/google/android/cameraview/CameraView$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/cameraview/CameraView$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView;->mCallbacks:Lcom/google/android/cameraview/CameraView$CallbackBridge;

    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/CameraView$CallbackBridge;->remove(Lcom/google/android/cameraview/CameraView$Callback;)V

    .line 288
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1
    .param p1, "adjustViewBounds"    # Z

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/google/android/cameraview/CameraView;->mAdjustViewBounds:Z

    if-eq v0, p1, :cond_0

    .line 297
    iput-boolean p1, p0, Lcom/google/android/cameraview/CameraView;->mAdjustViewBounds:Z

    .line 298
    invoke-virtual {p0}, Lcom/google/android/cameraview/CameraView;->requestLayout()V

    .line 300
    :cond_0
    return-void
.end method

.method public setAspectRatio(Lcom/google/android/cameraview/AspectRatio;)V
    .locals 1
    .param p1, "ratio"    # Lcom/google/android/cameraview/AspectRatio;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView;->mImpl:Lcom/google/android/cameraview/CameraViewImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/CameraViewImpl;->setAspectRatio(Lcom/google/android/cameraview/AspectRatio;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/google/android/cameraview/CameraView;->requestLayout()V

    .line 348
    :cond_0
    return-void
.end method

.method public setAutoFocus(Z)V
    .locals 1
    .param p1, "autoFocus"    # Z

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView;->mImpl:Lcom/google/android/cameraview/CameraViewImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/CameraViewImpl;->setAutoFocus(Z)V

    .line 369
    return-void
.end method

.method public setFacing(I)V
    .locals 1
    .param p1, "facing"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView;->mImpl:Lcom/google/android/cameraview/CameraViewImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/CameraViewImpl;->setFacing(I)V

    .line 319
    return-void
.end method

.method public setFlash(I)V
    .locals 1
    .param p1, "flash"    # I
        .annotation build Lcom/google/android/cameraview/CameraView$Flash;
        .end annotation
    .end param

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView;->mImpl:Lcom/google/android/cameraview/CameraViewImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/CameraViewImpl;->setFlash(I)V

    .line 388
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 245
    iget-object v1, p0, Lcom/google/android/cameraview/CameraView;->mImpl:Lcom/google/android/cameraview/CameraViewImpl;

    invoke-virtual {v1}, Lcom/google/android/cameraview/CameraViewImpl;->start()Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/google/android/cameraview/CameraView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 249
    .local v0, "state":Landroid/os/Parcelable;
    new-instance v1, Lcom/google/android/cameraview/Camera1;

    iget-object v2, p0, Lcom/google/android/cameraview/CameraView;->mCallbacks:Lcom/google/android/cameraview/CameraView$CallbackBridge;

    invoke-virtual {p0}, Lcom/google/android/cameraview/CameraView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/cameraview/CameraView;->createPreviewImpl(Landroid/content/Context;)Lcom/google/android/cameraview/PreviewImpl;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/cameraview/Camera1;-><init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;)V

    iput-object v1, p0, Lcom/google/android/cameraview/CameraView;->mImpl:Lcom/google/android/cameraview/CameraViewImpl;

    .line 250
    invoke-virtual {p0, v0}, Lcom/google/android/cameraview/CameraView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 251
    iget-object v1, p0, Lcom/google/android/cameraview/CameraView;->mImpl:Lcom/google/android/cameraview/CameraViewImpl;

    invoke-virtual {v1}, Lcom/google/android/cameraview/CameraViewImpl;->start()Z

    .line 253
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView;->mImpl:Lcom/google/android/cameraview/CameraViewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/CameraViewImpl;->stop()V

    .line 261
    return-void
.end method

.method public takePicture()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView;->mImpl:Lcom/google/android/cameraview/CameraViewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/CameraViewImpl;->takePicture()V

    .line 407
    return-void
.end method
