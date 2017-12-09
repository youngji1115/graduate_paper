.class public Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;
.super Ljava/lang/Object;
.source "ObjectExpirationHeaderHandler.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/HeaderHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/services/s3/internal/HeaderHandler",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final datePattern:Ljava/util/regex/Pattern;

.field private static final log:Lorg/apache/commons/logging/Log;

.field private static final rulePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "expiry-date=\"(.*?)\""

    .line 39
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->datePattern:Ljava/util/regex/Pattern;

    .line 40
    const-string v0, "rule-id=\"(.*?)\""

    .line 41
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->rulePattern:Ljava/util/regex/Pattern;

    .line 43
    const-class v0, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;

    .line 44
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->log:Lorg/apache/commons/logging/Log;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    .local p0, "this":Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;, "Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p1, "expirationHeader"    # Ljava/lang/String;

    .prologue
    .line 72
    .local p0, "this":Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;, "Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler<TT;>;"
    sget-object v3, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->datePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 73
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "date":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 84
    .end local v0    # "date":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 77
    .restart local v0    # "date":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 78
    .local v1, "exception":Ljava/lang/Exception;
    sget-object v3, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Error parsing expiry-date from x-amz-expiration header."

    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 84
    .end local v0    # "date":Ljava/lang/String;
    .end local v1    # "exception":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private parseRuleId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "expirationHeader"    # Ljava/lang/String;

    .prologue
    .line 64
    .local p0, "this":Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;, "Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler<TT;>;"
    sget-object v1, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->rulePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 65
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handle(Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;Lcom/amazonaws/http/HttpResponse;)V
    .locals 3
    .param p2, "response"    # Lcom/amazonaws/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazonaws/http/HttpResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .line 55
    .local p0, "this":Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;, "Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler<TT;>;"
    .local p1, "result":Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;, "TT;"
    invoke-virtual {p2}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "x-amz-expiration"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    .local v0, "expirationHeader":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;->setExpirationTime(Ljava/util/Date;)V

    .line 59
    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->parseRuleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;->setExpirationTimeRuleId(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;Lcom/amazonaws/http/HttpResponse;)V
    .locals 0

    .prologue
    .line 31
    .local p0, "this":Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;, "Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler<TT;>;"
    check-cast p1, Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->handle(Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;Lcom/amazonaws/http/HttpResponse;)V

    return-void
.end method
