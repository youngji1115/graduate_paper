.class public Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecommendFriendListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;,
        Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;",
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

.field private mIsConnectIcon:Z

.field private mIsDeleteBtn:Z

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

.field private mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZZ)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p3, "isDeleteBtn"    # Z
    .param p4, "isConnectIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Friend;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p2, "listItem":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    const/4 v1, 0x1

    .line 36
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->avatarSize:I

    .line 31
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mIsDeleteBtn:Z

    .line 32
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mIsConnectIcon:Z

    .line 37
    iput-object p1, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mContext:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 39
    iput-object p2, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mItemList:Ljava/util/List;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->avatarSize:I

    .line 41
    iput-boolean p3, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mIsDeleteBtn:Z

    .line 42
    iput-boolean p4, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mIsConnectIcon:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->arrayList:Ljava/util/ArrayList;

    .line 45
    iget-object v0, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/String;)Z
    .locals 4
    .param p1, "charText"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 222
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 224
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mItemList:Ljava/util/List;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->notifyDataSetChanged()V

    .line 244
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_5

    .line 246
    const/4 v2, 0x1

    .line 249
    :goto_0
    return v2

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->arrayList:Ljava/util/ArrayList;

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

    .line 229
    .local v0, "friend":Lcom/cashwalk/cashwalk/util/network/model/Friend;
    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->realName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 230
    iget-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->realName:Ljava/lang/String;

    .line 237
    .local v1, "name":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 238
    iget-object v3, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 231
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->nickname:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 232
    iget-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->nickname:Ljava/lang/String;

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_2

    .line 234
    .end local v1    # "name":Ljava/lang/String;
    :cond_4
    const-string v1, ""

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_2

    .line 249
    .end local v0    # "friend":Lcom/cashwalk/cashwalk/util/network/model/Friend;
    .end local v1    # "name":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->onBindViewHolder(Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v4, 0x7f0201d0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 59
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->rl_default_item:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->rl_default_item:Landroid/widget/RelativeLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->rl_add_friend:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->rl_add_friend:Landroid/widget/RelativeLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 63
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->rl_delete_friend:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->rl_delete_friend:Landroid/widget/RelativeLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 65
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->btn_cancel_add_friend:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->btn_cancel_add_friend:Landroid/widget/Button;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 68
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    .line 71
    .local v0, "item":Lcom/cashwalk/cashwalk/util/network/model/Friend;
    const-string v1, ""

    .line 73
    .local v1, "profileUrl":Ljava/lang/String;
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->fb_id:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 74
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->profileUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->profileUrl:Ljava/lang/String;

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    iget-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->profileUrl:Ljava/lang/String;

    .line 85
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->profileUrl:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 86
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 87
    invoke-virtual {v2, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 88
    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 89
    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget v3, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->avatarSize:I

    iget v4, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->avatarSize:I

    .line 90
    invoke-virtual {v2, v3, v4}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    .line 92
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->iv_user_profile_img:Landroid/widget/ImageView;

    .line 93
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 105
    :goto_1
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->fb_id:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 106
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->tv_user_name:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-boolean v2, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mIsConnectIcon:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->isConnectIcon:Z

    if-eqz v2, :cond_5

    .line 108
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->iv_recommend_type:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->iv_recommend_type:Landroid/widget/ImageView;

    const v3, 0x7f02013c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    :goto_2
    iget-boolean v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->isFriend:Z

    if-eqz v2, :cond_9

    .line 130
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->rl_add_friend:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 135
    :goto_3
    iget-boolean v2, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mIsDeleteBtn:Z

    if-eqz v2, :cond_a

    .line 136
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->rl_delete_friend:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 141
    :goto_4
    iget v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->status:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    .line 143
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->rl_add_friend:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 144
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->btn_cancel_add_friend:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    iget-boolean v2, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mIsDeleteBtn:Z

    if-eqz v2, :cond_1

    .line 147
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->rl_delete_friend:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 155
    :cond_1
    :goto_5
    return-void

    .line 78
    :cond_2
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v2

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->profileUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 82
    :cond_3
    iget-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->profileUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 95
    :cond_4
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 96
    invoke-virtual {v2, v4}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 97
    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 98
    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget v3, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->avatarSize:I

    iget v4, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->avatarSize:I

    .line 99
    invoke-virtual {v2, v3, v4}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    .line 101
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->iv_user_profile_img:Landroid/widget/ImageView;

    .line 102
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 111
    :cond_5
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->iv_recommend_type:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 115
    :cond_6
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->realName:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 116
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->tv_user_name:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->realName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_6
    iget-boolean v2, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mIsConnectIcon:Z

    if-eqz v2, :cond_8

    iget-boolean v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->isConnectIcon:Z

    if-eqz v2, :cond_8

    .line 122
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->iv_recommend_type:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->iv_recommend_type:Landroid/widget/ImageView;

    const v3, 0x7f02014c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 118
    :cond_7
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->tv_user_name:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 125
    :cond_8
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->iv_recommend_type:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 132
    :cond_9
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->rl_add_friend:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 138
    :cond_a
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->rl_delete_friend:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 149
    :cond_b
    iget v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Friend;->status:I

    if-nez v2, :cond_1

    .line 151
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->rl_add_friend:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 152
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->btn_cancel_add_friend:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 153
    iget-object v2, p1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;->rl_delete_friend:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 176
    .local v0, "viewId":I
    sparse-switch v0, :sswitch_data_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 178
    :sswitch_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 179
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$OnItemClickListener;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mItemList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    invoke-interface {v2, p1, v1}, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;Lcom/cashwalk/cashwalk/util/network/model/Friend;)V

    goto :goto_0

    .line 183
    :sswitch_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 184
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$OnItemClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mItemList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    invoke-interface {v2, p1, v3, v1}, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$OnItemClickListener;->onItemAdd(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V

    goto :goto_0

    .line 189
    :sswitch_2
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 190
    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$OnItemClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mItemList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    invoke-interface {v2, p1, v3, v1}, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$OnItemClickListener;->onItemDelete(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V

    goto :goto_0

    .line 176
    :sswitch_data_0
    .sparse-switch
        0x7f100304 -> :sswitch_1
        0x7f100305 -> :sswitch_0
        0x7f10030a -> :sswitch_2
        0x7f100319 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 51
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04005c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$ViewHolder;-><init>(Landroid/view/View;Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$1;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "itemClickListener"    # Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$OnItemClickListener;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$OnItemClickListener;

    .line 164
    return-void
.end method
