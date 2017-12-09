.class Lcom/cashwalk/cashwalk/cashband/BandSleepActivity$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "BandSleepActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->selectDate(Lorg/joda/time/DateTime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 128
    .local v0, "gson":Lcom/google/gson/Gson;
    new-instance v3, Lcom/google/gson/JsonParser;

    invoke-direct {v3}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 129
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 131
    .local v2, "resultObj":Lcom/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 133
    .local v1, "records":Lcom/google/gson/JsonElement;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;

    const-class v3, Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    invoke-virtual {v0, v1, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    invoke-static {v4, v3}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->access$002(Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;Lcom/cashwalk/cashwalk/model/BandSleepGraph;)Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    .line 134
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->access$000(Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;)Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->access$000(Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;)Lcom/cashwalk/cashwalk/model/BandSleepGraph;

    move-result-object v4

    iget-object v4, v4, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->records:Ljava/util/List;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/cashband/util/SleepDataManager;->convertDrawData(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->access$102(Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 140
    .end local v0    # "gson":Lcom/google/gson/Gson;
    .end local v1    # "records":Lcom/google/gson/JsonElement;
    .end local v2    # "resultObj":Lcom/google/gson/JsonElement;
    :cond_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->access$200(Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;)V

    .line 141
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;->access$300(Lcom/cashwalk/cashwalk/cashband/BandSleepActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 142
    return-void
.end method
