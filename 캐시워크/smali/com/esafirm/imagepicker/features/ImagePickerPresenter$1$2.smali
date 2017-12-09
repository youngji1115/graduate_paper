.class Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$2;
.super Ljava/lang/Object;
.source "ImagePickerPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;->onFailed(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$2;->this$1:Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;

    iput-object p2, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$2;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$2;->this$1:Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;

    iget-object v0, v0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    invoke-static {v0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->access$200(Lcom/esafirm/imagepicker/features/ImagePickerPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$2;->this$1:Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;

    iget-object v0, v0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    invoke-virtual {v0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->getView()Lcom/esafirm/imagepicker/features/common/MvpView;

    move-result-object v0

    check-cast v0, Lcom/esafirm/imagepicker/features/ImagePickerView;

    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1$2;->val$throwable:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerView;->showError(Ljava/lang/Throwable;)V

    .line 75
    :cond_0
    return-void
.end method
