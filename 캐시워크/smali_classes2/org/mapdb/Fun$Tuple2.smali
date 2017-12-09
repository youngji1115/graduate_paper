.class public final Lorg/mapdb/Fun$Tuple2;
.super Ljava/lang/Object;
.source "Fun.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Fun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tuple2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/mapdb/Fun$Tuple2",
        "<TA;TB;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7a59b57b4892d313L


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<TA;TB;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    .line 125
    iput-object p2, p0, Lorg/mapdb/Fun$Tuple2;->b:Ljava/lang/Object;

    .line 126
    return-void
.end method

.method protected constructor <init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)V
    .locals 1
    .param p1, "serializer"    # Lorg/mapdb/SerializerBase;
    .param p2, "in"    # Ljava/io/DataInput;
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
    .line 129
    .local p0, "this":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<TA;TB;>;"
    .local p3, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-virtual {p3, p0}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    .line 132
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mapdb/Fun$Tuple2;->b:Ljava/lang/Object;

    .line 133
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 116
    .local p0, "this":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<TA;TB;>;"
    check-cast p1, Lorg/mapdb/Fun$Tuple2;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/mapdb/Fun$Tuple2;->compareTo(Lorg/mapdb/Fun$Tuple2;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/mapdb/Fun$Tuple2;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Fun$Tuple2",
            "<TA;TB;>;)I"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<TA;TB;>;"
    .local p1, "o":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<TA;TB;>;"
    sget-object v0, Lorg/mapdb/Fun;->TUPLE2_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<TA;TB;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    if-ne p0, p1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v1

    .line 142
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 144
    check-cast v0, Lorg/mapdb/Fun$Tuple2;

    .line 146
    .local v0, "t":Lorg/mapdb/Fun$Tuple2;
    iget-object v3, p0, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    iget-object v4, v0, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/Fun$Tuple2;->b:Ljava/lang/Object;

    iget-object v4, v0, Lorg/mapdb/Fun$Tuple2;->b:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .local p0, "this":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<TA;TB;>;"
    const/4 v1, 0x0

    .line 150
    iget-object v2, p0, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 151
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/mapdb/Fun$Tuple2;->b:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/mapdb/Fun$Tuple2;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 152
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 150
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    .local p0, "this":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<TA;TB;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tuple2["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mapdb/Fun$Tuple2;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
