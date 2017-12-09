.class Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$7;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "CashBandMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->saveSleepDataInServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

.field final synthetic val$oneDaySleeps:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$7;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$7;->val$oneDaySleeps:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 602
    const-string v1, "result"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$7;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$1700(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Lcom/cashwalk/cashwalk/util/BandDBHelper;

    move-result-object v2

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$7;->val$oneDaySleeps:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/model/BandSleep;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/model/BandSleep;->saveTime:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->updateSleepIsSend(Ljava/lang/String;)V

    .line 606
    :cond_0
    return-void
.end method
