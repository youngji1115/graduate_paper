.class public Lorg/mapdb/DBMaker;
.super Ljava/lang/Object;
.source "DBMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/DBMaker$Keys;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DBMakerT:",
        "Lorg/mapdb/DBMaker",
        "<TDBMakerT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final TRUE:Ljava/lang/String;

.field protected props:Ljava/util/Properties;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "true"

    iput-object v0, p0, Lorg/mapdb/DBMaker;->TRUE:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    .line 99
    return-void
.end method

.method protected constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 101
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "true"

    iput-object v0, p0, Lorg/mapdb/DBMaker;->TRUE:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    .line 102
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "file"

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method protected static JVMSupportsLargeMappedFiles()Z
    .locals 2

    .prologue
    .line 878
    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 881
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private assertNotInMemoryVolume()V
    .locals 3

    .prologue
    .line 444
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    const-string v0, "byteBuffer"

    iget-object v1, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v2, "volume"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "directByteBuffer"

    iget-object v1, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v2, "volume"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not enable mmap file for in-memory store"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_1
    return-void
.end method

.method protected static fromHexa(Ljava/lang/String;)[B
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1026
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v1, v2, [B

    .line 1027
    .local v1, "ret":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1028
    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 1027
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1030
    :cond_0
    return-object v1
.end method

.method protected static newAppendFileDB(Ljava/io/File;)Lorg/mapdb/DBMaker;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 156
    new-instance v0, Lorg/mapdb/DBMaker;

    invoke-direct {v0}, Lorg/mapdb/DBMaker;-><init>()V

    invoke-virtual {v0, p0}, Lorg/mapdb/DBMaker;->_newAppendFileDB(Ljava/io/File;)Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public static newCache(D)Lorg/mapdb/HTreeMap;
    .locals 2
    .param p0, "size"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(D)",
            "Lorg/mapdb/HTreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {}, Lorg/mapdb/DBMaker;->newMemoryDB()Lorg/mapdb/DBMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->transactionDisable()Lorg/mapdb/DBMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->make()Lorg/mapdb/DB;

    move-result-object v0

    const-string v1, "cache"

    invoke-virtual {v0, v1}, Lorg/mapdb/DB;->createHashMap(Ljava/lang/String;)Lorg/mapdb/DB$HTreeMapMaker;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/mapdb/DB$HTreeMapMaker;->expireStoreSize(D)Lorg/mapdb/DB$HTreeMapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DB$HTreeMapMaker;->counterEnable()Lorg/mapdb/DB$HTreeMapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DB$HTreeMapMaker;->make()Lorg/mapdb/HTreeMap;

    move-result-object v0

    return-object v0
.end method

.method public static newCacheDirect(D)Lorg/mapdb/HTreeMap;
    .locals 2
    .param p0, "size"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(D)",
            "Lorg/mapdb/HTreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {}, Lorg/mapdb/DBMaker;->newMemoryDirectDB()Lorg/mapdb/DBMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->transactionDisable()Lorg/mapdb/DBMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->make()Lorg/mapdb/DB;

    move-result-object v0

    const-string v1, "cache"

    invoke-virtual {v0, v1}, Lorg/mapdb/DB;->createHashMap(Ljava/lang/String;)Lorg/mapdb/DB$HTreeMapMaker;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/mapdb/DB$HTreeMapMaker;->expireStoreSize(D)Lorg/mapdb/DB$HTreeMapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DB$HTreeMapMaker;->counterEnable()Lorg/mapdb/DB$HTreeMapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DB$HTreeMapMaker;->make()Lorg/mapdb/HTreeMap;

    move-result-object v0

    return-object v0
.end method

.method public static newFileDB(Ljava/io/File;)Lorg/mapdb/DBMaker;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 283
    new-instance v0, Lorg/mapdb/DBMaker;

    invoke-direct {v0, p0}, Lorg/mapdb/DBMaker;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static newHeapDB()Lorg/mapdb/DBMaker;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lorg/mapdb/DBMaker;

    invoke-direct {v0}, Lorg/mapdb/DBMaker;-><init>()V

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->_newHeapDB()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public static newMemoryDB()Lorg/mapdb/DBMaker;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lorg/mapdb/DBMaker;

    invoke-direct {v0}, Lorg/mapdb/DBMaker;-><init>()V

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->_newMemoryDB()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public static newMemoryDirectDB()Lorg/mapdb/DBMaker;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lorg/mapdb/DBMaker;

    invoke-direct {v0}, Lorg/mapdb/DBMaker;-><init>()V

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->_newMemoryDirectDB()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public static newTempFileDB()Lorg/mapdb/DBMaker;
    .locals 3

    .prologue
    .line 231
    :try_start_0
    const-string v1, "mapdb-temp"

    const-string v2, "db"

    invoke-static {v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lorg/mapdb/DBMaker;->newFileDB(Ljava/io/File;)Lorg/mapdb/DBMaker;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static newTempHashMap()Lorg/mapdb/HTreeMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/mapdb/HTreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Lorg/mapdb/DBMaker;->newTempFileDB()Lorg/mapdb/DBMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->deleteFilesAfterClose()Lorg/mapdb/DBMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->closeOnJvmShutdown()Lorg/mapdb/DBMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->transactionDisable()Lorg/mapdb/DBMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->make()Lorg/mapdb/DB;

    move-result-object v0

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Lorg/mapdb/DB;->getHashMap(Ljava/lang/String;)Lorg/mapdb/HTreeMap;

    move-result-object v0

    return-object v0
.end method

.method public static newTempHashSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 218
    invoke-static {}, Lorg/mapdb/DBMaker;->newTempFileDB()Lorg/mapdb/DBMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->deleteFilesAfterClose()Lorg/mapdb/DBMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->closeOnJvmShutdown()Lorg/mapdb/DBMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->transactionDisable()Lorg/mapdb/DBMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->make()Lorg/mapdb/DB;

    move-result-object v0

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Lorg/mapdb/DB;->getHashSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static newTempTreeMap()Lorg/mapdb/BTreeMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/mapdb/BTreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {}, Lorg/mapdb/DBMaker;->newTempFileDB()Lorg/mapdb/DBMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->deleteFilesAfterClose()Lorg/mapdb/DBMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->closeOnJvmShutdown()Lorg/mapdb/DBMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->transactionDisable()Lorg/mapdb/DBMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->make()Lorg/mapdb/DB;

    move-result-object v0

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Lorg/mapdb/DB;->getTreeMap(Ljava/lang/String;)Lorg/mapdb/BTreeMap;

    move-result-object v0

    return-object v0
.end method

.method public static newTempTreeSet()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {}, Lorg/mapdb/DBMaker;->newTempFileDB()Lorg/mapdb/DBMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->deleteFilesAfterClose()Lorg/mapdb/DBMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->closeOnJvmShutdown()Lorg/mapdb/DBMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->transactionDisable()Lorg/mapdb/DBMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapdb/DBMaker;->make()Lorg/mapdb/DB;

    move-result-object v0

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Lorg/mapdb/DB;->getTreeSet(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected static toHexa([B)Ljava/lang/String;
    .locals 5
    .param p0, "bb"    # [B

    .prologue
    .line 1016
    const/16 v3, 0x10

    new-array v0, v3, [C

    fill-array-data v0, :array_0

    .line 1017
    .local v0, "HEXA_CHARS":[C
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [C

    .line 1018
    .local v2, "ret":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 1019
    mul-int/lit8 v3, v1, 0x2

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    aget-char v4, v0, v4

    aput-char v4, v2, v3

    .line 1020
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    aput-char v4, v2, v3

    .line 1018
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1022
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 1016
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method


# virtual methods
.method protected _newAppendFileDB(Ljava/io/File;)Lorg/mapdb/DBMaker;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "file"

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "store"

    const-string v2, "append"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public _newFileDB(Ljava/io/File;)Lorg/mapdb/DBMaker;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "file"

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 288
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public _newHeapDB()Lorg/mapdb/DBMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "store"

    const-string v2, "heap"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public _newMemoryDB()Lorg/mapdb/DBMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "volume"

    const-string v2, "byteBuffer"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public _newMemoryDirectDB()Lorg/mapdb/DBMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "volume"

    const-string v2, "directByteBuffer"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public asyncWriteEnable()Lorg/mapdb/DBMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 496
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "asyncWrite"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 497
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public asyncWriteFlushDelay(I)Lorg/mapdb/DBMaker;
    .locals 4
    .param p1, "delay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 518
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "asyncWriteFlushDelay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 519
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public asyncWriteQueueSize(I)Lorg/mapdb/DBMaker;
    .locals 4
    .param p1, "queueSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 531
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "asyncWriteQueueSize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 532
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public cacheDisable()Lorg/mapdb/DBMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "cache"

    const-string v2, "disable"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public cacheHardRefEnable()Lorg/mapdb/DBMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "cache"

    const-string v2, "hardRef"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public cacheLRUEnable()Lorg/mapdb/DBMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "cache"

    const-string v2, "lru"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public cacheSize(I)Lorg/mapdb/DBMaker;
    .locals 4
    .param p1, "cacheSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 470
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "cacheSize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 471
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public cacheSoftRefEnable()Lorg/mapdb/DBMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "cache"

    const-string v2, "softRef"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public cacheWeakRefEnable()Lorg/mapdb/DBMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "cache"

    const-string v2, "weakRef"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public checksumEnable()Lorg/mapdb/DBMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 614
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "checksum"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 615
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public closeOnJvmShutdown()Lorg/mapdb/DBMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 553
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "closeOnJvmShutdown"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 554
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public commitFileSyncDisable()Lorg/mapdb/DBMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 675
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "commitFileSyncDisable"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 676
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public compressionEnable()Lorg/mapdb/DBMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 565
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "compression"

    const-string v2, "lzf"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 566
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public deleteFilesAfterClose()Lorg/mapdb/DBMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 543
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "deleteFilesAfterClose"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 544
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public encryptionEnable(Ljava/lang/String;)Lorg/mapdb/DBMaker;
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 582
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    const-string v0, "UTF8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mapdb/DBMaker;->encryptionEnable([B)Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public encryptionEnable([B)Lorg/mapdb/DBMaker;
    .locals 3
    .param p1, "password"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 599
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "encryption"

    const-string v2, "xtea"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 600
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "encryptionKey"

    invoke-static {p1}, Lorg/mapdb/DBMaker;->toHexa([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 601
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method protected extendArgumentCheck()V
    .locals 0

    .prologue
    .line 938
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    return-void
.end method

.method protected extendAsyncWriteEngine(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;
    .locals 4
    .param p1, "engine"    # Lorg/mapdb/Engine;

    .prologue
    .line 930
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    new-instance v0, Lorg/mapdb/AsyncWriteEngine;

    const-string v1, "asyncWriteFlushDelay"

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lorg/mapdb/DBMaker;->propsGetInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "asyncWriteQueueSize"

    const/16 v3, 0x7d00

    invoke-virtual {p0, v2, v3}, Lorg/mapdb/DBMaker;->propsGetInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/mapdb/AsyncWriteEngine;-><init>(Lorg/mapdb/Engine;IILjava/util/concurrent/Executor;)V

    return-object v0
.end method

.method protected extendCacheHardRef(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;
    .locals 3
    .param p1, "engine"    # Lorg/mapdb/Engine;

    .prologue
    .line 920
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    const-string v1, "cacheSize"

    const v2, 0x8000

    invoke-virtual {p0, v1, v2}, Lorg/mapdb/DBMaker;->propsGetInt(Ljava/lang/String;I)I

    move-result v0

    .line 921
    .local v0, "cacheSize":I
    new-instance v1, Lorg/mapdb/Caches$HardRef;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lorg/mapdb/Caches$HardRef;-><init>(Lorg/mapdb/Engine;IZ)V

    return-object v1
.end method

.method protected extendCacheHashTable(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;
    .locals 3
    .param p1, "engine"    # Lorg/mapdb/Engine;

    .prologue
    .line 925
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    const-string v1, "cacheSize"

    const v2, 0x8000

    invoke-virtual {p0, v1, v2}, Lorg/mapdb/DBMaker;->propsGetInt(Ljava/lang/String;I)I

    move-result v0

    .line 926
    .local v0, "cacheSize":I
    new-instance v1, Lorg/mapdb/Caches$HashTable;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lorg/mapdb/Caches$HashTable;-><init>(Lorg/mapdb/Engine;IZ)V

    return-object v1
.end method

.method protected extendCacheLRU(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;
    .locals 3
    .param p1, "engine"    # Lorg/mapdb/Engine;

    .prologue
    .line 905
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    const-string v1, "cacheSize"

    const v2, 0x8000

    invoke-virtual {p0, v1, v2}, Lorg/mapdb/DBMaker;->propsGetInt(Ljava/lang/String;I)I

    move-result v0

    .line 906
    .local v0, "cacheSize":I
    new-instance v1, Lorg/mapdb/Caches$LRU;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lorg/mapdb/Caches$LRU;-><init>(Lorg/mapdb/Engine;IZ)V

    return-object v1
.end method

.method protected extendCacheSoftRef(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;
    .locals 2
    .param p1, "engine"    # Lorg/mapdb/Engine;

    .prologue
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    const/4 v1, 0x0

    .line 914
    new-instance v0, Lorg/mapdb/Caches$WeakSoftRef;

    invoke-direct {v0, p1, v1, v1}, Lorg/mapdb/Caches$WeakSoftRef;-><init>(Lorg/mapdb/Engine;ZZ)V

    return-object v0
.end method

.method protected extendCacheWeakRef(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;
    .locals 3
    .param p1, "engine"    # Lorg/mapdb/Engine;

    .prologue
    .line 910
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    new-instance v0, Lorg/mapdb/Caches$WeakSoftRef;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/mapdb/Caches$WeakSoftRef;-><init>(Lorg/mapdb/Engine;ZZ)V

    return-object v0
.end method

.method protected extendHeapStore()Lorg/mapdb/Engine;
    .locals 1

    .prologue
    .line 955
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    new-instance v0, Lorg/mapdb/StoreHeap;

    invoke-direct {v0}, Lorg/mapdb/StoreHeap;-><init>()V

    return-object v0
.end method

.method protected extendSnapshotEngine(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;
    .locals 2
    .param p1, "engine"    # Lorg/mapdb/Engine;

    .prologue
    .line 901
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    new-instance v0, Lorg/mapdb/TxEngine;

    const-string v1, "fullTx"

    invoke-virtual {p0, v1}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/mapdb/TxEngine;-><init>(Lorg/mapdb/Engine;Z)V

    return-object v0
.end method

.method protected extendStoreAppend()Lorg/mapdb/Engine;
    .locals 11

    .prologue
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    const/4 v10, 0x0

    .line 959
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 960
    .local v1, "file":Ljava/io/File;
    :goto_0
    const-string v0, "lzf"

    iget-object v2, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v3, "compression"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 961
    .local v8, "compressionEnabled":Z
    new-instance v0, Lorg/mapdb/StoreAppend;

    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->propsGetRafMode()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    const-string v3, "readOnly"

    invoke-virtual {p0, v3}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "transactionDisable"

    invoke-virtual {p0, v4}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "deleteFilesAfterClose"

    invoke-virtual {p0, v5}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "commitFileSyncDisable"

    invoke-virtual {p0, v6}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "checksum"

    invoke-virtual {p0, v7}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->propsGetXteaEncKey()[B

    move-result-object v9

    invoke-direct/range {v0 .. v10}, Lorg/mapdb/StoreAppend;-><init>(Ljava/io/File;ZZZZZZZ[BZ)V

    return-object v0

    .line 959
    .end local v1    # "file":Ljava/io/File;
    .end local v8    # "compressionEnabled":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1    # "file":Ljava/io/File;
    .restart local v8    # "compressionEnabled":Z
    :cond_1
    move v2, v10

    .line 961
    goto :goto_1
.end method

.method protected extendStoreDirect(Lorg/mapdb/Volume$Factory;)Lorg/mapdb/Engine;
    .locals 13
    .param p1, "folFac"    # Lorg/mapdb/Volume$Factory;

    .prologue
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    const/4 v11, 0x0

    .line 970
    const-string v0, "lzf"

    iget-object v1, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v2, "compression"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 971
    .local v9, "compressionEnabled":Z
    new-instance v0, Lorg/mapdb/StoreDirect;

    const-string v1, "readOnly"

    invoke-virtual {p0, v1}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v2

    const-string v1, "deleteFilesAfterClose"

    invoke-virtual {p0, v1}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v3

    const-string v1, "freeSpaceReclaimQ"

    const/4 v4, 0x5

    invoke-virtual {p0, v1, v4}, Lorg/mapdb/DBMaker;->propsGetInt(Ljava/lang/String;I)I

    move-result v4

    const-string v1, "commitFileSyncDisable"

    invoke-virtual {p0, v1}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "sizeLimit"

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v1, v6, v7}, Lorg/mapdb/DBMaker;->propsGetLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v1, "checksum"

    invoke-virtual {p0, v1}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->propsGetXteaEncKey()[B

    move-result-object v10

    move-object v1, p1

    move v12, v11

    invoke-direct/range {v0 .. v12}, Lorg/mapdb/StoreDirect;-><init>(Lorg/mapdb/Volume$Factory;ZZIZJZZ[BZI)V

    return-object v0
.end method

.method protected extendStoreVolumeFactory()Lorg/mapdb/Volume$Factory;
    .locals 14

    .prologue
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    const/4 v7, 0x0

    const/16 v6, 0x14

    .line 990
    const-string v2, "volumeCleanerHackDisable"

    invoke-virtual {p0, v2}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v11

    .line 991
    .local v11, "cleanerHackDisabled":Z
    const-string v2, "sizeLimit"

    const-wide/16 v12, 0x0

    invoke-virtual {p0, v2, v12, v13}, Lorg/mapdb/DBMaker;->propsGetLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 992
    .local v4, "sizeLimit":J
    iget-object v2, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v3, "volume"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, "volume":Ljava/lang/String;
    const-string v2, "byteBuffer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 994
    invoke-static {v7, v4, v5, v6}, Lorg/mapdb/Volume;->memoryFactory(ZJI)Lorg/mapdb/Volume$Factory;

    move-result-object v2

    .line 1003
    :goto_0
    return-object v2

    .line 995
    :cond_0
    const-string v2, "directByteBuffer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 996
    const/4 v2, 0x1

    invoke-static {v2, v4, v5, v6}, Lorg/mapdb/Volume;->memoryFactory(ZJI)Lorg/mapdb/Volume$Factory;

    move-result-object v2

    goto :goto_0

    .line 998
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1000
    .local v1, "indexFile":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".p"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1001
    .local v8, "dataFile":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1003
    .local v9, "logFile":Ljava/io/File;
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->propsGetRafMode()I

    move-result v2

    const-string v3, "readOnly"

    invoke-virtual {p0, v3}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v3

    const-string v10, "asyncWrite"

    invoke-virtual {p0, v10}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v10

    invoke-static/range {v1 .. v11}, Lorg/mapdb/Volume;->fileFactory(Ljava/io/File;IZJIILjava/io/File;Ljava/io/File;ZZ)Lorg/mapdb/Volume$Factory;

    move-result-object v2

    goto :goto_0
.end method

.method protected extendStoreWAL(Lorg/mapdb/Volume$Factory;)Lorg/mapdb/Engine;
    .locals 13
    .param p1, "folFac"    # Lorg/mapdb/Volume$Factory;

    .prologue
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    const/4 v11, 0x0

    .line 980
    const-string v0, "lzf"

    iget-object v1, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v2, "compression"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 981
    .local v9, "compressionEnabled":Z
    new-instance v0, Lorg/mapdb/StoreWAL;

    const-string v1, "readOnly"

    invoke-virtual {p0, v1}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v2

    const-string v1, "deleteFilesAfterClose"

    invoke-virtual {p0, v1}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v3

    const-string v1, "freeSpaceReclaimQ"

    const/4 v4, 0x5

    invoke-virtual {p0, v1, v4}, Lorg/mapdb/DBMaker;->propsGetInt(Ljava/lang/String;I)I

    move-result v4

    const-string v1, "commitFileSyncDisable"

    invoke-virtual {p0, v1}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "sizeLimit"

    const-wide/16 v6, -0x1

    invoke-virtual {p0, v1, v6, v7}, Lorg/mapdb/DBMaker;->propsGetLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v1, "checksum"

    invoke-virtual {p0, v1}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->propsGetXteaEncKey()[B

    move-result-object v10

    move-object v1, p1

    move v12, v11

    invoke-direct/range {v0 .. v12}, Lorg/mapdb/StoreWAL;-><init>(Lorg/mapdb/Volume$Factory;ZZIZJZZ[BZI)V

    return-object v0
.end method

.method protected extendWrapCache(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;
    .locals 0
    .param p1, "engine"    # Lorg/mapdb/Engine;

    .prologue
    .line 946
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    return-object p1
.end method

.method protected extendWrapSnapshotEngine(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;
    .locals 0
    .param p1, "engine"    # Lorg/mapdb/Engine;

    .prologue
    .line 950
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    return-object p1
.end method

.method protected extendWrapStore(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;
    .locals 0
    .param p1, "engine"    # Lorg/mapdb/Engine;

    .prologue
    .line 941
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    return-object p1
.end method

.method public freeSpaceReclaimQ(I)Lorg/mapdb/DBMaker;
    .locals 4
    .param p1, "q"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 660
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong Q"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_1
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "freeSpaceReclaimQ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 662
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method protected getThis()Lorg/mapdb/DBMaker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    return-object p0
.end method

.method public make()Lorg/mapdb/DB;
    .locals 5

    .prologue
    .line 700
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    const-string v4, "strictDBGet"

    invoke-virtual {p0, v4}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v3

    .line 701
    .local v3, "strictGet":Z
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->makeEngine()Lorg/mapdb/Engine;

    move-result-object v2

    .line 702
    .local v2, "engine":Lorg/mapdb/Engine;
    const/4 v1, 0x0

    .line 704
    .local v1, "dbCreated":Z
    :try_start_0
    new-instance v0, Lorg/mapdb/DB;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    .local v0, "db":Lorg/mapdb/DB;
    const/4 v1, 0x1

    .line 709
    if-nez v1, :cond_0

    .line 710
    invoke-interface {v2}, Lorg/mapdb/Engine;->close()V

    :cond_0
    return-object v0

    .line 709
    .end local v0    # "db":Lorg/mapdb/DB;
    :catchall_0
    move-exception v4

    if-nez v1, :cond_1

    .line 710
    invoke-interface {v2}, Lorg/mapdb/Engine;->close()V

    :cond_1
    throw v4
.end method

.method public makeEngine()Lorg/mapdb/Engine;
    .locals 22

    .prologue
    .line 728
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    const-string v17, "readOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v12

    .line 729
    .local v12, "readOnly":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    move-object/from16 v17, v0

    const-string v18, "file"

    invoke-virtual/range {v17 .. v18}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    move-object/from16 v17, v0

    const-string v18, "file"

    invoke-virtual/range {v17 .. v18}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 730
    .local v10, "file":Ljava/io/File;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    move-object/from16 v17, v0

    const-string v18, "volume"

    invoke-virtual/range {v17 .. v18}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 731
    .local v16, "volume":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    move-object/from16 v17, v0

    const-string v18, "store"

    invoke-virtual/range {v17 .. v18}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 733
    .local v13, "store":Ljava/lang/String;
    if-eqz v12, :cond_1

    if-nez v10, :cond_1

    .line 734
    new-instance v17, Ljava/lang/UnsupportedOperationException;

    const-string v18, "Can not open in-memory DB in read-only mode."

    invoke-direct/range {v17 .. v18}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 729
    .end local v10    # "file":Ljava/io/File;
    .end local v13    # "store":Ljava/lang/String;
    .end local v16    # "volume":Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 736
    .restart local v10    # "file":Ljava/io/File;
    .restart local v13    # "store":Ljava/lang/String;
    .restart local v16    # "volume":Ljava/lang/String;
    :cond_1
    if-eqz v12, :cond_2

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "append"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 737
    new-instance v17, Ljava/lang/UnsupportedOperationException;

    const-string v18, "Can not open non-existing file in read-only mode."

    invoke-direct/range {v17 .. v18}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 740
    :cond_2
    const-string v17, "sizeLimit"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/DBMaker;->propsGetLong(Ljava/lang/String;J)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-lez v17, :cond_3

    const-string v17, "append"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 741
    new-instance v17, Ljava/lang/UnsupportedOperationException;

    const-string v18, "Append-Only store does not support Size Limit"

    invoke-direct/range {v17 .. v18}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 743
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DBMaker;->extendArgumentCheck()V

    .line 747
    const-string v17, "heap"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 748
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DBMaker;->extendHeapStore()Lorg/mapdb/Engine;

    move-result-object v8

    .line 763
    .local v8, "engine":Lorg/mapdb/Engine;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/mapdb/DBMaker;->extendWrapStore(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;

    move-result-object v8

    .line 765
    const-string v17, "asyncWrite"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    if-nez v12, :cond_4

    .line 766
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/mapdb/DBMaker;->extendAsyncWriteEngine(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;

    move-result-object v8

    .line 769
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    move-object/from16 v17, v0

    const-string v18, "cache"

    const-string v19, "hashTable"

    invoke-virtual/range {v17 .. v19}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 771
    .local v5, "cache":Ljava/lang/String;
    const-string v17, "disable"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 787
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/mapdb/DBMaker;->extendWrapCache(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;

    move-result-object v8

    .line 790
    const-string v17, "snapshots"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 791
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/mapdb/DBMaker;->extendSnapshotEngine(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;

    move-result-object v8

    .line 793
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/mapdb/DBMaker;->extendWrapSnapshotEngine(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;

    move-result-object v8

    .line 795
    if-eqz v12, :cond_6

    .line 796
    new-instance v9, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;

    invoke-direct {v9, v8}, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;-><init>(Lorg/mapdb/Engine;)V

    .end local v8    # "engine":Lorg/mapdb/Engine;
    .local v9, "engine":Lorg/mapdb/Engine;
    move-object v8, v9

    .line 799
    .end local v9    # "engine":Lorg/mapdb/Engine;
    .restart local v8    # "engine":Lorg/mapdb/Engine;
    :cond_6
    const-string v17, "closeOnJvmShutdown"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 800
    new-instance v9, Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;

    invoke-direct {v9, v8}, Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;-><init>(Lorg/mapdb/Engine;)V

    .end local v8    # "engine":Lorg/mapdb/Engine;
    .restart local v9    # "engine":Lorg/mapdb/Engine;
    move-object v8, v9

    .line 805
    .end local v9    # "engine":Lorg/mapdb/Engine;
    .restart local v8    # "engine":Lorg/mapdb/Engine;
    :cond_7
    const/4 v6, 0x0

    .line 807
    .local v6, "check":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<Ljava/lang/Integer;[B>;"
    const-wide/16 v18, 0x3

    :try_start_0
    sget-object v17, Lorg/mapdb/Serializer;->BASIC:Lorg/mapdb/Serializer;

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    invoke-interface {v8, v0, v1, v2}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lorg/mapdb/Fun$Tuple2;

    move-object v6, v0

    .line 808
    if-eqz v6, :cond_16

    .line 809
    iget-object v0, v6, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-object v0, v6, Lorg/mapdb/Fun$Tuple2;->b:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [B

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->hashCode([B)I

    move-result v17

    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_16

    .line 810
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "invalid checksum"

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :catch_0
    move-exception v7

    .line 813
    .local v7, "e":Ljava/lang/Throwable;
    invoke-static {v8}, Lorg/mapdb/Store;->forEngine(Lorg/mapdb/Engine;)Lorg/mapdb/Store;

    move-result-object v14

    .line 814
    .local v14, "store2":Lorg/mapdb/Store;
    instance-of v0, v14, Lorg/mapdb/StoreDirect;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v17, v14

    .line 815
    check-cast v17, Lorg/mapdb/StoreDirect;

    move-object/from16 v0, v17

    iget-object v15, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    .line 816
    .local v15, "vol":Lorg/mapdb/Volume;
    if-eqz v15, :cond_8

    iget-boolean v0, v15, Lorg/mapdb/Volume;->closed:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 817
    invoke-virtual {v15}, Lorg/mapdb/Volume;->close()V

    :cond_8
    move-object/from16 v17, v14

    .line 819
    check-cast v17, Lorg/mapdb/StoreDirect;

    move-object/from16 v0, v17

    iget-object v15, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    .line 820
    if-eqz v15, :cond_9

    iget-boolean v0, v15, Lorg/mapdb/Volume;->closed:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    .line 821
    invoke-virtual {v15}, Lorg/mapdb/Volume;->close()V

    .line 823
    :cond_9
    instance-of v0, v14, Lorg/mapdb/StoreWAL;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 824
    check-cast v14, Lorg/mapdb/StoreWAL;

    .end local v14    # "store2":Lorg/mapdb/Store;
    iget-object v15, v14, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    .line 825
    if-eqz v15, :cond_a

    iget-boolean v0, v15, Lorg/mapdb/Volume;->closed:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 826
    invoke-virtual {v15}, Lorg/mapdb/Volume;->close()V

    .line 830
    .end local v15    # "vol":Lorg/mapdb/Volume;
    :cond_a
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "Error while opening store. Make sure you have right password, compression or encryption is well configured."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 750
    .end local v5    # "cache":Ljava/lang/String;
    .end local v6    # "check":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<Ljava/lang/Integer;[B>;"
    .end local v7    # "e":Ljava/lang/Throwable;
    .end local v8    # "engine":Lorg/mapdb/Engine;
    :cond_b
    const-string v17, "append"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 751
    const-string v17, "byteBuffer"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    const-string v17, "directByteBuffer"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 752
    :cond_c
    new-instance v17, Ljava/lang/UnsupportedOperationException;

    const-string v18, "Append Storage format is not supported with in-memory dbs"

    invoke-direct/range {v17 .. v18}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 753
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DBMaker;->extendStoreAppend()Lorg/mapdb/Engine;

    move-result-object v8

    .restart local v8    # "engine":Lorg/mapdb/Engine;
    goto/16 :goto_1

    .line 756
    .end local v8    # "engine":Lorg/mapdb/Engine;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DBMaker;->extendStoreVolumeFactory()Lorg/mapdb/Volume$Factory;

    move-result-object v11

    .line 758
    .local v11, "folFac":Lorg/mapdb/Volume$Factory;
    const-string v17, "transactionDisable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/mapdb/DBMaker;->extendStoreDirect(Lorg/mapdb/Volume$Factory;)Lorg/mapdb/Engine;

    move-result-object v8

    .restart local v8    # "engine":Lorg/mapdb/Engine;
    :goto_3
    goto/16 :goto_1

    .end local v8    # "engine":Lorg/mapdb/Engine;
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/mapdb/DBMaker;->extendStoreWAL(Lorg/mapdb/Volume$Factory;)Lorg/mapdb/Engine;

    move-result-object v8

    goto :goto_3

    .line 773
    .end local v11    # "folFac":Lorg/mapdb/Volume$Factory;
    .restart local v5    # "cache":Ljava/lang/String;
    .restart local v8    # "engine":Lorg/mapdb/Engine;
    :cond_10
    const-string v17, "hashTable"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 774
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/mapdb/DBMaker;->extendCacheHashTable(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;

    move-result-object v8

    goto/16 :goto_2

    .line 775
    :cond_11
    const-string v17, "hardRef"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 776
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/mapdb/DBMaker;->extendCacheHardRef(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;

    move-result-object v8

    goto/16 :goto_2

    .line 777
    :cond_12
    const-string v17, "weakRef"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 778
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/mapdb/DBMaker;->extendCacheWeakRef(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;

    move-result-object v8

    goto/16 :goto_2

    .line 779
    :cond_13
    const-string v17, "softRef"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 780
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/mapdb/DBMaker;->extendCacheSoftRef(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;

    move-result-object v8

    goto/16 :goto_2

    .line 781
    :cond_14
    const-string v17, "lru"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 782
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/mapdb/DBMaker;->extendCacheLRU(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;

    move-result-object v8

    goto/16 :goto_2

    .line 784
    :cond_15
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unknown cache type: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 832
    .restart local v6    # "check":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<Ljava/lang/Integer;[B>;"
    :cond_16
    if-nez v6, :cond_17

    invoke-interface {v8}, Lorg/mapdb/Engine;->isReadOnly()Z

    move-result v17

    if-nez v17, :cond_17

    .line 834
    const/16 v17, 0x7f

    move/from16 v0, v17

    new-array v4, v0, [B

    .line 835
    .local v4, "b":[B
    new-instance v17, Ljava/util/Random;

    invoke-direct/range {v17 .. v17}, Ljava/util/Random;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextBytes([B)V

    .line 836
    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v6

    .line 837
    const-wide/16 v18, 0x3

    sget-object v17, Lorg/mapdb/Serializer;->BASIC:Lorg/mapdb/Serializer;

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    invoke-interface {v8, v0, v1, v6, v2}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 838
    invoke-interface {v8}, Lorg/mapdb/Engine;->commit()V

    .line 842
    .end local v4    # "b":[B
    :cond_17
    return-object v8
.end method

.method public makeTxMaker()Lorg/mapdb/TxMaker;
    .locals 5

    .prologue
    .line 716
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v2, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v3, "fullTx"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 717
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->snapshotEnable()Lorg/mapdb/DBMaker;

    .line 718
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->makeEngine()Lorg/mapdb/Engine;

    move-result-object v1

    .line 720
    .local v1, "e":Lorg/mapdb/Engine;
    new-instance v0, Lorg/mapdb/DB;

    invoke-direct {v0, v1}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    .line 721
    .local v0, "db":Lorg/mapdb/DB;
    invoke-virtual {v0}, Lorg/mapdb/DB;->commit()V

    .line 722
    new-instance v2, Lorg/mapdb/TxMaker;

    const-string v3, "strictDBGet"

    invoke-virtual {p0, v3}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "snapshots"

    invoke-virtual {p0, v4}, Lorg/mapdb/DBMaker;->propsGetBool(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Lorg/mapdb/TxMaker;-><init>(Lorg/mapdb/Engine;ZZ)V

    return-object v2
.end method

.method public mmapFileCleanerHackDisable()Lorg/mapdb/DBMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 421
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "volumeCleanerHackDisable"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 422
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public mmapFileEnable()Lorg/mapdb/DBMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    invoke-direct {p0}, Lorg/mapdb/DBMaker;->assertNotInMemoryVolume()V

    .line 385
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "volume"

    const-string v2, "mmapf"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 386
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public mmapFileEnableIfSupported()Lorg/mapdb/DBMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 453
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    invoke-direct {p0}, Lorg/mapdb/DBMaker;->assertNotInMemoryVolume()V

    .line 454
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "volume"

    const-string v2, "mmapfIfSupported"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 455
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public mmapFileEnablePartial()Lorg/mapdb/DBMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    invoke-direct {p0}, Lorg/mapdb/DBMaker;->assertNotInMemoryVolume()V

    .line 439
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "volume"

    const-string v2, "mmapfPartial"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 440
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method protected propsGetBool(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 861
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v1, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 862
    .local v0, "ret":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected propsGetInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 848
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v1, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 850
    .end local p2    # "defValue":I
    :goto_0
    return p2

    .restart local p2    # "defValue":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method protected propsGetLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 854
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v1, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 855
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 856
    .end local p2    # "defValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defValue":J
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_0
.end method

.method protected propsGetRafMode()I
    .locals 5

    .prologue
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 886
    iget-object v3, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v4, "volume"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 887
    .local v0, "volume":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "raf"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    .line 896
    :cond_1
    :goto_0
    return v1

    .line 889
    :cond_2
    const-string v3, "mmapfIfSupported"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 890
    invoke-static {}, Lorg/mapdb/DBMaker;->JVMSupportsLargeMappedFiles()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 891
    :cond_3
    const-string v3, "mmapfPartial"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 892
    const/4 v1, 0x1

    goto :goto_0

    .line 893
    :cond_4
    const-string v3, "mmapf"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 896
    goto :goto_0
.end method

.method protected propsGetXteaEncKey()[B
    .locals 3

    .prologue
    .line 866
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    const-string v0, "xtea"

    iget-object v1, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v2, "encryption"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 867
    const/4 v0, 0x0

    .line 868
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "encryptionKey"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mapdb/DBMaker;->fromHexa(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public readOnly()Lorg/mapdb/DBMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 643
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "readOnly"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 644
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public sizeLimit(D)Lorg/mapdb/DBMaker;
    .locals 7
    .param p1, "maxSize"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TDBMakerT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 690
    mul-double v2, p1, v4

    mul-double/2addr v2, v4

    mul-double/2addr v2, v4

    double-to-long v0, v2

    .line 691
    .local v0, "size":J
    iget-object v2, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v3, "sizeLimit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 692
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v2

    return-object v2
.end method

.method public snapshotEnable()Lorg/mapdb/DBMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 481
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "snapshots"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 482
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public strictDBGet()Lorg/mapdb/DBMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 629
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "strictDBGet"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 630
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method

.method public transactionDisable()Lorg/mapdb/DBMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDBMakerT;"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "this":Lorg/mapdb/DBMaker;, "Lorg/mapdb/DBMaker<TDBMakerT;>;"
    iget-object v0, p0, Lorg/mapdb/DBMaker;->props:Ljava/util/Properties;

    const-string v1, "transactionDisable"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-virtual {p0}, Lorg/mapdb/DBMaker;->getThis()Lorg/mapdb/DBMaker;

    move-result-object v0

    return-object v0
.end method
