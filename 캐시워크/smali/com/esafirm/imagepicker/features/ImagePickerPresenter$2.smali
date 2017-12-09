.class Lcom/esafirm/imagepicker/features/ImagePickerPresenter$2;
.super Ljava/lang/Object;
.source "ImagePickerPresenter.java"

# interfaces
.implements Lcom/esafirm/imagepicker/features/camera/OnImageReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->finishCaptureImage(Landroid/content/Context;Landroid/content/Intent;Lcom/esafirm/imagepicker/features/ImagePickerConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

.field final synthetic val$config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;


# direct methods
.method constructor <init>(Lcom/esafirm/imagepicker/features/ImagePickerPresenter;Lcom/esafirm/imagepicker/features/ImagePickerConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$2;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    iput-object p2, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$2;->val$config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageReady(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/esafirm/imagepicker/model/Image;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lcom/esafirm/imagepicker/model/Image;>;"
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$2;->val$config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v0}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->isReturnAfterFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$2;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    invoke-virtual {v0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->getView()Lcom/esafirm/imagepicker/features/common/MvpView;

    move-result-object v0

    check-cast v0, Lcom/esafirm/imagepicker/features/ImagePickerView;

    invoke-interface {v0, p1}, Lcom/esafirm/imagepicker/features/ImagePickerView;->finishPickImages(Ljava/util/List;)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$2;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    invoke-virtual {v0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->getView()Lcom/esafirm/imagepicker/features/common/MvpView;

    move-result-object v0

    check-cast v0, Lcom/esafirm/imagepicker/features/ImagePickerView;

    invoke-interface {v0}, Lcom/esafirm/imagepicker/features/ImagePickerView;->showCapturedImage()V

    goto :goto_0
.end method
