.class Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$6;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "StatLineChartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->syncLocalDB(Lorg/joda/time/DateTime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

.field final synthetic val$setDate:Lorg/joda/time/DateTime;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Lorg/joda/time/DateTime;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$6;->val$setDate:Lorg/joda/time/DateTime;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const v8, 0x7f090141

    const/4 v7, 0x0

    .line 260
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)Landroid/widget/ProgressBar;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 261
    if-eqz p1, :cond_0

    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 263
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v3, "todayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Stat;>;"
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseStatList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    .line 268
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_4

    .line 269
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$500(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    move-result-object v5

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    iget-object v6, v4, Lcom/cashwalk/cashwalk/util/network/model/Stat;->records:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Stat;->date:Lorg/joda/time/DateTime;

    invoke-virtual {v5, v6, v4}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;->insert(Ljava/util/ArrayList;Lorg/joda/time/DateTime;)V

    .line 271
    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2}, Lorg/joda/time/DateTime;-><init>()V

    .line 273
    .local v2, "setToday":Lorg/joda/time/DateTime;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$6;->val$setDate:Lorg/joda/time/DateTime;

    if-eqz v4, :cond_3

    .line 275
    const-string v4, "YYYY-MM-dd"

    invoke-virtual {v2, v4}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$6;->val$setDate:Lorg/joda/time/DateTime;

    const-string v6, "YYYY-MM-dd"

    invoke-virtual {v5, v6}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 276
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$500(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;->getTodaySteps()Ljava/util/ArrayList;

    move-result-object v1

    .line 277
    .local v1, "getLocalData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/model/StepsTableModel;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 278
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-static {v4, v1}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$600(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Ljava/util/ArrayList;)V

    .line 301
    .end local v1    # "getLocalData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/model/StepsTableModel;>;"
    .end local v2    # "setToday":Lorg/joda/time/DateTime;
    .end local v3    # "todayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Stat;>;"
    :cond_0
    :goto_0
    return-void

    .line 280
    .restart local v1    # "getLocalData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/model/StepsTableModel;>;"
    .restart local v2    # "setToday":Lorg/joda/time/DateTime;
    .restart local v3    # "todayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Stat;>;"
    :cond_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-static {v4, v3}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$302(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 281
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-static {v4, v3}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$400(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    .end local v1    # "getLocalData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/model/StepsTableModel;>;"
    .end local v2    # "setToday":Lorg/joda/time/DateTime;
    .end local v3    # "todayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Stat;>;"
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-virtual {v5, v8}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 284
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "setToday":Lorg/joda/time/DateTime;
    .restart local v3    # "todayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Stat;>;"
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-static {v4, v3}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$302(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 285
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-static {v4, v3}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$400(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 288
    :cond_3
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-static {v4, v3}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$302(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 289
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-static {v4, v3}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$400(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 294
    .end local v2    # "setToday":Lorg/joda/time/DateTime;
    :cond_4
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    const v6, 0x7f090141

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
