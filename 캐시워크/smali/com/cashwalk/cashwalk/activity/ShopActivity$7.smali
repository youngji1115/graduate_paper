.class Lcom/cashwalk/cashwalk/activity/ShopActivity$7;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "ShopActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/ShopActivity;->getLottoWinnerList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/ShopActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/ShopActivity;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 255
    :try_start_0
    const-string v6, "result"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 256
    const-string v6, "result"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseLottoWinnerList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    .line 257
    .local v3, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Winner;>;"
    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->access$700(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Landroid/widget/RelativeLayout;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 259
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v4, "resultTextView":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v5, "textList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 265
    new-instance v7, Lorg/joda/time/DateTime;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v6, v6, Lcom/cashwalk/cashwalk/util/network/model/Winner;->created:Ljava/lang/String;

    invoke-direct {v7, v6}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    const-string v6, "HH:mm"

    invoke-virtual {v7, v6}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "getDateTime":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v6, " | "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v6, v6, Lcom/cashwalk/cashwalk/util/network/model/Winner;->nickname:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\ub2d8\uc774 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iget-object v6, v6, Lcom/cashwalk/cashwalk/util/network/model/Winner;->title:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\uc5d0 \ub2f9\ucca8\ub418\uc5c8\uc2b5\ub2c8\ub2e4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    .end local v1    # "getDateTime":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->access$800(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->access$800(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;

    move-result-object v6

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Lcom/cashwalk/cashwalk/util/VerticalMarqueeTextView;->setMarqueeSpeed(I)V

    .line 283
    .end local v2    # "i":I
    .end local v3    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Winner;>;"
    .end local v4    # "resultTextView":Ljava/lang/StringBuilder;
    .end local v5    # "textList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 277
    :cond_1
    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->access$700(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Landroid/widget/RelativeLayout;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
