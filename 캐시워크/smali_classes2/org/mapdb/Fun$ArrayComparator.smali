.class public final Lorg/mapdb/Fun$ArrayComparator;
.super Ljava/lang/Object;
.source "Fun.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Fun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArrayComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final comparators:[Ljava/util/Comparator;


# direct methods
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
    .line 834
    .local p3, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    invoke-virtual {p3, p0}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 836
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Comparator;

    check-cast v0, [Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/Fun$ArrayComparator;->comparators:[Ljava/util/Comparator;

    .line 837
    return-void
.end method

.method public constructor <init>([Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Comparator",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 825
    .local p1, "comparators2":[Ljava/util/Comparator;, "[Ljava/util/Comparator<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 826
    invoke-virtual {p1}, [Ljava/util/Comparator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Comparator;

    iput-object v1, p0, Lorg/mapdb/Fun$ArrayComparator;->comparators:[Ljava/util/Comparator;

    .line 827
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mapdb/Fun$ArrayComparator;->comparators:[Ljava/util/Comparator;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 828
    iget-object v1, p0, Lorg/mapdb/Fun$ArrayComparator;->comparators:[Ljava/util/Comparator;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 829
    iget-object v1, p0, Lorg/mapdb/Fun$ArrayComparator;->comparators:[Ljava/util/Comparator;

    sget-object v2, Lorg/mapdb/Fun;->COMPARATOR:Ljava/util/Comparator;

    aput-object v2, v1, v0

    .line 827
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 831
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 822
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Fun$ArrayComparator;->compare([Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public compare([Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 6
    .param p1, "o1"    # [Ljava/lang/Object;
    .param p2, "o2"    # [Ljava/lang/Object;

    .prologue
    .line 842
    if-ne p1, p2, :cond_1

    const/4 v2, 0x0

    .line 849
    :cond_0
    :goto_0
    return v2

    .line 843
    :cond_1
    array-length v3, p1

    array-length v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 844
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 845
    iget-object v3, p0, Lorg/mapdb/Fun$ArrayComparator;->comparators:[Ljava/util/Comparator;

    aget-object v3, v3, v0

    aget-object v4, p1, v0

    aget-object v5, p2, v0

    invoke-interface {v3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 846
    .local v2, "r":I
    if-nez v2, :cond_0

    .line 844
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 849
    .end local v2    # "r":I
    :cond_2
    array-length v3, p1

    array-length v4, p2

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->access$000(II)I

    move-result v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 854
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 858
    :goto_0
    return v1

    .line 855
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 857
    check-cast v0, Lorg/mapdb/Fun$ArrayComparator;

    .line 858
    .local v0, "that":Lorg/mapdb/Fun$ArrayComparator;
    iget-object v1, p0, Lorg/mapdb/Fun$ArrayComparator;->comparators:[Ljava/util/Comparator;

    iget-object v2, v0, Lorg/mapdb/Fun$ArrayComparator;->comparators:[Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lorg/mapdb/Fun$ArrayComparator;->comparators:[Ljava/util/Comparator;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
