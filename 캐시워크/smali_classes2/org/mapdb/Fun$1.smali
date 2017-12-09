.class final Lorg/mapdb/Fun$1;
.super Ljava/lang/Object;
.source "Fun.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Fun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Comparable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 4
    .param p1, "o1"    # Ljava/lang/Comparable;
    .param p2, "o2"    # Ljava/lang/Comparable;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 35
    if-nez p1, :cond_2

    .line 36
    if-nez p2, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    if-nez p2, :cond_3

    move v0, v2

    goto :goto_0

    .line 39
    :cond_3
    sget-object v3, Lorg/mapdb/Fun;->HI:Ljava/lang/Object;

    if-ne p1, v3, :cond_4

    .line 40
    sget-object v1, Lorg/mapdb/Fun;->HI:Ljava/lang/Object;

    if-eq p2, v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 41
    :cond_4
    sget-object v0, Lorg/mapdb/Fun;->HI:Ljava/lang/Object;

    if-ne p2, v0, :cond_5

    move v0, v1

    goto :goto_0

    .line 43
    :cond_5
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Comparable;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Fun$1;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method
