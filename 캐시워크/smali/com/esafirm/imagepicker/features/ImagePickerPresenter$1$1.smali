.class Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$1;
.super Ljava/lang/Object;
.source "ImagePickerPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;->onImageLoaded(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;

.field final synthetic val$folders:Ljava/util/List;

.field final synthetic val$images:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$1;->this$1:Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;

    iput-object p2, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$1;->val$images:Ljava/util/List;

    iput-object p3, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$1;->val$folders:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$1;->this$1:Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;

    iget-object v0, v0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    invoke-static {v0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->access$000(Lcom/esafirm/imagepicker/features/ImagePickerPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$1;->this$1:Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;

    iget-object v0, v0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    invoke-virtual {v0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->getView()Lcom/esafirm/imagepicker/features/common/MvpView;

    move-result-object v0

    check-cast v0, Lcom/esafirm/imagepicker/features/ImagePickerView;

    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$1;->val$images:Ljava/util/List;

    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$1;->val$folders:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/esafirm/imagepicker/features/ImagePickerView;->showFetchCompleted(Ljava/util/List;Ljava/util/List;)V

    .line 49
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$1;->val$folders:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$1;->val$folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$1;->this$1:Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;

    iget-object v0, v0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    invoke-virtual {v0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->getView()Lcom/esafirm/imagepicker/features/common/MvpView;

    move-result-object v0

    check-cast v0, Lcom/esafirm/imagepicker/features/ImagePickerView;

    invoke-interface {v0}, Lcom/esafirm/imagepicker/features/ImagePickerView;->showEmpty()V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$1;->this$1:Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;

    iget-object v0, v0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    invoke-virtual {v0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->getView()Lcom/esafirm/imagepicker/features/common/MvpView;

    move-result-object v0

    check-cast v0, Lcom/esafirm/imagepicker/features/ImagePickerView;

    invoke-interface {v0, v3}, Lcom/esafirm/imagepicker/features/ImagePickerView;->showLoading(Z)V

    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$1;->val$images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$1;->this$1:Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;

    iget-object v0, v0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    invoke-virtual {v0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->getView()Lcom/esafirm/imagepicker/features/common/MvpView;

    move-result-object v0

    check-cast v0, Lcom/esafirm/imagepicker/features/ImagePickerView;

    invoke-interface {v0}, Lcom/esafirm/imagepicker/features/ImagePickerView;->showEmpty()V

    goto :goto_0

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$1;->this$1:Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;

    iget-object v0, v0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    invoke-virtual {v0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->getView()Lcom/esafirm/imagepicker/features/common/MvpView;

    move-result-object v0

    check-cast v0, Lcom/esafirm/imagepicker/features/ImagePickerView;

    invoke-interface {v0, v3}, Lcom/esafirm/imagepicker/features/ImagePickerView;->showLoading(Z)V

    goto :goto_0
.end method
