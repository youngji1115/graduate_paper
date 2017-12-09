.class public interface abstract Lcom/esafirm/imagepicker/features/ImagePickerView;
.super Ljava/lang/Object;
.source "ImagePickerView.java"

# interfaces
.implements Lcom/esafirm/imagepicker/features/common/MvpView;


# virtual methods
.method public abstract finishPickImages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/esafirm/imagepicker/model/Image;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showCapturedImage()V
.end method

.method public abstract showEmpty()V
.end method

.method public abstract showError(Ljava/lang/Throwable;)V
.end method

.method public abstract showFetchCompleted(Ljava/util/List;Ljava/util/List;)V
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
.end method

.method public abstract showLoading(Z)V
.end method
