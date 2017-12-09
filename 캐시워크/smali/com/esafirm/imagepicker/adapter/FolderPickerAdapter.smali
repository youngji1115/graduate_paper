.class public Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FolderPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private final folderClickListener:Lcom/esafirm/imagepicker/listeners/OnFolderClickListener;

.field private folders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/esafirm/imagepicker/model/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/esafirm/imagepicker/listeners/OnFolderClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folderClickListener"    # Lcom/esafirm/imagepicker/listeners/OnFolderClickListener;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;->folderClickListener:Lcom/esafirm/imagepicker/listeners/OnFolderClickListener;

    .line 32
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 33
    return-void
.end method

.method static synthetic access$300(Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;)Lcom/esafirm/imagepicker/listeners/OnFolderClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;->folderClickListener:Lcom/esafirm/imagepicker/listeners/OnFolderClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;->onBindViewHolder(Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 44
    iget-object v1, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;->folders:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esafirm/imagepicker/model/Folder;

    .line 46
    .local v0, "folder":Lcom/esafirm/imagepicker/model/Folder;
    iget-object v1, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 47
    invoke-virtual {v0}, Lcom/esafirm/imagepicker/model/Folder;->getImages()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/esafirm/imagepicker/model/Image;

    invoke-virtual {v1}, Lcom/esafirm/imagepicker/model/Image;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget v2, Lcom/esafirm/imagepicker/R$drawable;->folder_placeholder:I

    .line 48
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget v2, Lcom/esafirm/imagepicker/R$drawable;->folder_placeholder:I

    .line 49
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 50
    invoke-static {p1}, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;->access$000(Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 52
    invoke-static {p1}, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;->access$100(Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;->folders:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/esafirm/imagepicker/model/Folder;

    invoke-virtual {v1}, Lcom/esafirm/imagepicker/model/Folder;->getFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-static {p1}, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;->access$200(Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;->folders:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/esafirm/imagepicker/model/Folder;

    invoke-virtual {v1}, Lcom/esafirm/imagepicker/model/Folder;->getImages()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p1, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$1;-><init>(Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;Lcom/esafirm/imagepicker/model/Folder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 37
    iget-object v1, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/esafirm/imagepicker/R$layout;->ef_imagepicker_item_folder:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;

    invoke-direct {v1, v0}, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/esafirm/imagepicker/model/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/esafirm/imagepicker/model/Folder;>;"
    iput-object p1, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;->folders:Ljava/util/List;

    .line 67
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;->notifyDataSetChanged()V

    .line 68
    return-void
.end method
