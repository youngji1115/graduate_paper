.class public Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TimelineListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewHolder"
.end annotation


# instance fields
.field iv_body_image:Lcom/cashwalk/cashwalk/util/SquareImageView;

.field iv_like_icon:Landroid/widget/ImageView;

.field iv_notice_profile_image:Landroid/widget/ImageView;

.field iv_profile_image:Landroid/widget/ImageView;

.field li_cashwalk_notice_layout:Landroid/widget/LinearLayout;

.field rl_base_layout:Landroid/widget/RelativeLayout;

.field rl_close_notice:Landroid/widget/RelativeLayout;

.field rl_content_layout:Landroid/widget/RelativeLayout;

.field rl_image_layout:Landroid/widget/RelativeLayout;

.field rl_like_btn:Landroid/widget/RelativeLayout;

.field rl_location_info:Landroid/widget/RelativeLayout;

.field rl_report_btn:Landroid/widget/RelativeLayout;

.field tv_body_text_msg:Landroid/widget/TextView;

.field tv_body_text_title:Landroid/widget/TextView;

.field tv_hit_count:Landroid/widget/TextView;

.field tv_item_date:Landroid/widget/TextView;

.field tv_like_comment_count:Landroid/widget/TextView;

.field tv_location_text:Landroid/widget/TextView;

.field tv_notice_body_text_msg:Landroid/widget/TextView;

.field tv_notice_body_text_title:Landroid/widget/TextView;

.field tv_notice_item_hit_count:Landroid/widget/TextView;

.field tv_notice_profile_nickname:Landroid/widget/TextView;

.field tv_profile_nickname:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 350
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 352
    const v0, 0x7f10031b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->li_cashwalk_notice_layout:Landroid/widget/LinearLayout;

    .line 353
    const v0, 0x7f100253

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->rl_content_layout:Landroid/widget/RelativeLayout;

    .line 354
    const v0, 0x7f10031d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->rl_close_notice:Landroid/widget/RelativeLayout;

    .line 355
    const v0, 0x7f10028f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->rl_base_layout:Landroid/widget/RelativeLayout;

    .line 356
    const v0, 0x7f10025a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->rl_image_layout:Landroid/widget/RelativeLayout;

    .line 357
    const v0, 0x7f100256

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->rl_location_info:Landroid/widget/RelativeLayout;

    .line 358
    const v0, 0x7f100327

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->rl_report_btn:Landroid/widget/RelativeLayout;

    .line 359
    const v0, 0x7f100324

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->rl_like_btn:Landroid/widget/RelativeLayout;

    .line 360
    const v0, 0x7f10025b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/SquareImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->iv_body_image:Lcom/cashwalk/cashwalk/util/SquareImageView;

    .line 361
    const v0, 0x7f100237

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->iv_profile_image:Landroid/widget/ImageView;

    .line 362
    const v0, 0x7f100261

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->iv_like_icon:Landroid/widget/ImageView;

    .line 363
    const v0, 0x7f10025e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_body_text_msg:Landroid/widget/TextView;

    .line 364
    const v0, 0x7f100257

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_item_date:Landroid/widget/TextView;

    .line 365
    const v0, 0x7f100255

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_profile_nickname:Landroid/widget/TextView;

    .line 366
    const v0, 0x7f10025d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_body_text_title:Landroid/widget/TextView;

    .line 367
    const v0, 0x7f100262

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_like_comment_count:Landroid/widget/TextView;

    .line 368
    const v0, 0x7f100259

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_location_text:Landroid/widget/TextView;

    .line 369
    const v0, 0x7f100260

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_hit_count:Landroid/widget/TextView;

    .line 371
    const v0, 0x7f10031f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_notice_profile_nickname:Landroid/widget/TextView;

    .line 372
    const v0, 0x7f100320

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_notice_item_hit_count:Landroid/widget/TextView;

    .line 373
    const v0, 0x7f100322

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_notice_body_text_title:Landroid/widget/TextView;

    .line 374
    const v0, 0x7f100323

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_notice_body_text_msg:Landroid/widget/TextView;

    .line 375
    const v0, 0x7f10031e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->iv_notice_profile_image:Landroid/widget/ImageView;

    .line 377
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$1;

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
