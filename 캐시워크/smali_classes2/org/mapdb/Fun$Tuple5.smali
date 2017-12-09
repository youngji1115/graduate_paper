.class public final Lorg/mapdb/Fun$Tuple5;
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
    name = "Tuple5"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/mapdb/Fun$Tuple5",
        "<TA;TB;TC;TD;TE;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x372a1843d71b4f5eL


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

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lorg/mapdb/Fun$Tuple5;, "Lorg/mapdb/Fun$Tuple5<TA;TB;TC;TD;TE;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    .local p4, "d":Ljava/lang/Object;, "TD;"
    .local p5, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p1, p0, Lorg/mapdb/Fun$Tuple5;->a:Ljava/lang/Object;

    .line 279
    iput-object p2, p0, Lorg/mapdb/Fun$Tuple5;->b:Ljava/lang/Object;

    .line 280
    iput-object p3, p0, Lorg/mapdb/Fun$Tuple5;->c:Ljava/lang/Object;

    .line 281
    iput-object p4, p0, Lorg/mapdb/Fun$Tuple5;->d:Ljava/lang/Object;

    .line 282
    iput-object p5, p0, Lorg/mapdb/Fun$Tuple5;->e:Ljava/lang/Object;

    .line 283
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
    .line 288
    .local p0, "this":Lorg/mapdb/Fun$Tuple5;, "Lorg/mapdb/Fun$Tuple5<TA;TB;TC;TD;TE;>;"
    .local p3, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    invoke-virtual {p3, p0}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 290
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mapdb/Fun$Tuple5;->a:Ljava/lang/Object;

    .line 291
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mapdb/Fun$Tuple5;->b:Ljava/lang/Object;

    .line 292
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mapdb/Fun$Tuple5;->c:Ljava/lang/Object;

    .line 293
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mapdb/Fun$Tuple5;->d:Ljava/lang/Object;

    .line 294
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mapdb/Fun$Tuple5;->e:Ljava/lang/Object;

    .line 295
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 267
    .local p0, "this":Lorg/mapdb/Fun$Tuple5;, "Lorg/mapdb/Fun$Tuple5<TA;TB;TC;TD;TE;>;"
    check-cast p1, Lorg/mapdb/Fun$Tuple5;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/mapdb/Fun$Tuple5;->compareTo(Lorg/mapdb/Fun$Tuple5;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/mapdb/Fun$Tuple5;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Fun$Tuple5",
            "<TA;TB;TC;TD;TE;>;)I"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lorg/mapdb/Fun$Tuple5;, "Lorg/mapdb/Fun$Tuple5<TA;TB;TC;TD;TE;>;"
    .local p1, "o":Lorg/mapdb/Fun$Tuple5;, "Lorg/mapdb/Fun$Tuple5<TA;TB;TC;TD;TE;>;"
    sget-object v0, Lorg/mapdb/Fun;->TUPLE5_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/mapdb/Fun$Tuple5;, "Lorg/mapdb/Fun$Tuple5<TA;TB;TC;TD;TE;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 310
    if-ne p0, p1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v1

    .line 311
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

    .line 313
    check-cast v0, Lorg/mapdb/Fun$Tuple5;

    .line 315
    .local v0, "t":Lorg/mapdb/Fun$Tuple5;
    iget-object v3, p0, Lorg/mapdb/Fun$Tuple5;->a:Ljava/lang/Object;

    iget-object v4, v0, Lorg/mapdb/Fun$Tuple5;->a:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/Fun$Tuple5;->b:Ljava/lang/Object;

    iget-object v4, v0, Lorg/mapdb/Fun$Tuple5;->b:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/Fun$Tuple5;->c:Ljava/lang/Object;

    iget-object v4, v0, Lorg/mapdb/Fun$Tuple5;->c:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/Fun$Tuple5;->d:Ljava/lang/Object;

    iget-object v4, v0, Lorg/mapdb/Fun$Tuple5;->d:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/Fun$Tuple5;->e:Ljava/lang/Object;

    iget-object v4, v0, Lorg/mapdb/Fun$Tuple5;->e:Ljava/lang/Object;

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
    .local p0, "this":Lorg/mapdb/Fun$Tuple5;, "Lorg/mapdb/Fun$Tuple5<TA;TB;TC;TD;TE;>;"
    const/4 v1, 0x0

    .line 320
    iget-object v2, p0, Lorg/mapdb/Fun$Tuple5;->a:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/mapdb/Fun$Tuple5;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 321
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/Fun$Tuple5;->b:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mapdb/Fun$Tuple5;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 322
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/Fun$Tuple5;->c:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/mapdb/Fun$Tuple5;->c:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 323
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/Fun$Tuple5;->d:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/mapdb/Fun$Tuple5;->d:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 324
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/mapdb/Fun$Tuple5;->e:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/mapdb/Fun$Tuple5;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 325
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 320
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 321
    goto :goto_1

    :cond_3
    move v2, v1

    .line 322
    goto :goto_2

    :cond_4
    move v2, v1

    .line 323
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    .local p0, "this":Lorg/mapdb/Fun$Tuple5;, "Lorg/mapdb/Fun$Tuple5<TA;TB;TC;TD;TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tuple5["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mapdb/Fun$Tuple5;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mapdb/Fun$Tuple5;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mapdb/Fun$Tuple5;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mapdb/Fun$Tuple5;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mapdb/Fun$Tuple5;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
