.class public Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ShopListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$ViewHolder;,
        Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$ViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "listItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;->mContext:Landroid/content/Context;

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 29
    iput-object p2, p0, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;->mItemList:Ljava/util/ArrayList;

    .line 31
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;->onBindViewHolder(Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 44
    iget-object v1, p1, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$ViewHolder;->li_default_item:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v1, p1, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$ViewHolder;->li_default_item:Landroid/widget/LinearLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;

    .line 49
    .local v0, "item":Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    const v2, 0x7f0201c0

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 50
    iget-object v1, p1, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 70
    .local v0, "viewId":I
    packed-switch v0, :pswitch_data_0

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 73
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$OnItemClickListener;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;

    invoke-interface {v2, p1, v1}, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x7f100315
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 36
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04005e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$ViewHolder;-><init>(Landroid/view/View;Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$1;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "itemClickListener"    # Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$OnItemClickListener;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cashwalk/cashwalk/adapter/ShopListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/ShopListAdapter$OnItemClickListener;

    .line 60
    return-void
.end method
