.class public Lcom/amazonaws/util/AwsHostNameUtils;
.super Ljava/lang/Object;
.source "AwsHostNameUtils.java"


# static fields
.field private static final S3_ENDPOINT_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "^(?:.+\\.)?s3[.-]([a-z0-9-]+)$"

    .line 31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/util/AwsHostNameUtils;->S3_ENDPOINT_PATTERN:Ljava/util/regex/Pattern;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static localHostName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 192
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    .line 193
    .local v1, "localhost":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 199
    :goto_0
    return-object v2

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    const-class v2, Lcom/amazonaws/util/AwsHostNameUtils;

    .line 196
    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    const-string v3, "Failed to determine the local hostname; fall back to use \"localhost\"."

    .line 197
    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 199
    const-string v2, "localhost"

    goto :goto_0
.end method

.method public static parseRegionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "serviceHint"    # Ljava/lang/String;

    .prologue
    .line 53
    if-nez p0, :cond_0

    .line 54
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "hostname cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 56
    :cond_0
    invoke-static {p0}, Lcom/amazonaws/util/AwsHostNameUtils;->parseRegionNameByInternalConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "regionNameInInternalConfig":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 84
    .end local v3    # "regionNameInInternalConfig":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 61
    .restart local v3    # "regionNameInInternalConfig":Ljava/lang/String;
    :cond_1
    const-string v4, ".amazonaws.com"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, ".amazonaws.com"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v0, v4, v5

    .line 63
    .local v0, "index":I
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/AwsHostNameUtils;->parseStandardRegionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 66
    .end local v0    # "index":I
    :cond_2
    if-eqz p1, :cond_3

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^(?:.+\\.)?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 71
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[.-]([a-z0-9-]+)\\."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 75
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 76
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 77
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 84
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    :cond_3
    const-string/jumbo v3, "us-east-1"

    goto :goto_0
.end method

.method public static parseRegionName(Ljava/net/URI;)Ljava/lang/String;
    .locals 2
    .param p0, "endpoint"    # Ljava/net/URI;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazonaws/util/AwsHostNameUtils;->parseRegionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseRegionNameByInternalConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {}, Lcom/amazonaws/internal/config/InternalConfig$Factory;->getInternalConfig()Lcom/amazonaws/internal/config/InternalConfig;

    move-result-object v1

    .line 130
    .local v1, "internConfig":Lcom/amazonaws/internal/config/InternalConfig;
    invoke-virtual {v1}, Lcom/amazonaws/internal/config/InternalConfig;->getHostRegexToRegionMappings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;

    .line 131
    .local v2, "mapping":Lcom/amazonaws/internal/config/HostRegexToRegionMapping;
    invoke-virtual {v2}, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;->getHostNameRegex()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "hostNameRegex":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    invoke-virtual {v2}, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;->getRegionName()Ljava/lang/String;

    move-result-object v3

    .line 137
    .end local v0    # "hostNameRegex":Ljava/lang/String;
    .end local v2    # "mapping":Lcom/amazonaws/internal/config/HostRegexToRegionMapping;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static parseServiceName(Ljava/net/URI;)Ljava/lang/String;
    .locals 7
    .param p0, "endpoint"    # Ljava/net/URI;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 149
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "host":Ljava/lang/String;
    const-string v4, ".amazonaws.com"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 153
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot parse a service name from an unrecognized endpoint ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 159
    :cond_0
    const-string v4, ".amazonaws.com"

    .line 160
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "serviceAndRegion":Ljava/lang/String;
    const-string v4, ".s3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/amazonaws/util/AwsHostNameUtils;->S3_ENDPOINT_PATTERN:Ljava/util/regex/Pattern;

    .line 164
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 165
    :cond_1
    const-string v3, "s3"

    .line 180
    .end local v3    # "serviceAndRegion":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v3

    .line 168
    .restart local v3    # "serviceAndRegion":Ljava/lang/String;
    :cond_3
    const/16 v1, 0x2e

    .line 173
    .local v1, "separator":C
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 178
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, "service":Ljava/lang/String;
    move-object v3, v2

    .line 180
    goto :goto_0
.end method

.method private static parseStandardRegionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fragment"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-object v3, Lcom/amazonaws/util/AwsHostNameUtils;->S3_ENDPOINT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 98
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    :cond_0
    :goto_0
    return-object v2

    .line 103
    :cond_1
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 104
    .local v0, "index":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 107
    const-string/jumbo v2, "us-east-1"

    goto :goto_0

    .line 111
    :cond_2
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "region":Ljava/lang/String;
    const-string/jumbo v3, "us-gov"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    const-string/jumbo v2, "us-gov-west-1"

    goto :goto_0
.end method
