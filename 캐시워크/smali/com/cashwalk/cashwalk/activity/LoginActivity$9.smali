.class Lcom/cashwalk/cashwalk/activity/LoginActivity$9;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/LoginActivity;->syncLocalDB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

.field final synthetic val$mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LoginActivity;Lcom/cashwalk/cashwalk/util/StepsDBHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/LoginActivity;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$9;->val$mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 483
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->access$600(Lcom/cashwalk/cashwalk/activity/LoginActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 484
    if-eqz p1, :cond_0

    const-string v2, "error"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 486
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v1, "todayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Stat;>;"
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseStatList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 490
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 491
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$9;->val$mStepsDBHelper:Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    iget-object v4, v2, Lcom/cashwalk/cashwalk/util/network/model/Stat;->records:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/Stat;->date:Lorg/joda/time/DateTime;

    invoke-virtual {v3, v4, v2}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;->insert(Ljava/util/ArrayList;Lorg/joda/time/DateTime;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .end local v1    # "todayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Stat;>;"
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->access$500(Lcom/cashwalk/cashwalk/activity/LoginActivity;)V

    .line 499
    return-void

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
