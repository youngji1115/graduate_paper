.class public final Lorg/mapdb/Fun;
.super Ljava/lang/Object;
.source "Fun.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/Fun$ArrayComparator;,
        Lorg/mapdb/Fun$Function2;,
        Lorg/mapdb/Fun$Function1;,
        Lorg/mapdb/Fun$Function0;,
        Lorg/mapdb/Fun$Tuple6Comparator;,
        Lorg/mapdb/Fun$Tuple5Comparator;,
        Lorg/mapdb/Fun$Tuple4Comparator;,
        Lorg/mapdb/Fun$Tuple3Comparator;,
        Lorg/mapdb/Fun$Tuple2Comparator;,
        Lorg/mapdb/Fun$Tuple6;,
        Lorg/mapdb/Fun$Tuple5;,
        Lorg/mapdb/Fun$Tuple4;,
        Lorg/mapdb/Fun$Tuple3;,
        Lorg/mapdb/Fun$Tuple2;
    }
.end annotation


# static fields
.field public static final BYTE_ARRAY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field

.field public static final CHAR_ARRAY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[C>;"
        }
    .end annotation
.end field

.field public static final COMPARABLE_ARRAY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMPARATOR:Ljava/util/Comparator;

.field public static final DOUBLE_ARRAY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[D>;"
        }
    .end annotation
.end field

.field public static final EMPTY_ITERATOR:Ljava/util/Iterator;

.field public static final HI:Ljava/lang/Object;

.field public static final INT_ARRAY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[I>;"
        }
    .end annotation
.end field

.field public static final LONG_ARRAY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[J>;"
        }
    .end annotation
.end field

.field public static final REVERSE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field public static final TUPLE2_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/mapdb/Fun$Tuple2;",
            ">;"
        }
    .end annotation
.end field

.field public static final TUPLE3_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/mapdb/Fun$Tuple3;",
            ">;"
        }
    .end annotation
.end field

.field public static final TUPLE4_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/mapdb/Fun$Tuple4;",
            ">;"
        }
    .end annotation
.end field

.field public static final TUPLE5_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/mapdb/Fun$Tuple5;",
            ">;"
        }
    .end annotation
.end field

