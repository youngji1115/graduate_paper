.class public final Lorg/mapdb/Fun$Tuple2Comparator;
.super Ljava/lang/Object;
.source "Fun.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Fun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tuple2Comparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/mapdb/Fun$Tuple2",
        "<TA;TB;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x100cf50b061e5f5aL


# instance fields
.field protected final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TA;>;"
        }
    .end annotation
.end field

.field protected final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TA;>;",
            "Ljava/util/Comparator",
            "<TB;>;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "this":Lorg/mapdb/Fun$Tuple2Comparator;, "Lorg/mapdb/Fun$Tuple2Comparator<TA;TB;>;"
    .local p1, "a":Ljava/util/Comparator;, "Ljava/util/Comparator<TA;>;"
    .local p2, "b":Ljava/util/Comparator;, "Ljava/util/Comparator<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    if-nez p1, :cond_0

    sget-object p1, Lorg/mapdb/Fun;->COMPARATOR:Ljava/util/Comparator;

    .end local p1    # "a":Ljava/util/Comparator;, "Ljava/util/Comparator<TA;>;"
    :cond_0
    iput-object p1, p0, Lorg/mapdb/Fun$Tuple2Comparator;->a:Ljava/util/Comparator;

    .line 405
    if-nez p2, :cond_1

    sget-object p2, Lorg/mapdb/Fun;->COMPARATOR:Ljava/util/Comparator;

    .end local p2    # "b":Ljava/util/Comparator;, "Ljava/util/Comparator<TB;>;"
    :cond_1
    iput-object p2, p0, Lorg/mapdb/Fun$Tuple2Comparator;->b:Ljava/util/Comparator;

    .line 406
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
    .line 410
    .local p0, "this":Lorg/mapdb/Fun$Tuple2Comparator;, "Lorg/mapdb/Fun$Tuple2Comparator<TA;TB;>;"
    .local p3, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    invoke-virtual {p3, p0}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 412
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/Fun$Tuple2Comparator;->a:Ljava/util/Comparator;

    .line 413
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/Fun$Tuple2Comparator;->b:Ljava/util/Comparator;

    .line 414
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 396
    .local p0, "this":Lorg/mapdb/Fun$Tuple2Comparator;, "Lorg/mapdb/Fun$Tuple2Comparator<TA;TB;>;"
    check-cast p1, Lorg/mapdb/Fun$Tuple2;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/mapdb/Fun$Tuple2;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Fun$Tuple2Comparator;->compare(Lorg/mapdb/Fun$Tuple2;Lorg/mapdb/Fun$Tuple2;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/mapdb/Fun$Tuple2;Lorg/mapdb/Fun$Tuple2;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Fun$Tuple2",
            "<TA;TB;>;",
            "Lorg/mapdb/Fun$Tuple2",
            "<TA;TB;>;)I"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "this":Lorg/mapdb/Fun$Tuple2Comparator;, "Lorg/mapdb/Fun$Tuple2Comparator<TA;TB;>;"
    .local p1, "o1":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<TA;TB;>;"
    .local p2, "o2":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<TA;TB;>;"
    iget-object v2, p0, Lorg/mapdb/Fun$Tuple2Comparator;->a:Ljava/util/Comparator;

    iget-object v3, p1, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    iget-object v4, p2, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 419
    .local v0, "i":I
    if-eqz v0, :cond_0

    move v1, v0

    .line 421
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    return v1

    .line 420
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/mapdb/Fun$Tuple2Comparator;->b:Ljava/util/Comparator;

    iget-object v3, p1, Lorg/mapdb/Fun$Tuple2;->b:Ljava/lang/Object;

    iget-object v4, p2, Lorg/mapdb/Fun$Tuple2;->b:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    move v1, v0

    .line 421
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/mapdb/Fun$Tuple2Comparator;, "Lorg/mapdb/Fun$Tuple2Comparator<TA;TB;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 426
    if-ne p0, p1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return v1

    .line 427
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

    .line 429
    check-cast v0, Lorg/mapdb/Fun$Tuple2Comparator;

    .line 431
    .local v0, "that":Lorg/mapdb/Fun$Tuple2Comparator;
    iget-object v3, p0, Lorg/mapdb/Fun$Tuple2Comparator;->a:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/Fun$Tuple2Comparator;->a:Ljava/util/Comparator;

    invoke-interface {v3, v4}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/Fun$Tuple2Comparator;->b:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/Fun$Tuple2Comparator;->b:Ljava/util/Comparator;

    invoke-interface {v3, v4}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 436
    .local p0, "this":Lorg/mapdb/Fun$Tuple2Comparator;, "Lorg/mapdb/Fun$Tuple2Comparator<TA;TB;>;"
    iget-object v1, p0, Lorg/mapdb/Fun$Tuple2Comparator;->a:Ljava/util/Comparator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 437
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/Fun$Tuple2Comparator;->b:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 438
    return v0
.end method
