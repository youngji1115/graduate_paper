.class public final Lorg/mapdb/Fun$Tuple6Comparator;
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
    name = "Tuple6Comparator"
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
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/mapdb/Fun$Tuple6",
        "<TA;TB;TC;TD;TE;TF;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3b0b4cc263140dcfL


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

.field protected final f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TF;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;)V
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
            "<TE;>;",
            "Ljava/util/Comparator",
            "<TF;>;)V"
        }
    .end annotation

    .prologue
    .line 623
    .local p0, "this":Lorg/mapdb/Fun$Tuple6Comparator;, "Lorg/mapdb/Fun$Tuple6Comparator<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "a":Ljava/util/Comparator;, "Ljava/util/Comparator<TA;>;"
    .local p2, "b":Ljava/util/Comparator;, "Ljava/util/Comparator<TB;>;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TC;>;"
    .local p4, "d":Ljava/util/Comparator;, "Ljava/util/Comparator<TD;>;"
    .local p5, "e":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    .local p6, "f":Ljava/util/Comparator;, "Ljava/util/Comparator<TF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    if-nez p1, :cond_0

    sget-object p1, Lorg/mapdb/Fun;->COMPARATOR:Ljava/util/Comparator;

    .end local p1    # "a":Ljava/util/Comparator;, "Ljava/util/Comparator<TA;>;"
    :cond_0
    iput-object p1, p0, Lorg/mapdb/Fun$Tuple6Comparator;->a:Ljava/util/Comparator;

    .line 625
    if-nez p2, :cond_1

    sget-object p2, Lorg/mapdb/Fun;->COMPARATOR:Ljava/util/Comparator;

    .end local p2    # "b":Ljava/util/Comparator;, "Ljava/util/Comparator<TB;>;"
    :cond_1
    iput-object p2, p0, Lorg/mapdb/Fun$Tuple6Comparator;->b:Ljava/util/Comparator;

    .line 626
    if-nez p3, :cond_2

    sget-object p3, Lorg/mapdb/Fun;->COMPARATOR:Ljava/util/Comparator;

    .end local p3    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TC;>;"
    :cond_2
    iput-object p3, p0, Lorg/mapdb/Fun$Tuple6Comparator;->c:Ljava/util/Comparator;

    .line 627
    if-nez p4, :cond_3

    sget-object p4, Lorg/mapdb/Fun;->COMPARATOR:Ljava/util/Comparator;

    .end local p4    # "d":Ljava/util/Comparator;, "Ljava/util/Comparator<TD;>;"
    :cond_3
    iput-object p4, p0, Lorg/mapdb/Fun$Tuple6Comparator;->d:Ljava/util/Comparator;

    .line 628
    if-nez p5, :cond_4

    sget-object p5, Lorg/mapdb/Fun;->COMPARATOR:Ljava/util/Comparator;

    .end local p5    # "e":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    :cond_4
    iput-object p5, p0, Lorg/mapdb/Fun$Tuple6Comparator;->e:Ljava/util/Comparator;

    .line 629
    if-nez p6, :cond_5

    sget-object p6, Lorg/mapdb/Fun;->COMPARATOR:Ljava/util/Comparator;

    .end local p6    # "f":Ljava/util/Comparator;, "Ljava/util/Comparator<TF;>;"
    :cond_5
    iput-object p6, p0, Lorg/mapdb/Fun$Tuple6Comparator;->f:Ljava/util/Comparator;

    .line 630
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
    .line 635
    .local p0, "this":Lorg/mapdb/Fun$Tuple6Comparator;, "Lorg/mapdb/Fun$Tuple6Comparator<TA;TB;TC;TD;TE;TF;>;"
    .local p3, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    invoke-virtual {p3, p0}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 637
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/Fun$Tuple6Comparator;->a:Ljava/util/Comparator;

    .line 638
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/Fun$Tuple6Comparator;->b:Ljava/util/Comparator;

    .line 639
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/Fun$Tuple6Comparator;->c:Ljava/util/Comparator;

    .line 640
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/Fun$Tuple6Comparator;->d:Ljava/util/Comparator;

    .line 641
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/Fun$Tuple6Comparator;->e:Ljava/util/Comparator;

    .line 642
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/Fun$Tuple6Comparator;->f:Ljava/util/Comparator;

    .line 643
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 611
    .local p0, "this":Lorg/mapdb/Fun$Tuple6Comparator;, "Lorg/mapdb/Fun$Tuple6Comparator<TA;TB;TC;TD;TE;TF;>;"
    check-cast p1, Lorg/mapdb/Fun$Tuple6;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/mapdb/Fun$Tuple6;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Fun$Tuple6Comparator;->compare(Lorg/mapdb/Fun$Tuple6;Lorg/mapdb/Fun$Tuple6;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/mapdb/Fun$Tuple6;Lorg/mapdb/Fun$Tuple6;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Fun$Tuple6",
            "<TA;TB;TC;TD;TE;TF;>;",
            "Lorg/mapdb/Fun$Tuple6",
            "<TA;TB;TC;TD;TE;TF;>;)I"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, "this":Lorg/mapdb/Fun$Tuple6Comparator;, "Lorg/mapdb/Fun$Tuple6Comparator<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "o1":Lorg/mapdb/Fun$Tuple6;, "Lorg/mapdb/Fun$Tuple6<TA;TB;TC;TD;TE;TF;>;"
    .local p2, "o2":Lorg/mapdb/Fun$Tuple6;, "Lorg/mapdb/Fun$Tuple6<TA;TB;TC;TD;TE;TF;>;"
    iget-object v1, p0, Lorg/mapdb/Fun$Tuple6Comparator;->a:Ljava/util/Comparator;

    iget-object v2, p1, Lorg/mapdb/Fun$Tuple6;->a:Ljava/lang/Object;

    iget-object v3, p2, Lorg/mapdb/Fun$Tuple6;->a:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 648
    .local v0, "i":I
    if-eqz v0, :cond_0

    move v1, v0

    .line 657
    :goto_0
    return v1

    .line 649
    :cond_0
    iget-object v1, p0, Lorg/mapdb/Fun$Tuple6Comparator;->b:Ljava/util/Comparator;

    iget-object v2, p1, Lorg/mapdb/Fun$Tuple6;->b:Ljava/lang/Object;

    iget-object v3, p2, Lorg/mapdb/Fun$Tuple6;->b:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 650
    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    .line 651
    :cond_1
    iget-object v1, p0, Lorg/mapdb/Fun$Tuple6Comparator;->c:Ljava/util/Comparator;

    iget-object v2, p1, Lorg/mapdb/Fun$Tuple6;->c:Ljava/lang/Object;

    iget-object v3, p2, Lorg/mapdb/Fun$Tuple6;->c:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 652
    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    .line 653
    :cond_2
    iget-object v1, p0, Lorg/mapdb/Fun$Tuple6Comparator;->d:Ljava/util/Comparator;

    iget-object v2, p1, Lorg/mapdb/Fun$Tuple6;->d:Ljava/lang/Object;

    iget-object v3, p2, Lorg/mapdb/Fun$Tuple6;->d:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 654
    if-eqz v0, :cond_3

    move v1, v0

    goto :goto_0

    .line 655
    :cond_3
    iget-object v1, p0, Lorg/mapdb/Fun$Tuple6Comparator;->e:Ljava/util/Comparator;

    iget-object v2, p1, Lorg/mapdb/Fun$Tuple6;->e:Ljava/lang/Object;

    iget-object v3, p2, Lorg/mapdb/Fun$Tuple6;->e:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 656
    if-eqz v0, :cond_4

    move v1, v0

    goto :goto_0

    .line 657
    :cond_4
    iget-object v1, p0, Lorg/mapdb/Fun$Tuple6Comparator;->f:Ljava/util/Comparator;

    iget-object v2, p1, Lorg/mapdb/Fun$Tuple6;->f:Ljava/lang/Object;

    iget-object v3, p2, Lorg/mapdb/Fun$Tuple6;->f:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/mapdb/Fun$Tuple6Comparator;, "Lorg/mapdb/Fun$Tuple6Comparator<TA;TB;TC;TD;TE;TF;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 662
    if-ne p0, p1, :cond_1

    .line 666
    :cond_0
    :goto_0
    return v1

    .line 663
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

    .line 665
    check-cast v0, Lorg/mapdb/Fun$Tuple6Comparator;

    .line 666
    .local v0, "that":Lorg/mapdb/Fun$Tuple6Comparator;
    iget-object v3, p0, Lorg/mapdb/Fun$Tuple6Comparator;->a:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/Fun$Tuple6Comparator;->a:Ljava/util/Comparator;

    invoke-interface {v3, v4}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/Fun$Tuple6Comparator;->b:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/Fun$Tuple6Comparator;->b:Ljava/util/Comparator;

    invoke-interface {v3, v4}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/Fun$Tuple6Comparator;->c:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/Fun$Tuple6Comparator;->c:Ljava/util/Comparator;

    invoke-interface {v3, v4}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/Fun$Tuple6Comparator;->d:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/Fun$Tuple6Comparator;->d:Ljava/util/Comparator;

    invoke-interface {v3, v4}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/Fun$Tuple6Comparator;->e:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/Fun$Tuple6Comparator;->e:Ljava/util/Comparator;

    invoke-interface {v3, v4}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/Fun$Tuple6Comparator;->f:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/Fun$Tuple6Comparator;->f:Ljava/util/Comparator;

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
    .line 671
    .local p0, "this":Lorg/mapdb/Fun$Tuple6Comparator;, "Lorg/mapdb/Fun$Tuple6Comparator<TA;TB;TC;TD;TE;TF;>;"
    iget-object v1, p0, Lorg/mapdb/Fun$Tuple6Comparator;->a:Ljava/util/Comparator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 672
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/Fun$Tuple6Comparator;->b:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 673
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/Fun$Tuple6Comparator;->c:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 674
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/Fun$Tuple6Comparator;->d:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 675
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/Fun$Tuple6Comparator;->e:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 676
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/Fun$Tuple6Comparator;->f:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 677
    return v0
.end method
