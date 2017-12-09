.class Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$7;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "StatLineChartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->dayStepUploadCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

.field final synthetic val$yesterdayString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    .prologue
    .line 724
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$7;->val$yesterdayString:Ljava/lang/String;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 728
    :try_start_0
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$500(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$7;->val$yesterdayString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;->deleteDay(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
