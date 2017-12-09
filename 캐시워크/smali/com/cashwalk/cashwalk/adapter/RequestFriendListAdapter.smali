.class public Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RequestFriendListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$ViewHolder;,
        Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$ViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private avatarSize:I

.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "listItem":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->avatarSize:I

    .line 30
    iput-object p1, p0, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 32
    iput-object p2, p0, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->mItemList:Ljava/util/List;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->avatarSize:I

    .line 35
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->onBindViewHolder(Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v4, 0x7f0201d0

    .line 48
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$ViewHolder;->rl_default_item:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$ViewHolder;->rl_default_item:Landroid/widget/RelativeLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 50
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$ViewHolder;->rl_add_friend:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$ViewHolder;->rl_add_friend:Landroid/widget/RelativeLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$ViewHolder;->rl_delete_friend:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$ViewHolder;->rl_delete_friend:Landroid/widget/RelativeLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 55
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    .line 58
    .local v0, "item":Lcom/cashwalk/cashwalk/util/network/model/Friend;
    const-string v1, ""

    .line 59
    .local v1, "profileUrl":Ljava/lang/String;
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->fb_id:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 60
    iget-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->profileUrl:Ljava/lang/String;

    .line 64
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 65
    invoke-virtual {v2, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 66
    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 67
    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget v3, p0, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->avatarSize:I

    iget v4, p0, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->avatarSize:I

    .line 68
    invoke-virtual {v2, v3, v4}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    .line 70
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$ViewHolder;->iv_user_profile_img:Landroid/widget/ImageView;

    .line 71
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 73
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$ViewHolder;->tv_user_name:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void

    .line 62
    :cond_0
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v2

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->profileUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 96
    .local v0, "viewId":I
    sparse-switch v0, :sswitch_data_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 98
    :sswitch_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 99
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$OnItemClickListener;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->mItemList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    invoke-interface {v2, p1, v1}, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;Lcom/cashwalk/cashwalk/util/network/model/Friend;)V

    goto :goto_0

    .line 103
    :sswitch_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 104
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$OnItemClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->mItemList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    invoke-interface {v2, p1, v3, v1}, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$OnItemClickListener;->onItemAdd(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V

    goto :goto_0

    .line 108
    :sswitch_2
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 109
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$OnItemClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->mItemList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    invoke-interface {v2, p1, v3, v1}, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$OnItemClickListener;->onItemDelete(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V

    goto :goto_0

    .line 96
    :sswitch_data_0
    .sparse-switch
        0x7f100304 -> :sswitch_1
        0x7f100305 -> :sswitch_0
        0x7f100319 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 40
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04005d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$ViewHolder;-><init>(Landroid/view/View;Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$1;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "itemClickListener"    # Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$OnItemClickListener;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter$OnItemClickListener;

    .line 84
    return-void
.end method
