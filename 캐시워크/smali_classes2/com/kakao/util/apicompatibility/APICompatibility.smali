.class public abstract Lcom/kakao/util/apicompatibility/APICompatibility;
.super Ljava/lang/Object;
.source "APICompatibility.java"


# static fields
.field static final COOKIE_NAME_VALUE_DELIMITER:Ljava/lang/String; = "="

.field static final COOKIE_SEPERATOR:Ljava/lang/String; = ";"

.field private static volatile instance:Lcom/kakao/util/apicompatibility/APICompatibility;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/kakao/util/apicompatibility/APICompatibility;
    .locals 7

    .prologue
    .line 19
    sget-object v4, Lcom/kakao/util/apicompatibility/APICompatibility;->instance:Lcom/kakao/util/apicompatibility/APICompatibility;

    if-nez v4, :cond_1

    .line 20
    const-class v5, Lcom/kakao/util/apicompatibility/APICompatibility;

    monitor-enter v5

    .line 21
    :try_start_0
    sget-object v4, Lcom/kakao/util/apicompatibility/APICompatibility;->instance:Lcom/kakao/util/apicompatibility/APICompatibility;

    if-nez v4, :cond_0

    .line 23
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .local v3, "sdkVersion":I
    const/16 v4, 0x14

    if-le v3, v4, :cond_2

    .line 26
    const-string v0, "APILevel21Compatibility"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .local v0, "className":Ljava/lang/String;
    :goto_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v6, Lcom/kakao/util/apicompatibility/APICompatibility;

    invoke-virtual {v6}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v6, Lcom/kakao/util/apicompatibility/APICompatibility;

    invoke-virtual {v4, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 36
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/kakao/util/apicompatibility/APICompatibility;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kakao/util/apicompatibility/APICompatibility;

    sput-object v4, Lcom/kakao/util/apicompatibility/APICompatibility;->instance:Lcom/kakao/util/apicompatibility/APICompatibility;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :cond_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :cond_1
    sget-object v4, Lcom/kakao/util/apicompatibility/APICompatibility;->instance:Lcom/kakao/util/apicompatibility/APICompatibility;

    return-object v4

    .line 27
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/kakao/util/apicompatibility/APICompatibility;>;"
    :cond_2
    const/16 v4, 0x12

    if-le v3, v4, :cond_3

    .line 28
    :try_start_3
    const-string v0, "APILevel19Compatibility"

    .restart local v0    # "className":Ljava/lang/String;
    goto :goto_0

    .line 30
    .end local v0    # "className":Ljava/lang/String;
    :cond_3
    const-string v0, "APILevel9Compatibility"

    .restart local v0    # "className":Ljava/lang/String;
    goto :goto_0

    .line 37
    :catch_0
    move-exception v2

    .line 38
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v2}, Lcom/kakao/util/helper/log/Logger;->e(Ljava/lang/Throwable;)I

    .line 39
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 48
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 40
    .restart local v0    # "className":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 41
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_4
    invoke-static {v2}, Lcom/kakao/util/helper/log/Logger;->e(Ljava/lang/Throwable;)I

    .line 42
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 43
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-static {v2}, Lcom/kakao/util/helper/log/Logger;->e(Ljava/lang/Throwable;)I

    .line 45
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method


# virtual methods
.method public abstract getSmsMessage(Landroid/content/Intent;)Ljava/lang/String;
.end method

.method public abstract removeCookie(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract removeCookie(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method
