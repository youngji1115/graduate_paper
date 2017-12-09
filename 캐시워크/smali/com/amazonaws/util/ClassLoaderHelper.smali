.class public final enum Lcom/amazonaws/util/ClassLoaderHelper;
.super Ljava/lang/Enum;
.source "ClassLoaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/util/ClassLoaderHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/util/ClassLoaderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazonaws/util/ClassLoaderHelper;

    sput-object v0, Lcom/amazonaws/util/ClassLoaderHelper;->$VALUES:[Lcom/amazonaws/util/ClassLoaderHelper;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static varargs getResource(Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/net/URL;
    .locals 2
    .param p0, "resource"    # Ljava/lang/String;
    .param p1, "classesFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p1, :cond_2

    .line 61
    invoke-static {p0, p2}, Lcom/amazonaws/util/ClassLoaderHelper;->getResourceViaClasses(Ljava/lang/String;[Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v0

    .line 62
    .local v0, "url":Ljava/net/URL;
    if-nez v0, :cond_0

    .line 63
    invoke-static {p0}, Lcom/amazonaws/util/ClassLoaderHelper;->getResourceViaContext(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 71
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const-class v1, Lcom/amazonaws/util/ClassLoaderHelper;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .end local v0    # "url":Ljava/net/URL;
    :cond_1
    return-object v0

    .line 66
    :cond_2
    invoke-static {p0}, Lcom/amazonaws/util/ClassLoaderHelper;->getResourceViaContext(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 67
    .restart local v0    # "url":Ljava/net/URL;
    if-nez v0, :cond_0

    .line 68
    invoke-static {p0, p2}, Lcom/amazonaws/util/ClassLoaderHelper;->getResourceViaClasses(Ljava/lang/String;[Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs getResource(Ljava/lang/String;[Ljava/lang/Class;)Ljava/net/URL;
    .locals 1
    .param p0, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/amazonaws/util/ClassLoaderHelper;->getResource(Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getResourceAsStream(Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/io/InputStream;
    .locals 3
    .param p0, "resource"    # Ljava/lang/String;
    .param p1, "classesFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .prologue
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 205
    invoke-static {p0, p1, p2}, Lcom/amazonaws/util/ClassLoaderHelper;->getResource(Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v1

    .line 207
    .local v1, "url":Ljava/net/URL;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 209
    :cond_0
    :goto_0
    return-object v2

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static varargs getResourceAsStream(Ljava/lang/String;[Ljava/lang/Class;)Ljava/io/InputStream;
    .locals 1
    .param p0, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/amazonaws/util/ClassLoaderHelper;->getResourceAsStream(Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static getResourceViaClasses(Ljava/lang/String;[Ljava/lang/Class;)Ljava/net/URL;
    .locals 4
    .param p0, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p1, :cond_1

    .line 76
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 77
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 78
    .local v1, "url":Ljava/net/URL;
    if-eqz v1, :cond_0

    .line 82
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "url":Ljava/net/URL;
    :goto_1
    return-object v1

    .line 76
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "url":Ljava/net/URL;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "url":Ljava/net/URL;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getResourceViaContext(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p0, "resource"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 87
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    goto :goto_0
.end method

.method public static varargs loadClass(Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .param p0, "fqcn"    # Ljava/lang/String;
    .param p1, "classesFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 152
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 153
    .local v0, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_2

    .line 154
    invoke-static {p0, p2}, Lcom/amazonaws/util/ClassLoaderHelper;->loadClassViaClasses(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 155
    if-nez v0, :cond_0

    .line 156
    invoke-static {p0}, Lcom/amazonaws/util/ClassLoaderHelper;->loadClassViaContext(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 164
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .end local v0    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-object v0

    .line 159
    .restart local v0    # "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-static {p0}, Lcom/amazonaws/util/ClassLoaderHelper;->loadClassViaContext(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 160
    if-nez v0, :cond_0

    .line 161
    invoke-static {p0, p2}, Lcom/amazonaws/util/ClassLoaderHelper;->loadClassViaClasses(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs loadClass(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .param p0, "fqcn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/amazonaws/util/ClassLoaderHelper;->loadClass(Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static loadClassViaClasses(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .param p0, "fqcn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p1, :cond_1

    .line 92
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 93
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 94
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_0

    .line 96
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 103
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    :goto_1
    return-object v2

    .line 97
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "loader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v4

    .line 92
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static loadClassViaContext(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "fqcn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 109
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-object v1

    .line 109
    :cond_0
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 110
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/util/ClassLoaderHelper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/amazonaws/util/ClassLoaderHelper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/util/ClassLoaderHelper;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/util/ClassLoaderHelper;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/amazonaws/util/ClassLoaderHelper;->$VALUES:[Lcom/amazonaws/util/ClassLoaderHelper;

    invoke-virtual {v0}, [Lcom/amazonaws/util/ClassLoaderHelper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/util/ClassLoaderHelper;

    return-object v0
.end method
