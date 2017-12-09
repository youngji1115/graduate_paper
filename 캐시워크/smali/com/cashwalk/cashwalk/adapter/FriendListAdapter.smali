.class public Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FriendListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;,
        Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Friend;",
            ">;"
        }
    .end annotation
.end field

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

.field private mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$OnItemClickListener;


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
    .line 34
    .local p2, "listItem":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->avatarSize:I

    .line 35
    iput-object p1, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 37
    iput-object p2, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mItemList:Ljava/util/List;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->avatarSize:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->arrayList:Ljava/util/ArrayList;

    .line 41
    iget-object v0, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/String;)Z
    .locals 4
    .param p1, "charText"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 193
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 195
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mItemList:Ljava/util/List;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->notifyDataSetChanged()V

    .line 213
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 215
    const/4 v2, 0x1

    .line 218
    :goto_0
    return v2

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    .line 200
    .local v0, "friend":Lcom/cashwalk/cashwalk/util/network/model/Friend;
    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->realName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 201
    iget-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->realName:Ljava/lang/String;

    .line 206
    .local v1, "name":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 207
    iget-object v3, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 203
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    iget-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->nickname:Ljava/lang/String;

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_2

    .line 218
    .end local v0    # "friend":Lcom/cashwalk/cashwalk/util/network/model/Friend;
    .end local v1    # "name":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->onBindViewHolder(Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    const v4, 0x7f0201d0

    const/16 v5, 0x8

    .line 55
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->rl_default_item:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->rl_default_item:Landroid/widget/RelativeLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 57
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->rl_add_friend:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->rl_add_friend:Landroid/widget/RelativeLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 59
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->btn_cancel_add_friend:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->btn_cancel_add_friend:Landroid/widget/Button;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->btn_recevie_add_friend:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->btn_recevie_add_friend:Landroid/widget/Button;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 64
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    .line 67
    .local v0, "item":Lcom/cashwalk/cashwalk/util/network/model/Friend;
    const-string v1, ""

    .line 69
    .local v1, "profileUrl":Ljava/lang/String;
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->fb_id:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 70
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->profileUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->profileUrl:Ljava/lang/String;

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    iget-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->profileUrl:Ljava/lang/String;

    .line 81
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->profileUrl:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 82
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 83
    invoke-virtual {v2, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 84
    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 85
    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget v3, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->avatarSize:I

    iget v4, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->avatarSize:I

    .line 86
    invoke-virtual {v2, v3, v4}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    .line 88
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->iv_user_profile_img:Landroid/widget/ImageView;

    .line 89
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 101
    :goto_1
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->tv_user_name:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend_status:I

    if-nez v2, :cond_4

    .line 105
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->rl_add_friend:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 106
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->btn_cancel_add_friend:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    :goto_2
    return-void

    .line 74
    :cond_1
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v2

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->profileUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 78
    :cond_2
    iget-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->profileUrl:Ljava/lang/String;

    goto :goto_0

    .line 91
    :cond_3
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 92
    invoke-virtual {v2, v4}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 93
    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 94
    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget v3, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->avatarSize:I

    iget v4, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->avatarSize:I

    .line 95
    invoke-virtual {v2, v3, v4}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    .line 97
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->iv_user_profile_img:Landroid/widget/ImageView;

    .line 98
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 107
    :cond_4
    iget v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend_status:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 109
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->rl_add_friend:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 110
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->btn_cancel_add_friend:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 111
    :cond_5
    iget v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend_status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 113
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->btn_recevie_add_friend:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->rl_add_friend:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 115
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->btn_cancel_add_friend:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 118
    :cond_6
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->rl_add_friend:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 119
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;->btn_cancel_add_friend:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 143
    .local v0, "viewId":I
    packed-switch v0, :pswitch_data_0

    .line 165
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 145
    :pswitch_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 146
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$OnItemClickListener;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mItemList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    invoke-interface {v2, p1, v1}, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;Lcom/cashwalk/cashwalk/util/network/model/Friend;)V

    goto :goto_0

    .line 150
    :pswitch_2
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 151
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$OnItemClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mItemList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    invoke-interface {v2, p1, v3, v1}, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$OnItemClickListener;->onItemAdd(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V

    goto :goto_0

    .line 155
    :pswitch_3
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 156
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$OnItemClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mItemList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    invoke-interface {v2, p1, v3, v1}, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$OnItemClickListener;->onItemAddReceiveFriend(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V

    goto :goto_0

    .line 160
    :pswitch_4
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 161
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$OnItemClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mItemList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    invoke-interface {v2, p1, v3, v1}, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$OnItemClickListener;->onItemCancelRequest(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V

    goto/16 :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x7f100304
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 47
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040058

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$ViewHolder;-><init>(Landroid/view/View;Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$1;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "itemClickListener"    # Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$OnItemClickListener;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/FriendListAdapter$OnItemClickListener;

    .line 130
    return-void
.end method
