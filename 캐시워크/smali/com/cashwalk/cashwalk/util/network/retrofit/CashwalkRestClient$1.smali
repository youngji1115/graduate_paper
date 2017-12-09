.class Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient$1;
.super Ljava/lang/Object;
.source "CashwalkRestClient.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient;->getClient(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient;

    .prologue
    .line 21
    .local p0, "this":Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient$1;, "Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient$1;"
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient$1;->this$0:Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient$1;, "Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkRestClient$1;"
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 27
    .local v0, "original":Lokhttp3/Request;
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 28
    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 30
    .local v1, "request":Lokhttp3/Request;
    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    return-object v2
.end method
