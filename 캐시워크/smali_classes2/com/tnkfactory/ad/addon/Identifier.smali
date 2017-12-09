.class public Lcom/tnkfactory/ad/addon/Identifier;
.super Ljava/lang/Object;
.source "Identifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static di(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 53
    const/4 v2, 0x0

    .line 55
    .local v2, "deviceId":Ljava/lang/String;
    invoke-static {}, Lcom/tnkfactory/ad/A;->d()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "codeText":Ljava/lang/String;
    const-string v4, "\\|"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "codeSplit":[Ljava/lang/String;
    aget-object v4, v0, v7

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x2

    aget-object v6, v0, v6

    aput-object v6, v5, v7

    invoke-static {p0, v4, v5}, Lcom/tnkfactory/ad/A;->m(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 59
    .local v3, "tm":Ljava/lang/Object;
    aget-object v4, v0, v8

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/tnkfactory/ad/A;->m(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "deviceId":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 61
    .restart local v2    # "deviceId":Ljava/lang/String;
    return-object v2
.end method

.method public static id(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/tnkfactory/ad/addon/Identifier;->di(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "deviceId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 25
    .local v2, "udid":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 27
    invoke-static {p0}, Lcom/tnkfactory/ad/addon/Identifier;->ma(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "macAddress":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wf"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    :cond_0
    if-eqz v0, :cond_1

    .line 35
    invoke-static {v0}, Lcom/tnkfactory/ad/A;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .end local v1    # "macAddress":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    return-object v3

    .line 40
    :cond_2
    invoke-static {v0}, Lcom/tnkfactory/ad/A;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static ma(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v5, 0x0

    .line 77
    .local v5, "wifiMacAddress":Ljava/lang/String;
    invoke-static {}, Lcom/tnkfactory/ad/A;->c()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "codeText":Ljava/lang/String;
    const-string v7, "\\|"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "codeSplit":[Ljava/lang/String;
    const/4 v7, 0x1

    :try_start_0
    aget-object v7, v1, v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v1, v10

    aput-object v10, v8, v9

    invoke-static {p0, v7, v8}, Lcom/tnkfactory/ad/A;->m(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 82
    .local v6, "wm":Ljava/lang/Object;
    const/4 v7, 0x2

    aget-object v7, v1, v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/tnkfactory/ad/A;->m(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 83
    .local v4, "wi":Ljava/lang/Object;
    const/4 v7, 0x3

    aget-object v7, v1, v7

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Lcom/tnkfactory/ad/A;->m(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 85
    if-eqz v5, :cond_0

    .line 86
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 93
    .end local v4    # "wi":Ljava/lang/Object;
    .end local v6    # "wm":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v5

    .line 89
    :catch_0
    move-exception v3

    .line 90
    .local v3, "ex":Ljava/lang/Exception;
    const-string v7, "tnkad"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
