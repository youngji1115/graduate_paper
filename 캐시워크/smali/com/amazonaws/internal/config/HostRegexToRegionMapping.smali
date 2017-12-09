.class public Lcom/amazonaws/internal/config/HostRegexToRegionMapping;
.super Ljava/lang/Object;
.source "HostRegexToRegionMapping.java"


# instance fields
.field private final hostNameRegex:Ljava/lang/String;

.field private final regionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "hostNameRegex"    # Ljava/lang/String;
    .param p2, "regionName"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid HostRegexToRegionMapping configuration: hostNameRegex must be non-empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid HostRegexToRegionMapping configuration: regionName must be non-empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid HostRegexToRegionMapping configuration: hostNameRegex is not a valid regex"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 45
    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :cond_3
    iput-object p1, p0, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;->hostNameRegex:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;->regionName:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getHostNameRegex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;->hostNameRegex:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;->regionName:Ljava/lang/String;

    return-object v0
.end method
