.class public Lcom/cashwalk/cashwalk/activity/ViralActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ViralActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private band:Landroid/widget/LinearLayout;

.field private band_tip:Landroid/widget/LinearLayout;

.field defaultCash:I

.field private facebook:Landroid/widget/LinearLayout;

.field private facebook_tip:Landroid/widget/LinearLayout;

.field private invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

.field private iv_cash_icon_1:Landroid/widget/ImageView;

.field private iv_cash_icon_2:Landroid/widget/ImageView;

.field private iv_sub_image:Landroid/widget/ImageView;

.field private iv_tip_one_msg:Landroid/widget/TextView;

.field private iv_tip_three_msg:Landroid/widget/TextView;

.field private iv_tip_two_msg:Landroid/widget/TextView;

.field private iv_top_banner_image:Landroid/widget/ImageView;

.field private kakao:Landroid/widget/LinearLayout;

.field private kakao_tip:Landroid/widget/LinearLayout;

.field private longUrl:Ljava/lang/String;

.field private ns_base_scroll:Landroid/support/v4/widget/NestedScrollView;

.field private pb_my_viral_count:Landroid/widget/ProgressBar;

.field private pref:Landroid/content/SharedPreferences;

.field private progress:Landroid/widget/ProgressBar;

.field private sb_my_viral_count_point:Landroid/widget/SeekBar;

.field private tv_copy_code:Landroid/widget/TextView;

.field private tv_event1_msg:Landroid/widget/TextView;

.field private tv_event2_msg:Landroid/widget/TextView;

.field private tv_friend_max:Landroid/widget/TextView;

.field private tv_friend_min:Landroid/widget/TextView;

.field private tv_friend_status:Landroid/widget/TextView;

.field private tv_friend_sub_status:Landroid/widget/TextView;

.field private tv_my_viral_code:Landroid/widget/TextView;

.field private tv_viral_infomation_msg:Landroid/widget/TextView;

.field private tv_viral_tip_msg:Landroid/widget/TextView;

.field private tv_viral_total_count:Landroid/widget/TextView;

.field private url:Landroid/widget/LinearLayout;

