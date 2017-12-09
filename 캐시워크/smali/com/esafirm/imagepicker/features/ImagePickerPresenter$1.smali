.class Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;
.super Ljava/lang/Object;
.source "ImagePickerPresenter.java"

# interfaces
.implements Lcom/esafirm/imagepicker/features/common/ImageLoaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->loadImages(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;


# direct methods
.method constructor <init>(Lcom/esafirm/imagepicker/features/ImagePickerPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    invoke-static {v0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->access$100(Lcom/esafirm/imagepicker/features/ImagePickerPresenter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$2;

    invoke-direct {v1, p0, p1}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$2;-><init>(Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method

.method public onImageLoaded(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/esafirm/imagepicker/model/Image;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/esafirm/imagepicker/model/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lcom/esafirm/imagepicker/model/Image;>;"
    .local p2, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/esafirm/imagepicker/model/Folder;>;"
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    invoke-static {v0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->access$100(Lcom/esafirm/imagepicker/features/ImagePickerPresenter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$1;-><init>(Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    return-void
.end method
