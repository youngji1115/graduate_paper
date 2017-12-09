.class public Lcom/amazonaws/regions/RegionUtils;
.super Ljava/lang/Object;
.source "RegionUtils.java"


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;

.field private static regions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "com.amazonaws.request"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/regions/RegionUtils;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegion(Ljava/lang/String;)Lcom/amazonaws/regions/Region;
    .locals 3
    .param p0, "regionName"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->getRegions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/regions/Region;

    .line 75
    .local v0, "r":Lcom/amazonaws/regions/Region;
    invoke-virtual {v0}, Lcom/amazonaws/regions/Region;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    .end local v0    # "r":Lcom/amazonaws/regions/Region;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRegionByEndpoint(Ljava/lang/String;)Lcom/amazonaws/regions/Region;
    .locals 8
    .param p0, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p0}, Lcom/amazonaws/regions/RegionUtils;->getUriByEndpoint(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    .line 98
    .local v3, "targetEndpointUri":Ljava/net/URI;
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "targetHost":Ljava/lang/String;
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->getRegions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/regions/Region;

    .line 101
    .local v0, "region":Lcom/amazonaws/regions/Region;
    invoke-virtual {v0}, Lcom/amazonaws/regions/Region;->getServiceEndpoints()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    .local v1, "serviceEndpoint":Ljava/lang/String;
    invoke-static {v1}, Lcom/amazonaws/regions/RegionUtils;->getUriByEndpoint(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 104
    .local v2, "serviceEndpointUrl":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 105
    return-object v0

    .line 109
    .end local v0    # "region":Lcom/amazonaws/regions/Region;
    .end local v1    # "serviceEndpoint":Ljava/lang/String;
    .end local v2    # "serviceEndpointUrl":Ljava/net/URI;
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No region found with any service for endpoint "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static declared-synchronized getRegions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    const-class v1, Lcom/amazonaws/regions/RegionUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amazonaws/regions/RegionUtils;->regions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->init()V

    .line 51
    :cond_0
    sget-object v0, Lcom/amazonaws/regions/RegionUtils;->regions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getRegionsForService(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "serviceAbbreviation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    const-class v3, Lcom/amazonaws/regions/RegionUtils;

    monitor-enter v3

    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 61
    .local v1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/regions/Region;>;"
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->getRegions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/regions/Region;

    .line 62
    .local v0, "r":Lcom/amazonaws/regions/Region;
    invoke-virtual {v0, p0}, Lcom/amazonaws/regions/Region;->isServiceSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 60
    .end local v0    # "r":Lcom/amazonaws/regions/Region;
    .end local v1    # "regions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/regions/Region;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 66
    .restart local v1    # "regions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/regions/Region;>;"
    :cond_1
    monitor-exit v3

    return-object v1
.end method

.method private static getUriByEndpoint(Ljava/lang/String;)Ljava/net/URI;
    .locals 6
    .param p0, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 184
    const/4 v1, 0x0

    .line 186
    .local v1, "targetEndpointUri":Ljava/net/URI;
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v1    # "targetEndpointUri":Ljava/net/URI;
    .local v2, "targetEndpointUri":Ljava/net/URI;
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 188
    new-instance v1, Ljava/net/URI;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    .end local v2    # "targetEndpointUri":Ljava/net/URI;
    .restart local v1    # "targetEndpointUri":Ljava/net/URI;
    :goto_0
    return-object v1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/net/URISyntaxException;
    :goto_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse service endpoint: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 190
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .end local v1    # "targetEndpointUri":Ljava/net/URI;
    .restart local v2    # "targetEndpointUri":Ljava/net/URI;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "targetEndpointUri":Ljava/net/URI;
    .restart local v1    # "targetEndpointUri":Ljava/net/URI;
    goto :goto_1

    .end local v1    # "targetEndpointUri":Ljava/net/URI;
    .restart local v2    # "targetEndpointUri":Ljava/net/URI;
    :cond_0
    move-object v1, v2

    .end local v2    # "targetEndpointUri":Ljava/net/URI;
    .restart local v1    # "targetEndpointUri":Ljava/net/URI;
    goto :goto_0
.end method

.method public static declared-synchronized init()V
    .locals 4

    .prologue
    .line 122
    const-class v2, Lcom/amazonaws/regions/RegionUtils;

    monitor-enter v2

    :try_start_0
    const-string v1, "com.amazonaws.regions.RegionUtils.fileOverride"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    :try_start_1
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->loadRegionsFromOverrideFile()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :cond_0
    :try_start_2
    sget-object v1, Lcom/amazonaws/regions/RegionUtils;->regions:Ljava/util/List;

    if-nez v1, :cond_1

    .line 132
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->initSDKRegions()V

    .line 135
    :cond_1
    sget-object v1, Lcom/amazonaws/regions/RegionUtils;->regions:Ljava/util/List;

    if-nez v1, :cond_2

    .line 136
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Failed to initialize the regions."

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Couldn\'t find regions override file specified"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    monitor-exit v2

    return-void
.end method

.method private static initRegions(Ljava/io/InputStream;)V
    .locals 4
    .param p0, "regionsFile"    # Ljava/io/InputStream;

    .prologue
    .line 160
    :try_start_0
    new-instance v1, Lcom/amazonaws/regions/RegionMetadataParser;

    invoke-direct {v1}, Lcom/amazonaws/regions/RegionMetadataParser;-><init>()V

    .line 161
    .local v1, "parser":Lcom/amazonaws/regions/RegionMetadataParser;
    invoke-virtual {v1, p0}, Lcom/amazonaws/regions/RegionMetadataParser;->parseRegionMetadata(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/amazonaws/regions/RegionUtils;->regions:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1    # "parser":Lcom/amazonaws/regions/RegionMetadataParser;
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/amazonaws/regions/RegionUtils;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Failed to parse regional endpoints"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static initSDKRegions()V
    .locals 2

    .prologue
    .line 172
    sget-object v0, Lcom/amazonaws/regions/RegionUtils;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lcom/amazonaws/regions/RegionUtils;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Initializing the regions with default regions"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 175
    :cond_0
    invoke-static {}, Lcom/amazonaws/regions/RegionDefaults;->getRegions()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/regions/RegionUtils;->regions:Ljava/util/List;

    .line 176
    return-void
.end method

.method private static loadRegionsFromOverrideFile()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 141
    const-string v3, "com.amazonaws.regions.RegionUtils.fileOverride"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "overrideFilePath":Ljava/lang/String;
    sget-object v3, Lcom/amazonaws/regions/RegionUtils;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    sget-object v3, Lcom/amazonaws/regions/RegionUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using local override of the regions file ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to initiate regions data..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 147
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v2, "regionsFile":Ljava/io/File;
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 149
    .local v0, "override":Ljava/io/FileInputStream;
    invoke-static {v0}, Lcom/amazonaws/regions/RegionUtils;->initRegions(Ljava/io/InputStream;)V

    .line 150
    return-void
.end method
