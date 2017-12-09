.class public Lcom/amazonaws/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final ALTERNATE_ISO8601_DATE_PATTERN:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

.field public static final COMPRESSED_DATE_PATTERN:Ljava/lang/String; = "yyyyMMdd\'T\'HHmmss\'Z\'"

.field private static final GMT_TIMEZONE:Ljava/util/TimeZone;

.field public static final ISO8601_DATE_PATTERN:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field public static final RFC822_DATE_PATTERN:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss z"

.field private static final sdfMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/util/DateUtils;->GMT_TIMEZONE:Ljava/util/TimeZone;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/util/DateUtils;->sdfMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/amazonaws/util/DateUtils;->GMT_TIMEZONE:Ljava/util/TimeZone;

    return-object v0
.end method

.method public static format(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 110
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->getSimpleDateFormat(Ljava/lang/String;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatISO8601Date(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 137
    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-static {v0, p0}, Lcom/amazonaws/util/DateUtils;->format(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatRFC822Date(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 158
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss z"

    invoke-static {v0, p0}, Lcom/amazonaws/util/DateUtils;->format(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSimpleDateFormat(Ljava/lang/String;)Ljava/lang/ThreadLocal;
    .locals 5
    .param p0, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    sget-object v3, Lcom/amazonaws/util/DateUtils;->sdfMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadLocal;

    .line 66
    .local v1, "sdf":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/text/SimpleDateFormat;>;"
    if-nez v1, :cond_1

    .line 67
    sget-object v4, Lcom/amazonaws/util/DateUtils;->sdfMap:Ljava/util/Map;

    monitor-enter v4

    .line 68
    :try_start_0
    sget-object v3, Lcom/amazonaws/util/DateUtils;->sdfMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/ThreadLocal;

    move-object v1, v0

    .line 69
    if-nez v1, :cond_0

    .line 70
    new-instance v2, Lcom/amazonaws/util/DateUtils$1;

    invoke-direct {v2, p0}, Lcom/amazonaws/util/DateUtils$1;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v1    # "sdf":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/text/SimpleDateFormat;>;"
    .local v2, "sdf":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/text/SimpleDateFormat;>;"
    :try_start_1
    sget-object v3, Lcom/amazonaws/util/DateUtils;->sdfMap:Ljava/util/Map;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 81
    .end local v2    # "sdf":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/text/SimpleDateFormat;>;"
    .restart local v1    # "sdf":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/text/SimpleDateFormat;>;"
    :cond_0
    :try_start_2
    monitor-exit v4

    .line 83
    :cond_1
    return-object v1

    .line 81
    :catchall_0
    move-exception v3

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1    # "sdf":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/text/SimpleDateFormat;>;"
    .restart local v2    # "sdf":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/text/SimpleDateFormat;>;"
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "sdf":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/text/SimpleDateFormat;>;"
    .restart local v1    # "sdf":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/text/SimpleDateFormat;>;"
    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "dateString"    # Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->getSimpleDateFormat(Ljava/lang/String;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "pe":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseCompressedISO8601Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "dateString"    # Ljava/lang/String;

    .prologue
    .line 169
    const-string/jumbo v0, "yyyyMMdd\'T\'HHmmss\'Z\'"

    invoke-static {v0, p0}, Lcom/amazonaws/util/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseISO8601Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "dateString"    # Ljava/lang/String;

    .prologue
    .line 122
    :try_start_0
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-static {v1, p0}, Lcom/amazonaws/util/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 126
    :goto_0
    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-static {v1, p0}, Lcom/amazonaws/util/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_0
.end method

.method public static parseRFC822Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "dateString"    # Ljava/lang/String;

    .prologue
    .line 148
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss z"

    invoke-static {v0, p0}, Lcom/amazonaws/util/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
