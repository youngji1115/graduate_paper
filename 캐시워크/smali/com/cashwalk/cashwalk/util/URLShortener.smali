.class public Lcom/cashwalk/cashwalk/util/URLShortener;
.super Ljava/lang/Object;
.source "URLShortener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/util/URLShortener$LoadingCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static shortUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "longUrl"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 39
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 40
    .local v2, "okHttpClient":Lokhttp3/OkHttpClient;
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 42
    .local v0, "gson":Lcom/google/gson/Gson;
    new-instance v5, Lcom/cashwalk/cashwalk/util/model/RequestModel;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/util/model/RequestModel;-><init>(Ljava/lang/String;)V

    .line 43
    .local v5, "requestModel":Lcom/cashwalk/cashwalk/util/model/RequestModel;
    invoke-virtual {v0, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "postBody":Ljava/lang/String;
    new-instance v10, Lokhttp3/Request$Builder;

    invoke-direct {v10}, Lokhttp3/Request$Builder;-><init>()V

    const-string v11, "https://www.googleapis.com/urlshortener/v1/url?key=AIzaSyCkSFSzJpTiXcGU8NByHyovg7twZBquVJQ"

    .line 45
    invoke-virtual {v10, v11}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v10

    sget-object v11, Lcom/cashwalk/cashwalk/util/Utils;->MEDIA_TYPE:Lokhttp3/MediaType;

    .line 46
    invoke-static {v11, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v11

    invoke-virtual {v10, v11}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v10

    .line 47
    invoke-virtual {v10}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 50
    .local v4, "request":Lokhttp3/Request;
    :try_start_0
    invoke-virtual {v2, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v10

    invoke-interface {v10}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v6

    .line 51
    .local v6, "response":Lokhttp3/Response;
    invoke-virtual {v6}, Lokhttp3/Response;->isSuccessful()Z

    move-result v10

    if-nez v10, :cond_0

    .line 58
    .end local v6    # "response":Lokhttp3/Response;
    :goto_0
    return-object v9

    .line 52
    .restart local v6    # "response":Lokhttp3/Response;
    :cond_0
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v8

    .line 53
    .local v8, "responseStr":Ljava/lang/String;
    const-class v10, Lcom/cashwalk/cashwalk/util/model/ResponseModel;

    invoke-virtual {v0, v8, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cashwalk/cashwalk/util/model/ResponseModel;

    .line 54
    .local v7, "responseModel":Lcom/cashwalk/cashwalk/util/model/ResponseModel;
    invoke-virtual {v7}, Lcom/cashwalk/cashwalk/util/model/ResponseModel;->getId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_0

    .line 55
    .end local v6    # "response":Lokhttp3/Response;
    .end local v7    # "responseModel":Lcom/cashwalk/cashwalk/util/model/ResponseModel;
    .end local v8    # "responseStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 56
    .local v1, "io":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static shortUrl(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/URLShortener$LoadingCallback;)V
    .locals 2
    .param p0, "longUrl"    # Ljava/lang/String;
    .param p1, "loadingCallback"    # Lcom/cashwalk/cashwalk/util/URLShortener$LoadingCallback;

    .prologue
    .line 67
    new-instance v0, Lcom/cashwalk/cashwalk/util/async/AsyncLoader;

    invoke-direct {v0, p0, p1}, Lcom/cashwalk/cashwalk/util/async/AsyncLoader;-><init>(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/URLShortener$LoadingCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/util/async/AsyncLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    return-void
.end method
