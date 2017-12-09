.class Lcom/cashwalk/cashwalk/activity/LottoActivity$2;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "LottoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/LottoActivity;->refreshLotto(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LottoActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    iput p2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$2;->val$position:I

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const v7, 0x7f090141

    const/4 v6, 0x0

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->access$000(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->access$000(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 189
    :cond_0
    if-eqz p1, :cond_1

    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 190
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseLottoList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 192
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Lotto;>;"
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->access$100(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    const v4, 0x7f0901eb

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    iget v3, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$2;->val$position:I

    invoke-static {v2, v1, v3}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->access$200(Lcom/cashwalk/cashwalk/activity/LottoActivity;Ljava/util/ArrayList;I)V

    .line 202
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-static {v2, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->access$300(Lcom/cashwalk/cashwalk/activity/LottoActivity;Ljava/util/ArrayList;)V

    .line 207
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Lotto;>;"
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->access$400(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 212
    :goto_1
    return-void

    .line 204
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    const v4, 0x7f090141

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-virtual {v3, v7}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 210
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
