.class Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "BandSleepRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->requestData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 13
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 133
    if-eqz p1, :cond_4

    .line 134
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 135
    .local v1, "gson":Lcom/google/gson/Gson;
    new-instance v7, Lcom/google/gson/JsonParser;

    invoke-direct {v7}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    .line 136
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    const-string v8, "result"

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    .line 138
    .local v6, "resultObj":Lcom/google/gson/JsonElement;
    const-class v7, [Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    invoke-virtual {v1, v6, v7}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    .line 140
    .local v5, "records":[Lcom/cashwalk/cashwalk/model/BandSleepGraph;
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->access$000(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)Lorg/joda/time/DateTime;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v7

    invoke-virtual {v7}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v7

    invoke-virtual {v7}, Lorg/joda/time/DateTime$Property;->withMaximumValue()Lorg/joda/time/DateTime;

    move-result-object v0

    .line 141
    .local v0, "beforeLastDayOfMonth":Lorg/joda/time/DateTime;
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->access$100(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)Lorg/joda/time/DateTime;

    move-result-object v3

    .line 143
    .local v3, "lastDayOfMonth":Lorg/joda/time/DateTime;
    const/4 v2, 0x0

    .line 145
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

    .line 147
    array-length v8, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_0

    aget-object v4, v5, v7

    .line 148
    .local v4, "record":Lcom/cashwalk/cashwalk/model/BandSleepGraph;
    const-string/jumbo v9, "yyyy-MM-dd"

    invoke-virtual {v3, v9}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/joda/time/DateTime;

    iget-object v11, v4, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->date:Ljava/lang/String;

    sget-object v12, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-direct {v10, v11, v12}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)V

    const-string/jumbo v11, "yyyy-MM-dd"

    invoke-virtual {v10, v11}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 149
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->access$200(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 150
    const/4 v2, 0x1

    .line 155
    .end local v4    # "record":Lcom/cashwalk/cashwalk/model/BandSleepGraph;
    :cond_0
    if-nez v2, :cond_1

    .line 156
    const-string/jumbo v7, "yyyy-MM-dd"

    invoke-virtual {v3, v7}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    invoke-static {v8}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->access$300(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)Lorg/joda/time/DateTime;

    move-result-object v8

    const-string/jumbo v9, "yyyy-MM-dd"

    invoke-virtual {v8, v9}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 158
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->access$200(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v9, Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    invoke-direct {v9}, Lcom/cashwalk/cashwalk/model/BandSleepGraph;-><init>()V

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 162
    :cond_1
    const/4 v2, 0x0

    .line 163
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v3

    goto :goto_0

    .line 147
    .restart local v4    # "record":Lcom/cashwalk/cashwalk/model/BandSleepGraph;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 166
    .end local v4    # "record":Lcom/cashwalk/cashwalk/model/BandSleepGraph;
    :cond_3
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->access$400(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)V

    .line 167
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->access$500(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)V

    .line 168
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->access$600(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)V

    .line 169
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->access$700(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)V

    .line 171
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->access$800(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 172
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->access$900(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;FF)V

    .line 177
    .end local v0    # "beforeLastDayOfMonth":Lorg/joda/time/DateTime;
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "isRecordAdd":Z
    .end local v3    # "lastDayOfMonth":Lorg/joda/time/DateTime;
    .end local v5    # "records":[Lcom/cashwalk/cashwalk/model/BandSleepGraph;
    .end local v6    # "resultObj":Lcom/google/gson/JsonElement;
    :cond_4
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->access$802(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;Z)Z

    .line 178
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;->access$1000(Lcom/cashwalk/cashwalk/cashband/BandSleepRecordActivity;)Landroid/widget/ProgressBar;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 179
    return-void
.end method
