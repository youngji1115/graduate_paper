.class public final enum Lcom/amazonaws/metrics/AwsSdkMetrics;
.super Ljava/lang/Enum;
.source "AwsSdkMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/metrics/AwsSdkMetrics;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/metrics/AwsSdkMetrics;

.field public static final AWS_CREDENTAIL_PROPERTIES_FILE:Ljava/lang/String; = "credentialFile"

.field public static final CLOUDWATCH_REGION:Ljava/lang/String; = "cloudwatchRegion"

.field private static final DEFAULT_METRIC_COLLECTOR_FACTORY:Ljava/lang/String; = "com.amazonaws.metrics.internal.cloudwatch.DefaultMetricCollectorFactory"

.field public static final DEFAULT_METRIC_NAMESPACE:Ljava/lang/String; = "AWSSDK/Java"

.field public static final EXCLUDE_MACHINE_METRICS:Ljava/lang/String; = "excludeMachineMetrics"

.field public static final HOST_METRIC_NAME:Ljava/lang/String; = "hostMetricName"

.field public static final INCLUDE_PER_HOST_METRICS:Ljava/lang/String; = "includePerHostMetrics"

.field public static final JVM_METRIC_NAME:Ljava/lang/String; = "jvmMetricName"

.field private static final MBEAN_OBJECT_NAME:Ljava/lang/String;

.field public static final METRIC_NAME_SPACE:Ljava/lang/String; = "metricNameSpace"

.field public static final METRIC_QUEUE_SIZE:Ljava/lang/String; = "metricQueueSize"

.field public static final QUEUE_POLL_TIMEOUT_MILLI:Ljava/lang/String; = "getQueuePollTimeoutMilli"

.field public static final USE_SINGLE_METRIC_NAMESPACE:Ljava/lang/String; = "useSingleMetricNamespace"

.field private static volatile credentialFile:Ljava/lang/String;

.field private static volatile credentialProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

.field private static final defaultMetricsEnabled:Z

.field private static dirtyEnabling:Z

.field private static volatile hostMetricName:Ljava/lang/String;

.field private static volatile jvmMetricName:Ljava/lang/String;

.field private static volatile machineMetricsExcluded:Z

.field private static volatile mc:Lcom/amazonaws/metrics/MetricCollector;

.field private static volatile metricNameSpace:Ljava/lang/String;

.field private static volatile metricQueueSize:Ljava/lang/Integer;

.field private static volatile perHostMetricsIncluded:Z

.field private static volatile queuePollTimeoutMilli:Ljava/lang/Long;

.field private static volatile region:Lcom/amazonaws/regions/Regions;

.field private static final registry:Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;

