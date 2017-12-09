.class Lcom/cashwalk/cashwalk/util/PhotoViewActivity$2;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "PhotoViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->onLikeClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/util/PhotoViewActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/util/PhotoViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/util/PhotoViewActivity;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity$2;->this$0:Lcom/cashwalk/cashwalk/util/PhotoViewActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 102
    :try_start_0
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "cancelLike"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity$2;->this$0:Lcom/cashwalk/cashwalk/util/PhotoViewActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->access$200(Lcom/cashwalk/cashwalk/util/PhotoViewActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f020152

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 104
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity$2;->this$0:Lcom/cashwalk/cashwalk/util/PhotoViewActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->access$000(Lcom/cashwalk/cashwalk/util/PhotoViewActivity;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    move-result-object v1

    iget v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity$2;->this$0:Lcom/cashwalk/cashwalk/util/PhotoViewActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->access$200(Lcom/cashwalk/cashwalk/util/PhotoViewActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity$2;->this$0:Lcom/cashwalk/cashwalk/util/PhotoViewActivity;

    const v3, 0x7f0901a7

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity$2;->this$0:Lcom/cashwalk/cashwalk/util/PhotoViewActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->access$000(Lcom/cashwalk/cashwalk/util/PhotoViewActivity;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    move-result-object v4

    iget v4, v4, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity$2;->this$0:Lcom/cashwalk/cashwalk/util/PhotoViewActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->access$302(Lcom/cashwalk/cashwalk/util/PhotoViewActivity;Z)Z

    .line 117
    :goto_1
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity$2;->this$0:Lcom/cashwalk/cashwalk/util/PhotoViewActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->access$200(Lcom/cashwalk/cashwalk/util/PhotoViewActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f020151

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 108
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/PhotoViewActivity$2;->this$0:Lcom/cashwalk/cashwalk/util/PhotoViewActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;->access$000(Lcom/cashwalk/cashwalk/util/PhotoViewActivity;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    move-result-object v1

    iget v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
