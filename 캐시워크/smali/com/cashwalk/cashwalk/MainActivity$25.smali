.class Lcom/cashwalk/cashwalk/MainActivity$25;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity;->getLottoWinnerList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/MainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$25;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 1384
    :try_start_0
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1385
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseLottoWinnerList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1386
    .local v1, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Winner;>;"
    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity$25;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v2, v1}, Lcom/cashwalk/cashwalk/MainActivity;->access$2100(Lcom/cashwalk/cashwalk/MainActivity;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1395
    .end local v1    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Winner;>;"
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity$25;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/MainActivity;->access$2000(Lcom/cashwalk/cashwalk/MainActivity;)V

    .line 1396
    return-void

    .line 1388
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity$25;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/MainActivity;->access$2200(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1391
    :catch_0
    move-exception v0

    .line 1392
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
