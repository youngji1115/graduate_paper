.class public interface abstract Lcom/esafirm/imagepicker/features/common/ImageLoaderListener;
.super Ljava/lang/Object;
.source "ImageLoaderListener.java"


# virtual methods
.method public abstract onFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract onImageLoaded(Ljava/util/List;Ljava/util/List;)V
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
