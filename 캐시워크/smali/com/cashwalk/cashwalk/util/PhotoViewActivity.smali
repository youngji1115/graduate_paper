.class public Lcom/cashwalk/cashwalk/util/PhotoViewActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PhotoViewActivity.java"


# instance fields
.field private dirty:Z

.field private isWinnerList:Z

.field private item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

.field private like:Landroid/widget/TextView;

.field private pref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->dirty:Z

    .line 35
    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->isWinnerList:Z

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/util/PhotoViewActivity;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/PhotoViewActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/util/PhotoViewActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/PhotoViewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->onLikeClick(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/util/PhotoViewActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/PhotoViewActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->like:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/cashwalk/cashwalk/util/PhotoViewActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/PhotoViewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->dirty:Z

    return p1
.end method

.method private onLikeClick(Ljava/lang/String;)V
    .locals 4
    .param p1, "timelineId"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "STEPBET_ID"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/PhotoViewActivity$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity$2;-><init>(Lcom/cashwalk/cashwalk/util/PhotoViewActivity;)V

    invoke-static {v1, p1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->postStepBetTimelineLike(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 119
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 120
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->finish()V

    .line 126
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->isWinnerList:Z

    if-nez v0, :cond_0

    .line 127
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->dirty:Z

    if-eqz v0, :cond_1

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "timeline_refresh"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v4, 0x7f040044

    invoke-virtual {p0, v4}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x480000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 44
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->pref:Landroid/content/SharedPreferences;

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "item"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iput-object v4, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    .line 50
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "winner_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->isWinnerList:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    const v4, 0x7f100267

    invoke-virtual {p0, v4}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Luk/co/senab/photoview/PhotoView;

    .line 68
    .local v3, "pv":Luk/co/senab/photoview/PhotoView;
    const v4, 0x7f100268

    invoke-virtual {p0, v4}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    .local v0, "body":Landroid/widget/TextView;
    const v4, 0x7f100269

    invoke-virtual {p0, v4}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->like:Landroid/widget/TextView;

    .line 70
    const v4, 0x7f10026a

    invoke-virtual {p0, v4}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 73
    .local v1, "comment":Landroid/widget/TextView;
    :try_start_1
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v6, v6, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->imgUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 74
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->body:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v4, 0x7f090131

    invoke-virtual {p0, v4}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%s"

    iget-object v6, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget v6, v6, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->commentCount:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->like:Landroid/widget/TextView;

    const v5, 0x7f0901a7

    invoke-virtual {p0, v5}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    iget-object v7, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget v7, v7, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-boolean v4, v4, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->isLike:Z

    if-eqz v4, :cond_2

    .line 80
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->like:Landroid/widget/TextView;

    const v5, 0x7f020151

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :goto_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->like:Landroid/widget/TextView;

    new-instance v5, Lcom/cashwalk/cashwalk/util/PhotoViewActivity$1;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity$1;-><init>(Lcom/cashwalk/cashwalk/util/PhotoViewActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void

    .line 54
    .end local v0    # "body":Landroid/widget/TextView;
    .end local v1    # "comment":Landroid/widget/TextView;
    .end local v3    # "pv":Luk/co/senab/photoview/PhotoView;
    :cond_0
    const/4 v4, 0x0

    :try_start_2
    iput-boolean v4, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->isWinnerList:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->finish()V

    goto/16 :goto_0

    .line 57
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    :try_start_3
    iput-boolean v4, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->isWinnerList:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 82
    .restart local v0    # "body":Landroid/widget/TextView;
    .restart local v1    # "comment":Landroid/widget/TextView;
    .restart local v3    # "pv":Luk/co/senab/photoview/PhotoView;
    :cond_2
    :try_start_4
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->like:Landroid/widget/TextView;

    const v5, 0x7f020152

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 84
    :catch_1
    move-exception v2

    .line 85
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->finish()V

    goto :goto_1
.end method