.field public static final TUPLE6_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/mapdb/Fun$Tuple6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 32
    new-instance v0, Lorg/mapdb/Fun$1;

    invoke-direct {v0}, Lorg/mapdb/Fun$1;-><init>()V

    sput-object v0, Lorg/mapdb/Fun;->COMPARATOR:Ljava/util/Comparator;

    .line 47
    new-instance v0, Lorg/mapdb/Fun$2;

    invoke-direct {v0}, Lorg/mapdb/Fun$2;-><init>()V

    sput-object v0, Lorg/mapdb/Fun;->REVERSE_COMPARATOR:Ljava/util/Comparator;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sput-object v0, Lorg/mapdb/Fun;->EMPTY_ITERATOR:Ljava/util/Iterator;

    .line 59
    new-instance v0, Lorg/mapdb/Fun$Tuple2Comparator;

    invoke-direct {v0, v1, v1}, Lorg/mapdb/Fun$Tuple2Comparator;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    sput-object v0, Lorg/mapdb/Fun;->TUPLE2_COMPARATOR:Ljava/util/Comparator;

    .line 60
    new-instance v0, Lorg/mapdb/Fun$Tuple3Comparator;

    invoke-direct {v0, v1, v1, v1}, Lorg/mapdb/Fun$Tuple3Comparator;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;)V

    sput-object v0, Lorg/mapdb/Fun;->TUPLE3_COMPARATOR:Ljava/util/Comparator;

    .line 61
    new-instance v0, Lorg/mapdb/Fun$Tuple4Comparator;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/mapdb/Fun$Tuple4Comparator;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;)V

    sput-object v0, Lorg/mapdb/Fun;->TUPLE4_COMPARATOR:Ljava/util/Comparator;

    .line 62
    new-instance v0, Lorg/mapdb/Fun$Tuple5Comparator;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/mapdb/Fun$Tuple5Comparator;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;)V

    sput-object v0, Lorg/mapdb/Fun;->TUPLE5_COMPARATOR:Ljava/util/Comparator;

    .line 63
    new-instance v0, Lorg/mapdb/Fun$Tuple6Comparator;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lorg/mapdb/Fun$Tuple6Comparator;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;)V

    sput-object v0, Lorg/mapdb/Fun;->TUPLE6_COMPARATOR:Ljava/util/Comparator;

    .line 70
    new-instance v0, Lorg/mapdb/Fun$3;

    invoke-direct {v0}, Lorg/mapdb/Fun$3;-><init>()V

    sput-object v0, Lorg/mapdb/Fun;->HI:Ljava/lang/Object;

    .line 724
    new-instance v0, Lorg/mapdb/Fun$7;

    invoke-direct {v0}, Lorg/mapdb/Fun$7;-><init>()V

    sput-object v0, Lorg/mapdb/Fun;->BYTE_ARRAY_COMPARATOR:Ljava/util/Comparator;

    .line 741
    new-instance v0, Lorg/mapdb/Fun$8;

    invoke-direct {v0}, Lorg/mapdb/Fun$8;-><init>()V

    sput-object v0, Lorg/mapdb/Fun;->CHAR_ARRAY_COMPARATOR:Ljava/util/Comparator;

    .line 757
    new-instance v0, Lorg/mapdb/Fun$9;

    invoke-direct {v0}, Lorg/mapdb/Fun$9;-><init>()V

    sput-object v0, Lorg/mapdb/Fun;->INT_ARRAY_COMPARATOR:Ljava/util/Comparator;

    .line 773
    new-instance v0, Lorg/mapdb/Fun$10;

    invoke-direct {v0}, Lorg/mapdb/Fun$10;-><init>()V

    sput-object v0, Lorg/mapdb/Fun;->LONG_ARRAY_COMPARATOR:Ljava/util/Comparator;

    .line 789
    new-instance v0, Lorg/mapdb/Fun$11;

    invoke-direct {v0}, Lorg/mapdb/Fun$11;-><init>()V

    sput-object v0, Lorg/mapdb/Fun;->DOUBLE_ARRAY_COMPARATOR:Ljava/util/Comparator;

    .line 807
    new-instance v0, Lorg/mapdb/Fun$12;

    invoke-direct {v0}, Lorg/mapdb/Fun$12;-><init>()V

    sput-object v0, Lorg/mapdb/Fun;->COMPARABLE_ARRAY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HI()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()TA;"
        }
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lorg/mapdb/Fun;->HI:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$000(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-static {p0, p1}, Lorg/mapdb/Fun;->intCompare(II)I

    move-result v0

    return v0
.end method

.method public static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 108
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static extractKey()Lorg/mapdb/Fun$Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/mapdb/Fun$Function1",
            "<TK;",
            "Lorg/mapdb/Fun$Tuple2",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 696
    new-instance v0, Lorg/mapdb/Fun$4;

    invoke-direct {v0}, Lorg/mapdb/Fun$4;-><init>()V

    return-object v0
.end method

.method public static extractNoTransform()Lorg/mapdb/Fun$Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/mapdb/Fun$Function1",
            "<TK;TK;>;"
        }
    .end annotation

    .prologue
    .line 715
    new-instance v0, Lorg/mapdb/Fun$6;

    invoke-direct {v0}, Lorg/mapdb/Fun$6;-><init>()V

    return-object v0
.end method

.method public static extractValue()Lorg/mapdb/Fun$Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/mapdb/Fun$Function1",
            "<TV;",
            "Lorg/mapdb/Fun$Tuple2",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 705
    new-instance v0, Lorg/mapdb/Fun$5;

    invoke-direct {v0}, Lorg/mapdb/Fun$5;-><init>()V

    return-object v0
.end method

