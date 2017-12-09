.class Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "LottoWinnerListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->like(Ljava/lang/String;Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

.field final synthetic val$item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

.field final synthetic val$position:I

.field final synthetic val$vh:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;ILcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    iput p2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->val$position:I

    iput-object p3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->val$vh:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;

    iput-object p4, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->val$item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 391
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->access$900(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 392
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "cancelLike"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->val$vh:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->likeCnt:Landroid/widget/TextView;

    const v2, 0x7f02014f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 394
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->val$item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    .line 395
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->access$900(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->val$position:I

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->val$item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 396
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$200(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->val$item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 403
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->val$vh:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->likeCnt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    const v3, 0x7f0901a7

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->val$item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget v4, v4, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    :goto_1
    return-void

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->val$item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    .line 399
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->access$900(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->val$position:I

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->val$item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 400
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$200(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->val$item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$6;->val$vh:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->likeCnt:Landroid/widget/TextView;

    const v2, 0x7f020150

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
