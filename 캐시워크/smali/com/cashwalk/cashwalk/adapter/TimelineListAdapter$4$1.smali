.class Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "TimelineListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4$1;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4$1;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->access$100(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4$1;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;

    iget v2, v2, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->val$tempPostion:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 202
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "cancelLike"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4$1;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->val$holder:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->iv_like_icon:Landroid/widget/ImageView;

    const v2, 0x7f02014f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4$1;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->val$contentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    .line 205
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4$1;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->access$100(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4$1;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;

    iget v2, v2, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->val$tempPostion:I

    iget-object v3, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4$1;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->val$contentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 208
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4$1;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->val$contentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->isLike:Z

    .line 218
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4$1;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->val$holder:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->tv_like_comment_count:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4$1;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->access$200(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0901a6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4$1;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->val$contentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget v5, v5, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4$1;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->val$contentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget v5, v5, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->commentCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :goto_1
    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4$1;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->val$contentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    .line 211
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4$1;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->access$100(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4$1;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;

    iget v2, v2, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->val$tempPostion:I

    iget-object v3, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4$1;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->val$contentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 214
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4$1;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->val$contentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->isLike:Z

    .line 215
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4$1;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$4;->val$holder:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$ViewHolder;->iv_like_icon:Landroid/widget/ImageView;

    const v2, 0x7f020150

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
