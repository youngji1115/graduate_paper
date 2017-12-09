.class public Lcom/kakao/util/helper/log/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/util/helper/log/Logger$DeployPhase;
    }
.end annotation


# static fields
.field private static final LOG_SEGMENT_SIZE:I = 0x7d0

.field private static loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

.field private static withStack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/kakao/util/helper/log/Logger;->initLogConfig()Lcom/kakao/util/helper/log/LoggerConfig;

    move-result-object v0

    sput-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kakao/util/helper/log/Logger;->withStack:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 239
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/kakao/util/helper/log/Logger;->dt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 247
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/kakao/util/helper/log/Logger;->dt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 235
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/kakao/util/helper/log/Logger;->dt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 243
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/kakao/util/helper/log/Logger;->dt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static dev(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 398
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/kakao/util/helper/log/Logger;->devt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static dev(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 406
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/kakao/util/helper/log/Logger;->devt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs dev(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 394
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/kakao/util/helper/log/Logger;->devt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static dev(Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 402
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/kakao/util/helper/log/Logger;->devt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static devt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 390
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/kakao/util/helper/log/Logger;->printLog(Lcom/kakao/util/helper/log/Tag;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static devt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 372
    const-string v0, "%s\n%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/kakao/util/helper/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/kakao/util/helper/log/Logger;->devt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static varargs devt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 3
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 376
    sget-object v2, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v2, v1}, Lcom/kakao/util/helper/log/LoggerConfig;->isPrintLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "message":Ljava/lang/String;
    if-eqz p2, :cond_1

    array-length v2, p2

    if-lez v2, :cond_1

    .line 379
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 383
    :goto_0
    invoke-static {p0, v1, v0}, Lcom/kakao/util/helper/log/Logger;->printLog(Lcom/kakao/util/helper/log/Tag;ILjava/lang/String;)I

    move-result v1

    .line 385
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return v1

    .line 381
    .restart local v0    # "message":Ljava/lang/String;
    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public static devt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 368
    invoke-static {p1}, Lcom/kakao/util/helper/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kakao/util/helper/log/Logger;->devt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static dt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 231
    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Lcom/kakao/util/helper/log/Logger;->printLog(Lcom/kakao/util/helper/log/Tag;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static dt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 213
    const-string v0, "%s\n%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/kakao/util/helper/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/kakao/util/helper/log/Logger;->dt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static varargs dt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 3
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x3

    .line 217
    sget-object v1, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v1, v2}, Lcom/kakao/util/helper/log/LoggerConfig;->isPrintLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "message":Ljava/lang/String;
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 220
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_0
    invoke-static {p0, v2, v0}, Lcom/kakao/util/helper/log/Logger;->printLog(Lcom/kakao/util/helper/log/Tag;ILjava/lang/String;)I

    move-result v1

    .line 226
    .end local v0    # "message":Ljava/lang/String;
    :goto_1
    return v1

    .line 222
    .restart local v0    # "message":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    goto :goto_0

    .line 226
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static dt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 209
    invoke-static {p1}, Lcom/kakao/util/helper/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kakao/util/helper/log/Logger;->dt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 356
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/kakao/util/helper/log/Logger;->et(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 364
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/kakao/util/helper/log/Logger;->et(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 352
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/kakao/util/helper/log/Logger;->et(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 360
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/kakao/util/helper/log/Logger;->et(Lcom/kakao/util/helper/log/Tag;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static et(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 348
    const/4 v0, 0x6

    invoke-static {p0, v0, p1}, Lcom/kakao/util/helper/log/Logger;->printLog(Lcom/kakao/util/helper/log/Tag;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static et(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 330
    const-string v0, "%s\n%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/kakao/util/helper/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/kakao/util/helper/log/Logger;->et(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static varargs et(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 3
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x6

    .line 334
    sget-object v1, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v1, v2}, Lcom/kakao/util/helper/log/LoggerConfig;->isPrintLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "message":Ljava/lang/String;
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 337
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 341
    :goto_0
    invoke-static {p0, v2, v0}, Lcom/kakao/util/helper/log/Logger;->printLog(Lcom/kakao/util/helper/log/Tag;ILjava/lang/String;)I

    move-result v1

    .line 343
    .end local v0    # "message":Ljava/lang/String;
    :goto_1
    return v1

    .line 339
    .restart local v0    # "message":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    goto :goto_0

    .line 343
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static et(Lcom/kakao/util/helper/log/Tag;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 326
    invoke-static {p1}, Lcom/kakao/util/helper/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kakao/util/helper/log/Logger;->et(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCallerTraceInfo(Ljava/lang/Class;)Ljava/lang/String;
    .locals 15
    .param p0, "klass"    # Ljava/lang/Class;

    .prologue
    const/4 v14, 0x3

    const/4 v11, 0x0

    .line 135
    sget-object v10, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v10, v14}, Lcom/kakao/util/helper/log/LoggerConfig;->isPrintLoggable(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 136
    const-string v10, "unknown caller"

    .line 161
    :goto_0
    return-object v10

    .line 138
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    .line 139
    .local v8, "stacks":[Ljava/lang/StackTraceElement;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    .line 140
    .local v9, "threadName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 141
    .local v6, "stack":Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .line 142
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "callerClassName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 144
    .local v2, "found":Z
    array-length v12, v8

    move v10, v11

    :goto_1
    if-ge v10, v12, :cond_3

    aget-object v7, v8, v10

    .line 145
    .local v7, "stack1":Ljava/lang/StackTraceElement;
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 147
    const/4 v2, 0x1

    .line 144
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 148
    :cond_2
    if-eqz v2, :cond_1

    .line 149
    move-object v6, v7

    .line 154
    .end local v7    # "stack1":Ljava/lang/StackTraceElement;
    :cond_3
    if-nez v6, :cond_4

    .line 155
    const-string v10, ""

    goto :goto_0

    .line 158
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "klassName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, "method":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    .line 161
    .local v4, "line":I
    const-string v10, "{%s}-[%s.%s():%d]"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v9, v12, v11

    const/4 v11, 0x1

    aput-object v3, v12, v11

    const/4 v11, 0x2

    aput-object v5, v12, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v12, v14

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 165
    if-nez p0, :cond_0

    const-string v0, ""

    .line 166
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 285
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/kakao/util/helper/log/Logger;->it(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 277
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/kakao/util/helper/log/Logger;->it(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 281
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/kakao/util/helper/log/Logger;->it(Lcom/kakao/util/helper/log/Tag;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method private static initLogConfig()Lcom/kakao/util/helper/log/LoggerConfig;
    .locals 6

    .prologue
    .line 37
    const/4 v3, 0x0

    .line 39
    .local v3, "showLogs":Z
    const/4 v1, 0x3

    .line 40
    .local v1, "printLogLevel":I
    if-nez v3, :cond_0

    invoke-static {}, Lcom/kakao/util/helper/log/Logger$DeployPhase;->current()Lcom/kakao/util/helper/log/Logger$DeployPhase;

    move-result-object v4

    sget-object v5, Lcom/kakao/util/helper/log/Logger$DeployPhase;->Release:Lcom/kakao/util/helper/log/Logger$DeployPhase;

    if-ne v4, v5, :cond_0

    .line 41
    const/4 v1, 0x5

    .line 44
    :cond_0
    const-string v4, "1.1.25"

    const-string v5, "SNAPSHOT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    const/4 v4, 0x1

    sput-boolean v4, Lcom/kakao/util/helper/log/Logger;->withStack:Z

    .line 47
    :cond_1
    new-instance v0, Lcom/kakao/util/helper/log/LoggerConfig$Builder;

    invoke-direct {v0}, Lcom/kakao/util/helper/log/LoggerConfig$Builder;-><init>()V

    .line 48
    .local v0, "builder":Lcom/kakao/util/helper/log/LoggerConfig$Builder;
    sget-object v4, Lcom/kakao/util/helper/log/Tag;->DEFAULT:Lcom/kakao/util/helper/log/Tag;

    invoke-virtual {v0, v4}, Lcom/kakao/util/helper/log/LoggerConfig$Builder;->setDefaultTag(Lcom/kakao/util/helper/log/Tag;)Lcom/kakao/util/helper/log/LoggerConfig$Builder;

    move-result-object v4

    const-string v5, "com.kakao.sdk"

    invoke-virtual {v4, v5}, Lcom/kakao/util/helper/log/LoggerConfig$Builder;->setStackPrefix(Ljava/lang/String;)Lcom/kakao/util/helper/log/LoggerConfig$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/kakao/util/helper/log/LoggerConfig$Builder;->setPrintLoggerLevel(I)Lcom/kakao/util/helper/log/LoggerConfig$Builder;

    move-result-object v0

    .line 50
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 51
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v4, Lcom/kakao/util/helper/log/Logger;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {v0, v2}, Lcom/kakao/util/helper/log/LoggerConfig$Builder;->setIgnoreSet(Ljava/util/Set;)Lcom/kakao/util/helper/log/LoggerConfig$Builder;

    .line 53
    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig$Builder;->build()Lcom/kakao/util/helper/log/LoggerConfig;

    move-result-object v4

    return-object v4
.end method

.method public static it(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 273
    const/4 v0, 0x4

    invoke-static {p0, v0, p1}, Lcom/kakao/util/helper/log/Logger;->printLog(Lcom/kakao/util/helper/log/Tag;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static it(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 255
    const-string v0, "%s\n%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/kakao/util/helper/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/kakao/util/helper/log/Logger;->it(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static varargs it(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 3
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x4

    .line 259
    sget-object v1, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v1, v2}, Lcom/kakao/util/helper/log/LoggerConfig;->isPrintLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "message":Ljava/lang/String;
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 262
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_0
    invoke-static {p0, v2, v0}, Lcom/kakao/util/helper/log/Logger;->printLog(Lcom/kakao/util/helper/log/Tag;ILjava/lang/String;)I

    move-result v1

    .line 268
    .end local v0    # "message":Ljava/lang/String;
    :goto_1
    return v1

    .line 264
    .restart local v0    # "message":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    goto :goto_0

    .line 268
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static it(Lcom/kakao/util/helper/log/Tag;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 251
    invoke-static {p1}, Lcom/kakao/util/helper/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kakao/util/helper/log/Logger;->it(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static printLog(Lcom/kakao/util/helper/log/Tag;ILjava/lang/String;)I
    .locals 10
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "logLevel"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 57
    if-nez p2, :cond_1

    .line 85
    :cond_0
    return v7

    .line 60
    :cond_1
    sget-object v8, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    sget-boolean v9, Lcom/kakao/util/helper/log/Logger;->withStack:Z

    invoke-virtual {v8, v9, p2}, Lcom/kakao/util/helper/log/LoggerConfig;->getMessage(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "message":Ljava/lang/String;
    sget-object v8, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v8, p1}, Lcom/kakao/util/helper/log/LoggerConfig;->isPrintLoggable(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 64
    if-nez v3, :cond_2

    .line 65
    sget-object v8, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    sget-boolean v9, Lcom/kakao/util/helper/log/Logger;->withStack:Z

    invoke-virtual {v8, v9, p2}, Lcom/kakao/util/helper/log/LoggerConfig;->getMessage(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    :cond_2
    if-eqz v3, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/kakao/util/helper/log/Tag;->tag()Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, "tagMsg":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 73
    .local v4, "messageLen":I
    const/4 v0, 0x0

    .local v0, "curIdx":I
    const/4 v1, 0x0

    .line 75
    .local v1, "depth":I
    const/4 v7, 0x0

    .local v7, "totalPrintLen":I
    move v2, v1

    .line 76
    .end local v1    # "depth":I
    .local v2, "depth":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 77
    sub-int v5, v4, v0

    .line 78
    .local v5, "remainLen":I
    const/16 v8, 0x7d0

    if-le v5, v8, :cond_3

    .line 79
    const/16 v5, 0x7d0

    .line 82
    :cond_3
    add-int v8, v0, v5

    invoke-virtual {v3, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "depth":I
    .restart local v1    # "depth":I
    invoke-static {p1, v6, v8, v2}, Lcom/kakao/util/helper/log/Logger;->printLogPartially(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v8

    add-int/2addr v7, v8

    .line 83
    add-int/2addr v0, v5

    move v2, v1

    .line 84
    .end local v1    # "depth":I
    .restart local v2    # "depth":I
    goto :goto_0
.end method

.method private static printLogPartially(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .param p0, "logLevel"    # I
    .param p1, "tagMsg"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "depth"    # I

    .prologue
    const/16 v8, 0x7d0

    const/4 v7, 0x0

    .line 89
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 91
    .local v0, "msgLen":I
    const/4 v3, 0x0

    .line 92
    .local v3, "writtenLen":I
    const-string v1, ""

    .line 93
    .local v1, "prefix":Ljava/lang/String;
    if-lez p3, :cond_0

    .line 94
    const-string v4, "Cont(%d) "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 98
    :cond_0
    if-le v0, v8, :cond_1

    .line 99
    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "printMsg":Ljava/lang/String;
    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 130
    :goto_1
    :pswitch_0
    return v3

    .line 101
    .end local v2    # "printMsg":Ljava/lang/String;
    :cond_1
    move-object v2, p2

    .restart local v2    # "printMsg":Ljava/lang/String;
    goto :goto_0

    .line 106
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 107
    goto :goto_1

    .line 110
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 111
    goto :goto_1

    .line 114
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 115
    goto :goto_1

    .line 118
    :pswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 119
    goto :goto_1

    .line 122
    :pswitch_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 123
    goto :goto_1

    .line 126
    :pswitch_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 205
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/kakao/util/helper/log/Logger;->vt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 197
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/kakao/util/helper/log/Logger;->vt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 201
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/kakao/util/helper/log/Logger;->vt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static vt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 192
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lcom/kakao/util/helper/log/Logger;->printLog(Lcom/kakao/util/helper/log/Tag;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static vt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 174
    const-string v0, "%s\n%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/kakao/util/helper/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/kakao/util/helper/log/Logger;->vt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static varargs vt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 3
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x2

    .line 178
    sget-object v1, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v1, v2}, Lcom/kakao/util/helper/log/LoggerConfig;->isPrintLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "message":Ljava/lang/String;
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 181
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 185
    :goto_0
    invoke-static {p0, v2, v0}, Lcom/kakao/util/helper/log/Logger;->printLog(Lcom/kakao/util/helper/log/Tag;ILjava/lang/String;)I

    move-result v1

    .line 187
    .end local v0    # "message":Ljava/lang/String;
    :goto_1
    return v1

    .line 183
    .restart local v0    # "message":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    goto :goto_0

    .line 187
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static vt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 170
    invoke-static {p1}, Lcom/kakao/util/helper/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kakao/util/helper/log/Logger;->vt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 314
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/kakao/util/helper/log/Logger;->wt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 322
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/kakao/util/helper/log/Logger;->wt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 310
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/kakao/util/helper/log/Logger;->wt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 318
    sget-object v0, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v0}, Lcom/kakao/util/helper/log/LoggerConfig;->getDefaultTag()Lcom/kakao/util/helper/log/Tag;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/kakao/util/helper/log/Logger;->wt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static wt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 306
    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lcom/kakao/util/helper/log/Logger;->printLog(Lcom/kakao/util/helper/log/Tag;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static wt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 293
    const-string v0, "%s\n%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/kakao/util/helper/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/kakao/util/helper/log/Logger;->wt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static varargs wt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 3
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x5

    .line 297
    sget-object v1, Lcom/kakao/util/helper/log/Logger;->loggerConfig:Lcom/kakao/util/helper/log/LoggerConfig;

    invoke-virtual {v1, v2}, Lcom/kakao/util/helper/log/LoggerConfig;->isPrintLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "message":Ljava/lang/String;
    invoke-static {p0, v2, v0}, Lcom/kakao/util/helper/log/Logger;->printLog(Lcom/kakao/util/helper/log/Tag;ILjava/lang/String;)I

    move-result v1

    .line 301
    .end local v0    # "message":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static wt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # Lcom/kakao/util/helper/log/Tag;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 289
    invoke-static {p1}, Lcom/kakao/util/helper/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kakao/util/helper/log/Logger;->wt(Lcom/kakao/util/helper/log/Tag;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
