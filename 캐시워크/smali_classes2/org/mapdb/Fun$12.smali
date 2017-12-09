.class final Lorg/mapdb/Fun$12;
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
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 807
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Fun$12;->compare([Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public compare([Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 6
    .param p1, "o1"    # [Ljava/lang/Object;
    .param p2, "o2"    # [Ljava/lang/Object;

    .prologue
    .line 810
    if-ne p1, p2, :cond_1

    const/4 v2, 0x0

    .line 817
    :cond_0
    :goto_0
    return v2

    .line 811
    :cond_1
    array-length v3, p1

    array-length v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 812
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 813
    sget-object v3, Lorg/mapdb/Fun;->COMPARATOR:Ljava/util/Comparator;

    aget-object v4, p1, v0

    aget-object v5, p2, v0

    invoke-interface {v3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 814
    .local v2, "r":I
    if-nez v2, :cond_0

    .line 812
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 817
    .end local v2    # "r":I
    :cond_2
    array-length v3, p1

    array-length v4, p2

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->access$000(II)I

    move-result v2

    goto :goto_0
.end method
