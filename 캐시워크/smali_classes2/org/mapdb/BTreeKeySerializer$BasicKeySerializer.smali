.class public final Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;
.super Lorg/mapdb/BTreeKeySerializer;
.source "BTreeKeySerializer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/BTreeKeySerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BasicKeySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mapdb/BTreeKeySerializer",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x16f6b69fe3fd249fL


# instance fields
.field protected final defaultSerializer:Lorg/mapdb/Serializer;


# direct methods
.method public constructor <init>(Lorg/mapdb/Serializer;)V
    .locals 0
    .param p1, "defaultSerializer"    # Lorg/mapdb/Serializer;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/mapdb/BTreeKeySerializer;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;->defaultSerializer:Lorg/mapdb/Serializer;

    .line 70
    return-void
.end method

.method protected constructor <init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)V
    .locals 1
    .param p1, "serializerBase"    # Lorg/mapdb/SerializerBase;
    .param p2, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/SerializerBase;",
            "Ljava/io/DataInput;",
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
    .line 73
    .local p3, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/mapdb/BTreeKeySerializer;-><init>()V

    .line 74
    invoke-virtual {p3, p0}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;->defaultSerializer:Lorg/mapdb/Serializer;

    .line 76
    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/DataInput;III)[Ljava/lang/Object;
    .locals 4
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    new-array v1, p4, [Ljava/lang/Object;

    .line 88
    .local v1, "ret":[Ljava/lang/Object;
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 89
    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;->defaultSerializer:Lorg/mapdb/Serializer;

    const/4 v3, -0x1

    invoke-interface {v2, p1, v3}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    return-object v1
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public serialize(Ljava/io/DataOutput;II[Ljava/lang/Object;)V
    .locals 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "keys"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 81
    iget-object v1, p0, Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;->defaultSerializer:Lorg/mapdb/Serializer;

    aget-object v2, p4, v0

    invoke-interface {v1, p1, v2}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method
