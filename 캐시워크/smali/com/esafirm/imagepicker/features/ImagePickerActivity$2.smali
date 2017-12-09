.class Lcom/esafirm/imagepicker/features/ImagePickerActivity$2;
.super Ljava/lang/Object;
.source "ImagePickerActivity.java"

# interfaces
.implements Lcom/esafirm/imagepicker/listeners/OnFolderClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esafirm/imagepicker/features/ImagePickerActivity;->setupComponents(Lcom/esafirm/imagepicker/features/ImagePickerConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/esafirm/imagepicker/features/ImagePickerActivity;


# direct methods
.method constructor <init>(Lcom/esafirm/imagepicker/features/ImagePickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity$2;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderClick(Lcom/esafirm/imagepicker/model/Folder;)V
    .locals 2
    .param p1, "bucket"    # Lcom/esafirm/imagepicker/model/Folder;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity$2;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity$2;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    invoke-static {v1}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->access$200(Lcom/esafirm/imagepicker/features/ImagePickerActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->access$102(Lcom/esafirm/imagepicker/features/ImagePickerActivity;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 157
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity$2;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    invoke-virtual {p1}, Lcom/esafirm/imagepicker/model/Folder;->getImages()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->access$300(Lcom/esafirm/imagepicker/features/ImagePickerActivity;Ljava/util/List;)V

    .line 158
    return-void
.end method
