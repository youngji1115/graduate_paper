.class Lcom/cashwalk/cashwalk/activity/CashHistoryActivity$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "CashHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->getMyHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 79
    :try_start_0
    const-string v1, "error"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;

    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parsePoint(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/Point;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->access$002(Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;Lcom/cashwalk/cashwalk/util/network/model/Point;)Lcom/cashwalk/cashwalk/util/network/model/Point;

    .line 81
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;->access$100(Lcom/cashwalk/cashwalk/activity/CashHistoryActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
