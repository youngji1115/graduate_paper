.class public Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FolderPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderViewHolder"
.end annotation


# instance fields
.field private image:Landroid/widget/ImageView;

.field private name:Landroid/widget/TextView;

.field private number:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 84
    sget v0, Lcom/esafirm/imagepicker/R$id;->image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;->image:Landroid/widget/ImageView;

    .line 85
    sget v0, Lcom/esafirm/imagepicker/R$id;->tv_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;->name:Landroid/widget/TextView;

    .line 86
    sget v0, Lcom/esafirm/imagepicker/R$id;->tv_number:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;->number:Landroid/widget/TextView;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;->image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter$FolderViewHolder;->number:Landroid/widget/TextView;

    return-object v0
.end method
