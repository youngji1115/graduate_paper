.class public Lcom/amazonaws/util/AWSRequestMetrics;
.super Ljava/lang/Object;
.source "AWSRequestMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/AWSRequestMetrics$Field;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final timingInfo:Lcom/amazonaws/util/TimingInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-static {}, Lcom/amazonaws/util/TimingInfo;->startTiming()Lcom/amazonaws/util/TimingInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    .line 148
    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/util/TimingInfo;)V
    .locals 0
    .param p1, "timingInfo"    # Lcom/amazonaws/util/TimingInfo;

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    .line 152
    return-void
.end method


# virtual methods
.method public addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    .locals 0
    .param p1, "f"    # Lcom/amazonaws/metrics/MetricType;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 194
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 191
    return-void
.end method

.method public endEvent(Lcom/amazonaws/metrics/MetricType;)V
    .locals 0
    .param p1, "f"    # Lcom/amazonaws/metrics/MetricType;

    .prologue
    .line 176
    return-void
.end method

.method public endEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 173
    return-void
.end method

.method public getProperty(Lcom/amazonaws/metrics/MetricType;)Ljava/util/List;
    .locals 1
    .param p1, "f"    # Lcom/amazonaws/metrics/MetricType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/metrics/MetricType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getTimingInfo()Lcom/amazonaws/util/TimingInfo;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    return-object v0
.end method

.method public incrementCounter(Lcom/amazonaws/metrics/MetricType;)V
    .locals 0
    .param p1, "f"    # Lcom/amazonaws/metrics/MetricType;

    .prologue
    .line 182
    return-void
.end method

.method public incrementCounter(Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 179
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public log()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public setCounter(Lcom/amazonaws/metrics/MetricType;J)V
    .locals 0
    .param p1, "f"    # Lcom/amazonaws/metrics/MetricType;
    .param p2, "count"    # J

    .prologue
    .line 188
    return-void
.end method

.method public setCounter(Ljava/lang/String;J)V
    .locals 0
    .param p1, "counterName"    # Ljava/lang/String;
    .param p2, "count"    # J

    .prologue
    .line 185
    return-void
.end method

.method public startEvent(Lcom/amazonaws/metrics/MetricType;)V
    .locals 0
    .param p1, "f"    # Lcom/amazonaws/metrics/MetricType;

    .prologue
    .line 170
    return-void
.end method

.method public startEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 167
    return-void
.end method
