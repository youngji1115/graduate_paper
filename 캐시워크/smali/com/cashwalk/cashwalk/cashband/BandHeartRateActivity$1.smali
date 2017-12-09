.class Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "BandHeartRateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->selectDate(Lorg/joda/time/DateTime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    .line 113
    if-eqz p1, :cond_0

    .line 114
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 115
    .local v1, "gson":Lcom/google/gson/Gson;
    new-instance v6, Lcom/google/gson/JsonParser;

    invoke-direct {v6}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    .line 116
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    const-string v7, "result"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    .line 118
    .local v4, "resultObj":Lcom/google/gson/JsonElement;
    const-class v6, [Lcom/cashwalk/cashwalk/model/BandHeart;

    invoke-virtual {v1, v4, v6}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/cashwalk/cashwalk/model/BandHeart;

    .line 121
    .local v3, "resultData":[Lcom/cashwalk/cashwalk/model/BandHeart;
    :try_start_0
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->access$002(Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;I)I

    .line 122
    const/4 v6, 0x0

    aget-object v6, v3, v6

    iget-object v6, v6, Lcom/cashwalk/cashwalk/model/BandHeart;->records:[I

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget v2, v6, v5

    .line 123
    .local v2, "i":I
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;

    invoke-static {v8}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->access$100(Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;)Ljava/util/List;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 125
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 131
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v3    # "resultData":[Lcom/cashwalk/cashwalk/model/BandHeart;
    .end local v4    # "resultObj":Lcom/google/gson/JsonElement;
    :cond_0
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->access$200(Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;)V

    .line 132
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;->access$300(Lcom/cashwalk/cashwalk/cashband/BandHeartRateActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 134
    return-void
.end method
