.class public Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "StepBetTimelineDetailActivity.java"


# instance fields
.field private TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

.field private dirty:Z

.field private et_input_comment:Landroid/widget/EditText;

.field private isWinnerList:Z

.field private iv_body_image:Lcom/cashwalk/cashwalk/util/SquareImageView;

.field private iv_like_icon:Landroid/widget/ImageView;

.field private iv_profile_image:Landroid/widget/ImageView;

.field private li:Landroid/view/LayoutInflater;

.field private li_comment_layout:Landroid/widget/LinearLayout;

.field private oldLikeStatus:Z

.field private pg_loding_comment:Landroid/widget/ProgressBar;

.field private pref:Landroid/content/SharedPreferences;

.field private rl_image_layout:Landroid/widget/RelativeLayout;

.field private rl_location_info:Landroid/widget/RelativeLayout;

.field private rl_send_comment:Landroid/widget/RelativeLayout;

.field private scv_base_scrollview:Landroid/support/v4/widget/NestedScrollView;

.field private tv_body_text_msg:Landroid/widget/TextView;

.field private tv_body_text_title:Landroid/widget/TextView;

.field private tv_hit_count:Landroid/widget/TextView;

.field private tv_item_date:Landroid/widget/TextView;

.field private tv_like_comment_count:Landroid/widget/TextView;

.field private tv_location_text:Landroid/widget/TextView;

