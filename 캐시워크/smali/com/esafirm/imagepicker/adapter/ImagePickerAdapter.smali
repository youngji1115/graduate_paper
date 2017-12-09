.class public Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ImagePickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/esafirm/imagepicker/model/Image;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private itemClickListener:Lcom/esafirm/imagepicker/listeners/OnImageClickListener;

.field private selectedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/esafirm/imagepicker/model/Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/esafirm/imagepicker/listeners/OnImageClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "itemClickListener"    # Lcom/esafirm/imagepicker/listeners/OnImageClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/esafirm/imagepicker/model/Image;",
            ">;",
            "Lcom/esafirm/imagepicker/listeners/OnImageClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "selectedImages":Ljava/util/List;, "Ljava/util/List<Lcom/esafirm/imagepicker/model/Image;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->images:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->selectedImages:Ljava/util/List;

    .line 32
    iput-object p3, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->itemClickListener:Lcom/esafirm/imagepicker/listeners/OnImageClickListener;

    .line 33
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 34
    return-void
.end method

.method private isSelected(Lcom/esafirm/imagepicker/model/Image;)Z
    .locals 4
    .param p1, "image"    # Lcom/esafirm/imagepicker/model/Image;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->selectedImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esafirm/imagepicker/model/Image;

    .line 65
    .local v0, "selectedImage":Lcom/esafirm/imagepicker/model/Image;
    invoke-virtual {v0}, Lcom/esafirm/imagepicker/model/Image;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/esafirm/imagepicker/model/Image;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    const/4 v1, 0x1

    .line 70
    .end local v0    # "selectedImage":Lcom/esafirm/imagepicker/model/Image;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .locals 2
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
    .line 85
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lcom/esafirm/imagepicker/model/Image;>;"
    iget-object v1, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 86
    .local v0, "startIndex":I
    iget-object v1, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->images:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 87
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->notifyItemRangeInserted(II)V

    .line 88
    return-void
.end method

.method public addSelected(Lcom/esafirm/imagepicker/model/Image;)V
    .locals 1
    .param p1, "image"    # Lcom/esafirm/imagepicker/model/Image;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->selectedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->notifyItemChanged(I)V

    .line 93
    return-void
.end method

.method public getItem(I)Lcom/esafirm/imagepicker/model/Image;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esafirm/imagepicker/model/Image;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/esafirm/imagepicker/model/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->selectedImages:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->onBindViewHolder(Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;I)V
    .locals 4
    .param p1, "viewHolder"    # Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 45
    iget-object v1, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->images:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esafirm/imagepicker/model/Image;

    .line 47
    .local v0, "image":Lcom/esafirm/imagepicker/model/Image;
    iget-object v1, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 48
    invoke-virtual {v0}, Lcom/esafirm/imagepicker/model/Image;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget v2, Lcom/esafirm/imagepicker/R$drawable;->image_placeholder:I

    .line 49
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget v2, Lcom/esafirm/imagepicker/R$drawable;->image_placeholder:I

    .line 50
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 51
    invoke-static {p1}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;->access$000(Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 53
    invoke-direct {p0, v0}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->isSelected(Lcom/esafirm/imagepicker/model/Image;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {p1}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;->access$100(Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 55
    iget-object v1, p1, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->context:Landroid/content/Context;

    sget v3, Lcom/esafirm/imagepicker/R$drawable;->ic_done_white:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 61
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {p1}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;->access$100(Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 58
    iget-object v1, p1, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 38
    iget-object v1, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/esafirm/imagepicker/R$layout;->ef_imagepicker_item_image:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;

    iget-object v2, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->itemClickListener:Lcom/esafirm/imagepicker/listeners/OnImageClickListener;

    invoke-direct {v1, v0, v2}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;-><init>(Landroid/view/View;Lcom/esafirm/imagepicker/listeners/OnImageClickListener;)V

    return-object v1
.end method

.method public removeAllSelectedSingleClick()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->selectedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->notifyDataSetChanged()V

    .line 108
    return-void
.end method

.method public removeSelectedImage(Lcom/esafirm/imagepicker/model/Image;)V
    .locals 1
    .param p1, "image"    # Lcom/esafirm/imagepicker/model/Image;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->selectedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->notifyItemChanged(I)V

    .line 98
    return-void
.end method

.method public removeSelectedPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "clickPosition"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->selectedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 102
    invoke-virtual {p0, p2}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->notifyItemChanged(I)V

    .line 103
    return-void
.end method

.method public setData(Ljava/util/List;)V
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
    .line 80
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lcom/esafirm/imagepicker/model/Image;>;"
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    return-void
.end method