.method public static filter(Ljava/util/NavigableSet;Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K2:",
            "Ljava/lang/Object;",
            "K1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet",
            "<",
            "Lorg/mapdb/Fun$Tuple2",
            "<TK2;TK1;>;>;TK2;)",
            "Ljava/lang/Iterable",
            "<TK1;>;"
        }
    .end annotation

    .prologue
    .local p0, "secondaryKeys":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Lorg/mapdb/Fun$Tuple2<TK2;TK1;>;>;"
    .local p1, "secondaryKey":Ljava/lang/Object;, "TK2;"
    const/4 v0, 0x1

    .line 883
    invoke-static {p0, p1, v0, p1, v0}, Lorg/mapdb/Fun;->filter(Ljava/util/NavigableSet;Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static filter(Ljava/util/NavigableSet;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet",
            "<",
            "Lorg/mapdb/Fun$Tuple3",
            "<TA;TB;TC;>;>;TA;TB;)",
            "Ljava/lang/Iterable",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 922
    .local p0, "secondaryKeys":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Lorg/mapdb/Fun$Tuple3<TA;TB;TC;>;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    new-instance v0, Lorg/mapdb/Fun$14;

    invoke-direct {v0, p0, p1, p2}, Lorg/mapdb/Fun$14;-><init>(Ljava/util/NavigableSet;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static filter(Ljava/util/NavigableSet;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
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
            ">(",
            "Ljava/util/NavigableSet",
            "<",
            "Lorg/mapdb/Fun$Tuple4",
            "<TA;TB;TC;TD;>;>;TA;TB;TC;)",
            "Ljava/lang/Iterable",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 955
    .local p0, "secondaryKeys":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Lorg/mapdb/Fun$Tuple4<TA;TB;TC;TD;>;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    .local p3, "c":Ljava/lang/Object;, "TC;"
    new-instance v0, Lorg/mapdb/Fun$15;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/mapdb/Fun$15;-><init>(Ljava/util/NavigableSet;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static filter(Ljava/util/NavigableSet;Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/lang/Iterable;
    .locals 6
    .param p2, "loInc"    # Z
    .param p4, "hiInc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K2:",
            "Ljava/lang/Object;",
            "K1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet",
            "<",
            "Lorg/mapdb/Fun$Tuple2",
            "<TK2;TK1;>;>;TK2;ZTK2;Z)",
            "Ljava/lang/Iterable",
            "<TK1;>;"
        }
    .end annotation

    .prologue
    .line 887
    .local p0, "secondaryKeys":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Lorg/mapdb/Fun$Tuple2<TK2;TK1;>;>;"
    .local p1, "lo":Ljava/lang/Object;, "TK2;"
    .local p3, "hi":Ljava/lang/Object;, "TK2;"
    new-instance v0, Lorg/mapdb/Fun$13;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/mapdb/Fun$13;-><init>(Ljava/util/NavigableSet;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-object v0
.end method

.method private static intCompare(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 868
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static roundUp(JJ)J
    .locals 4
    .param p0, "number"    # J
    .param p2, "roundUpToMultipleOf"    # J

    .prologue
    .line 112
    add-long v0, p0, p2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, p2

    mul-long/2addr v0, p2

    return-wide v0
.end method

.method public static t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Lorg/mapdb/Fun$Tuple2",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "a":Ljava/lang/Object;, "TA;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    new-instance v0, Lorg/mapdb/Fun$Tuple2;

    invoke-direct {v0, p0, p1}, Lorg/mapdb/Fun$Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static t3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(TA;TB;TC;)",
            "Lorg/mapdb/Fun$Tuple3",
            "<TA;TB;TC;>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "a":Ljava/lang/Object;, "TA;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    .local p2, "c":Ljava/lang/Object;, "TC;"
    new-instance v0, Lorg/mapdb/Fun$Tuple3;

    invoke-direct {v0, p0, p1, p2}, Lorg/mapdb/Fun$Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static t4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple4;
    .locals 1
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
            ">(TA;TB;TC;TD;)",
            "Lorg/mapdb/Fun$Tuple4",
            "<TA;TB;TC;TD;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "a":Ljava/lang/Object;, "TA;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    .local p2, "c":Ljava/lang/Object;, "TC;"
    .local p3, "d":Ljava/lang/Object;, "TD;"
    new-instance v0, Lorg/mapdb/Fun$Tuple4;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/mapdb/Fun$Tuple4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static t5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple5;
    .locals 6
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
            ">(TA;TB;TC;TD;TE;)",
            "Lorg/mapdb/Fun$Tuple5",
            "<TA;TB;TC;TD;TE;>;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "a":Ljava/lang/Object;, "TA;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    .local p2, "c":Ljava/lang/Object;, "TC;"
    .local p3, "d":Ljava/lang/Object;, "TD;"
    .local p4, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Lorg/mapdb/Fun$Tuple5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/mapdb/Fun$Tuple5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static t6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple6;
    .locals 7
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
            ">(TA;TB;TC;TD;TE;TF;)",
            "Lorg/mapdb/Fun$Tuple6",
            "<TA;TB;TC;TD;TE;TF;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "a":Ljava/lang/Object;, "TA;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    .local p2, "c":Ljava/lang/Object;, "TC;"
    .local p3, "d":Ljava/lang/Object;, "TD;"
    .local p4, "e":Ljava/lang/Object;, "TE;"
    .local p5, "f":Ljava/lang/Object;, "TF;"
    new-instance v0, Lorg/mapdb/Fun$Tuple6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/mapdb/Fun$Tuple6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
