.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "StepBetTimelineDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->refresh(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

.field final synthetic val$moveToBottom:Z


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    iput-boolean p2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->val$moveToBottom:Z

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 16
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 182
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v11}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$300(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 184
    :try_start_0
    const-string v11, "result"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-static {v11}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseStepBetTimelineComment(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    .line 187
    .local v4, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v11}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    move-result-object v11

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    iput v12, v11, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->commentCount:I

    .line 189
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v11}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$400(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 190
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v11}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$500(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Landroid/widget/TextView;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    const v13, 0x7f0901a6

    invoke-virtual {v12, v13}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v15}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    move-result-object v15

    iget v15, v15, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v15}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    move-result-object v15

    iget v15, v15, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->commentCount:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_3

    .line 193
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;

    .line 195
    .local v3, "commentItem":Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v11}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$600(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f0400b6

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 197
    .local v10, "v":Landroid/view/View;
    const v11, 0x7f1001f0

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 198
    .local v8, "profile":Landroid/widget/ImageView;
    const v11, 0x7f1001f1

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 199
    .local v7, "nickname":Landroid/widget/TextView;
    const v11, 0x7f10041d

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 200
    .local v1, "ago":Landroid/widget/TextView;
    const v11, 0x7f100268

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 201
    .local v2, "body":Landroid/widget/TextView;
    const v11, 0x7f100420

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 203
    .local v9, "report":Landroid/widget/TextView;
    iget-object v11, v3, Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v11, v11, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    if-eqz v11, :cond_0

    iget-object v11, v3, Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v11, v11, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 204
    iget-object v11, v3, Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v11, v11, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    const-string v12, "http"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 205
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v11}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v11

    iget-object v12, v3, Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v12, v12, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v11

    const v12, 0x7f020221

    invoke-virtual {v11, v12}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v11

    new-instance v12, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v12}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v11, v12}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 211
    :cond_0
    :goto_1
    iget-object v11, v3, Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v11, v11, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    iget-object v12, v3, Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;->dateTime:Lorg/joda/time/DateTime;

    invoke-static {v11, v12}, Lcom/cashwalk/cashwalk/util/Utils;->getAgoString(Landroid/content/Context;Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v11, v3, Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;->body:Ljava/lang/String;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    new-instance v11, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v3}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$1;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;)V

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    new-instance v11, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v3}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;)V

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v11}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$400(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 269
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->val$moveToBottom:Z

    if-eqz v11, :cond_1

    .line 270
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v11}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$700(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v11

    new-instance v12, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$3;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;)V

    invoke-virtual {v11, v12}, Landroid/support/v4/widget/NestedScrollView;->post(Ljava/lang/Runnable;)Z

    .line 192
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 207
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v11}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v11

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v12

    iget-object v13, v3, Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v13, v13, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v11

    const v12, 0x7f020221

    invoke-virtual {v11, v12}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v11

    new-instance v12, Lcom/cashwalk/cashwalk/util/CircleTransformation;

    invoke-direct {v12}, Lcom/cashwalk/cashwalk/util/CircleTransformation;-><init>()V

    invoke-virtual {v11, v12}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 278
    .end local v1    # "ago":Landroid/widget/TextView;
    .end local v2    # "body":Landroid/widget/TextView;
    .end local v3    # "commentItem":Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;
    .end local v4    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;>;"
    .end local v6    # "i":I
    .end local v7    # "nickname":Landroid/widget/TextView;
    .end local v8    # "profile":Landroid/widget/ImageView;
    .end local v9    # "report":Landroid/widget/TextView;
    .end local v10    # "v":Landroid/view/View;
    :catch_0
    move-exception v5

    .line 279
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 281
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    return-void
.end method
