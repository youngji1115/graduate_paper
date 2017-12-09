.class Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$1;
.super Ljava/lang/Object;
.source "FolderPickerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;->onBindViewHolder(Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;

.field final synthetic val$folder:Lcom/esafirm/imagepicker/model/Folder;


# direct methods
.method constructor <init>(Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;Lcom/esafirm/imagepicker/model/Folder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$1;->this$0:Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;

    iput-object p2, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$1;->val$folder:Lcom/esafirm/imagepicker/model/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$1;->this$0:Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;

    invoke-static {v0}, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;->access$300(Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;)Lcom/esafirm/imagepicker/listeners/OnFolderClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$1;->this$0:Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;

    invoke-static {v0}, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;->access$300(Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;)Lcom/esafirm/imagepicker/listeners/OnFolderClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$1;->val$folder:Lcom/esafirm/imagepicker/model/Folder;

    invoke-interface {v0, v1}, Lcom/esafirm/imagepicker/listeners/OnFolderClickListener;->onFolderClick(Lcom/esafirm/imagepicker/model/Folder;)V

    .line 60
    :cond_0
    return-void
.end method
