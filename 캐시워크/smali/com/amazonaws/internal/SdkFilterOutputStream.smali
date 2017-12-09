.class public Lcom/amazonaws/internal/SdkFilterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SdkFilterOutputStream.java"

# interfaces
.implements Lcom/amazonaws/internal/MetricAware;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 30
    return-void
.end method


# virtual methods
.method public isMetricActivated()Z
    .locals 2

    .prologue
    .line 34
    iget-object v1, p0, Lcom/amazonaws/internal/SdkFilterOutputStream;->out:Ljava/io/OutputStream;

    instance-of v1, v1, Lcom/amazonaws/internal/MetricAware;

    if-eqz v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/amazonaws/internal/SdkFilterOutputStream;->out:Ljava/io/OutputStream;

    check-cast v0, Lcom/amazonaws/internal/MetricAware;

    .line 36
    .local v0, "metricAware":Lcom/amazonaws/internal/MetricAware;
    invoke-interface {v0}, Lcom/amazonaws/internal/MetricAware;->isMetricActivated()Z

    move-result v1

    .line 38
    .end local v0    # "metricAware":Lcom/amazonaws/internal/MetricAware;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
