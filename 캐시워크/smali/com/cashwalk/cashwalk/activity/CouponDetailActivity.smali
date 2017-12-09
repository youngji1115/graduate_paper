.class public Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CouponDetailActivity.java"


# instance fields
.field private item:Lcom/cashwalk/cashwalk/util/network/model/Coupon;

.field private iv_item_barcode:Landroid/widget/ImageView;

.field private iv_item_image:Landroid/widget/ImageView;

.field private pref:Landroid/content/SharedPreferences;

.field private progress:Landroid/widget/ProgressBar;

.field private rl_share_instagram:Landroid/widget/RelativeLayout;

.field private tv_barcode_number:Landroid/widget/TextView;

.field private tv_brand:Landroid/widget/TextView;

.field private tv_expire:Landroid/widget/TextView;

.field private tv_instagram_event_msg:Landroid/widget/TextView;

.field private tv_item_description:Landroid/widget/TextView;

.field private tv_item_name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;)Lcom/cashwalk/cashwalk/util/network/model/Coupon;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->item:Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->iv_item_barcode:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x19

    const/16 v9, 0x12

    const/4 v8, 0x1

    const v7, -0xc7c7c8

    const/16 v6, 0x21

    .line 53
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v2, 0x7f040035

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->setContentView(I)V

    .line 56
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->pref:Landroid/content/SharedPreferences;

    .line 58
    const v2, 0x7f1001c4

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->iv_item_barcode:Landroid/widget/ImageView;

    .line 59
    const v2, 0x7f1001c7

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->iv_item_image:Landroid/widget/ImageView;

    .line 60
    const v2, 0x7f1001c9

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->tv_item_name:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f1001c8

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->tv_brand:Landroid/widget/TextView;

    .line 62
    const v2, 0x7f1001ca

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->tv_expire:Landroid/widget/TextView;

    .line 63
    const v2, 0x7f1001c5

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->tv_barcode_number:Landroid/widget/TextView;

    .line 64
    const v2, 0x7f1001ce

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->tv_item_description:Landroid/widget/TextView;

    .line 65
    const v2, 0x7f1001bf

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->tv_instagram_event_msg:Landroid/widget/TextView;

    .line 66
    const v2, 0x7f1000d6

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->progress:Landroid/widget/ProgressBar;

    .line 67
    const v2, 0x7f1001cc

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->rl_share_instagram:Landroid/widget/RelativeLayout;

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->item:Lcom/cashwalk/cashwalk/util/network/model/Coupon;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->tv_item_name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->item:Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->tv_brand:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->item:Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->brand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->tv_expire:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lorg/joda/time/DateTime;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->item:Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->expire:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    const-string/jumbo v5, "yyyy-MM-dd"

    invoke-virtual {v4, v5}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0902e4

    invoke-virtual {p0, v4}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->tv_item_description:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->item:Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->tv_barcode_number:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->item:Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->pin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->item:Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->iv_item_image:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 85
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->rl_share_instagram:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$1;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 103
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090148

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 105
    .local v1, "eventSps":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v2, v9, v10, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 106
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v2, v9, v10, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 107
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v3, 0x3b

    const/16 v4, 0x44

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 108
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x3b

    const/16 v4, 0x44

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 109
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->tv_instagram_event_msg:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    new-instance v2, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 143
    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    .end local v1    # "eventSps":Landroid/text/SpannableStringBuilder;
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->finish()V

    goto :goto_0
.end method
