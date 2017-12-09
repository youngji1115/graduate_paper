.class public Lorg/mapdb/SerializerPojo;
.super Lorg/mapdb/SerializerBase;
.source "SerializerPojo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/SerializerPojo$ObjectInputStream2;,
        Lorg/mapdb/SerializerPojo$ObjectOutputStream2;,
        Lorg/mapdb/SerializerPojo$FieldInfo;,
        Lorg/mapdb/SerializerPojo$ClassInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static androidConstructor:Ljava/lang/reflect/Method; = null

.field private static androidConstructorGinger:Ljava/lang/reflect/Method; = null

.field protected static class2constuctor:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static constructorId:Ljava/lang/Object; = null

.field private static final serialVersionUID:J = 0x2c26aa3d33000257L

.field protected static final serializer:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/mapdb/SerializerPojo$ClassInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static sunConstructor:Ljava/lang/reflect/Method;

.field protected static sunReflFac:Ljava/lang/Object;


# instance fields
.field protected class2classId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected classId2class:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected db:Lorg/mapdb/DB;

.field protected final lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field protected oldSize:I

.field protected registered:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/mapdb/SerializerPojo$ClassInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected serializationTransformsDeserialize:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/mapdb/Fun$Function1;",
            ">;"
        }
    .end annotation
.end field

.field protected serializationTransformsSerialize:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/mapdb/Fun$Function1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 36
    const-class v6, Lorg/mapdb/SerializerPojo;

    invoke-virtual {v6}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v6

    if-nez v6, :cond_3

    :goto_0
    sput-boolean v4, Lorg/mapdb/SerializerPojo;->$assertionsDisabled:Z

    .line 39
    new-instance v4, Lorg/mapdb/SerializerPojo$1;

    invoke-direct {v4}, Lorg/mapdb/SerializerPojo$1;-><init>()V

    sput-object v4, Lorg/mapdb/SerializerPojo;->serializer:Lorg/mapdb/Serializer;

    .line 490
    sput-object v7, Lorg/mapdb/SerializerPojo;->sunConstructor:Ljava/lang/reflect/Method;

    .line 491
    sput-object v7, Lorg/mapdb/SerializerPojo;->sunReflFac:Ljava/lang/Object;

    .line 492
    sput-object v7, Lorg/mapdb/SerializerPojo;->androidConstructor:Ljava/lang/reflect/Method;

    .line 493
    sput-object v7, Lorg/mapdb/SerializerPojo;->androidConstructorGinger:Ljava/lang/reflect/Method;

    .line 498
    :try_start_0
    const-string v4, "sun.reflect.ReflectionFactory"

    invoke-static {v4}, Lorg/mapdb/SerializerPojo;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 499
    .local v0, "clazz":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 500
    const-string v4, "getReflectionFactory"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 501
    .local v2, "getReflectionFactory":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sput-object v4, Lorg/mapdb/SerializerPojo;->sunReflFac:Ljava/lang/Object;

    .line 502
    const-string v4, "newConstructorForSerialization"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/reflect/Constructor;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/mapdb/SerializerPojo;->sunConstructor:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 509
    .end local v2    # "getReflectionFactory":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    sget-object v4, Lorg/mapdb/SerializerPojo;->sunConstructor:Ljava/lang/reflect/Method;

    if-nez v4, :cond_1

    .line 511
    :try_start_1
    const-class v4, Ljava/io/ObjectInputStream;

    const-string v5, "newInstance"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 512
    .local v3, "newInstance":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 513
    sput-object v3, Lorg/mapdb/SerializerPojo;->androidConstructor:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 522
    .end local v3    # "newInstance":Ljava/lang/reflect/Method;
    :cond_1
    :goto_2
    sget-object v4, Lorg/mapdb/SerializerPojo;->sunConstructor:Ljava/lang/reflect/Method;

    if-nez v4, :cond_2

    sget-object v4, Lorg/mapdb/SerializerPojo;->androidConstructor:Ljava/lang/reflect/Method;

    if-nez v4, :cond_2

    .line 524
    :try_start_2
    const-class v4, Ljava/io/ObjectStreamClass;

    const-string v5, "getConstructorId"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 525
    .local v1, "getConstructorId":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 526
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sput-object v4, Lorg/mapdb/SerializerPojo;->constructorId:Ljava/lang/Object;

    .line 528
    const-class v4, Ljava/io/ObjectStreamClass;

    const-string v5, "newInstance"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 529
    .restart local v3    # "newInstance":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 530
    sput-object v3, Lorg/mapdb/SerializerPojo;->androidConstructorGinger:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 538
    .end local v1    # "getConstructorId":Ljava/lang/reflect/Method;
    .end local v3    # "newInstance":Ljava/lang/reflect/Method;
    :cond_2
    :goto_3
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v4, Lorg/mapdb/SerializerPojo;->class2constuctor:Ljava/util/Map;

    return-void

    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_3
    move v4, v5

    .line 36
    goto/16 :goto_0

    .line 532
    .restart local v0    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v4

    goto :goto_3

    .line 515
    :catch_1
    move-exception v4

    goto :goto_2

    .line 505
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/mapdb/SerializerPojo$ClassInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "registered":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lorg/mapdb/SerializerPojo$ClassInfo;>;"
    invoke-direct {p0}, Lorg/mapdb/SerializerBase;-><init>()V

    .line 89
    new-instance v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v3, p0, Lorg/mapdb/SerializerPojo;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 236
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/mapdb/SerializerPojo;->class2classId:Ljava/util/Map;

    .line 237
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/mapdb/SerializerPojo;->classId2class:Ljava/util/Map;

    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local p1    # "registered":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lorg/mapdb/SerializerPojo$ClassInfo;>;"
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 107
    .restart local p1    # "registered":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lorg/mapdb/SerializerPojo$ClassInfo;>;"
    :cond_0
    iput-object p1, p0, Lorg/mapdb/SerializerPojo;->registered:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 108
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    iput v3, p0, Lorg/mapdb/SerializerPojo;->oldSize:I

    .line 109
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 111
    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/SerializerPojo$ClassInfo;

    .line 112
    .local v0, "ci":Lorg/mapdb/SerializerPojo$ClassInfo;
    iget-object v3, v0, Lorg/mapdb/SerializerPojo$ClassInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Lorg/mapdb/SerializerPojo;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 113
    .local v1, "clazz":Ljava/lang/Class;
    iget-object v3, p0, Lorg/mapdb/SerializerPojo;->class2classId:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v3, p0, Lorg/mapdb/SerializerPojo;->classId2class:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "ci":Lorg/mapdb/SerializerPojo$ClassInfo;
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_1
    return-void
