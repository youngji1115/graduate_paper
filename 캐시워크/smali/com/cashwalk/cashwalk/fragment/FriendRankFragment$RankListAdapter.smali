.class Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FriendRankFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RankListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/FriendRank;",
            ">;"
        }
    .end annotation
.end field

.field private dayOfWeek:I

.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;
    .param p2, "list"    # Ljava/util/ArrayList;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 451
    iput-object p2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->data:Ljava/util/ArrayList;

    .line 452
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->data:Ljava/util/ArrayList;

    new-instance v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$1;-><init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 458
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->dayOfWeek:I

    .line 459
    iget v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->dayOfWeek:I

    if-gtz v0, :cond_0

    .line 460
    const/4 v0, 0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->dayOfWeek:I

    .line 462
    :cond_0
    return-void
.end method

.method static synthetic access$1400(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->data:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 469
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 474
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 477
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 482
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const v5, 0x7f020221

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 489
    if-nez p2, :cond_0

    .line 490
    new-instance v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;

    invoke-direct {v1, p0, v4}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;-><init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$1;)V

    .line 491
    .local v1, "vh":Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040059

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 493
    const v2, 0x7f1001f1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->nickname:Landroid/widget/TextView;

    .line 494
    const v2, 0x7f1001f0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->profile:Landroid/widget/ImageView;

    .line 495
    const v2, 0x7f10030e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->crown:Landroid/widget/ImageView;

    .line 496
    const v2, 0x7f10030d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->profile_line:Landroid/widget/ImageView;

    .line 497
    const v2, 0x7f10030f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->steps:Landroid/widget/TextView;

    .line 498
    const v2, 0x7f100215

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->rank:Landroid/widget/TextView;

    .line 499
    const v2, 0x7f100310

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->average:Landroid/widget/TextView;

    .line 500
    const v2, 0x7f10030a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->btn_cancel_add_friend:Landroid/widget/Button;

    .line 501
    const v2, 0x7f100305

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->rl_default_item:Landroid/widget/RelativeLayout;

    .line 502
    const v2, 0x7f100311

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->rl_recommend_count_item:Landroid/widget/RelativeLayout;

    .line 503
    const v2, 0x7f100312

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->tv_recommend_count:Landroid/widget/TextView;

    .line 505
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 510
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    .line 512
    .local v0, "item":Lcom/cashwalk/cashwalk/util/network/model/FriendRank;
    iget v2, v0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->recommendCount:I

    if-lez v2, :cond_1

    .line 514
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->rl_default_item:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 515
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->rl_recommend_count_item:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 517
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->tv_recommend_count:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\uc9c0\uae08 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->recommendCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\uba85\uc758 \uce5c\uad6c\uac00 \uae30\ub2e4\ub9ac\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n\ucd94\ucc9c\uce5c\uad6c\ub97c \ud655\uc778\ud574\ubcf4\uc138\uc694!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->rl_recommend_count_item:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$2;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$2;-><init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 652
    :goto_1
    return-object p2

    .line 507
    .end local v0    # "item":Lcom/cashwalk/cashwalk/util/network/model/FriendRank;
    .end local v1    # "vh":Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;

    .restart local v1    # "vh":Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;
    goto :goto_0

    .line 530
    .restart local v0    # "item":Lcom/cashwalk/cashwalk/util/network/model/FriendRank;
    :cond_1
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->rl_default_item:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 531
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->rl_recommend_count_item:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 533
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->profileUrl:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->profileUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 534
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->profileUrl:Ljava/lang/String;

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 535
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->profileUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->profile:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 543
    :goto_2
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->nickname:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget v2, v0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->status:I

    if-eqz v2, :cond_4

    .line 546
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->btn_cancel_add_friend:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 547
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->steps:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->steps:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    const v4, 0x7f0902c3

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    iget v5, v0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->step:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    :goto_3
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->average:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 555
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->rank:Landroid/widget/TextView;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    packed-switch p1, :pswitch_data_0

    .line 579
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->crown:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 580
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->profile_line:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 583
    :goto_4
    new-instance v2, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$3;

    invoke-direct {v2, p0, v0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$3;-><init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;Lcom/cashwalk/cashwalk/util/network/model/FriendRank;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->btn_cancel_add_friend:Landroid/widget/Button;

    new-instance v3, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;

    invoke-direct {v3, p0, v0, p1}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$4;-><init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;Lcom/cashwalk/cashwalk/util/network/model/FriendRank;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 537
    :cond_2
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v3

    iget-object v4, v0, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->profileUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->profile:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_2

    .line 540
    :cond_3
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->profile:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_2

    .line 550
    :cond_4
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->btn_cancel_add_friend:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 551
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->steps:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 561
    :pswitch_0
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->crown:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 562
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->profile_line:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 563
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->crown:Landroid/widget/ImageView;

    const v3, 0x7f020183

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 564
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->profile_line:Landroid/widget/ImageView;

    const v3, 0x7f020225

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 567
    :pswitch_1
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->crown:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->profile_line:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 569
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->crown:Landroid/widget/ImageView;

    const v3, 0x7f020184

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 570
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->profile_line:Landroid/widget/ImageView;

    const v3, 0x7f020226

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 573
    :pswitch_2
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->crown:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 574
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->profile_line:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 575
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->crown:Landroid/widget/ImageView;

    const v3, 0x7f020182

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 576
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->profile_line:Landroid/widget/ImageView;

    const v3, 0x7f020224

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
