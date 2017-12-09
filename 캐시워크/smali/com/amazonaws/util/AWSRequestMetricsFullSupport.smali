.class public Lcom/amazonaws/util/AWSRequestMetricsFullSupport;
.super Lcom/amazonaws/util/AWSRequestMetrics;
.source "AWSRequestMetricsFullSupport.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final COMMA_SEPARATOR:Ljava/lang/Object;

.field private static final KEY_VALUE_SEPARATOR:Ljava/lang/Object;

.field private static final latencyLogger:Lorg/apache/commons/logging/Log;


# instance fields
.field private final eventsBeingProfiled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/util/TimingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "com.amazonaws.latency"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->latencyLogger:Lorg/apache/commons/logging/Log;

    .line 51
    const-string v0, "="

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->KEY_VALUE_SEPARATOR:Ljava/lang/Object;

    .line 52
    const-string v0, ", "

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->COMMA_SEPARATOR:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/amazonaws/util/TimingInfo;->startTimingFullSupport()Lcom/amazonaws/util/TimingInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/util/AWSRequestMetrics;-><init>(Lcom/amazonaws/util/TimingInfo;)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->properties:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->eventsBeingProfiled:Ljava/util/Map;

    .line 62
    return-void
.end method

.method private keyValueFormat(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 198
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->KEY_VALUE_SEPARATOR:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->COMMA_SEPARATOR:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    return-void
.end method


# virtual methods
.method public addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    .locals 1
    .param p1, "f"    # Lcom/amazonaws/metrics/MetricType;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 173
    invoke-interface {p1}, Lcom/amazonaws/metrics/MetricType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 162
    iget-object v1, p0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->properties:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 163
    .local v0, "propertyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "propertyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .restart local v0    # "propertyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->properties:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public endEvent(Lcom/amazonaws/metrics/MetricType;)V
    .locals 1
    .param p1, "f"    # Lcom/amazonaws/metrics/MetricType;

    .prologue
    .line 117
    invoke-interface {p1}, Lcom/amazonaws/metrics/MetricType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->endEvent(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public endEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v1, p0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->eventsBeingProfiled:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/util/TimingInfo;

    .line 102
    .local v0, "event":Lcom/amazonaws/util/TimingInfo;
    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to end an event which was never started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 113
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/util/TimingInfo;->endTiming()Lcom/amazonaws/util/TimingInfo;

    .line 108
    iget-object v1, p0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    .line 111
    invoke-virtual {v0}, Lcom/amazonaws/util/TimingInfo;->getStartTimeNano()J

    move-result-wide v2

    .line 112
    invoke-virtual {v0}, Lcom/amazonaws/util/TimingInfo;->getEndTimeNano()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 110
    invoke-static {v2, v3, v4}, Lcom/amazonaws/util/TimingInfo;->unmodifiableTimingInfo(JLjava/lang/Long;)Lcom/amazonaws/util/TimingInfo;

    move-result-object v2

    .line 108
    invoke-virtual {v1, p1, v2}, Lcom/amazonaws/util/TimingInfo;->addSubMeasurement(Ljava/lang/String;Lcom/amazonaws/util/TimingInfo;)V

    goto :goto_0
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
    .line 208
    invoke-interface {p1}, Lcom/amazonaws/metrics/MetricType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->getProperty(Ljava/lang/String;)Ljava/util/List;

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
    .line 203
    iget-object v0, p0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public incrementCounter(Lcom/amazonaws/metrics/MetricType;)V
    .locals 1
    .param p1, "f"    # Lcom/amazonaws/metrics/MetricType;

    .prologue
    .line 137
    invoke-interface {p1}, Lcom/amazonaws/metrics/MetricType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->incrementCounter(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public incrementCounter(Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    invoke-virtual {v0, p1}, Lcom/amazonaws/util/TimingInfo;->incrementCounter(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public final isEnabled()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public log()V
    .locals 7

    .prologue
    .line 178
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->latencyLogger:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->properties:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 182
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5, v6, v0}, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->keyValueFormat(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 185
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Object;>;>;"
    :cond_0
    iget-object v4, p0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    invoke-virtual {v4}, Lcom/amazonaws/util/TimingInfo;->getAllCounters()Ljava/util/Map;

    move-result-object v4

    .line 186
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 185
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 187
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Number;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5, v6, v0}, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->keyValueFormat(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 189
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Number;>;"
    :cond_1
    iget-object v4, p0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    .line 190
    invoke-virtual {v4}, Lcom/amazonaws/util/TimingInfo;->getSubMeasurementsByName()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 189
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 191
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/amazonaws/util/TimingInfo;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5, v6, v0}, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->keyValueFormat(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 193
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/amazonaws/util/TimingInfo;>;>;"
    :cond_2
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->latencyLogger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 195
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_3
    return-void
.end method

.method public setCounter(Lcom/amazonaws/metrics/MetricType;J)V
    .locals 2
    .param p1, "f"    # Lcom/amazonaws/metrics/MetricType;
    .param p2, "count"    # J

    .prologue
    .line 147
    invoke-interface {p1}, Lcom/amazonaws/metrics/MetricType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->setCounter(Ljava/lang/String;J)V

    .line 148
    return-void
.end method

.method public setCounter(Ljava/lang/String;J)V
    .locals 2
    .param p1, "counterName"    # Ljava/lang/String;
    .param p2, "count"    # J

    .prologue
    .line 142
    iget-object v0, p0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazonaws/util/TimingInfo;->setCounter(Ljava/lang/String;J)V

    .line 143
    return-void
.end method

.method public startEvent(Lcom/amazonaws/metrics/MetricType;)V
    .locals 1
    .param p1, "f"    # Lcom/amazonaws/metrics/MetricType;

    .prologue
    .line 88
    invoke-interface {p1}, Lcom/amazonaws/metrics/MetricType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->startEvent(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public startEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->eventsBeingProfiled:Ljava/util/Map;

    .line 83
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amazonaws/util/TimingInfo;->startTimingFullSupport(J)Lcom/amazonaws/util/TimingInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method
