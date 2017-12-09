.class public Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TimelineListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;,
        Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;",
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
            "Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$OnItemClickListener;

.field private pref:Landroid/content/SharedPreferences;

.field private urlCache:Lcom/cashwalk/cashwalk/util/ImageUrlCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;>;"
    const/4 v3, 0x0

    .line 53
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 56
    iput-object p2, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->mItemList:Ljava/util/ArrayList;

    .line 58
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->urlCache:Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    .line 61
    new-instance v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;-><init>()V

    .line 62
    .local v0, "noticeItem":Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->isNotice:Z

    .line 63
    const v1, 0x7f0902c1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->body:Ljava/lang/String;

    .line 64
    const-string/jumbo v1, "\uce90\uc2dc\uc6cc\ud06c\uc5d0\uc11c \uc54c\ub824\ub4dc\ub9bd\ub2c8\ub2e4."

    iput-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->title:Ljava/lang/String;

    .line 65
    iput v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->hitCount:I

    .line 66
    iget-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    const-string/jumbo v2, "\uce90\uc2dc\uc6cc\ud06c \uc6b4\uc601\uc790"

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    .line 67
    iget-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    const-string v2, ""

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    .line 68
    iput-boolean v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->isLike:Z

    .line 69
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 71
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->pref:Landroid/content/SharedPreferences;

    .line 73
    return-void
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->onBindViewHolder(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;I)V
    .locals 10
    .param p1, "holder"    # Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v6, 0x7f020221

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 86
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->rl_base_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->rl_base_layout:Landroid/widget/RelativeLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 88
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_body_text_msg:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_body_text_msg:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 90
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_body_text_title:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_body_text_title:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 93
    iget-object v3, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    .line 95
    .local v0, "contentItem":Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    iget-boolean v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->isNotice:Z

    if-eqz v3, :cond_0

    .line 96
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->li_cashwalk_notice_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->rl_content_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 99
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->rl_close_notice:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$1;-><init>(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_notice_body_text_title:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_notice_body_text_msg:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_notice_profile_nickname:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_notice_item_hit_count:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\uc870\ud68c\uc218 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->hitCount:I

    invoke-static {v5}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\ud68c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_notice_item_hit_count:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v3, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    const v4, 0x7f0201f4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->iv_notice_profile_image:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 290
    :goto_0
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_hit_count:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    return-void

    .line 123
    :cond_0
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->li_cashwalk_notice_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->rl_content_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 127
    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 128
    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 129
    iget-object v3, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    iget-object v4, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    new-instance v4, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v4}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->iv_profile_image:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 135
    :cond_1
    :goto_1
    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->imgUrl:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->imgUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 136
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->rl_image_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 137
    iget-object v3, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->urlCache:Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    iget-object v5, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->imgUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->iv_body_image:Lcom/cashwalk/cashwalk/util/SquareImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 139
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->iv_body_image:Lcom/cashwalk/cashwalk/util/SquareImageView;

    new-instance v4, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$2;

    invoke-direct {v4, p0, v0}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$2;-><init>(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;)V

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/util/SquareImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    :goto_2
    const-string v1, ""

    .line 153
    .local v1, "nickname":Ljava/lang/String;
    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 154
    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v1, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    .line 156
    :cond_2
    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x15

    if-le v3, v4, :cond_3

    .line 157
    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    const/16 v4, 0x14

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 159
    :cond_3
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_profile_nickname:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_body_text_msg:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_item_date:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->mContext:Landroid/content/Context;

    new-instance v5, Lorg/joda/time/DateTime;

    iget-object v6, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->dateTime:Lorg/joda/time/DateTime;

    invoke-direct {v5, v6}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    invoke-static {v4, v5}, Lcom/cashwalk/cashwalk/util/Utils;->getAgoString(Landroid/content/Context;Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->title:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->title:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 165
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_body_text_title:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :goto_3
    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->address:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 171
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->rl_location_info:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 172
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_location_text:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :goto_4
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_like_comment_count:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0901a6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    iget v7, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->commentCount:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->iv_profile_image:Landroid/widget/ImageView;

    new-instance v4, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$3;

    invoke-direct {v4, p0, p2, v0}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$3;-><init>(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;ILcom/cashwalk/cashwalk/util/network/model/TimelineItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    move v2, p2

    .line 194
    .local v2, "tempPostion":I
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->rl_like_btn:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;

    invoke-direct {v4, p0, v0, v2, p1}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;-><init>(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;ILcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->rl_report_btn:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;

    invoke-direct {v4, p0, v0}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;-><init>(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-boolean v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->isLike:Z

    if-eqz v3, :cond_8

    .line 275
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->iv_like_icon:Landroid/widget/ImageView;

    const v4, 0x7f020150

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    :goto_5
    iget v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->hitCount:I

    if-lez v3, :cond_9

    .line 281
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_hit_count:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_hit_count:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\uc870\ud68c\uc218 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->hitCount:I

    invoke-static {v5}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\ud68c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 131
    .end local v1    # "nickname":Ljava/lang/String;
    .end local v2    # "tempPostion":I
    :cond_4
    iget-object v3, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->urlCache:Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    iget-object v5, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    new-instance v4, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v4}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->iv_profile_image:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 147
    :cond_5
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->rl_image_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 167
    .restart local v1    # "nickname":Ljava/lang/String;
    :cond_6
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_body_text_title:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 174
    :cond_7
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->rl_location_info:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 277
    .restart local v2    # "tempPostion":I
    :cond_8
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->iv_like_icon:Landroid/widget/ImageView;

    const v4, 0x7f02014f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 284
    :cond_9
    iget-object v3, p1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_hit_count:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 311
    .local v0, "viewId":I
    sparse-switch v0, :sswitch_data_0

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 315
    :sswitch_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 316
    iget-object v3, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$OnItemClickListener;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, p1, v1, v2}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;I)V

    goto :goto_0

    .line 311
    :sswitch_data_0
    .sparse-switch
        0x7f10025d -> :sswitch_0
        0x7f10025e -> :sswitch_0
        0x7f10028f -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 78
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04005f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;-><init>(Landroid/view/View;Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$1;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "itemClickListener"    # Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$OnItemClickListener;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->mOnItemClickListener:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$OnItemClickListener;

    .line 301
    return-void
.end method