.field private url_tip:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 87
    const/16 v0, 0x64

    iput v0, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->defaultCash:I

    return-void
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/activity/ViralActivity;Lcom/cashwalk/cashwalk/util/network/model/Invite;)Lcom/cashwalk/cashwalk/util/network/model/Invite;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ViralActivity;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/util/network/model/Invite;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    return-object p1
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/activity/ViralActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ViralActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->setInviteProgress()V

    return-void
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/activity/ViralActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ViralActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->share(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/activity/ViralActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/activity/ViralActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->longUrl:Ljava/lang/String;

    return-object v0
.end method

.method private getInviteInfo()V
    .locals 2

    .prologue
    .line 121
    new-instance v1, Lcom/cashwalk/cashwalk/activity/ViralActivity$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity$1;-><init>(Lcom/cashwalk/cashwalk/activity/ViralActivity;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getInvite(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 134
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 135
    return-void
.end method

.method private initLayout()V
    .locals 12

    .prologue
    const/16 v11, 0x15

    const/4 v10, 0x5

    const/4 v9, 0x1

    const/16 v8, 0x21

    const/4 v7, 0x0

    .line 138
    const v2, 0x7f1000d6

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->progress:Landroid/widget/ProgressBar;

    .line 139
    const v2, 0x7f1001e4

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->kakao:Landroid/widget/LinearLayout;

    .line 140
    const v2, 0x7f1002de

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->band:Landroid/widget/LinearLayout;

    .line 141
    const v2, 0x7f1001e5

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->facebook:Landroid/widget/LinearLayout;

    .line 142
    const v2, 0x7f1002df

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->url:Landroid/widget/LinearLayout;

    .line 143
    const v2, 0x7f1002ee

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->kakao_tip:Landroid/widget/LinearLayout;

    .line 144
    const v2, 0x7f1002ef

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->band_tip:Landroid/widget/LinearLayout;

    .line 145
    const v2, 0x7f1002f0

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->facebook_tip:Landroid/widget/LinearLayout;

    .line 146
    const v2, 0x7f1002f1

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->url_tip:Landroid/widget/LinearLayout;

    .line 147
    const v2, 0x7f1002d8

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_event1_msg:Landroid/widget/TextView;

    .line 148
    const v2, 0x7f1002db

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_event2_msg:Landroid/widget/TextView;

    .line 149
    const v2, 0x7f1002c7

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_friend_min:Landroid/widget/TextView;

    .line 150
    const v2, 0x7f1002c8

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_friend_max:Landroid/widget/TextView;

    .line 155
    const v2, 0x7f1002e8

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->iv_tip_one_msg:Landroid/widget/TextView;

    .line 156
    const v2, 0x7f1002ea

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->iv_tip_two_msg:Landroid/widget/TextView;

    .line 157
    const v2, 0x7f1002ec

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->iv_tip_three_msg:Landroid/widget/TextView;

    .line 158
    const v2, 0x7f1002d2

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_friend_status:Landroid/widget/TextView;

    .line 159
    const v2, 0x7f1002d5

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_viral_total_count:Landroid/widget/TextView;

    .line 160
    const v2, 0x7f1002e0

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_my_viral_code:Landroid/widget/TextView;

    .line 161
    const v2, 0x7f1002e1

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_copy_code:Landroid/widget/TextView;

    .line 162
    const v2, 0x7f1002d3

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_friend_sub_status:Landroid/widget/TextView;

    .line 164
    const v2, 0x7f1002be

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/NestedScrollView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->ns_base_scroll:Landroid/support/v4/widget/NestedScrollView;

    .line 168
    const v2, 0x7f1002c5

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->pb_my_viral_count:Landroid/widget/ProgressBar;

    .line 169
    const v2, 0x7f1002c4

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->sb_my_viral_count_point:Landroid/widget/SeekBar;

    .line 172
    const v2, 0x7f1002e3

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_viral_infomation_msg:Landroid/widget/TextView;

    .line 173
    const v2, 0x7f100270

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->iv_top_banner_image:Landroid/widget/ImageView;

    .line 174
    const v2, 0x7f1002c2

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->iv_sub_image:Landroid/widget/ImageView;

    .line 175
    const v2, 0x7f1002d9

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->iv_cash_icon_1:Landroid/widget/ImageView;

    .line 176
    const v2, 0x7f1002dc

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->iv_cash_icon_2:Landroid/widget/ImageView;

    .line 177
    const v2, 0x7f1002f3

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_viral_tip_msg:Landroid/widget/TextView;

    .line 179
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "CASHWALK_REWARD_CASH"

    const/16 v4, 0x64

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->defaultCash:I

    .line 182
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 183
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->pref:Landroid/content/SharedPreferences;

    const-string v5, "CASHWALK_REWARD_CASH"

    const/16 v6, 0x64

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 185
    .local v0, "eventSps":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0xf

    invoke-direct {v2, v3, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v0, v2, v7, v10, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 186
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v2, v7, v10, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 187
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_event1_msg:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 190
    .end local v0    # "eventSps":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->pref:Landroid/content/SharedPreferences;

    const-string v5, "CASHWALK_REWARD_CASH"

    const/16 v6, 0x3e8

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 192
    .restart local v0    # "eventSps":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0xf

    invoke-direct {v2, v3, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v0, v2, v7, v10, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 193
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v2, v7, v10, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 194
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_event2_msg:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090304

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 199
    .local v1, "tipSps":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v2, v11, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v7, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 200
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, -0xc1a366

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v7, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 201
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->iv_tip_one_msg:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .end local v1    # "tipSps":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090306

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 204
    .restart local v1    # "tipSps":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v2, v11, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v7, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 205
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, -0xaeada5

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v7, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 206
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->iv_tip_two_msg:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .end local v1    # "tipSps":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090305

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 209
    .restart local v1    # "tipSps":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v2, v11, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v7, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 210
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, -0xff40b8

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v7, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 211
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->iv_tip_three_msg:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->kakao:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->band:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->facebook:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->url:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->kakao_tip:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->band_tip:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->facebook_tip:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->url_tip:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_copy_code:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_my_viral_code:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->setViralCash()V

    .line 230
    return-void
.end method

.method private setInviteProgress()V
    .locals 18

    .prologue
    .line 234
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_my_viral_code:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    iget-object v14, v14, Lcom/cashwalk/cashwalk/util/network/model/Invite;->code:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_viral_total_count:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0902fa

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/cashwalk/cashwalk/util/network/model/Invite;->count:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0902fb

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/cashwalk/cashwalk/util/network/model/Invite;->count:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 238
    .local v10, "viralFriendCount":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0902fd

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 239
    .local v12, "viralMsg":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0902fc

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/cashwalk/cashwalk/util/network/model/Invite;->count:I

    move/from16 v16, v0

    rsub-int/lit8 v16, v16, 0x64

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "nextViralFriendCount":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0902fe

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, "nextViralFriendMsg":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0902fb

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "100"

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 244
    .local v7, "resultSubString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    iget v13, v13, Lcom/cashwalk/cashwalk/util/network/model/Invite;->count:I

    const/16 v14, 0x64

    if-ge v13, v14, :cond_3

    .line 245
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    iget v13, v13, Lcom/cashwalk/cashwalk/util/network/model/Invite;->count:I

    const/16 v14, 0xa

    if-ge v13, v14, :cond_2

    const/16 v3, 0xa

    .line 248
    .local v3, "nextCount":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0902ff

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/cashwalk/cashwalk/util/network/model/Invite;->count:I

    move/from16 v16, v0

    sub-int v16, v3, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->defaultCash:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0xa

    invoke-static/range {v16 .. v16}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 251
    .local v9, "subFriendCountMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    iget v13, v13, Lcom/cashwalk/cashwalk/util/network/model/Invite;->count:I

    if-nez v13, :cond_0

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090300

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/cashwalk/cashwalk/util/network/model/Invite;->count:I

    move/from16 v16, v0

    sub-int v16, v3, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->defaultCash:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0xa

    invoke-static/range {v16 .. v16}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 256
    :cond_0
    const/4 v2, 0x0

    .line 257
    .local v2, "minCount":I
    const/16 v1, 0xa

    .line 258
    .local v1, "maxCount":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    iget v13, v13, Lcom/cashwalk/cashwalk/util/network/model/Invite;->count:I

    sub-int v13, v3, v13

    rsub-int/lit8 v6, v13, 0xa

    .line 259
    .local v6, "progressValue":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    iget v13, v13, Lcom/cashwalk/cashwalk/util/network/model/Invite;->count:I

    const/16 v14, 0xa

    if-le v13, v14, :cond_1

    .line 260
    add-int/lit8 v2, v3, -0xb

    .line 261
    move v1, v3

    .line 264
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->pb_my_viral_count:Landroid/widget/ProgressBar;

    const/16 v14, 0xa

    invoke-virtual {v13, v14}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 265
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->sb_my_viral_count_point:Landroid/widget/SeekBar;

    const/16 v14, 0xa

    invoke-virtual {v13, v14}, Landroid/widget/SeekBar;->setMax(I)V

    .line 266
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->pb_my_viral_count:Landroid/widget/ProgressBar;

    invoke-virtual {v13, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 267
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->sb_my_viral_count_point:Landroid/widget/SeekBar;

    invoke-virtual {v13, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 268
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->sb_my_viral_count_point:Landroid/widget/SeekBar;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 269
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_friend_min:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_friend_max:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 275
    .local v8, "resultViralText":Ljava/lang/String;
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 276
    .local v11, "viralFriendCountSps":Landroid/text/SpannableStringBuilder;
    new-instance v13, Landroid/text/style/StyleSpan;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v14, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 277
    new-instance v13, Landroid/text/style/StyleSpan;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 278
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    const v14, -0xdca9

    invoke-direct {v13, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 279
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_friend_status:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_friend_sub_status:Landroid/widget/TextView;

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    .end local v1    # "maxCount":I
    .end local v2    # "minCount":I
    .end local v3    # "nextCount":I
    .end local v6    # "progressValue":I
    .end local v8    # "resultViralText":Ljava/lang/String;
    .end local v9    # "subFriendCountMsg":Ljava/lang/String;
    .end local v11    # "viralFriendCountSps":Landroid/text/SpannableStringBuilder;
    :goto_1
    return-void

    .line 245
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    iget v13, v13, Lcom/cashwalk/cashwalk/util/network/model/Invite;->count:I

    add-int/lit8 v13, v13, 0xa

    div-int/lit8 v13, v13, 0xa

    mul-int/lit8 v3, v13, 0xa

    goto/16 :goto_0

    .line 282
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_friend_sub_status:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_friend_status:Landroid/widget/TextView;

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setViralCash()V
    .locals 9

    .prologue
    const v8, 0x7f0201a0

    const v7, 0x7f020162

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 472
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_viral_infomation_msg:Landroid/widget/TextView;

    const v1, 0x7f0902f7

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->defaultCash:I

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->defaultCash:I

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_viral_tip_msg:Landroid/widget/TextView;

    const v1, 0x7f090303

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->defaultCash:I

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->defaultCash:I

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->defaultCash:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->iv_top_banner_image:Landroid/widget/ImageView;

    const v1, 0x7f020206

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 478
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->iv_sub_image:Landroid/widget/ImageView;

    const v1, 0x7f02023b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 479
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->iv_cash_icon_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 480
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->iv_cash_icon_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 495
    :goto_0
    return-void

    .line 481
    :cond_0
    iget v0, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->defaultCash:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 483
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->iv_top_banner_image:Landroid/widget/ImageView;

    const v1, 0x7f020205

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 484
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->iv_sub_image:Landroid/widget/ImageView;

    const v1, 0x7f02023a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 485
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->iv_cash_icon_1:Landroid/widget/ImageView;

    const v1, 0x7f020161

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 486
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->iv_cash_icon_2:Landroid/widget/ImageView;

    const v1, 0x7f02019f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->iv_top_banner_image:Landroid/widget/ImageView;

    const v1, 0x7f020206

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 490
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->iv_sub_image:Landroid/widget/ImageView;

    const v1, 0x7f02023b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 491
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->iv_cash_icon_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 492
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->iv_cash_icon_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private share(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 387
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->progress:Landroid/widget/ProgressBar;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 389
    const/4 v8, 0x0

    .line 391
    .local v8, "pkgName":Ljava/lang/String;
    const/4 v9, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v9, :pswitch_data_0

    .line 443
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    iget-object v9, v9, Lcom/cashwalk/cashwalk/util/network/model/Invite;->code:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 444
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "text/plain"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string v9, "android.intent.extra.TEXT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0902f9

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->pref:Landroid/content/SharedPreferences;

    const-string v15, "CASHWALK_REWARD_CASH"

    const/16 v16, 0x64

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    iget-object v14, v14, Lcom/cashwalk/cashwalk/util/network/model/Invite;->code:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 462
    .end local v7    # "intent":Landroid/content/Intent;
    :goto_2
    return-void

    .line 391
    :sswitch_0
    const-string v10, "BAND"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    :sswitch_1
    const-string v10, "FACEBOOK"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_2
    const-string v10, "URL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x2

    goto/16 :goto_0

    .line 393
    :pswitch_0
    const-string v8, "com.nhn.android.band"

    .line 395
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v9

    const-string/jumbo v10, "viral_band"

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v9, v10, v11}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 396
    :catch_0
    move-exception v6

    .line 397
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 402
    .end local v6    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_2
    invoke-static/range {p0 .. p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v9

    const-string/jumbo v10, "viral_facebook"

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v9, v10, v11}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 406
    :goto_3
    const-string v8, "com.facebook.katana"

    .line 408
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    iget-object v9, v9, Lcom/cashwalk/cashwalk/util/network/model/Invite;->code:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 409
    const-string v9, "clipboard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ClipboardManager;

    .line 410
    .local v5, "clipboardF":Landroid/content/ClipboardManager;
    const v9, 0x7f0900aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0902f9

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->pref:Landroid/content/SharedPreferences;

    const-string v15, "CASHWALK_REWARD_CASH"

    const/16 v16, 0x64

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    iget-object v14, v14, Lcom/cashwalk/cashwalk/util/network/model/Invite;->code:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    .line 411
    .local v3, "clipF":Landroid/content/ClipData;
    invoke-virtual {v5, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 412
    const v9, 0x7f0902f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 403
    .end local v3    # "clipF":Landroid/content/ClipData;
    .end local v5    # "clipboardF":Landroid/content/ClipboardManager;
    :catch_1
    move-exception v6

    .line 404
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 415
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getInviteInfo()V

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090143

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 422
    :pswitch_2
    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v9

    const-string/jumbo v10, "viral_copy"

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v9, v10, v11}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 427
    :goto_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    iget-object v9, v9, Lcom/cashwalk/cashwalk/util/network/model/Invite;->code:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 428
    const-string v9, "clipboard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipboardManager;

    .line 429
    .local v4, "clipboard":Landroid/content/ClipboardManager;
    const v9, 0x7f0900aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0902f9

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->pref:Landroid/content/SharedPreferences;

    const-string v15, "CASHWALK_REWARD_CASH"

    const/16 v16, 0x64

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    iget-object v14, v14, Lcom/cashwalk/cashwalk/util/network/model/Invite;->code:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 430
    .local v2, "clip":Landroid/content/ClipData;
    invoke-virtual {v4, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 431
    const v9, 0x7f0902f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 423
    .end local v2    # "clip":Landroid/content/ClipData;
    .end local v4    # "clipboard":Landroid/content/ClipboardManager;
    :catch_2
    move-exception v6

    .line 424
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 434
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getInviteInfo()V

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090143

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 451
    :cond_3
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getInviteInfo()V

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090143

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    .line 455
    :catch_3
    move-exception v6

    .line 457
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "market://details?id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_2

    .line 458
    :catch_4
    move-exception v1

    .line 459
    .local v1, "anfe":Landroid/content/ActivityNotFoundException;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 391
    :sswitch_data_0
    .sparse-switch
        0x1494f -> :sswitch_2
        0x1efe35 -> :sswitch_0
        0x4c478ac6 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private shareKakao()V
    .locals 13

    .prologue
    .line 345
    iget-object v7, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->progress:Landroid/widget/ProgressBar;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 348
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v7

    const-string/jumbo v8, "viral_kakao"

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v7, v8, v9}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    const v7, 0x7f0902f8

    :try_start_1
    invoke-virtual {p0, v7}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->pref:Landroid/content/SharedPreferences;

    const-string v11, "CASHWALK_REWARD_CASH"

    const/16 v12, 0x64

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "btnString":Ljava/lang/String;
    iget-object v7, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    iget-object v7, v7, Lcom/cashwalk/cashwalk/util/network/model/Invite;->code:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/kakao/kakaolink/KakaoLink;->getKakaoLink(Landroid/content/Context;)Lcom/kakao/kakaolink/KakaoLink;

    move-result-object v5

    .line 357
    .local v5, "kakaoLink":Lcom/kakao/kakaolink/KakaoLink;
    invoke-virtual {v5}, Lcom/kakao/kakaolink/KakaoLink;->createKakaoTalkLinkMessageBuilder()Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    move-result-object v1

    .line 358
    .local v1, "builder":Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0902f9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->pref:Landroid/content/SharedPreferences;

    const-string v11, "CASHWALK_REWARD_CASH"

    const/16 v12, 0x64

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->invite:Lcom/cashwalk/cashwalk/util/network/model/Invite;

    iget-object v10, v10, Lcom/cashwalk/cashwalk/util/network/model/Invite;->code:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->addText(Ljava/lang/String;)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    .line 359
    new-instance v7, Lcom/kakao/kakaolink/AppActionBuilder;

    invoke-direct {v7}, Lcom/kakao/kakaolink/AppActionBuilder;-><init>()V

    .line 362
    invoke-static {}, Lcom/kakao/kakaolink/AppActionInfoBuilder;->createAndroidActionInfoBuilder()Lcom/kakao/kakaolink/AppActionInfoBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "referrer=utm_source%3Dkakao%26utm_medium%3Dcpa%26utm_campaign%3Dinvite%26uid%3D"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->pref:Landroid/content/SharedPreferences;

    const-string v11, "USER_ID"

    const/4 v12, 0x0

    .line 363
    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/kakao/kakaolink/AppActionInfoBuilder;->setMarketParam(Ljava/lang/String;)Lcom/kakao/kakaolink/AppActionInfoBuilder;

    move-result-object v8

    .line 364
    invoke-virtual {v8}, Lcom/kakao/kakaolink/AppActionInfoBuilder;->build()Lcom/kakao/kakaolink/internal/AppActionInfo;

    move-result-object v8

    .line 361
    invoke-virtual {v7, v8}, Lcom/kakao/kakaolink/AppActionBuilder;->addActionInfo(Lcom/kakao/kakaolink/internal/AppActionInfo;)Lcom/kakao/kakaolink/AppActionBuilder;

    move-result-object v7

    .line 366
    invoke-static {}, Lcom/kakao/kakaolink/AppActionInfoBuilder;->createiOSActionInfoBuilder()Lcom/kakao/kakaolink/AppActionInfoBuilder;

    move-result-object v8

    .line 367
    invoke-virtual {v8}, Lcom/kakao/kakaolink/AppActionInfoBuilder;->build()Lcom/kakao/kakaolink/internal/AppActionInfo;

    move-result-object v8

    .line 365
    invoke-virtual {v7, v8}, Lcom/kakao/kakaolink/AppActionBuilder;->addActionInfo(Lcom/kakao/kakaolink/internal/AppActionInfo;)Lcom/kakao/kakaolink/AppActionBuilder;

    move-result-object v7

    const-string v8, "http://cashwalk.me"

    .line 368
    invoke-virtual {v7, v8}, Lcom/kakao/kakaolink/AppActionBuilder;->setUrl(Ljava/lang/String;)Lcom/kakao/kakaolink/AppActionBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kakao/kakaolink/AppActionBuilder;->build()Lcom/kakao/kakaolink/internal/Action;

    move-result-object v7

    .line 359
    invoke-virtual {v1, v0, v7}, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->addAppButton(Ljava/lang/String;Lcom/kakao/kakaolink/internal/Action;)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    .line 370
    const-string v4, "https://s3-ap-northeast-1.amazonaws.com/cashwalk-images/0_admin/viral/img_kakao.jpg"

    .line 371
    .local v4, "imageSrc":Ljava/lang/String;
    const/16 v6, 0xb4

    .line 372
    .local v6, "width":I
    const/16 v3, 0xb4

    .line 373
    .local v3, "height":I
    invoke-virtual {v1, v4, v6, v3}, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->addImage(Ljava/lang/String;II)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    .line 374
    invoke-virtual {v5, v1, p0}, Lcom/kakao/kakaolink/KakaoLink;->sendMessage(Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 384
    .end local v0    # "btnString":Ljava/lang/String;
    .end local v1    # "builder":Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;
    .end local v3    # "height":I
    .end local v4    # "imageSrc":Ljava/lang/String;
    .end local v5    # "kakaoLink":Lcom/kakao/kakaolink/KakaoLink;
    .end local v6    # "width":I
    :goto_1
    return-void

    .line 349
    :catch_0
    move-exception v2

    .line 350
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 377
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "btnString":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getInviteInfo()V

    .line 378
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090143

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 381
    .end local v0    # "btnString":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 382
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private shortenUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->longUrl:Ljava/lang/String;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/ViralActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/cashwalk/cashwalk/activity/ViralActivity$2;-><init>(Lcom/cashwalk/cashwalk/activity/ViralActivity;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/util/URLShortener;->shortUrl(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/URLShortener$LoadingCallback;)V

    .line 342
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->finish()V

    .line 467
    const v0, 0x7f050017

    const v1, 0x7f050021

    invoke-virtual {p0, v0, v1}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->overridePendingTransition(II)V

    .line 468
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 293
    .local v2, "getViewId":I
    sparse-switch v2, :sswitch_data_0

    .line 323
    :goto_0
    return-void

    .line 297
    :sswitch_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->shareKakao()V

    goto :goto_0

    .line 302
    :sswitch_1
    const-string v3, "BAND"

    const-string v4, "http://cashwalk.me"

    invoke-direct {p0, v3, v4}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->share(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :sswitch_2
    const-string v3, "FACEBOOK"

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->longUrl:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->share(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :sswitch_3
    const-string v3, "URL"

    const-string v4, "http://cashwalk.me"

    invoke-direct {p0, v3, v4}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->share(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :sswitch_4
    const-string v3, "clipboard"

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 318
    .local v1, "clipboardF":Landroid/content/ClipboardManager;
    const-string v3, ""

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->tv_my_viral_code:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 319
    .local v0, "clipF":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 320
    const v3, 0x7f0902f2

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 293
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1001e4 -> :sswitch_0
        0x7f1001e5 -> :sswitch_2
        0x7f1002de -> :sswitch_1
        0x7f1002df -> :sswitch_3
        0x7f1002e0 -> :sswitch_4
        0x7f1002e1 -> :sswitch_4
        0x7f1002ee -> :sswitch_0
        0x7f1002ef -> :sswitch_1
        0x7f1002f0 -> :sswitch_2
        0x7f1002f1 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v2, 0x7f040054

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->setContentView(I)V

    .line 100
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->pref:Landroid/content/SharedPreferences;

    .line 102
    const-string v2, "http://cashwalk.me"

    iput-object v2, p0, Lcom/cashwalk/cashwalk/activity/ViralActivity;->longUrl:Ljava/lang/String;

    .line 104
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 105
    .local v1, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    const v2, 0x7f0901b0

    invoke-virtual {p0, v2}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->initLayout()V

    .line 110
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/ViralActivity;->getInviteInfo()V

    .line 113
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v2

    const-string/jumbo v3, "viral_enter"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
