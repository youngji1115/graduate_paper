.class public Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient;
.super Ljava/lang/Object;
.source "CashwalkRestClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private service:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    .local p0, "this":Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient;, "Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/cashwalk/cashwalk/AppConstants;->CASHWALK_AD_URL:Ljava/lang/String;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient;->baseUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClient(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient;, "Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient;->service:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 21
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v3, Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient$1;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient$1;-><init>(Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient;)V

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 34
    .local v1, "okHttpClient":Lokhttp3/OkHttpClient;
    new-instance v2, Lretrofit2/Retrofit$Builder;

    invoke-direct {v2}, Lretrofit2/Retrofit$Builder;-><init>()V

    iget-object v3, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient;->baseUrl:Ljava/lang/String;

    .line 35
    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 36
    invoke-virtual {v2, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 37
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 41
    .local v0, "client":Lretrofit2/Retrofit;
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient;->service:Ljava/lang/Object;

    .line 43
    .end local v0    # "client":Lretrofit2/Retrofit;
    .end local v1    # "okHttpClient":Lokhttp3/OkHttpClient;
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient;->service:Ljava/lang/Object;

    return-object v2
.end method
