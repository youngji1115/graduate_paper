.class final Lcom/amazonaws/metrics/RequestMetricCollector$1;
.super Lcom/amazonaws/metrics/RequestMetricCollector;
.source "RequestMetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/metrics/RequestMetricCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/amazonaws/metrics/RequestMetricCollector;-><init>()V

    return-void
.end method


# virtual methods
.method public collectMetrics(Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/Response",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    .local p2, "response":Lcom/amazonaws/Response;, "Lcom/amazonaws/Response<*>;"
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method
