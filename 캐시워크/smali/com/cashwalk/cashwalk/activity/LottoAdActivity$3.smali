.class Lcom/cashwalk/cashwalk/activity/LottoAdActivity$3;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "LottoAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->getLottoWinnerList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 370
    :try_start_0
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 371
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseLottoWinnerList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 372
    .local v1, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Winner;>;"
    sput-object v1, Lcom/cashwalk/cashwalk/CashWalkApp;->winnerArrayList:Ljava/util/ArrayList;

    .line 373
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v2, v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$500(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;Ljava/util/ArrayList;)V

    .line 381
    .end local v1    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Winner;>;"
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$600(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
