.class Lcom/cashwalk/cashwalk/MainActivity$29;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity;->getCashwalkAdCenterBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<",
        "Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/MainActivity;

.field final synthetic val$mCashwalkNetworkService:Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkNetworkService;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity;Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkNetworkService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 1557
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$29;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/MainActivity$29;->val$mCashwalkNetworkService:Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkNetworkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 3
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1610
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;>;"
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$29;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cashwalk/cashwalk/MainActivity;->access$3300(Lcom/cashwalk/cashwalk/MainActivity;ZLcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;)V

    .line 1611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#### \uc694\uccad URL => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1612
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;>;"
    const/4 v5, 0x0

    .line 1560
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;

    .line 1562
    .local v9, "result":Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;
    if-eqz v9, :cond_1

    .line 1563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#### \ubc30\ub108\uc815\ubcf4 => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;->getData()Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#### \ubc30\ub108\uc815\ubcf4 => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;->getData()Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#### \ubc30\ub108\uc815\ubcf4 => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;->getData()Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->getPartner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#### \ubc30\ub108\uc815\ubcf4 => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;->getData()Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->getDetailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#### \uc694\uccad URL => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 1571
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$29;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "USER_ID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1572
    .local v3, "userId":Ljava/lang/String;
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$29;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "GENDER"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1574
    .local v4, "gender":Ljava/lang/String;
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$29;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "BIRTHDAY"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1575
    .local v7, "birthday":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1576
    .local v6, "birthYear":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$29;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "BIRTHDAY"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1580
    :cond_0
    const-string v6, "16"

    .line 1583
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$29;->val$mCashwalkNetworkService:Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkNetworkService;

    .line 1584
    invoke-virtual {v9}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;->getData()Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1585
    invoke-virtual {v9}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;->getData()Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->getPartner()Ljava/lang/String;

    move-result-object v2

    .line 1588
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1583
    invoke-interface/range {v0 .. v5}, Lcom/cashwalk/cashwalk/util/network/retrofit/CashwalkNetworkService;->postBannerView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v8

    .line 1590
    .local v8, "callView":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/cashwalk/cashwalk/util/network/retrofit/model/CommonResult;>;"
    new-instance v0, Lcom/cashwalk/cashwalk/MainActivity$29$1;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/MainActivity$29$1;-><init>(Lcom/cashwalk/cashwalk/MainActivity$29;)V

    invoke-interface {v8, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 1603
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$29;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1, v9}, Lcom/cashwalk/cashwalk/MainActivity;->access$3300(Lcom/cashwalk/cashwalk/MainActivity;ZLcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;)V

    .line 1606
    .end local v3    # "userId":Ljava/lang/String;
    .end local v4    # "gender":Ljava/lang/String;
    .end local v6    # "birthYear":Ljava/lang/String;
    .end local v7    # "birthday":Ljava/lang/String;
    .end local v8    # "callView":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/cashwalk/cashwalk/util/network/retrofit/model/CommonResult;>;"
    :cond_1
    return-void
.end method
