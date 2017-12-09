.class public Lcom/cashwalk/cashwalk/util/network/RestClient;
.super Ljava/lang/Object;
.source "RestClient.java"


# static fields
.field public static final API_URL:Ljava/lang/String;

.field public static MY_SOCKET_TIMEOUT_MS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/cashwalk/cashwalk/util/Utils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://cashwalkapi-large-env.ap-northeast-1.elasticbeanstalk.com/v1/"

    :goto_0
    sput-object v0, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    .line 40
    const/16 v0, 0x7530

    sput v0, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    return-void

    .line 39
    :cond_0
    const-string v0, "https://api.cashwalk.io/v1/"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static achieveHabit(Lcom/cashwalk/cashwalk/util/network/model/Habit;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "habit"    # Lcom/cashwalk/cashwalk/util/network/model/Habit;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 322
    const-string v1, "achieveHabit is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 323
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 325
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "access_token"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    const-string v1, "habit"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/Habit;->id:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    const-string v1, "habitPage"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/Habit;->pageId:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/Habit;->title:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "record/achieve"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$15;

    invoke-direct {v4, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$15;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$16;

    invoke-direct {v5, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$16;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 349
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 350
    return-object v0

    .line 329
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static checkSmsAuthCode(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 2043
    const-string v1, "checkSmsAuthCode is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 2044
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2046
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "access_token"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2047
    const-string v1, "code"

    invoke-virtual {v3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2051
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "auth/sms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$140;

    invoke-direct {v4, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$140;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$141;

    invoke-direct {v5, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$141;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 2068
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 2069
    return-object v0

    .line 2048
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static checkStepBetDropout(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "stepbetId"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 1317
    const-string v1, "checkStepBetDropout is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1318
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1320
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "access_token"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1321
    const-string v1, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1322
    const-string/jumbo v1, "stepbet"

    invoke-virtual {v3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1323
    const-string/jumbo v1, "timezone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "stepbet/dropout"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$84;

    invoke-direct {v4, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$84;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$85;

    invoke-direct {v5, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$85;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1344
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1345
    return-object v0

    .line 1324
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static createHabit(Lcom/cashwalk/cashwalk/util/network/model/Habit;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 9
    .param p0, "habit"    # Lcom/cashwalk/cashwalk/util/network/model/Habit;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 271
    const-string v1, "createHabit is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 272
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 274
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "access_token"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/Habit;->title:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v1, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string v1, "goal"

    iget v2, p0, Lcom/cashwalk/cashwalk/util/network/model/Habit;->goal:I

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 278
    const-string/jumbo v1, "unit"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/Habit;->unit:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/Habit;->pageId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 280
    const-string v1, "habitPage"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/Habit;->pageId:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    :cond_0
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 284
    .local v6, "days":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/Habit;->days:[Z

    array-length v1, v1

    if-ge v8, v1, :cond_3

    .line 285
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/Habit;->days:[Z

    aget-boolean v7, v1, v8

    .line 286
    .local v7, "enabled":Z
    if-eqz v7, :cond_2

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 292
    :goto_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/Habit;->days:[Z

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v8, v1, :cond_1

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 284
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 289
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 296
    .end local v7    # "enabled":Z
    :cond_3
    const-string v1, "days"

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v6    # "days":Ljava/lang/String;
    .end local v8    # "i":I
    :goto_2
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "habit"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$13;

    invoke-direct {v4, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$13;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$14;

    invoke-direct {v5, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$14;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 317
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 318
    return-object v0

    .line 297
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public static createUser(Lcom/cashwalk/cashwalk/util/network/model/User;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "user"    # Lcom/cashwalk/cashwalk/util/network/model/User;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 73
    const-string v1, "createUser is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 75
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 77
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v1, "uid"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### \uac12 uid)=> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "nickname"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### \uac12nickname => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 84
    const-string v1, "profileUrl"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### \uac12profileUrl => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->kakaoUid:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 88
    const-string v1, "kakao"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->kakaoUid:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### \uac12 kakaoUid=> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->kakaoUid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->fbUid:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 92
    const-string v1, "fb"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->fbUid:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### \uac12 fbUid=> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->fbUid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->recommender:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 96
    const-string v1, "recommender"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->recommender:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### \uac12 recommender=> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->recommender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 99
    :cond_4
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->token:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 100
    const-string/jumbo v1, "token"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### \uac12 token=> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_5
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "user"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$3;

    invoke-direct {v4, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$3;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$4;

    invoke-direct {v5, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$4;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 122
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 123
    return-object v0

    .line 103
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static deleteFriend(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 1802
    const-string v1, "deleteFriend is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1804
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "friend/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?access_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$120;

    invoke-direct {v3, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$120;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$121;

    invoke-direct {v4, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$121;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1820
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1821
    return-object v0
.end method

.method public static deleteHabit(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 383
    const-string v1, "deleteHabit is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 385
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "habit/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?access_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$19;

    invoke-direct {v3, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$19;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$20;

    invoke-direct {v4, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$20;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 401
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 402
    return-object v0
.end method

.method public static deleteRecommendFriend(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 1826
    const-string v1, "deleteRecommendFriend is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1828
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "friend/recommend/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?access_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&owner="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$122;

    invoke-direct {v3, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$122;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$123;

    invoke-direct {v4, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$123;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1844
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1845
    return-object v0
.end method

.method public static deleteUser(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 151
    const-string v1, "deleteUser is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user?access_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$7;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$7;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$8;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$8;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 169
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 170
    return-object v0
.end method

.method public static getAddress(DDLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "lat"    # D
    .param p2, "lng"    # D
    .param p4, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 1372
    const-string v1, "getAddress is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1374
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://maps.googleapis.com/maps/api/geocode/json?latlng="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$88;

    invoke-direct {v2, p4}, Lcom/cashwalk/cashwalk/util/network/RestClient$88;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$89;

    invoke-direct {v3, p4}, Lcom/cashwalk/cashwalk/util/network/RestClient$89;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1390
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1391
    return-object v0
.end method

.method public static getCashBandHeartDayData(Lorg/joda/time/DateTime;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 7
    .param p0, "day"    # Lorg/joda/time/DateTime;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v6, 0x0

    .line 2165
    const-string v3, "getCashBandHeartDayData is called!"

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 2166
    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-virtual {p0, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2167
    .local v0, "from":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object p0

    .line 2168
    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-virtual {p0, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2170
    .local v2, "to":Ljava/lang/String;
    new-instance v1, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "record/heart?access_token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&from="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&to="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$146;

    invoke-direct {v4, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$146;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$147;

    invoke-direct {v5, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$147;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v1, v6, v3, v4, v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 2187
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v3, Lcom/android/volley/DefaultRetryPolicy;

    sget v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v6, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v1, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 2188
    return-object v1
.end method

.method public static getCashBandHeartRecordData(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "startDate"    # Ljava/lang/String;
    .param p1, "endDate"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 2192
    const-string v1, "getCashBandHeartRecordData is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 2194
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "record/heart?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&type=sum"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$148;

    invoke-direct {v2, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$148;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$149;

    invoke-direct {v3, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$149;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 2211
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 2212
    return-object v0
.end method

.method public static getCashBandSleepDayData(Lorg/joda/time/DateTime;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 7
    .param p0, "day"    # Lorg/joda/time/DateTime;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v6, 0x0

    .line 2256
    const-string v3, "getCashBandSleepDayData is called!"

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 2257
    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-virtual {p0, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2258
    .local v0, "from":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object p0

    .line 2259
    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-virtual {p0, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2261
    .local v2, "to":Ljava/lang/String;
    new-instance v1, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "record/sleep?access_token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&from="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&to="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$152;

    invoke-direct {v4, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$152;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$153;

    invoke-direct {v5, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$153;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v1, v6, v3, v4, v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 2278
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v3, Lcom/android/volley/DefaultRetryPolicy;

    sget v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v6, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v1, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 2279
    return-object v1
.end method

.method public static getCashBandSleepRecordData(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 2283
    const-string v1, "getCashBandSleepRecordData is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 2285
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "record/sleep?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&type=sum"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$154;

    invoke-direct {v2, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$154;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$155;

    invoke-direct {v3, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$155;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 2302
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 2303
    return-object v0
.end method

.method public static getCashwalkWeather(DDLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "lat"    # D
    .param p2, "lng"    # D
    .param p4, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 1872
    const-string v1, "getCashwalkWeather is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1874
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "weather?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&lon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$126;

    invoke-direct {v2, p4}, Lcom/cashwalk/cashwalk/util/network/RestClient$126;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$127;

    invoke-direct {v3, p4}, Lcom/cashwalk/cashwalk/util/network/RestClient$127;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1890
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1891
    return-object v0
.end method

.method public static getEventRaffle(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 1498
    const-string v1, "getEventRaffle is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1500
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "event/raffle/popup?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$98;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$98;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$99;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$99;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1516
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### URL => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/volley/toolbox/JsonObjectRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1518
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1519
    return-object v0
.end method

.method public static getEventRaffleVideo(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 1524
    const-string v1, "getEventRaffleVideo is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1526
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "event/raffle/video?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$100;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$100;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$101;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$101;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1542
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1543
    return-object v0
.end method

.method public static getFriendFacebookRecommend(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "fbToken"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 1674
    const-string v1, "getFriendFacebookRecommend is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1676
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friend/recommend/facebook?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&fbToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$112;

    invoke-direct {v2, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$112;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$113;

    invoke-direct {v3, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$113;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1692
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### \ucd94\ucc9c \uce5c\uad6c\ub9ac\uc2a4\ud2b8 => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/volley/toolbox/JsonObjectRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1694
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1695
    return-object v0
.end method

.method public static getFriendList(ILjava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "status"    # I
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v5, 0x0

    .line 1617
    const-string v2, "getFriendList is called!"

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1619
    const-string v1, ""

    .line 1620
    .local v1, "statusString":Ljava/lang/String;
    const/4 v2, -0x1

    if-ne p0, v2, :cond_0

    .line 1621
    const-string v1, ""

    .line 1626
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "friend/list/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?access_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$108;

    invoke-direct {v3, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$108;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$109;

    invoke-direct {v4, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$109;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v5, v2, v3, v4}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1642
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### \uce5c\uad6c\ub9ac\uc2a4\ud2b8 => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/volley/toolbox/JsonObjectRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1644
    new-instance v2, Lcom/android/volley/DefaultRetryPolicy;

    sget v3, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v5, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v2}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1645
    return-object v0

    .line 1623
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFriendPhoneRecommend(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "list"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 1649
    const-string v1, "getFriendPhoneRecommend is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1651
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friend/recommend/phone?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&list="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$110;

    invoke-direct {v2, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$110;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$111;

    invoke-direct {v3, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$111;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1667
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### \ucd94\ucc9c \uce5c\uad6c\ub9ac\uc2a4\ud2b8 => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/volley/toolbox/JsonObjectRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1669
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1670
    return-object v0
.end method

.method public static getFriendRank(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 1922
    const-string v1, "getFriendRank is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1924
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friend/rank?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$130;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$130;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$131;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$131;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1940
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### \uce5c\uad6c\ub7ad\ud0b9 => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/volley/toolbox/JsonObjectRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1941
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1942
    return-object v0
.end method

.method public static getFriendSearch(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "q"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 1849
    const-string v1, "getFriendSearch is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1851
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friend/search/code?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$124;

    invoke-direct {v2, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$124;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$125;

    invoke-direct {v3, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$125;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1867
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1868
    return-object v0
.end method

.method public static getHabit(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 248
    const-string v1, "getHabit is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 250
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "habit?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$11;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$11;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$12;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$12;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 266
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 267
    return-object v0
.end method

.method public static getHabitPreset(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v5, 0x0

    .line 406
    const-string v2, "getHabitPreset is called!"

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 408
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "locale":Ljava/lang/String;
    new-instance v1, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "habit/preset?locale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&access_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$21;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$21;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$22;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$22;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 425
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v2, Lcom/android/volley/DefaultRetryPolicy;

    sget v3, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v5, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v1, v2}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 426
    return-object v1
.end method

.method public static getHomeFeed(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 1896
    const-string v1, "getHomeFeed is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1898
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friend/home/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$128;

    invoke-direct {v2, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$128;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$129;

    invoke-direct {v3, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$129;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1915
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/volley/toolbox/JsonObjectRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1917
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1918
    return-object v0
.end method

.method public static getInvite(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 1418
    const-string v1, "getInvite is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1420
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "invite?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$92;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$92;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$93;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$93;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1436
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1437
    return-object v0
.end method

.method public static getLotto(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 657
    const-string v1, "getLotto is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 659
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "raffle/prizes?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$39;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$39;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$40;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$40;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 675
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 676
    return-object v0
.end method

.method public static getLottoResult(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "freeTrialType"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 600
    const-string v1, "getLottoResult is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 601
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 603
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "access_token"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 604
    const-string v1, "freeTrialType"

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "raffle/prize/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$35;

    invoke-direct {v4, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$35;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$36;

    invoke-direct {v5, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$36;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 625
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 626
    return-object v0

    .line 605
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getLottoWinnerList(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 1947
    const-string v1, "getLottoWinnerList is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1949
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "raffle/winners?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$132;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$132;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$133;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$133;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1965
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### getUrl = > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/volley/toolbox/JsonObjectRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1967
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1968
    return-object v0
.end method

.method public static getLottoWinnerTimeline(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 1004
    const-string v1, "getLottoWinnerTimeline is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1006
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "stepbet/timeline/raffle?locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$64;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$64;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$65;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$65;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1022
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/volley/toolbox/JsonObjectRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1024
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1025
    return-object v0
.end method

.method public static getMyCoupon(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 630
    const-string v1, "getMyCoupon is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 631
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "coupon?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$37;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$37;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$38;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$38;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 647
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 652
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 653
    return-object v0
.end method

.method public static getNewsAll(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 726
    const-string v1, "getNewsAll is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 728
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "news/total?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$45;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$45;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$46;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$46;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 744
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 745
    return-object v0
.end method

.method public static getNewsPersonal(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 680
    const-string v1, "getNewsPersonal is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 682
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "news/rank?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$41;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$41;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$42;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$42;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 698
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 699
    return-object v0
.end method

.method public static getNewsSection(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 703
    const-string v1, "getNewsSection is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 705
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "news/section/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$43;

    invoke-direct {v2, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$43;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$44;

    invoke-direct {v3, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$44;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 721
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 722
    return-object v0
.end method

.method public static getPoint(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 1474
    const-string v1, "getPoint is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1476
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "point?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$96;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$96;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$97;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$97;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1492
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1493
    return-object v0
.end method

.method public static getRecentVersion(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 1395
    const-string v1, "getRecentVersion is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1397
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const-string v1, "https://s3-ap-northeast-1.amazonaws.com/notice.wonderabbit.net/cashwalk-version.txt"

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$90;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$90;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$91;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$91;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1413
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1414
    return-object v0
.end method

.method public static getRpsGameScore(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;I)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
    .param p1, "point"    # I

    .prologue
    const/4 v4, 0x0

    .line 1547
    const-string v1, "getRpsGameScore is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1549
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "raffle/game/rps?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&point="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$102;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$102;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$103;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$103;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1565
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1566
    return-object v0
.end method

.method public static getRpsGameUser(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 1594
    const-string v1, "getRpsGameUser is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1596
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "raffle/game/rps/user?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$106;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$106;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$107;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$107;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1612
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1613
    return-object v0
.end method

.method public static getShopCategory(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 7
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v6, 0x0

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShopCategories is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "shop/category?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&timezone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 579
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "shop/category?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&timezone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$33;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$33;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$34;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$34;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 595
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v6, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 596
    return-object v0
.end method

.method public static getShopItemDetail(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "itemId"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShopItemDetail is called! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 498
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "shop/detail?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&goodsId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$27;

    invoke-direct {v2, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$27;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$28;

    invoke-direct {v3, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$28;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 514
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 515
    return-object v0
.end method

.method public static getShopItemList(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "catId"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 519
    const-string v1, "getShopItemList is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 521
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "shop/list?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$29;

    invoke-direct {v2, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$29;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$30;

    invoke-direct {v3, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$30;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 537
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 538
    return-object v0
.end method

.method public static getStat(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;ZLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "from"    # Lorg/joda/time/DateTime;
    .param p1, "to"    # Lorg/joda/time/DateTime;
    .param p2, "sum"    # Z
    .param p3, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v5, 0x0

    .line 820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStepBetStat is called! from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-virtual {p0, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 824
    if-nez p1, :cond_1

    .line 825
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "record/walk?access_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-virtual {p0, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, "params":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_0

    .line 831
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&type=sum"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 834
    :cond_0
    new-instance v1, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$52;

    invoke-direct {v3, p3}, Lcom/cashwalk/cashwalk/util/network/RestClient$52;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$53;

    invoke-direct {v4, p3}, Lcom/cashwalk/cashwalk/util/network/RestClient$53;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 850
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#### getUrl = > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 852
    new-instance v2, Lcom/android/volley/DefaultRetryPolicy;

    sget v3, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v5, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v1, v2}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 853
    return-object v1

    .line 827
    .end local v0    # "params":Ljava/lang/String;
    .end local v1    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "record/walk?access_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-virtual {p0, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-virtual {p1, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "T23:59:59"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "params":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static getStepBet(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 894
    const-string v1, "getStepBet is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 896
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "stepbet?locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$56;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$56;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$57;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$57;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 912
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 913
    return-object v0
.end method

.method public static getStepBetRank(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 7
    .param p0, "stepbetId"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v6, 0x0

    .line 1075
    const-string v1, "getStepBetRank is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1077
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "stepbet/rank?stepbet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&timezone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$70;

    invoke-direct {v2, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$70;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$71;

    invoke-direct {v3, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$71;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1093
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v6, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1094
    return-object v0
.end method

.method public static getStepBetStat(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 7
    .param p0, "stepbetId"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v6, 0x0

    .line 1052
    const-string v1, "getStepBetStat is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1054
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "stepbet/stat?stepbet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&timezone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$68;

    invoke-direct {v2, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$68;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$69;

    invoke-direct {v3, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$69;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1070
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v6, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1071
    return-object v0
.end method

.method public static getStepBetTimeline(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "stepbetId"    # Ljava/lang/String;
    .param p1, "after"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 974
    const-string v1, "getStepBetTimeline is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 976
    if-nez p1, :cond_0

    .line 977
    const-string p1, ""

    .line 980
    :cond_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "stepbet/timeline?stepbet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&after="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$62;

    invoke-direct {v2, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$62;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$63;

    invoke-direct {v3, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$63;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 996
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/volley/toolbox/JsonObjectRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 998
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 999
    return-object v0
.end method

.method public static getStepBetTimelineComment(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "stepbetId"    # Ljava/lang/String;
    .param p1, "timelineId"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 951
    const-string v1, "getStepBetTimelineComment is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 953
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "stepbet/timeline/comment?stepbet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&timeline="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$60;

    invoke-direct {v2, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$60;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$61;

    invoke-direct {v3, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$61;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 969
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 970
    return-object v0
.end method

.method public static getStepBetTimelineDetail(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "stepbetId"    # Ljava/lang/String;
    .param p1, "timelineId"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 1029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStepBetTimelineDetail is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1031
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "stepbet/timeline/detail?timeline="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&stepbet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$66;

    invoke-direct {v2, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$66;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$67;

    invoke-direct {v3, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$67;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1047
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1048
    return-object v0
.end method

.method public static getTimeline(ZLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "isMine"    # Z
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v5, 0x0

    .line 430
    const-string v2, "getTimeline is called!"

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 434
    if-eqz p0, :cond_0

    .line 435
    const-string v1, "private"

    .line 439
    .local v1, "type":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "timeline?type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&access_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$23;

    invoke-direct {v3, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$23;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$24;

    invoke-direct {v4, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$24;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v5, v2, v3, v4}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 455
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v2, Lcom/android/volley/DefaultRetryPolicy;

    sget v3, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v5, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v2}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 456
    return-object v0

    .line 437
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    const-string v1, "public"

    .restart local v1    # "type":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getTodayStat(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;ZLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "from"    # Lorg/joda/time/DateTime;
    .param p1, "to"    # Lorg/joda/time/DateTime;
    .param p2, "sum"    # Z
    .param p3, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v5, 0x0

    .line 857
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTodayStat is called! from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-virtual {p0, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 861
    if-nez p1, :cond_1

    .line 862
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "record/walk?access_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-virtual {p0, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "params":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_0

    .line 868
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&type=sum"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 871
    :cond_0
    new-instance v1, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$54;

    invoke-direct {v3, p3}, Lcom/cashwalk/cashwalk/util/network/RestClient$54;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$55;

    invoke-direct {v4, p3}, Lcom/cashwalk/cashwalk/util/network/RestClient$55;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 887
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#### getUrl = > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 889
    new-instance v2, Lcom/android/volley/DefaultRetryPolicy;

    sget v3, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v5, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v1, v2}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 890
    return-object v1

    .line 864
    .end local v0    # "params":Ljava/lang/String;
    .end local v1    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "record/walk?access_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-virtual {p0, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-virtual {p1, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "T23:59:59"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "params":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static getUser(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 127
    const-string v1, "getUser is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "user?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$5;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$5;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$6;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$6;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 146
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 147
    return-object v0
.end method

.method public static getVersion(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 749
    const-string v1, "getVersion is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 751
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$47;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$47;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$48;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$48;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 767
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 768
    return-object v0
.end method

.method public static getVideoAdCount(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 1972
    const-string v1, "getVideoAdCount is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1974
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "event/direct/video?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$134;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$134;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$135;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$135;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1990
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1991
    return-object v0
.end method

.method public static getVideoAllAdCount(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 1996
    const-string v1, "getVideoAllAdCount is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1998
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "event/direct?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$136;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$136;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$137;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$137;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 2014
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 2015
    return-object v0
.end method

.method public static getWeather(DDLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "lat"    # D
    .param p2, "lng"    # D
    .param p4, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 1349
    const-string v1, "getWeather is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1351
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://apis.skplanetx.com/weather/current/hourly?version=1&lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&lon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&appKey=7b90dad6-f558-3550-8f4a-f33bf63800b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$86;

    invoke-direct {v2, p4}, Lcom/cashwalk/cashwalk/util/network/RestClient$86;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$87;

    invoke-direct {v3, p4}, Lcom/cashwalk/cashwalk/util/network/RestClient$87;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1367
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1368
    return-object v0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 43
    const-string v1, "log is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 45
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 47
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v1, "uid"

    invoke-virtual {v3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v1, "error"

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "log"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$1;

    invoke-direct {v4, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$1;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$2;

    invoke-direct {v5, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$2;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 68
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 69
    return-object v0

    .line 49
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static participateStepBet(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "stepbetId"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 917
    const-string v1, "participateStepBet is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 918
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 920
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "access_token"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 921
    const-string v1, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 922
    const-string/jumbo v1, "timezone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 923
    if-eqz p0, :cond_0

    .line 924
    const-string/jumbo v1, "stepbet"

    invoke-virtual {v3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "stepbet/participate"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$58;

    invoke-direct {v4, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$58;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$59;

    invoke-direct {v5, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$59;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 946
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 947
    return-object v0

    .line 926
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static postAddFriend(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 1699
    const-string v1, "postAddFriend is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1701
    if-eqz p0, :cond_0

    .line 1702
    const-string v1, "fb_"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1706
    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1708
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "access_token"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1709
    const-string v1, "id"

    invoke-virtual {v3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1710
    const-string/jumbo v1, "type"

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1714
    :goto_1
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "friend/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$114;

    invoke-direct {v4, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$114;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$115;

    invoke-direct {v5, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$115;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1730
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1731
    return-object v0

    .line 1704
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    .end local v3    # "params":Lorg/json/JSONObject;
    :cond_0
    const-string p0, ""

    goto :goto_0

    .line 1711
    .restart local v3    # "params":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static postStepBetCommentReport(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "timelineId"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 1250
    const-string v1, "postStepBetCommentReport is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1251
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1253
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "access_token"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1254
    const-string/jumbo v1, "timeline"

    invoke-virtual {v3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1255
    const-string v1, "date"

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1259
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "stepbet/timeline/comment/report"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$80;

    invoke-direct {v4, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$80;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$81;

    invoke-direct {v5, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$81;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1275
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1276
    return-object v0

    .line 1256
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static postStepBetTimeline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/model/OGTag;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "stepbetId"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "imgUrl"    # Ljava/lang/String;
    .param p4, "loc"    # Landroid/location/Location;
    .param p5, "address"    # Ljava/lang/String;
    .param p6, "tag"    # Lcom/cashwalk/cashwalk/util/network/model/OGTag;
    .param p7, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 1104
    const-string v1, "postStepBetTimeline is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1105
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1107
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "access_token"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1108
    const-string v1, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1109
    const-string/jumbo v1, "stepbet"

    invoke-virtual {v3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1110
    const-string v1, "body"

    invoke-virtual {v3, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1111
    const-string/jumbo v1, "title"

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1112
    if-eqz p3, :cond_0

    .line 1113
    const-string v1, "imageUrl"

    invoke-virtual {v3, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1115
    :cond_0
    if-eqz p4, :cond_1

    .line 1116
    const-string v1, "lat"

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1117
    const-string v1, "lon"

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1119
    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1120
    const-string v1, "address"

    invoke-virtual {v3, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1123
    :cond_2
    if-eqz p6, :cond_3

    .line 1124
    const-string v1, "ogUrl"

    iget-object v2, p6, Lcom/cashwalk/cashwalk/util/network/model/OGTag;->ogUrl:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1125
    const-string v1, "ogImage"

    iget-object v2, p6, Lcom/cashwalk/cashwalk/util/network/model/OGTag;->ogImageUrl:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1126
    const-string v1, "ogDescription"

    iget-object v2, p6, Lcom/cashwalk/cashwalk/util/network/model/OGTag;->ogDescription:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1127
    const-string v1, "ogTitle"

    iget-object v2, p6, Lcom/cashwalk/cashwalk/util/network/model/OGTag;->ogTitle:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1133
    :cond_3
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "stepbet/timeline"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$72;

    invoke-direct {v4, p7}, Lcom/cashwalk/cashwalk/util/network/RestClient$72;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$73;

    invoke-direct {v5, p7}, Lcom/cashwalk/cashwalk/util/network/RestClient$73;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1150
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1151
    return-object v0

    .line 1130
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static postStepBetTimelineComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "stepbetId"    # Ljava/lang/String;
    .param p1, "timelineId"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 1155
    const-string v1, "postStepBetTimelineComment is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1156
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1158
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "access_token"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1159
    const-string v1, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1160
    const-string/jumbo v1, "stepbet"

    invoke-virtual {v3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1161
    const-string/jumbo v1, "timeline"

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1162
    const-string v1, "body"

    invoke-virtual {v3, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "stepbet/timeline/comment"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$74;

    invoke-direct {v4, p3}, Lcom/cashwalk/cashwalk/util/network/RestClient$74;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$75;

    invoke-direct {v5, p3}, Lcom/cashwalk/cashwalk/util/network/RestClient$75;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1183
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1184
    return-object v0

    .line 1163
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static postStepBetTimelineLike(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "stepbetId"    # Ljava/lang/String;
    .param p1, "timelineId"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 1188
    const-string v1, "postStepBetTimelineLike is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postStepBetTimelineLike is called! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postStepBetTimelineLike is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1191
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1193
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "access_token"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1194
    const-string v1, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1195
    const-string/jumbo v1, "stepbet"

    invoke-virtual {v3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1196
    const-string/jumbo v1, "timeline"

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "stepbet/timeline/like"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$76;

    invoke-direct {v4, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$76;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$77;

    invoke-direct {v5, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$77;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1216
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1217
    return-object v0

    .line 1197
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static postStepBetTimelineReport(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "timelineId"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 1221
    const-string v1, "postStepBetTimelineReport is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1222
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1224
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "access_token"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1225
    const-string/jumbo v1, "timeline"

    invoke-virtual {v3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "stepbet/timeline/report"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$78;

    invoke-direct {v4, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$78;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$79;

    invoke-direct {v5, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$79;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1245
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1246
    return-object v0

    .line 1226
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static postUpdateFriend(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 1735
    const-string v1, "postUpdateFriend is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1737
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1739
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "access_token"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1740
    const-string v1, "id"

    invoke-virtual {v3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1744
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "friend/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$116;

    invoke-direct {v4, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$116;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$117;

    invoke-direct {v5, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$117;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1760
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1761
    return-object v0

    .line 1741
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static postUploadFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "phones"    # Ljava/lang/String;
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 1765
    const-string v1, "postUploadFriend is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1767
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1770
    .local v3, "params":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1771
    :cond_0
    const-string p1, "82"

    .line 1774
    :cond_1
    const-string v1, "access_token"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1775
    const-string v1, "list"

    invoke-virtual {v3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1776
    const-string v1, "countryCode"

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1777
    const-string/jumbo v1, "type"

    invoke-virtual {v3, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1781
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "friend/upload"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$118;

    invoke-direct {v4, p3}, Lcom/cashwalk/cashwalk/util/network/RestClient$118;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$119;

    invoke-direct {v5, p3}, Lcom/cashwalk/cashwalk/util/network/RestClient$119;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1797
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1798
    return-object v0

    .line 1778
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static purchaseShopItem(Lcom/cashwalk/cashwalk/util/network/model/ShopItem;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "item"    # Lcom/cashwalk/cashwalk/util/network/model/ShopItem;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 542
    const-string v1, "purchaseShopItem is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 543
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 545
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "access_token"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 546
    const-string v1, "goodsId"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->id:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 547
    const-string v1, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "shop"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$31;

    invoke-direct {v4, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$31;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$32;

    invoke-direct {v5, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$32;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 572
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 573
    return-object v0

    .line 549
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static putRpsGameResult(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 1571
    const-string v1, "putRpsGameResult is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1573
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "raffle/game/rps?access_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$104;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$104;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$105;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/util/network/RestClient$105;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1589
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1590
    return-object v0
.end method

.method public static sendSMS(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5
    .param p0, "phone"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v4, 0x0

    .line 2019
    const-string v1, "sendSMS is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 2021
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "auth/sms?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&phone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/util/network/RestClient$138;

    invoke-direct {v2, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$138;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/RestClient$139;

    invoke-direct {v3, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$139;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 2037
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 2038
    return-object v0
.end method

.method public static setCashBandHeartData(Ljava/lang/String;IIILjava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "max"    # I
    .param p2, "min"    # I
    .param p3, "avg"    # I
    .param p4, "list"    # Ljava/lang/String;
    .param p5, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 2131
    const-string v1, "setCashBandHeartData is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 2133
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2135
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "access_token"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2136
    const-string v1, "date"

    invoke-virtual {v3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2137
    const-string v1, "max"

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2138
    const-string v1, "min"

    invoke-virtual {v3, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2139
    const-string v1, "avg"

    invoke-virtual {v3, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2140
    const-string v1, "list"

    invoke-virtual {v3, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2144
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "record/heart/sync"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$144;

    invoke-direct {v4, p5}, Lcom/cashwalk/cashwalk/util/network/RestClient$144;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$145;

    invoke-direct {v5, p5}, Lcom/cashwalk/cashwalk/util/network/RestClient$145;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 2160
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 2161
    return-object v0

    .line 2141
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setCashBandSleepData(Lcom/cashwalk/cashwalk/model/BandSleepGraph;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 7
    .param p0, "graphData"    # Lcom/cashwalk/cashwalk/model/BandSleepGraph;
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v1, 0x1

    .line 2216
    const-string v2, "setCashBandSleepData is called!"

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 2218
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2220
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->record:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2221
    .local v6, "list":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2223
    const-string v2, "access_token"

    sget-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2224
    const-string v2, "list"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2225
    const-string v2, "date"

    invoke-virtual {v3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2226
    const-string/jumbo v2, "start"

    iget v4, p0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeStart:I

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2227
    const-string v2, "end"

    iget v4, p0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeEnd:I

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2228
    const-string/jumbo v2, "total"

    iget v4, p0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeAll:I

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2229
    const-string v2, "high"

    iget v4, p0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeHigh:I

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2230
    const-string v2, "low"

    iget v4, p0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeLow:I

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2235
    .end local v6    # "list":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "record/sleep/sync"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$150;

    invoke-direct {v4, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$150;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$151;

    invoke-direct {v5, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$151;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 2251
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 2252
    return-object v0

    .line 2232
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static setCashBandUserAuth(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "mac"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 2307
    const-string v2, "setCashBandSleepData is called!"

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 2309
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2311
    .local v0, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "access_token"

    sget-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2312
    const-string v2, "mac"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2336
    :goto_0
    const/4 v1, 0x0

    .line 2337
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v2, Lcom/android/volley/DefaultRetryPolicy;

    sget v3, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v1, v2}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 2338
    return-object v1

    .line 2314
    .end local v1    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static setInvite(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 1441
    const-string v1, "setInvite is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1442
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1444
    .local v3, "params":Lorg/json/JSONObject;
    if-eqz p0, :cond_0

    .line 1445
    :try_start_0
    const-string v1, "code"

    invoke-virtual {v3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1448
    :cond_0
    const-string v1, "access_token"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1453
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "invite"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$94;

    invoke-direct {v4, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$94;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$95;

    invoke-direct {v5, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$95;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1468
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1469
    return-object v0

    .line 1450
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setUser(Lcom/cashwalk/cashwalk/util/network/model/User;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "user"    # Lcom/cashwalk/cashwalk/util/network/model/User;
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 174
    const-string v1, "setUser is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 175
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 177
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->uid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 178
    const-string/jumbo v1, "uid"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 181
    const-string v1, "nickname"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 184
    const-string v1, "profileUrl"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    :cond_2
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->kakaoUid:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 187
    const-string v1, "kakao"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->kakaoUid:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    :cond_3
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->fbUid:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 190
    const-string v1, "fb"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->fbUid:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    :cond_4
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->birthday:Lorg/joda/time/DateTime;

    if-eqz v1, :cond_5

    .line 193
    const-string v1, "birth"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->birthday:Lorg/joda/time/DateTime;

    const-string/jumbo v4, "yyyyMMdd"

    invoke-virtual {v2, v4}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    :cond_5
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->gender:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 196
    const-string v1, "gender"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->gender:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    :cond_6
    iget v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->weight:I

    if-eqz v1, :cond_7

    .line 199
    const-string/jumbo v1, "weight"

    iget v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->weight:I

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 201
    :cond_7
    iget v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->height:I

    if-eqz v1, :cond_8

    .line 202
    const-string v1, "height"

    iget v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->height:I

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    :cond_8
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->pushID:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 205
    const-string v1, "pushId"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->pushID:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    :cond_9
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->bgImageUrl:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 208
    const-string v1, "bgImageUrl"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->bgImageUrl:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    :cond_a
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->coachImageUrl:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 211
    const-string v1, "coachImageUrl"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->coachImageUrl:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    :cond_b
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->phone:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 214
    const-string v1, "phone"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->phone:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    :cond_c
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->countryCode:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 217
    const-string v1, "countryCode"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/model/User;->countryCode:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    :cond_d
    sget-object v1, Lcom/cashwalk/cashwalk/CashWalkApp;->PLAYER_ID:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 220
    const-string v1, "playerId"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->PLAYER_ID:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    :cond_e
    const-string v1, "access_token"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "user"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$9;

    invoke-direct {v4, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$9;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$10;

    invoke-direct {v5, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$10;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 243
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 244
    return-object v0

    .line 224
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static stepBetRetry(Ljava/lang/String;IZLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 9
    .param p0, "stepbetId"    # Ljava/lang/String;
    .param p1, "point"    # I
    .param p2, "retry"    # Z
    .param p3, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 1280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stepBetRetry is called!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1281
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1283
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "access_token"

    sget-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1284
    const-string v2, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1285
    const-string/jumbo v2, "stepbet"

    invoke-virtual {v3, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1286
    const-string/jumbo v2, "timezone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    div-int/lit8 v4, v4, 0x3c

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1287
    const-string v2, "point"

    invoke-virtual {v3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1288
    if-eqz p2, :cond_0

    .line 1289
    const-string v2, "retry"

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "stepbet/comeback"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$82;

    invoke-direct {v4, p3}, Lcom/cashwalk/cashwalk/util/network/RestClient$82;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$83;

    invoke-direct {v5, p3}, Lcom/cashwalk/cashwalk/util/network/RestClient$83;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1312
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v8, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 1313
    return-object v0

    .line 1291
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :cond_0
    :try_start_1
    const-string v2, "retry"

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1293
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static syncDayStep(Ljava/util/ArrayList;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 14
    .param p1, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/model/StepsTableModel;",
            ">;",
            "Lcom/cashwalk/cashwalk/util/network/ResponseHandler;",
            ")",
            "Lcom/android/volley/toolbox/JsonObjectRequest;"
        }
    .end annotation

    .prologue
    .line 2074
    .local p0, "stepsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/model/StepsTableModel;>;"
    const-string/jumbo v1, "syncDayStep is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 2075
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2077
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2078
    .local v11, "stepsString":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 2079
    .local v12, "totalCount":I
    const-string v13, ""

    .line 2080
    .local v13, "uploadDate":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_1

    .line 2081
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/model/StepsTableModel;

    iget v1, v1, Lcom/cashwalk/cashwalk/util/model/StepsTableModel;->steps:I

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2082
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/model/StepsTableModel;

    iget v1, v1, Lcom/cashwalk/cashwalk/util/model/StepsTableModel;->steps:I

    add-int/2addr v12, v1

    .line 2084
    add-int/lit8 v1, v7, 0x1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2085
    const-string v1, ","

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2080
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2089
    :cond_1
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmss"

    invoke-direct {v10, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2090
    .local v10, "original_format":Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v8, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2092
    .local v8, "new_format":Ljava/text/SimpleDateFormat;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/util/model/StepsTableModel;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/model/StepsTableModel;->createAt:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "000000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 2093
    .local v9, "original_date":Ljava/util/Date;
    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 2098
    .end local v9    # "original_date":Ljava/util/Date;
    :goto_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### \uacb0\uacfc \ub9ac\uc2a4\ud2b8 => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 2099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### \uacb0\uacfc \ucd1d\uac78\uc74c\uc218 => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 2100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### \uacb0\uacfc \uae30\uc900\ub0a0\uc9dc => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 2102
    const-string v1, "access_token"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2103
    const-string v1, "list"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2104
    const-string/jumbo v1, "total"

    invoke-virtual {v3, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2105
    const-string v1, "date"

    invoke-virtual {v3, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2109
    .end local v7    # "i":I
    .end local v8    # "new_format":Ljava/text/SimpleDateFormat;
    .end local v10    # "original_format":Ljava/text/SimpleDateFormat;
    .end local v11    # "stepsString":Ljava/lang/StringBuilder;
    .end local v12    # "totalCount":I
    .end local v13    # "uploadDate":Ljava/lang/String;
    :goto_2
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "record/walk/sync"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$142;

    invoke-direct {v4, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$142;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$143;

    invoke-direct {v5, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$143;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 2126
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 2127
    return-object v0

    .line 2094
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    .restart local v7    # "i":I
    .restart local v8    # "new_format":Ljava/text/SimpleDateFormat;
    .restart local v10    # "original_format":Ljava/text/SimpleDateFormat;
    .restart local v11    # "stepsString":Ljava/lang/StringBuilder;
    .restart local v12    # "totalCount":I
    .restart local v13    # "uploadDate":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 2095
    .local v6, "e":Ljava/text/ParseException;
    :try_start_3
    invoke-virtual {v6}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 2106
    .end local v6    # "e":Ljava/text/ParseException;
    .end local v7    # "i":I
    .end local v8    # "new_format":Ljava/text/SimpleDateFormat;
    .end local v10    # "original_format":Ljava/text/SimpleDateFormat;
    .end local v11    # "stepsString":Ljava/lang/StringBuilder;
    .end local v12    # "totalCount":I
    .end local v13    # "uploadDate":Ljava/lang/String;
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static updateHabit(Lcom/cashwalk/cashwalk/util/network/model/Habit;ILcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "habit"    # Lcom/cashwalk/cashwalk/util/network/model/Habit;
    .param p1, "score"    # I
    .param p2, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    .line 354
    const-string/jumbo v1, "updateHabit is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 355
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 357
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "access_token"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "record/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/network/model/Habit;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$17;

    invoke-direct {v4, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$17;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$18;

    invoke-direct {v5, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$18;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 378
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 379
    return-object v0

    .line 358
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static updatePoint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler2;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 6
    .param p0, "point"    # I
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "videoType"    # Ljava/lang/String;
    .param p3, "i"    # Ljava/lang/String;
    .param p4, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler2;

    .prologue
    .line 772
    const-string/jumbo v1, "updatePoint is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 773
    invoke-static {p3}, Lcom/cashwalk/cashwalk/util/Utils;->f(Ljava/lang/String;)V

    .line 774
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 776
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "access_token"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 777
    const-string v1, "point"

    invoke-virtual {v3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 779
    if-eqz p1, :cond_0

    .line 780
    const-string/jumbo v1, "type"

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 782
    if-eqz p2, :cond_0

    .line 783
    const-string/jumbo v1, "videoType"

    invoke-virtual {v3, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 786
    :cond_0
    const-string/jumbo v1, "timezone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :goto_0
    new-instance v0, Lcom/cashwalk/cashwalk/util/network/RestClient$51;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "raffle/point"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$49;

    invoke-direct {v4, p4}, Lcom/cashwalk/cashwalk/util/network/RestClient$49;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler2;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$50;

    invoke-direct {v5, p4}, Lcom/cashwalk/cashwalk/util/network/RestClient$50;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler2;)V

    invoke-direct/range {v0 .. v5}, Lcom/cashwalk/cashwalk/util/network/RestClient$51;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 815
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 816
    return-object v0

    .line 787
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static updateSteps(IZLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 7
    .param p0, "steps"    # I
    .param p1, "afterMidnight"    # Z
    .param p2, "handler"    # Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    .prologue
    const/4 v6, 0x0

    .line 460
    const-string/jumbo v1, "updateSteps is called!"

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 461
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 463
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "access_token"

    sget-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 464
    if-eqz p1, :cond_0

    .line 465
    const-string v1, "midnight"

    const/4 v2, 0x1

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 470
    :goto_0
    const-string/jumbo v1, "timezone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_1
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/cashwalk/cashwalk/util/network/RestClient;->API_URL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "record/walk/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cashwalk/cashwalk/util/network/RestClient$25;

    invoke-direct {v4, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$25;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    new-instance v5, Lcom/cashwalk/cashwalk/util/network/RestClient$26;

    invoke-direct {v5, p2}, Lcom/cashwalk/cashwalk/util/network/RestClient$26;-><init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 491
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    sget v2, Lcom/cashwalk/cashwalk/util/network/RestClient;->MY_SOCKET_TIMEOUT_MS:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v6, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 492
    return-object v0

    .line 467
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :cond_0
    :try_start_1
    const-string v1, "midnight"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 471
    :catch_0
    move-exception v1

    goto :goto_1
.end method