.field private tv_profile_nickname:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 78
    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->dirty:Z

    .line 79
    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->isWinnerList:Z

    .line 80
    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->oldLikeStatus:Z

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    return-object v0
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->initView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->isWinnerList:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->like(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->iv_like_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->refresh(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->pg_loding_comment:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->li_comment_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->tv_like_comment_count:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->li:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Landroid/support/v4/widget/NestedScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->scv_base_scrollview:Landroid/support/v4/widget/NestedScrollView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->et_input_comment:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$902(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->dirty:Z

    return p1
.end method

.method private initView()V
    .locals 5

    .prologue
    const v3, 0x7f020221

    const/4 v4, 0x0

    .line 287
    const v0, 0x7f100252

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->scv_base_scrollview:Landroid/support/v4/widget/NestedScrollView;

    .line 288
    const v0, 0x7f100263

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->li_comment_layout:Landroid/widget/LinearLayout;

    .line 289
    const v0, 0x7f10025b

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/SquareImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->iv_body_image:Lcom/cashwalk/cashwalk/util/SquareImageView;

    .line 290
    const v0, 0x7f100261

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->iv_like_icon:Landroid/widget/ImageView;

    .line 291
    const v0, 0x7f100237

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->iv_profile_image:Landroid/widget/ImageView;

    .line 292
    const v0, 0x7f100255

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->tv_profile_nickname:Landroid/widget/TextView;

    .line 293
    const v0, 0x7f100256

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->rl_location_info:Landroid/widget/RelativeLayout;

    .line 294
    const v0, 0x7f100259

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->tv_location_text:Landroid/widget/TextView;

    .line 295
    const v0, 0x7f100257

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->tv_item_date:Landroid/widget/TextView;

    .line 296
    const v0, 0x7f10025a

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->rl_image_layout:Landroid/widget/RelativeLayout;

    .line 297
    const v0, 0x7f10025d

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->tv_body_text_title:Landroid/widget/TextView;

    .line 298
    const v0, 0x7f10025e

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->tv_body_text_msg:Landroid/widget/TextView;

    .line 299
    const v0, 0x7f100260

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->tv_hit_count:Landroid/widget/TextView;

    .line 300
    const v0, 0x7f100262

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->tv_like_comment_count:Landroid/widget/TextView;

    .line 301
    const v0, 0x7f100265

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->et_input_comment:Landroid/widget/EditText;

    .line 302
    const v0, 0x7f100266

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->pg_loding_comment:Landroid/widget/ProgressBar;

    .line 303
    const v0, 0x7f100264

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->rl_send_comment:Landroid/widget/RelativeLayout;

    .line 305
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->rl_send_comment:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-boolean v0, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->isLike:Z

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->iv_like_icon:Landroid/widget/ImageView;

    const v1, 0x7f020150

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 355
    :goto_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->iv_like_icon:Landroid/widget/ImageView;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$4;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->iv_profile_image:Landroid/widget/ImageView;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$5;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v1, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->iv_profile_image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 386
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->imgUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 387
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->rl_image_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 388
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->imgUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->iv_body_image:Lcom/cashwalk/cashwalk/util/SquareImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 389
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->iv_body_image:Lcom/cashwalk/cashwalk/util/SquareImageView;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$6;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$6;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/util/SquareImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    :goto_2
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->tv_profile_nickname:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->title:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 403
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->tv_body_text_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    :goto_3
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->tv_body_text_msg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->tv_item_date:Landroid/widget/TextView;

    new-instance v1, Lorg/joda/time/DateTime;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->dateTime:Lorg/joda/time/DateTime;

    invoke-direct {v1, v2}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v1}, Lcom/cashwalk/cashwalk/util/Utils;->getAgoString(Landroid/content/Context;Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->address:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 412
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->rl_location_info:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->tv_location_text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    :goto_4
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->tv_hit_count:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\uc870\ud68c\uc218 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget v2, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->hitCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\ud68c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->tv_like_comment_count:Landroid/widget/TextView;

    const v1, 0x7f0901a6

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget v3, v3, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget v4, v4, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->commentCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->iv_like_icon:Landroid/widget/ImageView;

    const v1, 0x7f02014f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 382
    :cond_2
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v1, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->iv_profile_image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 397
    :cond_3
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->rl_image_layout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 405
    :cond_4
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->tv_body_text_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 415
    :cond_5
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->rl_location_info:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method private like(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "timelineId"    # Ljava/lang/String;
    .param p2, "stepbetId"    # Ljava/lang/String;

    .prologue
    .line 425
    if-nez p2, :cond_0

    .line 426
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "STEPBET_ID"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 429
    :cond_0
    new-instance v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$7;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$7;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)V

    invoke-static {p2, p1, v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->postStepBetTimelineLike(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 450
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 451
    return-void
.end method

.method private refresh(Z)V
    .locals 5
    .param p1, "moveToBottom"    # Z

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, "stId":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->isWinnerList:Z

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v1, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->stepBetId:Ljava/lang/String;

    .line 179
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    new-instance v3, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;Z)V

    invoke-static {v1, v2, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getStepBetTimelineComment(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 283
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 284
    return-void

    .line 177
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "STEPBET_ID"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private report()V
    .locals 3

    .prologue
    .line 479
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 480
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090241

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 481
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$8;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$8;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 487
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090240

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$9;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$9;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 511
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 512
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 160
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->finish()V

    .line 162
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->isWinnerList:Z

    if-nez v0, :cond_0

    .line 163
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->dirty:Z

    if-eqz v0, :cond_1

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "timeline_refresh"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "update"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "comment_count"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget v2, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->commentCount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 84
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v4, 0x7f040043

    invoke-virtual {p0, v4}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->setContentView(I)V

    .line 86
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x480000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 88
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->li:Landroid/view/LayoutInflater;

    .line 89
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->pref:Landroid/content/SharedPreferences;

    .line 91
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 92
    .local v1, "it":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 156
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    const-string v4, "item"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iput-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    .line 97
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-boolean v4, v4, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->isLike:Z

    iput-boolean v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->oldLikeStatus:Z

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#### \uc88b\uc544\uc694 \uc0c1\ud0dc => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-boolean v5, v5, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->isLike:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#### \uc544\uc774\ud15c \uc544\uc774\ub514 => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 106
    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "winner_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->isWinnerList:Z

    .line 116
    :goto_1
    const/4 v3, 0x0

    .line 117
    .local v3, "stId":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->isWinnerList:Z

    if-eqz v4, :cond_3

    .line 118
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v3, v4, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->stepBetId:Ljava/lang/String;

    .line 123
    :goto_2
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    new-instance v5, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$1;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)V

    invoke-static {v3, v4, v5}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getStepBetTimelineDetail(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v2

    .line 151
    .local v2, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto/16 :goto_0

    .line 102
    .end local v2    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    .end local v3    # "stId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iput-boolean v6, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->isWinnerList:Z

    goto :goto_1

    .line 112
    :cond_2
    iput-boolean v6, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->isWinnerList:Z

    goto :goto_1

    .line 120
    .restart local v3    # "stId":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->pref:Landroid/content/SharedPreferences;

    const-string v5, "STEPBET_ID"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->isWinnerList:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->TimeLineItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-boolean v0, v0, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->raffle:Z

    if-nez v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 459
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 465
    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->report()V

    .line 469
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 474
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 471
    :pswitch_0
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    .line 472
    const/4 v0, 0x1

    goto :goto_0

    .line 469
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
