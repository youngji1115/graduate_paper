.class Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$5;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "StatLineChartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->refreshData(Lorg/joda/time/DateTime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 234
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 235
    if-eqz p1, :cond_0

    const-string v1, "error"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$302(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 238
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseStatList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$302(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 239
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$400(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$302(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0
.end method