.field private static volatile singleMetricNamespace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .prologue
    .line 71
    const/4 v12, 0x0

    new-array v12, v12, [Lcom/amazonaws/metrics/AwsSdkMetrics;

    sput-object v12, Lcom/amazonaws/metrics/AwsSdkMetrics;->$VALUES:[Lcom/amazonaws/metrics/AwsSdkMetrics;

    .line 74
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "com.amazonaws.management:type="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-class v13, Lcom/amazonaws/metrics/AwsSdkMetrics;

    .line 75
    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/amazonaws/metrics/AwsSdkMetrics;->MBEAN_OBJECT_NAME:Ljava/lang/String;

    .line 210
    const-string v12, "AWSSDK/Java"

    sput-object v12, Lcom/amazonaws/metrics/AwsSdkMetrics;->metricNameSpace:Ljava/lang/String;

    .line 238
    const-string v12, "com.amazonaws.sdk.enableDefaultMetrics"

    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "defaultMetrics":Ljava/lang/String;
    if-eqz v0, :cond_1

    const/4 v12, 0x1

    :goto_0
    sput-boolean v12, Lcom/amazonaws/metrics/AwsSdkMetrics;->defaultMetricsEnabled:Z

    .line 240
    sget-boolean v12, Lcom/amazonaws/metrics/AwsSdkMetrics;->defaultMetricsEnabled:Z

    if-eqz v12, :cond_f

    .line 241
    const-string v12, ","

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 242
    .local v11, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 243
    .local v2, "excludeMachineMetrics":Z
    const/4 v4, 0x0

    .line 244
    .local v4, "includePerHostMetrics":Z
    const/4 v9, 0x0

    .line 245
    .local v9, "useSingleMetricNamespace":Z
    array-length v13, v11

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v13, :cond_e

    aget-object v8, v11, v12

    .line 246
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 247
    .local v7, "part":Ljava/lang/String;
    if-nez v2, :cond_2

    const-string v14, "excludeMachineMetrics"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 248
    const/4 v2, 0x1

    .line 245
    :cond_0
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 239
    .end local v2    # "excludeMachineMetrics":Z
    .end local v4    # "includePerHostMetrics":Z
    .end local v7    # "part":Ljava/lang/String;
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "useSingleMetricNamespace":Z
    .end local v11    # "values":[Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 249
    .restart local v2    # "excludeMachineMetrics":Z
    .restart local v4    # "includePerHostMetrics":Z
    .restart local v7    # "part":Ljava/lang/String;
    .restart local v8    # "s":Ljava/lang/String;
    .restart local v9    # "useSingleMetricNamespace":Z
    .restart local v11    # "values":[Ljava/lang/String;
    :cond_2
    if-nez v4, :cond_3

    const-string v14, "includePerHostMetrics"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 250
    const/4 v4, 0x1

    goto :goto_2

    .line 251
    :cond_3
    if-nez v9, :cond_4

    const-string/jumbo v14, "useSingleMetricNamespace"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 252
    const/4 v9, 0x1

    goto :goto_2

    .line 254
    :cond_4
    const-string v14, "="

    invoke-virtual {v7, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 255
    .local v6, "pair":[Ljava/lang/String;
    array-length v14, v6

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 256
    const/4 v14, 0x0

    aget-object v14, v6, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, "key":Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v14, v6, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 259
    .local v10, "value":Ljava/lang/String;
    :try_start_0
    const-string v14, "credentialFile"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 260
    invoke-static {v10}, Lcom/amazonaws/metrics/AwsSdkMetrics;->setCredentialFile0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Exception;
    const-class v14, Lcom/amazonaws/metrics/AwsSdkMetrics;

    invoke-static {v14}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v14

    const-string v15, "Ignoring failure"

    invoke-interface {v14, v15, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 261
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    const-string v14, "cloudwatchRegion"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 262
    invoke-static {v10}, Lcom/amazonaws/regions/Regions;->fromName(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;

    move-result-object v14

    sput-object v14, Lcom/amazonaws/metrics/AwsSdkMetrics;->region:Lcom/amazonaws/regions/Regions;

    goto :goto_2

    .line 263
    :cond_6
    const-string v14, "metricQueueSize"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 264
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v10}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 265
    .local v3, "i":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    if-ge v14, v15, :cond_7

    .line 266
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "metricQueueSize must be at least 1"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 268
    :cond_7
    sput-object v3, Lcom/amazonaws/metrics/AwsSdkMetrics;->metricQueueSize:Ljava/lang/Integer;

    goto :goto_2

    .line 269
    .end local v3    # "i":Ljava/lang/Integer;
    :cond_8
    const-string v14, "getQueuePollTimeoutMilli"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 270
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v10}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 271
    .local v3, "i":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v14

    const/16 v15, 0x3e8

    if-ge v14, v15, :cond_9

    .line 272
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "getQueuePollTimeoutMilli must be at least 1000"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 274
    :cond_9
    sput-object v3, Lcom/amazonaws/metrics/AwsSdkMetrics;->queuePollTimeoutMilli:Ljava/lang/Long;

    goto/16 :goto_2

    .line 275
    .end local v3    # "i":Ljava/lang/Long;
    :cond_a
    const-string v14, "metricNameSpace"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 276
    sput-object v10, Lcom/amazonaws/metrics/AwsSdkMetrics;->metricNameSpace:Ljava/lang/String;

    goto/16 :goto_2

    .line 277
    :cond_b
    const-string v14, "jvmMetricName"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 278
    sput-object v10, Lcom/amazonaws/metrics/AwsSdkMetrics;->jvmMetricName:Ljava/lang/String;

    goto/16 :goto_2

    .line 279
    :cond_c
    const-string v14, "hostMetricName"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 280
    sput-object v10, Lcom/amazonaws/metrics/AwsSdkMetrics;->hostMetricName:Ljava/lang/String;

    goto/16 :goto_2

    .line 282
    :cond_d
    const-class v14, Lcom/amazonaws/metrics/AwsSdkMetrics;

    invoke-static {v14}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Ignoring unrecognized parameter: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 291
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "pair":[Ljava/lang/String;
    .end local v7    # "part":Ljava/lang/String;
    .end local v8    # "s":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_e
    sput-boolean v2, Lcom/amazonaws/metrics/AwsSdkMetrics;->machineMetricsExcluded:Z

    .line 292
    sput-boolean v4, Lcom/amazonaws/metrics/AwsSdkMetrics;->perHostMetricsIncluded:Z

    .line 293
    sput-boolean v9, Lcom/amazonaws/metrics/AwsSdkMetrics;->singleMetricNamespace:Z

    .line 297
    .end local v2    # "excludeMachineMetrics":Z
    .end local v4    # "includePerHostMetrics":Z
    .end local v9    # "useSingleMetricNamespace":Z
    .end local v11    # "values":[Ljava/lang/String;
    :cond_f
    new-instance v12, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;

    invoke-direct {v12}, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;-><init>()V

    sput-object v12, Lcom/amazonaws/metrics/AwsSdkMetrics;->registry:Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static add(Lcom/amazonaws/metrics/MetricType;)Z
    .locals 1
    .param p0, "type"    # Lcom/amazonaws/metrics/MetricType;

    .prologue
    .line 504
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->registry:Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;

    invoke-virtual {v0, p0}, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->addMetricType(Lcom/amazonaws/metrics/MetricType;)Z

    move-result v0

    goto :goto_0
.end method

.method public static addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/amazonaws/metrics/MetricType;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 515
    .local p0, "types":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->registry:Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;

    .line 517
    invoke-virtual {v0, p0}, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->addMetricTypes(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public static disableMetrics()V
    .locals 1

    .prologue
    .line 493
    sget-object v0, Lcom/amazonaws/metrics/MetricCollector;->NONE:Lcom/amazonaws/metrics/MetricCollector;

    invoke-static {v0}, Lcom/amazonaws/metrics/AwsSdkMetrics;->setMetricCollector(Lcom/amazonaws/metrics/MetricCollector;)V

    .line 494
    return-void
.end method

.method public static declared-synchronized enableDefaultMetrics()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 466
    const-class v6, Lcom/amazonaws/metrics/AwsSdkMetrics;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    invoke-virtual {v7}, Lcom/amazonaws/metrics/MetricCollector;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 467
    :cond_0
    sget-boolean v7, Lcom/amazonaws/metrics/AwsSdkMetrics;->dirtyEnabling:Z

    if-eqz v7, :cond_1

    .line 468
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Reentrancy is not allowed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4

    .line 470
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const/4 v7, 0x1

    :try_start_1
    sput-boolean v7, Lcom/amazonaws/metrics/AwsSdkMetrics;->dirtyEnabling:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    :try_start_2
    const-string v7, "com.amazonaws.metrics.internal.cloudwatch.DefaultMetricCollectorFactory"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 473
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/metrics/MetricCollector$Factory;

    .line 474
    .local v2, "f":Lcom/amazonaws/metrics/MetricCollector$Factory;
    invoke-interface {v2}, Lcom/amazonaws/metrics/MetricCollector$Factory;->getInstance()Lcom/amazonaws/metrics/MetricCollector;

    move-result-object v3

    .line 475
    .local v3, "instance":Lcom/amazonaws/metrics/MetricCollector;
    if-eqz v3, :cond_3

    .line 476
    invoke-static {v3}, Lcom/amazonaws/metrics/AwsSdkMetrics;->setMetricCollector(Lcom/amazonaws/metrics/MetricCollector;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 483
    const/4 v4, 0x0

    :try_start_3
    sput-boolean v4, Lcom/amazonaws/metrics/AwsSdkMetrics;->dirtyEnabling:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v4, v5

    .line 486
    .end local v2    # "f":Lcom/amazonaws/metrics/MetricCollector$Factory;
    .end local v3    # "instance":Lcom/amazonaws/metrics/MetricCollector;
    :cond_2
    :goto_0
    monitor-exit v6

    return v4

    .line 483
    .restart local v2    # "f":Lcom/amazonaws/metrics/MetricCollector$Factory;
    .restart local v3    # "instance":Lcom/amazonaws/metrics/MetricCollector;
    :cond_3
    const/4 v5, 0x0

    :try_start_4
    sput-boolean v5, Lcom/amazonaws/metrics/AwsSdkMetrics;->dirtyEnabling:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 479
    .end local v2    # "f":Lcom/amazonaws/metrics/MetricCollector$Factory;
    .end local v3    # "instance":Lcom/amazonaws/metrics/MetricCollector;
    :catch_0
    move-exception v1

    .line 480
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    const-class v5, Lcom/amazonaws/metrics/AwsSdkMetrics;

    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v5

    const-string v7, "Failed to enable the default metrics"

    .line 481
    invoke-interface {v5, v7, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 483
    const/4 v5, 0x0

    :try_start_6
    sput-boolean v5, Lcom/amazonaws/metrics/AwsSdkMetrics;->dirtyEnabling:Z

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    const/4 v5, 0x0

    sput-boolean v5, Lcom/amazonaws/metrics/AwsSdkMetrics;->dirtyEnabling:Z

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public static getCredentailFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->credentialFile:Ljava/lang/String;

    return-object v0
.end method

.method public static getCredentialProvider()Lcom/amazonaws/auth/AWSCredentialsProvider;
    .locals 5

    .prologue
    .line 555
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 556
    .local v0, "e":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 557
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.amazonaws.metrics.internal.cloudwatch.DefaultMetricCollectorFactory"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 558
    sget-object v3, Lcom/amazonaws/metrics/AwsSdkMetrics;->credentialProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    return-object v3

    .line 556
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 561
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    .line 562
    .local v1, "ex":Ljava/lang/SecurityException;
    const-class v3, Lcom/amazonaws/metrics/AwsSdkMetrics;

    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v3

    const-string v4, "Illegal attempt to access the credential provider"

    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 564
    throw v1
.end method

.method public static getHostMetricName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 712
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->hostMetricName:Ljava/lang/String;

    return-object v0
.end method

.method static getInternalMetricCollector()Lcom/amazonaws/metrics/MetricCollector;
    .locals 1

    .prologue
    .line 338
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    return-object v0
.end method

.method public static getJvmMetricName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 692
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->jvmMetricName:Ljava/lang/String;

    return-object v0
.end method

.method public static getMetricCollector()Lcom/amazonaws/metrics/MetricCollector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/metrics/MetricCollector;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 342
    sget-object v1, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    if-nez v1, :cond_0

    .line 343
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->isDefaultMetricsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->enableDefaultMetrics()Z

    .line 347
    :cond_0
    sget-object v1, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    if-nez v1, :cond_1

    sget-object v0, Lcom/amazonaws/metrics/MetricCollector;->NONE:Lcom/amazonaws/metrics/MetricCollector;

    .line 348
    .local v0, "t":Lcom/amazonaws/metrics/MetricCollector;, "TT;"
    :goto_0
    return-object v0

    .line 347
    .end local v0    # "t":Lcom/amazonaws/metrics/MetricCollector;, "TT;"
    :cond_1
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    goto :goto_0
.end method

.method public static getMetricNameSpace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 670
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->metricNameSpace:Ljava/lang/String;

    return-object v0
.end method

.method public static getMetricQueueSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 638
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->metricQueueSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public static getPredefinedMetrics()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/amazonaws/metrics/MetricType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->registry:Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;

    invoke-virtual {v0}, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->predefinedMetrics()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getQueuePollTimeoutMilli()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 655
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->queuePollTimeoutMilli:Ljava/lang/Long;

    return-object v0
.end method

.method public static getRegion()Lcom/amazonaws/regions/Regions;
    .locals 1

    .prologue
    .line 583
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->region:Lcom/amazonaws/regions/Regions;

    return-object v0
.end method

.method public static getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/metrics/RequestMetricCollector;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 314
    sget-object v1, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    if-nez v1, :cond_0

    .line 315
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->isDefaultMetricsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->enableDefaultMetrics()Z

    .line 319
    :cond_0
    sget-object v1, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    if-nez v1, :cond_1

    sget-object v0, Lcom/amazonaws/metrics/RequestMetricCollector;->NONE:Lcom/amazonaws/metrics/RequestMetricCollector;

    .line 320
    .local v0, "t":Lcom/amazonaws/metrics/RequestMetricCollector;, "TT;"
    :goto_0
    return-object v0

    .line 319
    .end local v0    # "t":Lcom/amazonaws/metrics/RequestMetricCollector;, "TT;"
    :cond_1
    sget-object v1, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    invoke-virtual {v1}, Lcom/amazonaws/metrics/MetricCollector;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    goto :goto_0
.end method

.method public static getServiceMetricCollector()Lcom/amazonaws/metrics/ServiceMetricCollector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/metrics/ServiceMetricCollector;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 324
    sget-object v1, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    if-nez v1, :cond_0

    .line 325
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->isDefaultMetricsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->enableDefaultMetrics()Z

    .line 329
    :cond_0
    sget-object v1, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    if-nez v1, :cond_1

    sget-object v0, Lcom/amazonaws/metrics/ServiceMetricCollector;->NONE:Lcom/amazonaws/metrics/ServiceMetricCollector;

    .line 330
    .local v0, "t":Lcom/amazonaws/metrics/ServiceMetricCollector;, "TT;"
    :goto_0
    return-object v0

    .line 329
    .end local v0    # "t":Lcom/amazonaws/metrics/ServiceMetricCollector;, "TT;"
    :cond_1
    sget-object v1, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    invoke-virtual {v1}, Lcom/amazonaws/metrics/MetricCollector;->getServiceMetricCollector()Lcom/amazonaws/metrics/ServiceMetricCollector;

    move-result-object v0

    goto :goto_0
.end method

.method public static isDefaultMetricsEnabled()Z
    .locals 1

    .prologue
    .line 400
    sget-boolean v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->defaultMetricsEnabled:Z

    return v0
.end method

.method public static isMachineMetricExcluded()Z
    .locals 1

    .prologue
    .line 437
    sget-boolean v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->machineMetricsExcluded:Z

    return v0
.end method

.method public static isMetricsEnabled()Z
    .locals 2

    .prologue
    .line 429
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    .line 430
    .local v0, "mc":Lcom/amazonaws/metrics/MetricCollector;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazonaws/metrics/MetricCollector;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPerHostMetricEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 451
    sget-boolean v2, Lcom/amazonaws/metrics/AwsSdkMetrics;->perHostMetricsIncluded:Z

    if-eqz v2, :cond_1

    .line 455
    .local v0, "host":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 453
    .end local v0    # "host":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->hostMetricName:Ljava/lang/String;

    .line 454
    .restart local v0    # "host":Ljava/lang/String;
    if-nez v0, :cond_2

    const-string v0, ""

    .line 455
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 454
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static isPerHostMetricIncluded()Z
    .locals 1

    .prologue
    .line 444
    sget-boolean v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->perHostMetricsIncluded:Z

    return v0
.end method

.method public static isSingleMetricNamespace()Z
    .locals 1

    .prologue
    .line 409
    sget-boolean v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->singleMetricNamespace:Z

    return v0
.end method

.method public static remove(Lcom/amazonaws/metrics/MetricType;)Z
    .locals 1
    .param p0, "type"    # Lcom/amazonaws/metrics/MetricType;

    .prologue
    .line 536
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->registry:Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;

    invoke-virtual {v0, p0}, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->removeMetricType(Lcom/amazonaws/metrics/MetricType;)Z

    move-result v0

    goto :goto_0
.end method

.method public static set(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/amazonaws/metrics/MetricType;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 525
    .local p0, "types":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->registry:Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;

    invoke-virtual {v0, p0}, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->setMetricTypes(Ljava/util/Collection;)V

    .line 526
    return-void
.end method

.method public static setCredentialFile(Ljava/lang/String;)V
    .locals 0
    .param p0, "filepath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    invoke-static {p0}, Lcom/amazonaws/metrics/AwsSdkMetrics;->setCredentialFile0(Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method private static setCredentialFile0(Ljava/lang/String;)V
    .locals 3
    .param p0, "filepath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 616
    new-instance v0, Lcom/amazonaws/auth/PropertiesCredentials;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/amazonaws/auth/PropertiesCredentials;-><init>(Ljava/io/File;)V

    .line 618
    .local v0, "cred":Lcom/amazonaws/auth/PropertiesCredentials;
    const-class v2, Lcom/amazonaws/metrics/AwsSdkMetrics;

    monitor-enter v2

    .line 619
    :try_start_0
    new-instance v1, Lcom/amazonaws/metrics/AwsSdkMetrics$1;

    invoke-direct {v1, v0}, Lcom/amazonaws/metrics/AwsSdkMetrics$1;-><init>(Lcom/amazonaws/auth/PropertiesCredentials;)V

    sput-object v1, Lcom/amazonaws/metrics/AwsSdkMetrics;->credentialProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 629
    sput-object p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->credentialFile:Ljava/lang/String;

    .line 630
    monitor-exit v2

    .line 631
    return-void

    .line 630
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static declared-synchronized setCredentialProvider(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 2
    .param p0, "provider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;

    .prologue
    .line 575
    const-class v0, Lcom/amazonaws/metrics/AwsSdkMetrics;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->credentialProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    monitor-exit v0

    return-void

    .line 575
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setHostMetricName(Ljava/lang/String;)V
    .locals 0
    .param p0, "hostMetricName"    # Ljava/lang/String;

    .prologue
    .line 723
    sput-object p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->hostMetricName:Ljava/lang/String;

    .line 724
    return-void
.end method

.method public static setJvmMetricName(Ljava/lang/String;)V
    .locals 0
    .param p0, "jvmMetricName"    # Ljava/lang/String;

    .prologue
    .line 703
    sput-object p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->jvmMetricName:Ljava/lang/String;

    .line 704
    return-void
.end method

.method public static setMachineMetricsExcluded(Z)V
    .locals 0
    .param p0, "excludeMachineMetrics"    # Z

    .prologue
    .line 381
    sput-boolean p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->machineMetricsExcluded:Z

    .line 382
    return-void
.end method

.method public static declared-synchronized setMetricCollector(Lcom/amazonaws/metrics/MetricCollector;)V
    .locals 3
    .param p0, "mc"    # Lcom/amazonaws/metrics/MetricCollector;

    .prologue
    .line 367
    const-class v2, Lcom/amazonaws/metrics/AwsSdkMetrics;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    .line 368
    .local v0, "old":Lcom/amazonaws/metrics/MetricCollector;
    sput-object p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->mc:Lcom/amazonaws/metrics/MetricCollector;

    .line 369
    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Lcom/amazonaws/metrics/MetricCollector;->stop()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :cond_0
    monitor-exit v2

    return-void

    .line 367
    .end local v0    # "old":Lcom/amazonaws/metrics/MetricCollector;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static setMetricNameSpace(Ljava/lang/String;)V
    .locals 1
    .param p0, "metricNameSpace"    # Ljava/lang/String;

    .prologue
    .line 682
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 683
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 684
    :cond_1
    sput-object p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->metricNameSpace:Ljava/lang/String;

    .line 685
    return-void
.end method

.method public static setMetricQueueSize(Ljava/lang/Integer;)V
    .locals 0
    .param p0, "size"    # Ljava/lang/Integer;

    .prologue
    .line 646
    sput-object p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->metricQueueSize:Ljava/lang/Integer;

    .line 647
    return-void
.end method

.method public static setPerHostMetricsIncluded(Z)V
    .locals 0
    .param p0, "includePerHostMetrics"    # Z

    .prologue
    .line 391
    sput-boolean p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->perHostMetricsIncluded:Z

    .line 392
    return-void
.end method

.method public static setQueuePollTimeoutMilli(Ljava/lang/Long;)V
    .locals 0
    .param p0, "timeoutMilli"    # Ljava/lang/Long;

    .prologue
    .line 663
    sput-object p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->queuePollTimeoutMilli:Ljava/lang/Long;

    .line 664
    return-void
.end method

.method public static setRegion(Lcom/amazonaws/regions/Regions;)V
    .locals 0
    .param p0, "region"    # Lcom/amazonaws/regions/Regions;

    .prologue
    .line 591
    sput-object p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->region:Lcom/amazonaws/regions/Regions;

    .line 592
    return-void
.end method

.method public static setSingleMetricNamespace(Z)V
    .locals 0
    .param p0, "singleMetricNamespace"    # Z

    .prologue
    .line 421
    sput-boolean p0, Lcom/amazonaws/metrics/AwsSdkMetrics;->singleMetricNamespace:Z

    .line 422
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/metrics/AwsSdkMetrics;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    const-class v0, Lcom/amazonaws/metrics/AwsSdkMetrics;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/metrics/AwsSdkMetrics;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/metrics/AwsSdkMetrics;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/amazonaws/metrics/AwsSdkMetrics;->$VALUES:[Lcom/amazonaws/metrics/AwsSdkMetrics;

    invoke-virtual {v0}, [Lcom/amazonaws/metrics/AwsSdkMetrics;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/metrics/AwsSdkMetrics;

    return-object v0
.end method
