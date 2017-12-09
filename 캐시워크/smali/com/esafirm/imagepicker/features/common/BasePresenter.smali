.class public Lcom/esafirm/imagepicker/features/common/BasePresenter;
.super Ljava/lang/Object;
.source "BasePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/esafirm/imagepicker/features/common/MvpView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private view:Lcom/esafirm/imagepicker/features/common/MvpView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    .local p0, "this":Lcom/esafirm/imagepicker/features/common/BasePresenter;, "Lcom/esafirm/imagepicker/features/common/BasePresenter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachView(Lcom/esafirm/imagepicker/features/common/MvpView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 8
    .local p0, "this":Lcom/esafirm/imagepicker/features/common/BasePresenter;, "Lcom/esafirm/imagepicker/features/common/BasePresenter<TT;>;"
    .local p1, "view":Lcom/esafirm/imagepicker/features/common/MvpView;, "TT;"
    iput-object p1, p0, Lcom/esafirm/imagepicker/features/common/BasePresenter;->view:Lcom/esafirm/imagepicker/features/common/MvpView;

    .line 9
    return-void
.end method

.method public detachView()V
    .locals 1

    .prologue
    .line 16
    .local p0, "this":Lcom/esafirm/imagepicker/features/common/BasePresenter;, "Lcom/esafirm/imagepicker/features/common/BasePresenter<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esafirm/imagepicker/features/common/BasePresenter;->view:Lcom/esafirm/imagepicker/features/common/MvpView;

    .line 17
    return-void
.end method

.method public getView()Lcom/esafirm/imagepicker/features/common/MvpView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/esafirm/imagepicker/features/common/BasePresenter;, "Lcom/esafirm/imagepicker/features/common/BasePresenter<TT;>;"
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/common/BasePresenter;->view:Lcom/esafirm/imagepicker/features/common/MvpView;

    return-object v0
.end method

.method protected isViewAttached()Z
    .locals 1

    .prologue
    .line 20
    .local p0, "this":Lcom/esafirm/imagepicker/features/common/BasePresenter;, "Lcom/esafirm/imagepicker/features/common/BasePresenter<TT;>;"
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/common/BasePresenter;->view:Lcom/esafirm/imagepicker/features/common/MvpView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
