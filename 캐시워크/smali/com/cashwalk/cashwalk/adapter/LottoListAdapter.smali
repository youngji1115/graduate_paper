.class public Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "LottoListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;,
        Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;",
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
            "Lcom/cashwalk/cashwalk/util/network/model/Lotto;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Lotto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "listItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Lotto;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 35
    iput-object p2, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;->mItemList:Ljava/util/ArrayList;

    .line 36
    iget-object v0, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;->mItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$1;-><init>(Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;->onBindViewHolder(Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v5, 0x7f020221

    .line 54
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;->li_default_item:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;->li_default_item:Landroid/widget/LinearLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 57
    iget-object v3, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    .line 59
    .local v0, "item":Lcom/cashwalk/cashwalk/util/network/model/Lotto;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    iget-object v4, v0, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->imgUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    const v4, 0x7f0201c1

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p1, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 60
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;->price:Landroid/widget/TextView;

    iget v4, v0, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->point:I

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->winnerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 65
    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->winnerList:Ljava/util/ArrayList;

    new-instance v4, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$2;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$2;-><init>(Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 71
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;->winnerLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 73
    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->winnerList:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->winnerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/util/network/model/User;

    .line 74
    .local v2, "winner":Lcom/cashwalk/cashwalk/util/network/model/User;
    iget-object v1, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    .line 75
    .local v1, "path":Ljava/lang/String;
    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    iget-object v3, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    new-instance v4, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v4}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p1, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;->winnerProfile:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 80
    :goto_0
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;->winnerText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0901f0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%s"

    iget-object v6, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "winner":Lcom/cashwalk/cashwalk/util/network/model/User;
    :goto_1
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;->people:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0901e6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%s"

    iget v6, v0, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->pariticipants:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    return-void

    .line 78
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v2    # "winner":Lcom/cashwalk/cashwalk/util/network/model/User;
    :cond_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    new-instance v4, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v4}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p1, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;->winnerProfile:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 83
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "winner":Lcom/cashwalk/cashwalk/util/network/model/User;
    :cond_1
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;->winnerLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 106
    .local v0, "viewId":I
    packed-switch v0, :pswitch_data_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 109
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$OnItemClickListener;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    invoke-interface {v2, p1, v1}, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;Lcom/cashwalk/cashwalk/util/network/model/Lotto;)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x7f100315
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 46
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04005a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;-><init>(Landroid/view/View;Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$1;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "itemClickListener"    # Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$OnItemClickListener;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$OnItemClickListener;

    .line 96
    return-void
.end method
