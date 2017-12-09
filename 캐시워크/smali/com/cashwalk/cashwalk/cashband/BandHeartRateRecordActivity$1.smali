.class Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "BandHeartRateRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->requestData(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;

.field final synthetic val$startDate:Lorg/joda/time/DateTime;

.field final synthetic val$today:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;Lorg/joda/time/DateTime;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity$1;->val$startDate:Lorg/joda/time/DateTime;

    iput-object p3, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity$1;->val$today:Ljava/lang/String;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 13
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 198
    if-eqz p1, :cond_5

    .line 200
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 201
    .local v1, "gson":Lcom/google/gson/Gson;
    new-instance v7, Lcom/google/gson/JsonParser;

    invoke-direct {v7}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    .line 202
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    const-string v8, "result"

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    .line 204
    .local v6, "resultObj":Lcom/google/gson/JsonElement;
    const-class v7, [Lcom/cashwalk/cashwalk/model/BandHeart;

    invoke-virtual {v1, v6, v7}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/cashwalk/cashwalk/model/BandHeart;

    .line 206
    .local v5, "records":[Lcom/cashwalk/cashwalk/model/BandHeart;
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity$1;->val$startDate:Lorg/joda/time/DateTime;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v7

    invoke-virtual {v7}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v7

    invoke-virtual {v7}, Lorg/joda/time/DateTime$Property;->withMaximumValue()Lorg/joda/time/DateTime;

    move-result-object v0

    .line 207
    .local v0, "beforeLastDayOfMonth":Lorg/joda/time/DateTime;
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->access$000(Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;)Lorg/joda/time/DateTime;

    move-result-object v3

    .line 209
    .local v3, "lastDayOfMonth":Lorg/joda/time/DateTime;
    const/4 v2, 0x0

    .line 211
    .local v2, "isRecordAdd":Z
    :goto_0
    const-string/jumbo v7, "yyyy-MM-dd"

    invoke-virtual {v0, v7}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "yyyy-MM-dd"

    invoke-virtual {v3, v8}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 213
    array-length v8, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_0

    aget-object v4, v5, v7

    .line 214
    .local v4, "record":Lcom/cashwalk/cashwalk/model/BandHeart;
    const-string/jumbo v9, "yyyy-MM-dd"

    invoke-virtual {v3, v9}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/joda/time/DateTime;

    iget-object v11, v4, Lcom/cashwalk/cashwalk/model/BandHeart;->date:Ljava/lang/String;

    sget-object v12, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-direct {v10, v11, v12}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)V

    const-string/jumbo v11, "yyyy-MM-dd"

    invoke-virtual {v10, v11}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 215
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->access$100(Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 216
    const/4 v2, 0x1

    .line 221
    .end local v4    # "record":Lcom/cashwalk/cashwalk/model/BandHeart;
    :cond_0
    if-nez v2, :cond_1

    .line 222
    const-string/jumbo v7, "yyyy-MM-dd"

    invoke-virtual {v3, v7}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity$1;->val$today:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 224
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->access$100(Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v9, Lcom/cashwalk/cashwalk/model/BandHeart;

    invoke-direct {v9}, Lcom/cashwalk/cashwalk/model/BandHeart;-><init>()V

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 228
    :cond_1
    const/4 v2, 0x0

    .line 229
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v3

    goto :goto_0

    .line 213
    .restart local v4    # "record":Lcom/cashwalk/cashwalk/model/BandHeart;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 232
    .end local v4    # "record":Lcom/cashwalk/cashwalk/model/BandHeart;
    :cond_3
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->access$200(Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 233
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->access$302(Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;I)I

    .line 236
    :cond_4
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->access$202(Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;Z)Z

    .line 237
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;

    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;

    invoke-static {v8}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->access$100(Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v7, v8}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->access$402(Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;I)I

    .line 238
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->access$500(Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;)V

    .line 239
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;

    const/4 v8, -0x1

    invoke-static {v7, v8}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->access$600(Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;I)V

    .line 243
    .end local v0    # "beforeLastDayOfMonth":Lorg/joda/time/DateTime;
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "isRecordAdd":Z
    .end local v3    # "lastDayOfMonth":Lorg/joda/time/DateTime;
    .end local v5    # "records":[Lcom/cashwalk/cashwalk/model/BandHeart;
    .end local v6    # "resultObj":Lcom/google/gson/JsonElement;
    :cond_5
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;->access$700(Lcom/cashwalk/cashwalk/cashband/BandHeartRateRecordActivity;)Landroid/widget/ProgressBar;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 244
    return-void
.end method
