.class Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LottoWinnerListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimelineListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;
    }
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

.field private urlCache:Lcom/cashwalk/cashwalk/util/ImageUrlCache;


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;
    .param p2, "list"    # Ljava/util/ArrayList;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->data:Ljava/util/ArrayList;

    .line 190
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->ctx:Landroid/content/Context;

    .line 191
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->urlCache:Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    .line 192
    return-void
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;Ljava/lang/String;Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;I)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;
    .param p3, "x3"    # Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    .param p4, "x4"    # I

    .prologue
    .line 182
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->like(Ljava/lang/String;Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method private like(Ljava/lang/String;Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;I)V
    .locals 3
    .param p1, "timelineId"    # Ljava/lang/String;
    .param p2, "vh"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;
    .param p3, "item"    # Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    .param p4, "position"    # I

    .prologue
    .line 387
    iget-object v1, p3, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->stepBetId:Ljava/lang/String;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;

    invoke-direct {v2, p0, p4, p2, p3}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;-><init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;ILcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;)V

    invoke-static {v1, p1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->postStepBetTimelineLike(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 409
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 410
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 199
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
    .line 204
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 207
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
    .line 212
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const v4, 0x7f0901b5

    const v8, 0x7f020221

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 219
    if-nez p2, :cond_1

    .line 220
    new-instance v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;

    invoke-direct {v1, p0, v5}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;-><init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$1;)V

    .line 221
    .local v1, "vh":Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400b5

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 223
    const v2, 0x7f10041c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->main:Landroid/widget/LinearLayout;

    .line 224
    const v2, 0x7f1001f1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->nickname:Landroid/widget/TextView;

    .line 225
    const v2, 0x7f1001f0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->profile:Landroid/widget/ImageView;

    .line 226
    const v2, 0x7f10041f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->body:Landroid/widget/TextView;

    .line 227
    const v2, 0x7f10041d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->ago:Landroid/widget/TextView;

    .line 228
    const v2, 0x7f10041e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->address:Landroid/widget/TextView;

    .line 229
    const v2, 0x7f100215

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->rank:Landroid/widget/TextView;

    .line 230
    const v2, 0x7f10026a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->commentCnt:Landroid/widget/TextView;

    .line 231
    const v2, 0x7f100269

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->likeCnt:Landroid/widget/TextView;

    .line 232
    const v2, 0x7f10034c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->feedback:Landroid/widget/TextView;

    .line 233
    const v2, 0x7f10008f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->image:Landroid/widget/ImageView;

    .line 235
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 240
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    .line 242
    .local v0, "item":Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->main:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    iget-boolean v2, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->raffle:Z

    if-eqz v2, :cond_2

    .line 244
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->feedback:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->feedback:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->feedback:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 248
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->feedback:Landroid/widget/TextView;

    const v3, 0x7f02018a

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 256
    :goto_1
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 257
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 258
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->profile:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 264
    :cond_0
    :goto_2
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->imgUrl:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->imgUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 265
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->main:Landroid/widget/LinearLayout;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v3

    invoke-virtual {v2, v6, v6, v6, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 266
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->urlCache:Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    iget-object v4, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->imgUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 270
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->image:Landroid/widget/ImageView;

    new-instance v3, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$1;-><init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    :goto_3
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->nickname:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->body:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->body:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->ago:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->ctx:Landroid/content/Context;

    new-instance v4, Lorg/joda/time/DateTime;

    iget-object v5, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->dateTime:Lorg/joda/time/DateTime;

    invoke-direct {v4, v5}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/util/Utils;->getAgoString(Landroid/content/Context;Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->address:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 286
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->address:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->address:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    :goto_4
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget v2, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->rank:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 293
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->rank:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->rank:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget v4, v4, Lcom/cashwalk/cashwalk/util/network/model/User;->rank:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    const v5, 0x7f09023e

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :goto_5
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->commentCnt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    const v4, 0x7f090131

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    iget v5, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->commentCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->likeCnt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    const v4, 0x7f0901a7

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    iget v5, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    new-instance v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$2;-><init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;ILcom/cashwalk/cashwalk/util/network/model/TimelineItem;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->profile:Landroid/widget/ImageView;

    new-instance v3, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$3;

    invoke-direct {v3, p0, p1, v0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$3;-><init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;ILcom/cashwalk/cashwalk/util/network/model/TimelineItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->likeCnt:Landroid/widget/TextView;

    new-instance v3, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$4;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$4;-><init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->feedback:Landroid/widget/TextView;

    new-instance v3, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$5;

    invoke-direct {v3, p0, p1, v0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$5;-><init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;ILcom/cashwalk/cashwalk/util/network/model/TimelineItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$200(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$200(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 379
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->likeCnt:Landroid/widget/TextView;

    const v3, 0x7f020150

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 383
    :goto_6
    return-object p2

    .line 237
    .end local v0    # "item":Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    .end local v1    # "vh":Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;

    .restart local v1    # "vh":Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;
    goto/16 :goto_0

    .line 250
    .restart local v0    # "item":Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    :cond_2
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->feedback:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    const v4, 0x7f090240

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->feedback:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 252
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->feedback:Landroid/widget/TextView;

    const v3, 0x7f0201b2

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_1

    .line 260
    :cond_3
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->urlCache:Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    iget-object v4, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->profile:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_2

    .line 277
    :cond_4
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->main:Landroid/widget/LinearLayout;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v3

    invoke-static {v7}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v4

    invoke-virtual {v2, v6, v3, v6, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 278
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 289
    :cond_5
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->address:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 296
    :cond_6
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->rank:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 381
    :cond_7
    iget-object v2, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->likeCnt:Landroid/widget/TextView;

    const v3, 0x7f02014f

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_6
.end method
