.class Lcom/cashwalk/cashwalk/CashWalkMainActivity$9$1;
.super Ljava/lang/Object;
.source "CashWalkMainActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/CashWalkMainActivity$9;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
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
        "Lcom/cashwalk/cashwalk/util/network/retrofit/model/CommonResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/CashWalkMainActivity$9;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/CashWalkMainActivity$9;

    .prologue
    .line 860
    iput-object p1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$9$1;->this$1:Lcom/cashwalk/cashwalk/CashWalkMainActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/retrofit/model/CommonResult;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 869
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/cashwalk/cashwalk/util/network/retrofit/model/CommonResult;>;"
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 870
    const-string v0, "#### \uad11\uace0 \ub178\ucd9c \uc2e4\ud328"

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 871
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/retrofit/model/CommonResult;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/retrofit/model/CommonResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 863
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/cashwalk/cashwalk/util/network/retrofit/model/CommonResult;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/cashwalk/cashwalk/util/network/retrofit/model/CommonResult;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/network/retrofit/model/CommonResult;

    .line 864
    .local v0, "result":Lcom/cashwalk/cashwalk/util/network/retrofit/model/CommonResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### \uad11\uace0 \ub178\ucd9c \uc131\uacf5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/CommonResult;->isResult()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 865
    return-void
.end method
