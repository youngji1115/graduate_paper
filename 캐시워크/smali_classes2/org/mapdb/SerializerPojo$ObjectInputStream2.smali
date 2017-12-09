.class public final Lorg/mapdb/SerializerPojo$ObjectInputStream2;
.super Ljava/io/ObjectInputStream;
.source "SerializerPojo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/SerializerPojo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "ObjectInputStream2"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapdb/SerializerPojo;


# direct methods
.method protected constructor <init>(Lorg/mapdb/SerializerPojo;Ljava/io/InputStream;)V
    .locals 0
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 609
    iput-object p1, p0, Lorg/mapdb/SerializerPojo$ObjectInputStream2;->this$0:Lorg/mapdb/SerializerPojo;

    .line 610
    invoke-direct {p0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 611
    return-void
.end method


# virtual methods
.method protected readClassDescriptor()Ljava/io/ObjectStreamClass;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-static {p0}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 616
    .local v0, "classId":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/mapdb/SerializerPojo$ObjectInputStream2;->this$0:Lorg/mapdb/SerializerPojo;

    iget-object v2, v2, Lorg/mapdb/SerializerPojo;->classId2class:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 617
    .local v1, "clazz":Ljava/lang/Class;
    invoke-static {v1}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v2

    return-object v2
.end method

.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 4
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 622
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 623
    .local v1, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 624
    .local v0, "clazz":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 626
    .end local v0    # "clazz":Ljava/lang/Class;
    :goto_0
    return-object v0

    .restart local v0    # "clazz":Ljava/lang/Class;
    :cond_0
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
