.class Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "TimelineListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2;

.field final synthetic val$dialog:Landroid/content/DialogInterface;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2;Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "this$2"    # Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2$1;->this$2:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const v5, 0x7f090143

    const/4 v4, 0x0

    .line 251
    :try_start_0
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2$1;->this$2:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->access$200(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2$1;->this$2:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->access$200(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090246

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 263
    return-void

    .line 254
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2$1;->this$2:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->access$200(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2$1;->this$2:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->access$200(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090143

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    iget-object v1, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2$1;->this$2:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->access$200(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2$1;->this$2:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5$2;->this$1:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter$5;->this$0:Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;->access$200(Lcom/cashwalk/cashwalk/adapter/TimelineListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
