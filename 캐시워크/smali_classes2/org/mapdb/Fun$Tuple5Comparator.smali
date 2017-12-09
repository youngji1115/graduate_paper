.class public final Lorg/mapdb/Fun$Tuple5Comparator;
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
    name = "Tuple5Comparator"
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
        "Ljava/util/Comparator",
        "<",
        "Lorg/mapdb/Fun$Tuple5",
        "<TA;TB;TC;TD;TE;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5b330ce02e7ac56eL


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

.field protected final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TC;>;"
        }
    .end annotation
.end field

.field protected final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TD;>;"
        }
    .end annotation
.end field

.field protected final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TA;>;",
            "Ljava/util/Comparator",
            "<TB;>;",
            "Ljava/util/Comparator",
            "<TC;>;",
            "Ljava/util/Comparator",
            "<TD;>;",
            "Ljava/util/Comparator",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p0, "this":Lorg/mapdb/Fun$Tuple5Comparator;, "Lorg/mapdb/Fun$Tuple5Comparator<TA;TB;TC;TD;TE;>;"
    .local p1, "a":Ljava/util/Comparator;, "Ljava/util/Comparator<TA;>;"
    .local p2, "b":Ljava/util/Comparator;, "Ljava/util/Comparator<TB;>;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TC;>;"
    .local p4, "d":Ljava/util/Comparator;, "Ljava/util/Comparator<TD;>;"
    .local p5, "e":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    if-nez p1, :cond_0

    sget-object p1, Lorg/mapdb/Fun;->COMPARATOR:Ljava/util/Comparator;

    .end local p1    # "a":Ljava/util/Comparator;, "Ljava/util/Comparator<TA;>;"
    :cond_0
    iput-object p1, p0, Lorg/mapdb/Fun$Tuple5Comparator;->a:Ljava/util/Comparator;

    .line 560
    if-nez p2, :cond_1

    sget-object p2, Lorg/mapdb/Fun;->COMPARATOR:Ljava/util/Comparator;

    .end local p2    # "b":Ljava/util/Comparator;, "Ljava/util/Comparator<TB;>;"
    :cond_1
    iput-object p2, p0, Lorg/mapdb/Fun$Tuple5Comparator;->b:Ljava/util/Comparator;

    .line 561
    if-nez p3, :cond_2

    sget-object p3, Lorg/mapdb/Fun;->COMPARATOR:Ljava/util/Comparator;

    .end local p3    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TC;>;"
    :cond_2
    iput-object p3, p0, Lorg/mapdb/Fun$Tuple5Comparator;->c:Ljava/util/Comparator;

    .line 562
    if-nez p4, :cond_3

    sget-object p4, Lorg/mapdb/Fun;->COMPARATOR:Ljava/util/Comparator;

    .end local p4    # "d":Ljava/util/Comparator;, "Ljava/util/Comparator<TD;>;"
    :cond_3
    iput-object p4, p0, Lorg/mapdb/Fun$Tuple5Comparator;->d:Ljava/util/Comparator;

    .line 563
    if-nez p5, :cond_4

    sget-object p5, Lorg/mapdb/Fun;->COMPARATOR:Ljava/util/Comparator;

    .end local p5    # "e":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    :cond_4
    iput-object p5, p0, Lorg/mapdb/Fun$Tuple5Comparator;->e:Ljava/util/Comparator;

    .line 564
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
    .line 569
    .local p0, "this":Lorg/mapdb/Fun$Tuple5Comparator;, "Lorg/mapdb/Fun$Tuple5Comparator<TA;TB;TC;TD;TE;>;"
    .local p3, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    invoke-virtual {p3, p0}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 571
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/Fun$Tuple5Comparator;->a:Ljava/util/Comparator;

    .line 572
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/Fun$Tuple5Comparator;->b:Ljava/util/Comparator;

    .line 573
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/Fun$Tuple5Comparator;->c:Ljava/util/Comparator;

    .line 574
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/Fun$Tuple5Comparator;->d:Ljava/util/Comparator;

    .line 575
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/Fun$Tuple5Comparator;->e:Ljava/util/Comparator;

    .line 576
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 547
    .local p0, "this":Lorg/mapdb/Fun$Tuple5Comparator;, "Lorg/mapdb/Fun$Tuple5Comparator<TA;TB;TC;TD;TE;>;"
    check-cast p1, Lorg/mapdb/Fun$Tuple5;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/mapdb/Fun$Tuple5;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Fun$Tuple5Comparator;->compare(Lorg/mapdb/Fun$Tuple5;Lorg/mapdb/Fun$Tuple5;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/mapdb/Fun$Tuple5;Lorg/mapdb/Fun$Tuple5;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Fun$Tuple5",
            "<TA;TB;TC;TD;TE;>;",
            "Lorg/mapdb/Fun$Tuple5",
            "<TA;TB;TC;TD;TE;>;)I"
        }
    .end annotation

    .prologue
    .line 580
    .local p0, "this":Lorg/mapdb/Fun$Tuple5Comparator;, "Lorg/mapdb/Fun$Tuple5Comparator<TA;TB;TC;TD;TE;>;"
    .local p1, "o1":Lorg/mapdb/Fun$Tuple5;, "Lorg/mapdb/Fun$Tuple5<TA;TB;TC;TD;TE;>;"
    .local p2, "o2":Lorg/mapdb/Fun$Tuple5;, "Lorg/mapdb/Fun$Tuple5<TA;TB;TC;TD;TE;>;"
    iget-object v1, p0, Lorg/mapdb/Fun$Tuple5Comparator;->a:Ljava/util/Comparator;

    iget-object v2, p1, Lorg/mapdb/Fun$Tuple5;->a:Ljava/lang/Object;

    iget-object v3, p2, Lorg/mapdb/Fun$Tuple5;->a:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 581
    .local v0, "i":I
    if-eqz v0, :cond_0

    move v1, v0

    .line 588
    :goto_0
    return v1

    .line 582
    :cond_0
    iget-object v1, p0, Lorg/mapdb/Fun$Tuple5Comparator;->b:Ljava/util/Comparator;

    iget-object v2, p1, Lorg/mapdb/Fun$Tuple5;->b:Ljava/lang/Object;

    iget-object v3, p2, Lorg/mapdb/Fun$Tuple5;->b:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 583
    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    .line 584
    :cond_1
    iget-object v1, p0, Lorg/mapdb/Fun$Tuple5Comparator;->c:Ljava/util/Comparator;

    iget-object v2, p1, Lorg/mapdb/Fun$Tuple5;->c:Ljava/lang/Object;

    iget-object v3, p2, Lorg/mapdb/Fun$Tuple5;->c:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 585
    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    .line 586
    :cond_2
    iget-object v1, p0, Lorg/mapdb/Fun$Tuple5Comparator;->d:Ljava/util/Comparator;

    iget-object v2, p1, Lorg/mapdb/Fun$Tuple5;->d:Ljava/lang/Object;

    iget-object v3, p2, Lorg/mapdb/Fun$Tuple5;->d:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 587
    if-eqz v0, :cond_3

    move v1, v0

    goto :goto_0

    .line 588
    :cond_3
    iget-object v1, p0, Lorg/mapdb/Fun$Tuple5Comparator;->e:Ljava/util/Comparator;

    iget-object v2, p1, Lorg/mapdb/Fun$Tuple5;->e:Ljava/lang/Object;

    iget-object v3, p2, Lorg/mapdb/Fun$Tuple5;->e:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/mapdb/Fun$Tuple5Comparator;, "Lorg/mapdb/Fun$Tuple5Comparator<TA;TB;TC;TD;TE;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 593
    if-ne p0, p1, :cond_1

    .line 597
    :cond_0
    :goto_0
    return v1

    .line 594
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

    .line 596
    check-cast v0, Lorg/mapdb/Fun$Tuple5Comparator;

    .line 597
    .local v0, "that":Lorg/mapdb/Fun$Tuple5Comparator;
    iget-object v3, p0, Lorg/mapdb/Fun$Tuple5Comparator;->a:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/Fun$Tuple5Comparator;->a:Ljava/util/Comparator;

    invoke-interface {v3, v4}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/Fun$Tuple5Comparator;->b:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/Fun$Tuple5Comparator;->b:Ljava/util/Comparator;

    invoke-interface {v3, v4}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/Fun$Tuple5Comparator;->c:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/Fun$Tuple5Comparator;->c:Ljava/util/Comparator;

    invoke-interface {v3, v4}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/Fun$Tuple5Comparator;->d:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/Fun$Tuple5Comparator;->d:Ljava/util/Comparator;

    invoke-interface {v3, v4}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/Fun$Tuple5Comparator;->e:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/Fun$Tuple5Comparator;->e:Ljava/util/Comparator;

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
    .line 602
    .local p0, "this":Lorg/mapdb/Fun$Tuple5Comparator;, "Lorg/mapdb/Fun$Tuple5Comparator<TA;TB;TC;TD;TE;>;"
    iget-object v1, p0, Lorg/mapdb/Fun$Tuple5Comparator;->a:Ljava/util/Comparator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 603
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/Fun$Tuple5Comparator;->b:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 604
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/Fun$Tuple5Comparator;->c:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 605
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/Fun$Tuple5Comparator;->d:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 606
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/Fun$Tuple5Comparator;->e:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 607
    return v0
.end method
