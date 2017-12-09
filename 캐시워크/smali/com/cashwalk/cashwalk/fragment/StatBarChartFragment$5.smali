.class Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$5;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "StatBarChartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->refreshData(ILorg/joda/time/DateTime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/4 v10, 0x1

    .line 308
    iget-object v8, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v8}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$500(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Landroid/widget/ProgressBar;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 310
    if-eqz p1, :cond_4

    const-string v8, "error"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 312
    :try_start_0
    const-string v8, "result"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-static {v8}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseStatList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 314
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Stat;>;"
    iget-object v8, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v8}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)I

    move-result v8

    if-ne v8, v10, :cond_5

    .line 316
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v5, "tempArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Stat;>;"
    iget-object v8, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v8}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/joda/time/DateTime;->withDayOfWeek(I)Lorg/joda/time/DateTime;

    move-result-object v6

    .line 318
    .local v6, "tempDateTime":Lorg/joda/time/DateTime;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v8, 0x7

    if-ge v2, v8, :cond_0

    .line 319
    new-instance v7, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    invoke-direct {v7}, Lcom/cashwalk/cashwalk/util/network/model/Stat;-><init>()V

    .line 320
    .local v7, "tempStat":Lcom/cashwalk/cashwalk/util/network/model/Stat;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lcom/cashwalk/cashwalk/util/network/model/Stat;->records:Ljava/util/ArrayList;

    .line 321
    const/4 v8, 0x0

    iput v8, v7, Lcom/cashwalk/cashwalk/util/network/model/Stat;->steps:I

    .line 322
    invoke-virtual {v6, v2}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object v8

    iput-object v8, v7, Lcom/cashwalk/cashwalk/util/network/model/Stat;->date:Lorg/joda/time/DateTime;

    .line 323
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    .end local v7    # "tempStat":Lcom/cashwalk/cashwalk/util/network/model/Stat;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 328
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 329
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    iget-object v8, v8, Lcom/cashwalk/cashwalk/util/network/model/Stat;->date:Lorg/joda/time/DateTime;

    const-string v9, "YYYY-MM-dd"

    invoke-virtual {v8, v9}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    iget-object v8, v8, Lcom/cashwalk/cashwalk/util/network/model/Stat;->date:Lorg/joda/time/DateTime;

    const-string v10, "YYYY-MM-dd"

    invoke-virtual {v8, v10}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 330
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    iget v9, v9, Lcom/cashwalk/cashwalk/util/network/model/Stat;->steps:I

    iput v9, v8, Lcom/cashwalk/cashwalk/util/network/model/Stat;->steps:I

    .line 328
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 327
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 334
    .end local v3    # "j":I
    :cond_3
    iget-object v8, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$602(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;Lorg/joda/time/DateTime;)Lorg/joda/time/DateTime;

    .line 335
    iget-object v8, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v8, v5}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$702(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 336
    iget-object v8, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    iget-object v9, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v9}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$700(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$800(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;Ljava/util/ArrayList;)V

    .line 368
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Stat;>;"
    .end local v2    # "i":I
    .end local v5    # "tempArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Stat;>;"
    .end local v6    # "tempDateTime":Lorg/joda/time/DateTime;
    :cond_4
    :goto_3
    return-void

    .line 337
    .restart local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Stat;>;"
    :cond_5
    iget-object v8, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v8}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 340
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .restart local v5    # "tempArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Stat;>;"
    iget-object v8, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v8}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v8

    invoke-virtual {v8}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v8

    invoke-virtual {v8}, Lorg/joda/time/DateTime$Property;->withMinimumValue()Lorg/joda/time/DateTime;

    move-result-object v6

    .line 343
    .restart local v6    # "tempDateTime":Lorg/joda/time/DateTime;
    iget-object v8, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v8}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v8

    invoke-virtual {v8}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v8

    invoke-virtual {v8}, Lorg/joda/time/DateTime$Property;->withMaximumValue()Lorg/joda/time/DateTime;

    move-result-object v8

    const-string v9, "dd"

    invoke-virtual {v8, v9}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 344
    .local v4, "monCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v4, :cond_6

    .line 345
    new-instance v7, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    invoke-direct {v7}, Lcom/cashwalk/cashwalk/util/network/model/Stat;-><init>()V

    .line 346
    .restart local v7    # "tempStat":Lcom/cashwalk/cashwalk/util/network/model/Stat;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lcom/cashwalk/cashwalk/util/network/model/Stat;->records:Ljava/util/ArrayList;

    .line 347
    const/4 v8, 0x0

    iput v8, v7, Lcom/cashwalk/cashwalk/util/network/model/Stat;->steps:I

    .line 348
    invoke-virtual {v6, v2}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object v8

    iput-object v8, v7, Lcom/cashwalk/cashwalk/util/network/model/Stat;->date:Lorg/joda/time/DateTime;

    .line 349
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 353
    .end local v7    # "tempStat":Lcom/cashwalk/cashwalk/util/network/model/Stat;
    :cond_6
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_9

    .line 354
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_8

    .line 355
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    iget-object v8, v8, Lcom/cashwalk/cashwalk/util/network/model/Stat;->date:Lorg/joda/time/DateTime;

    const-string v9, "YYYY-MM-dd"

    invoke-virtual {v8, v9}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    iget-object v8, v8, Lcom/cashwalk/cashwalk/util/network/model/Stat;->date:Lorg/joda/time/DateTime;

    const-string v10, "YYYY-MM-dd"

    invoke-virtual {v8, v10}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 356
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    iget v9, v9, Lcom/cashwalk/cashwalk/util/network/model/Stat;->steps:I

    iput v9, v8, Lcom/cashwalk/cashwalk/util/network/model/Stat;->steps:I

    .line 354
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 353
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 360
    .end local v3    # "j":I
    :cond_9
    iget-object v8, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v8, v6}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$602(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;Lorg/joda/time/DateTime;)Lorg/joda/time/DateTime;

    .line 361
    iget-object v8, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v8, v5}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$902(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 362
    iget-object v8, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    iget-object v9, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v9}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$900(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$800(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 364
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Stat;>;"
    .end local v2    # "i":I
    .end local v4    # "monCount":I
    .end local v5    # "tempArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Stat;>;"
    .end local v6    # "tempDateTime":Lorg/joda/time/DateTime;
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3
.end method