.end method

.method protected static classForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
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
    .line 93
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 94
    .local v1, "loader":Ljava/lang/ClassLoader;
    const/4 v2, 0x1

    invoke-static {p0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 95
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method protected assertClassSerializable(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotSerializableException;,
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/mapdb/SerializerPojo;->containsClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    return-void

    .line 319
    :cond_1
    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Ljava/io/NotSerializableException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public containsClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/mapdb/SerializerPojo;->class2classId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createInstanceSkippinkConstructor(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v8, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 557
    sget-object v3, Lorg/mapdb/SerializerPojo;->sunConstructor:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 559
    sget-object v3, Lorg/mapdb/SerializerPojo;->class2constuctor:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 561
    .local v1, "intConstr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v1, :cond_0

    .line 562
    const-class v3, Ljava/lang/Object;

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 563
    .local v2, "objDef":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    sget-object v3, Lorg/mapdb/SerializerPojo;->sunConstructor:Ljava/lang/reflect/Method;

    sget-object v4, Lorg/mapdb/SerializerPojo;->sunReflFac:Ljava/lang/Object;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object v2, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "intConstr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 564
    .restart local v1    # "intConstr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    sget-object v3, Lorg/mapdb/SerializerPojo;->class2constuctor:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    .end local v2    # "objDef":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 583
    .end local v1    # "intConstr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v3

    .line 568
    :cond_1
    sget-object v3, Lorg/mapdb/SerializerPojo;->androidConstructor:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

    .line 570
    sget-object v3, Lorg/mapdb/SerializerPojo;->androidConstructor:Ljava/lang/reflect/Method;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v7

    invoke-virtual {v3, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 571
    :cond_2
    sget-object v3, Lorg/mapdb/SerializerPojo;->androidConstructorGinger:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_3

    .line 573
    sget-object v3, Lorg/mapdb/SerializerPojo;->androidConstructorGinger:Ljava/lang/reflect/Method;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    sget-object v5, Lorg/mapdb/SerializerPojo;->constructorId:Ljava/lang/Object;

    aput-object v5, v4, v7

    invoke-virtual {v3, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 577
    :cond_3
    sget-object v3, Lorg/mapdb/SerializerPojo;->class2constuctor:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 578
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v0, :cond_5

    .line 579
    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 580
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 581
    :cond_4
    sget-object v3, Lorg/mapdb/SerializerPojo;->class2constuctor:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :cond_5
    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;
    .locals 4
    .param p1, "is"    # Ljava/io/DataInput;
    .param p2, "capacity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    invoke-super {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v2

    .line 703
    .local v2, "obj":Ljava/lang/Object;
    iget-object v3, p0, Lorg/mapdb/SerializerPojo;->serializationTransformsDeserialize:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_0

    .line 704
    iget-object v3, p0, Lorg/mapdb/SerializerPojo;->serializationTransformsDeserialize:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Fun$Function1;

    .line 705
    .local v0, "f":Lorg/mapdb/Fun$Function1;
    invoke-interface {v0, v2}, Lorg/mapdb/Fun$Function1;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 706
    goto :goto_0

    .line 709
    .end local v0    # "f":Lorg/mapdb/Fun$Function1;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v2
.end method

.method protected deserializeUnknownHeader(Ljava/io/DataInput;ILorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;
    .locals 19
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "head"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "I",
            "Lorg/mapdb/SerializerBase$FastArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    .local p3, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    const/16 v16, 0xaf

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 437
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v13

    .line 438
    .local v13, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/SerializerPojo;->db:Lorg/mapdb/DB;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/mapdb/DB;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 439
    .local v14, "o":Ljava/lang/Object;
    if-nez v14, :cond_0

    new-instance v16, Ljava/lang/AssertionError;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Named object was not found: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v16

    .line 440
    :cond_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 485
    .end local v13    # "name":Ljava/lang/String;
    :goto_0
    return-object v14

    .line 444
    .end local v14    # "o":Ljava/lang/Object;
    :cond_1
    const/16 v16, 0xad

    move/from16 v0, p2

    move/from16 v1, v16

    if-eq v0, v1, :cond_2

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 446
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/SerializerPojo;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 449
    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v3

    .line 450
    .local v3, "classId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/SerializerPojo;->registered:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapdb/SerializerPojo$ClassInfo;

    .line 452
    .local v4, "classInfo":Lorg/mapdb/SerializerPojo$ClassInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/SerializerPojo;->classId2class:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 453
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v5, :cond_3

    .line 454
    iget-object v0, v4, Lorg/mapdb/SerializerPojo$ClassInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/mapdb/SerializerPojo;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 455
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/mapdb/SerializerPojo;->assertClassSerializable(Ljava/lang/Class;)V

    .line 459
    iget-boolean v0, v4, Lorg/mapdb/SerializerPojo$ClassInfo;->useObjectStream:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 460
    new-instance v12, Lorg/mapdb/SerializerPojo$ObjectInputStream2;

    move-object/from16 v0, p1

    check-cast v0, Ljava/io/InputStream;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v12, v0, v1}, Lorg/mapdb/SerializerPojo$ObjectInputStream2;-><init>(Lorg/mapdb/SerializerPojo;Ljava/io/InputStream;)V

    .line 461
    .local v12, "in2":Lorg/mapdb/SerializerPojo$ObjectInputStream2;
    invoke-virtual {v12}, Lorg/mapdb/SerializerPojo$ObjectInputStream2;->readObject()Ljava/lang/Object;

    move-result-object v14

    .line 470
    .end local v12    # "in2":Lorg/mapdb/SerializerPojo$ObjectInputStream2;
    .restart local v14    # "o":Ljava/lang/Object;
    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 472
    iget-boolean v0, v4, Lorg/mapdb/SerializerPojo$ClassInfo;->useObjectStream:Z

    move/from16 v16, v0

    if-nez v16, :cond_6

    .line 473
    invoke-static/range {p1 .. p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v8

    .line 474
    .local v8, "fieldCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v8, :cond_6

    .line 475
    invoke-static/range {p1 .. p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v9

    .line 476
    .local v9, "fieldId":I
    iget-object v0, v4, Lorg/mapdb/SerializerPojo$ClassInfo;->fields:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mapdb/SerializerPojo$FieldInfo;

    .line 477
    .local v7, "f":Lorg/mapdb/SerializerPojo$FieldInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/SerializerPojo;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v10

    .line 478
    .local v10, "fieldValue":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14, v10}, Lorg/mapdb/SerializerPojo;->setFieldValue(Lorg/mapdb/SerializerPojo$FieldInfo;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 474
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 462
    .end local v7    # "f":Lorg/mapdb/SerializerPojo$FieldInfo;
    .end local v8    # "fieldCount":I
    .end local v9    # "fieldId":I
    .end local v10    # "fieldValue":Ljava/lang/Object;
    .end local v11    # "i":I
    .end local v14    # "o":Ljava/lang/Object;
    :cond_4
    iget-boolean v0, v4, Lorg/mapdb/SerializerPojo$ClassInfo;->isEnum:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 463
    invoke-static/range {p1 .. p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v15

    .line 464
    .local v15, "ordinal":I
    invoke-virtual {v5}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v16

    aget-object v14, v16, v15

    .line 465
    .restart local v14    # "o":Ljava/lang/Object;
    goto :goto_1

    .line 467
    .end local v14    # "o":Ljava/lang/Object;
    .end local v15    # "ordinal":I
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/mapdb/SerializerPojo;->createInstanceSkippinkConstructor(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    .restart local v14    # "o":Ljava/lang/Object;
    goto :goto_1

    .line 485
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/SerializerPojo;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto/16 :goto_0

    .line 482
    .end local v3    # "classId":I
    .end local v4    # "classInfo":Lorg/mapdb/SerializerPojo$ClassInfo;
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 483
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v16, Ljava/lang/RuntimeException;

    const-string v17, "Could not instantiate class"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/SerializerPojo;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v16
.end method

.method public getClassId(Ljava/lang/Class;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lorg/mapdb/SerializerPojo;->class2classId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 359
    .local v0, "classId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 362
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class is not registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected getEngine()Lorg/mapdb/Engine;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lorg/mapdb/SerializerPojo;->db:Lorg/mapdb/DB;

    invoke-virtual {v0}, Lorg/mapdb/DB;->getEngine()Lorg/mapdb/Engine;

    move-result-object v0

    return-object v0
.end method

.method public getFieldValue(Lorg/mapdb/SerializerPojo$FieldInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "fieldInfo"    # Lorg/mapdb/SerializerPojo$FieldInfo;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 327
    iget-object v1, p1, Lorg/mapdb/SerializerPojo$FieldInfo;->field:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 328
    new-instance v1, Ljava/lang/NoSuchFieldError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/mapdb/SerializerPojo$FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
    :cond_0
    :try_start_0
    iget-object v1, p1, Lorg/mapdb/SerializerPojo$FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not get value from field"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/io/ObjectStreamField;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v11, 0x0

    .line 289
    const/4 v4, 0x0

    .line 290
    .local v4, "fields":[Ljava/io/ObjectStreamField;
    const/4 v2, 0x0

    .line 291
    .local v2, "classInfo":Lorg/mapdb/SerializerPojo$ClassInfo;
    iget-object v9, p0, Lorg/mapdb/SerializerPojo;->class2classId:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 292
    .local v1, "classId":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 293
    iget-object v9, p0, Lorg/mapdb/SerializerPojo;->registered:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "classInfo":Lorg/mapdb/SerializerPojo$ClassInfo;
    check-cast v2, Lorg/mapdb/SerializerPojo$ClassInfo;

    .line 294
    .restart local v2    # "classInfo":Lorg/mapdb/SerializerPojo$ClassInfo;
    invoke-virtual {v2}, Lorg/mapdb/SerializerPojo$ClassInfo;->getObjectStreamFields()[Ljava/io/ObjectStreamField;

    move-result-object v4

    .line 296
    :cond_0
    if-nez v4, :cond_3

    .line 297
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v8

    .line 298
    .local v8, "streamClass":Ljava/io/ObjectStreamClass;
    new-instance v5, Lorg/mapdb/SerializerBase$FastArrayList;

    invoke-direct {v5}, Lorg/mapdb/SerializerBase$FastArrayList;-><init>()V

    .line 299
    .local v5, "fieldsList":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/io/ObjectStreamField;>;"
    :goto_0
    if-eqz v8, :cond_2

    .line 300
    invoke-virtual {v8}, Ljava/io/ObjectStreamClass;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/ObjectStreamField;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v3, v0, v6

    .line 301
    .local v3, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v5, v3}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 300
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 303
    .end local v3    # "f":Ljava/io/ObjectStreamField;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 304
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v8

    goto :goto_0

    .line 306
    .end local v0    # "arr$":[Ljava/io/ObjectStreamField;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_2
    iget v9, v5, Lorg/mapdb/SerializerBase$FastArrayList;->size:I

    new-array v4, v9, [Ljava/io/ObjectStreamField;

    .line 308
    iget-object v9, v5, Lorg/mapdb/SerializerBase$FastArrayList;->data:[Ljava/lang/Object;

    array-length v10, v4

    invoke-static {v9, v11, v4, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    if-eqz v2, :cond_3

    .line 310
    invoke-virtual {v2, v4}, Lorg/mapdb/SerializerPojo$ClassInfo;->setObjectStreamFields([Ljava/io/ObjectStreamField;)V

    .line 312
    .end local v5    # "fieldsList":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/io/ObjectStreamField;>;"
    .end local v8    # "streamClass":Ljava/io/ObjectStreamClass;
    :cond_3
    return-object v4
.end method

.method public hasUnsavedChanges()Z
    .locals 2

    .prologue
    .line 633
    iget v0, p0, Lorg/mapdb/SerializerPojo;->oldSize:I

    iget-object v1, p0, Lorg/mapdb/SerializerPojo;->registered:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerClass(Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/mapdb/SerializerPojo;->containsClass(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 261
    :goto_0
    return-void

    .line 245
    :cond_0
    sget-boolean v5, Lorg/mapdb/SerializerPojo;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/mapdb/SerializerPojo;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 247
    :cond_1
    invoke-virtual {p0, p1}, Lorg/mapdb/SerializerPojo;->usesAdvancedSerialization(Ljava/lang/Class;)Z

    move-result v0

    .line 248
    .local v0, "advancedSer":Z
    if-eqz v0, :cond_2

    const/4 v5, 0x0

    new-array v4, v5, [Ljava/io/ObjectStreamField;

    .line 249
    .local v4, "streamFields":[Ljava/io/ObjectStreamField;
    :goto_1
    array-length v5, v4

    new-array v1, v5, [Lorg/mapdb/SerializerPojo$FieldInfo;

    .line 250
    .local v1, "fields":[Lorg/mapdb/SerializerPojo$FieldInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v5, v1

    if-ge v2, v5, :cond_3

    .line 251
    aget-object v3, v4, v2

    .line 252
    .local v3, "sf":Ljava/io/ObjectStreamField;
    new-instance v5, Lorg/mapdb/SerializerPojo$FieldInfo;

    invoke-direct {v5, v3, p1}, Lorg/mapdb/SerializerPojo$FieldInfo;-><init>(Ljava/io/ObjectStreamField;Ljava/lang/Class;)V

    aput-object v5, v1, v2

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 248
    .end local v1    # "fields":[Lorg/mapdb/SerializerPojo$FieldInfo;
    .end local v2    # "i":I
    .end local v3    # "sf":Ljava/io/ObjectStreamField;
    .end local v4    # "streamFields":[Ljava/io/ObjectStreamField;
    :cond_2
    invoke-virtual {p0, p1}, Lorg/mapdb/SerializerPojo;->getFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;

    move-result-object v4

    goto :goto_1

    .line 255
    .restart local v1    # "fields":[Lorg/mapdb/SerializerPojo$FieldInfo;
    .restart local v2    # "i":I
    .restart local v4    # "streamFields":[Ljava/io/ObjectStreamField;
    :cond_3
    new-instance v2, Lorg/mapdb/SerializerPojo$ClassInfo;

    .end local v2    # "i":I
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    invoke-direct {v2, v5, v1, v6, v0}, Lorg/mapdb/SerializerPojo$ClassInfo;-><init>(Ljava/lang/String;[Lorg/mapdb/SerializerPojo$FieldInfo;ZZ)V

    .line 256
    .local v2, "i":Lorg/mapdb/SerializerPojo$ClassInfo;
    iget-object v5, p0, Lorg/mapdb/SerializerPojo;->class2classId:Ljava/util/Map;

    iget-object v6, p0, Lorg/mapdb/SerializerPojo;->registered:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v5, p0, Lorg/mapdb/SerializerPojo;->classId2class:Ljava/util/Map;

    iget-object v6, p0, Lorg/mapdb/SerializerPojo;->registered:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v5, p0, Lorg/mapdb/SerializerPojo;->registered:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {p0}, Lorg/mapdb/SerializerPojo;->saveClassInfo()V

    goto :goto_0
.end method

.method public save(Lorg/mapdb/Engine;)V
    .locals 4
    .param p1, "e"    # Lorg/mapdb/Engine;

    .prologue
    .line 637
    const-wide/16 v0, 0x2

    iget-object v2, p0, Lorg/mapdb/SerializerPojo;->registered:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v3, Lorg/mapdb/SerializerPojo;->serializer:Lorg/mapdb/Serializer;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 638
    iget-object v0, p0, Lorg/mapdb/SerializerPojo;->registered:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/mapdb/SerializerPojo;->oldSize:I

    .line 639
    return-void
.end method

.method protected saveClassInfo()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V
    .locals 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    iget-object v2, p0, Lorg/mapdb/SerializerPojo;->serializationTransformsSerialize:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    .line 692
    iget-object v2, p0, Lorg/mapdb/SerializerPojo;->serializationTransformsSerialize:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Fun$Function1;

    .line 693
    .local v0, "f":Lorg/mapdb/Fun$Function1;
    invoke-interface {v0, p2}, Lorg/mapdb/Fun$Function1;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 694
    goto :goto_0

    .line 696
    .end local v0    # "f":Lorg/mapdb/Fun$Function1;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 697
    return-void
.end method

.method protected serializeUnknownObject(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V
    .locals 18
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/lang/Object;",
            "Lorg/mapdb/SerializerBase$FastArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    .local p3, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/SerializerPojo;->db:Lorg/mapdb/DB;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/SerializerPojo;->db:Lorg/mapdb/DB;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/mapdb/DB;->getNameForObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 375
    .local v13, "name":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 376
    const/16 v16, 0xaf

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 377
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 431
    .end local v13    # "name":Ljava/lang/String;
    .end local p1    # "out":Ljava/io/DataOutput;
    :goto_0
    return-void

    .line 382
    .restart local p1    # "out":Ljava/io/DataOutput;
    :cond_0
    const/16 v16, 0xad

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/SerializerPojo;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 385
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 386
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v16

    if-eqz v16, :cond_1

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->isEnum()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 387
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    .line 389
    :cond_1
    const-class v16, Ljava/lang/Object;

    move-object/from16 v0, v16

    if-eq v6, v0, :cond_2

    .line 390
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/mapdb/SerializerPojo;->assertClassSerializable(Ljava/lang/Class;)V

    .line 392
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/mapdb/SerializerPojo;->registerClass(Ljava/lang/Class;)V

    .line 395
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/mapdb/SerializerPojo;->getClassId(Ljava/lang/Class;)I

    move-result v4

    .line 396
    .local v4, "classId":I
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/SerializerPojo;->registered:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapdb/SerializerPojo$ClassInfo;

    .line 399
    .local v5, "classInfo":Lorg/mapdb/SerializerPojo$ClassInfo;
    iget-boolean v0, v5, Lorg/mapdb/SerializerPojo$ClassInfo;->useObjectStream:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 400
    new-instance v15, Lorg/mapdb/SerializerPojo$ObjectOutputStream2;

    check-cast p1, Ljava/io/OutputStream;

    .end local p1    # "out":Ljava/io/DataOutput;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lorg/mapdb/SerializerPojo$ObjectOutputStream2;-><init>(Lorg/mapdb/SerializerPojo;Ljava/io/OutputStream;)V

    .line 401
    .local v15, "out2":Lorg/mapdb/SerializerPojo$ObjectOutputStream2;
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lorg/mapdb/SerializerPojo$ObjectOutputStream2;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/SerializerPojo;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    .line 406
    .end local v15    # "out2":Lorg/mapdb/SerializerPojo$ObjectOutputStream2;
    .restart local p1    # "out":Ljava/io/DataOutput;
    :cond_3
    :try_start_1
    iget-boolean v0, v5, Lorg/mapdb/SerializerPojo$ClassInfo;->isEnum:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 407
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Enum;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    .line 408
    .local v14, "ordinal":I
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 411
    .end local v14    # "ordinal":I
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/mapdb/SerializerPojo;->getFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;

    move-result-object v10

    .line 412
    .local v10, "fields":[Ljava/io/ObjectStreamField;
    array-length v0, v10

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 414
    move-object v3, v10

    .local v3, "arr$":[Ljava/io/ObjectStreamField;
    array-length v12, v3

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v12, :cond_6

    aget-object v7, v3, v11

    .line 416
    .local v7, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v7}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/mapdb/SerializerPojo$ClassInfo;->getFieldId(Ljava/lang/String;)I

    move-result v8

    .line 417
    .local v8, "fieldId":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v8, v0, :cond_5

    .line 420
    new-instance v16, Lorg/mapdb/SerializerPojo$FieldInfo;

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v6}, Lorg/mapdb/SerializerPojo$FieldInfo;-><init>(Ljava/io/ObjectStreamField;Ljava/lang/Class;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/mapdb/SerializerPojo$ClassInfo;->addFieldInfo(Lorg/mapdb/SerializerPojo$FieldInfo;)I

    move-result v8

    .line 421
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/SerializerPojo;->saveClassInfo()V

    .line 423
    :cond_5
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 425
    iget-object v0, v5, Lorg/mapdb/SerializerPojo$ClassInfo;->fields:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/mapdb/SerializerPojo$FieldInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/SerializerPojo;->getFieldValue(Lorg/mapdb/SerializerPojo$FieldInfo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 426
    .local v9, "fieldValue":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v9, v2}, Lorg/mapdb/SerializerPojo;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 429
    .end local v7    # "f":Ljava/io/ObjectStreamField;
    .end local v8    # "fieldId":I
    .end local v9    # "fieldValue":Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/SerializerPojo;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    .end local v3    # "arr$":[Ljava/io/ObjectStreamField;
    .end local v4    # "classId":I
    .end local v5    # "classInfo":Lorg/mapdb/SerializerPojo$ClassInfo;
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "fields":[Ljava/io/ObjectStreamField;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local p1    # "out":Ljava/io/DataOutput;
    :catchall_0
    move-exception v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/SerializerPojo;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v16
.end method

.method public serializerTransformAdd(Lorg/mapdb/Fun$Function1;Lorg/mapdb/Fun$Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mapdb/Fun$Function1",
            "<TA;TR;>;",
            "Lorg/mapdb/Fun$Function1",
            "<TR;TA;>;)V"
        }
    .end annotation

    .prologue
    .line 651
    .local p1, "beforeSerialization":Lorg/mapdb/Fun$Function1;, "Lorg/mapdb/Fun$Function1<TA;TR;>;"
    .local p2, "afterDeserialization":Lorg/mapdb/Fun$Function1;, "Lorg/mapdb/Fun$Function1<TR;TA;>;"
    iget-object v0, p0, Lorg/mapdb/SerializerPojo;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 654
    :try_start_0
    iget-object v0, p0, Lorg/mapdb/SerializerPojo;->serializationTransformsSerialize:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 655
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/mapdb/SerializerPojo;->serializationTransformsSerialize:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 656
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/mapdb/SerializerPojo;->serializationTransformsDeserialize:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 659
    :cond_0
    iget-object v0, p0, Lorg/mapdb/SerializerPojo;->serializationTransformsSerialize:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v0, p0, Lorg/mapdb/SerializerPojo;->serializationTransformsDeserialize:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    iget-object v0, p0, Lorg/mapdb/SerializerPojo;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 664
    return-void

    .line 662
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mapdb/SerializerPojo;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public serializerTransformRemove(Lorg/mapdb/Fun$Function1;Lorg/mapdb/Fun$Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mapdb/Fun$Function1",
            "<TA;TR;>;",
            "Lorg/mapdb/Fun$Function1",
            "<TR;TA;>;)V"
        }
    .end annotation

    .prologue
    .line 675
    .local p1, "beforeSerialization":Lorg/mapdb/Fun$Function1;, "Lorg/mapdb/Fun$Function1<TA;TR;>;"
    .local p2, "afterDeserialization":Lorg/mapdb/Fun$Function1;, "Lorg/mapdb/Fun$Function1<TR;TA;>;"
    iget-object v0, p0, Lorg/mapdb/SerializerPojo;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 678
    :try_start_0
    iget-object v0, p0, Lorg/mapdb/SerializerPojo;->serializationTransformsSerialize:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 684
    iget-object v0, p0, Lorg/mapdb/SerializerPojo;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 686
    :goto_0
    return-void

    .line 681
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mapdb/SerializerPojo;->serializationTransformsSerialize:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 682
    iget-object v0, p0, Lorg/mapdb/SerializerPojo;->serializationTransformsDeserialize:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 684
    iget-object v0, p0, Lorg/mapdb/SerializerPojo;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mapdb/SerializerPojo;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method protected setDb(Lorg/mapdb/DB;)V
    .locals 0
    .param p1, "db"    # Lorg/mapdb/DB;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/mapdb/SerializerPojo;->db:Lorg/mapdb/DB;

    .line 121
    return-void
.end method

.method public setFieldValue(Lorg/mapdb/SerializerPojo$FieldInfo;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "fieldInfo"    # Lorg/mapdb/SerializerPojo$FieldInfo;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 342
    iget-object v1, p1, Lorg/mapdb/SerializerPojo$FieldInfo;->field:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 343
    new-instance v1, Ljava/lang/NoSuchFieldError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/mapdb/SerializerPojo$FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 346
    :cond_0
    :try_start_0
    iget-object v1, p1, Lorg/mapdb/SerializerPojo$FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not set field value: "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected usesAdvancedSerialization(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 264
    const-class v2, Ljava/io/Externalizable;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v0

    .line 266
    :cond_1
    :try_start_0
    const-string v2, "readObject"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/io/ObjectInputStream;

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    if-nez v2, :cond_0

    .line 270
    :goto_1
    :try_start_1
    const-string v2, "writeObject"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/io/ObjectOutputStream;

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    if-nez v2, :cond_0

    .line 276
    :goto_2
    :try_start_2
    const-string v2, "writeReplace"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    :goto_3
    move v0, v1

    .line 280
    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    goto :goto_3

    .line 271
    :catch_1
    move-exception v2

    goto :goto_2

    .line 267
    :catch_2
    move-exception v2

    goto :goto_1
.end method
