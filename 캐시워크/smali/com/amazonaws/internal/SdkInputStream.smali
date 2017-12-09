.class public abstract Lcom/amazonaws/internal/SdkInputStream;
.super Ljava/io/InputStream;
.source "SdkInputStream.java"

# interfaces
.implements Lcom/amazonaws/internal/MetricAware;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method protected abort()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    return-void
.end method

.method protected final abortIfNeeded()V
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/internal/SdkInputStream;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    new-instance v1, Lcom/amazonaws/AbortedException;

    invoke-direct {v1}, Lcom/amazonaws/AbortedException;-><init>()V

    throw v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "FYI"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method protected abstract getWrappedInputStream()Ljava/io/InputStream;
.end method

.method public final isMetricActivated()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/amazonaws/internal/SdkInputStream;->getWrappedInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 39
    .local v0, "in":Ljava/io/InputStream;
    instance-of v2, v0, Lcom/amazonaws/internal/MetricAware;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 40
    check-cast v1, Lcom/amazonaws/internal/MetricAware;

    .line 41
    .local v1, "metricAware":Lcom/amazonaws/internal/MetricAware;
    invoke-interface {v1}, Lcom/amazonaws/internal/MetricAware;->isMetricActivated()Z

    move-result v2

    .line 43
    .end local v1    # "metricAware":Lcom/amazonaws/internal/MetricAware;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
