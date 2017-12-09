.class Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;
.super Landroid/widget/BaseAdapter;
.source "StepBetRankFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RankListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Rank;",
            ">;"
        }
    .end annotation
.end field

.field private dayOfWeek:I

.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;
    .param p2, "list"    # Ljava/util/ArrayList;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 243
    iput-object p2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->data:Ljava/util/ArrayList;

    .line 244
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->data:Ljava/util/ArrayList;

    new-instance v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$1;-><init>(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 254
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->dayOfWeek:I

    .line 255
    iget v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->dayOfWeek:I

    if-gtz v0, :cond_0

    .line 256
    const/4 v0, 0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->dayOfWeek:I

    .line 258
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 265
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
    .line 270
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 273
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
    .line 278
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const v6, 0x7f0902c3

    const v5, 0x7f020221

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 285
    if-nez p2, :cond_0

    .line 286
    new-instance v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;

    invoke-direct {v1, p0, v4}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;-><init>(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$1;)V

    .line 287
    .local v1, "vh":Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400b3

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 289
    const v2, 0x7f1001f1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->nickname:Landroid/widget/TextView;

    .line 290
    const v2, 0x7f1001f0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->profile:Landroid/widget/ImageView;

    .line 291
    const v2, 0x7f10030e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->crown:Landroid/widget/ImageView;

    .line 292
    const v2, 0x7f10030d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->profile_line:Landroid/widget/ImageView;

    .line 293
    const v2, 0x7f10030f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->steps:Landroid/widget/TextView;

    .line 294
    const v2, 0x7f100215

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->rank:Landroid/widget/TextView;

    .line 295
    const v2, 0x7f100310

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->average:Landroid/widget/TextView;

    .line 297
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 302
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/network/model/Rank;

    .line 304
    .local v0, "item":Lcom/cashwalk/cashwalk/util/network/model/Rank;
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Rank;->profileUrl:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Rank;->profileUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 305
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Rank;->profileUrl:Ljava/lang/String;

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Rank;->profileUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->profile:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 314
    :goto_1
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->nickname:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/Rank;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 316
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->steps:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-virtual {v3, v6}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    iget v5, v0, Lcom/cashwalk/cashwalk/util/network/model/Rank;->steps:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->average:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    :goto_2
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->rank:Landroid/widget/TextView;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    packed-switch p1, :pswitch_data_0

    .line 346
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->crown:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->profile_line:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    :goto_3
    new-instance v2, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$2;-><init>(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;Lcom/cashwalk/cashwalk/util/network/model/Rank;I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    return-object p2

    .line 299
    .end local v0    # "item":Lcom/cashwalk/cashwalk/util/network/model/Rank;
    .end local v1    # "vh":Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;

    .restart local v1    # "vh":Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;
    goto/16 :goto_0

    .line 308
    .restart local v0    # "item":Lcom/cashwalk/cashwalk/util/network/model/Rank;
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v3

    iget-object v4, v0, Lcom/cashwalk/cashwalk/util/network/model/Rank;->profileUrl:Ljava/lang/String;

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

    iget-object v3, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->profile:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 311
    :cond_2
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->profile:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 319
    :cond_3
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->steps:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    const v5, 0x7f0902dd

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-virtual {v4, v6}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%s"

    iget v6, v0, Lcom/cashwalk/cashwalk/util/network/model/Rank;->totalSteps:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->average:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->average:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    const v5, 0x7f0900b4

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/cashwalk/cashwalk/util/network/model/Rank;->totalSteps:I

    iget v5, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->dayOfWeek:I

    div-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    const v5, 0x7f0902a0

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 328
    :pswitch_0
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->crown:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->profile_line:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->crown:Landroid/widget/ImageView;

    const v3, 0x7f020183

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 331
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->profile_line:Landroid/widget/ImageView;

    const v3, 0x7f020225

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 334
    :pswitch_1
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->crown:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->profile_line:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->crown:Landroid/widget/ImageView;

    const v3, 0x7f020184

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 337
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->profile_line:Landroid/widget/ImageView;

    const v3, 0x7f020226

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 340
    :pswitch_2
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->crown:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->profile_line:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->crown:Landroid/widget/ImageView;

    const v3, 0x7f020182

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 343
    iget-object v2, v1, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->profile_line:Landroid/widget/ImageView;

    const v3, 0x7f020224

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
