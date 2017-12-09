.class public Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ImagePickerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageViewHolder"
.end annotation


# instance fields
.field private alphaView:Landroid/view/View;

.field private imageView:Landroid/widget/ImageView;

.field private final itemClickListener:Lcom/esafirm/imagepicker/listeners/OnImageClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/esafirm/imagepicker/listeners/OnImageClickListener;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "itemClickListener"    # Lcom/esafirm/imagepicker/listeners/OnImageClickListener;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 126
    sget v0, Lcom/esafirm/imagepicker/R$id;->image_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;->imageView:Landroid/widget/ImageView;

    .line 127
    sget v0, Lcom/esafirm/imagepicker/R$id;->view_alpha:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;->alphaView:Landroid/view/View;

    .line 128
    iput-object p2, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;->itemClickListener:Lcom/esafirm/imagepicker/listeners/OnImageClickListener;

    .line 129
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;->alphaView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 135
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;->itemClickListener:Lcom/esafirm/imagepicker/listeners/OnImageClickListener;

    invoke-virtual {p0}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter$ImageViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/esafirm/imagepicker/listeners/OnImageClickListener;->onClick(Landroid/view/View;I)V

    .line 136
    return-void
.end method
