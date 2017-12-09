.class Lcom/amazonaws/http/conn/ClientConnectionRequestFactory$Handler;
.super Ljava/lang/Object;
.source "ClientConnectionRequestFactory.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/http/conn/ClientConnectionRequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Handler"
.end annotation


# instance fields
.field private final orig:Lorg/apache/http/conn/ClientConnectionRequest;


# direct methods
.method constructor <init>(Lorg/apache/http/conn/ClientConnectionRequest;)V
    .locals 0
    .param p1, "orig"    # Lorg/apache/http/conn/ClientConnectionRequest;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory$Handler;->orig:Lorg/apache/http/conn/ClientConnectionRequest;

    .line 65
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    const-string v2, "getConnection"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    new-instance v1, Lcom/amazonaws/metrics/ServiceLatencyProvider;

    sget-object v2, Lcom/amazonaws/util/AWSServiceMetrics;->HttpClientGetConnectionTime:Lcom/amazonaws/util/AWSServiceMetrics;

    invoke-direct {v1, v2}, Lcom/amazonaws/metrics/ServiceLatencyProvider;-><init>(Lcom/amazonaws/metrics/ServiceMetricType;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .local v1, "latencyProvider":Lcom/amazonaws/metrics/ServiceLatencyProvider;
    :try_start_1
    iget-object v2, p0, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory$Handler;->orig:Lorg/apache/http/conn/ClientConnectionRequest;

    invoke-virtual {p2, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 76
    :try_start_2
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->getServiceMetricCollector()Lcom/amazonaws/metrics/ServiceMetricCollector;

    move-result-object v3

    .line 77
    invoke-virtual {v1}, Lcom/amazonaws/metrics/ServiceLatencyProvider;->endTiming()Lcom/amazonaws/metrics/ServiceLatencyProvider;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/metrics/ServiceMetricCollector;->collectLatency(Lcom/amazonaws/metrics/ServiceLatencyProvider;)V

    .line 80
    .end local v1    # "latencyProvider":Lcom/amazonaws/metrics/ServiceLatencyProvider;
    :goto_0
    return-object v2

    .line 76
    .restart local v1    # "latencyProvider":Lcom/amazonaws/metrics/ServiceLatencyProvider;
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->getServiceMetricCollector()Lcom/amazonaws/metrics/ServiceMetricCollector;

    move-result-object v3

    .line 77
    invoke-virtual {v1}, Lcom/amazonaws/metrics/ServiceLatencyProvider;->endTiming()Lcom/amazonaws/metrics/ServiceLatencyProvider;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/metrics/ServiceMetricCollector;->collectLatency(Lcom/amazonaws/metrics/ServiceLatencyProvider;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    .end local v1    # "latencyProvider":Lcom/amazonaws/metrics/ServiceLatencyProvider;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {}, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    throw v2

    .line 80
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/amazonaws/http/conn/ClientConnectionRequestFactory$Handler;->orig:Lorg/apache/http/conn/ClientConnectionRequest;

    invoke-virtual {p2, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    goto :goto_0
.end method
