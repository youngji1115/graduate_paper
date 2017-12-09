.class final Lorg/mapdb/Fun$7;
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
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 724
    check-cast p1, [B

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [B

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Fun$7;->compare([B[B)I

    move-result v0

    return v0
.end method

.method public compare([B[B)I
    .locals 4
    .param p1, "o1"    # [B
    .param p2, "o2"    # [B

    .prologue
    .line 727
    if-ne p1, p2, :cond_0

    const/4 v2, 0x0

    .line 736
    :goto_0
    return v2

    .line 728
    :cond_0
    array-length v2, p1

    array-length v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 729
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 730
    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-ne v2, v3, :cond_1

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 732
    :cond_1
    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-le v2, v3, :cond_2

    .line 733
    const/4 v2, 0x1

    goto :goto_0

    .line 734
    :cond_2
    const/4 v2, -0x1

    goto :goto_0

    .line 736
    :cond_3
    array-length v2, p1

    array-length v3, p2

    invoke-static {v2, v3}, Lorg/mapdb/Fun;->access$000(II)I

    move-result v2

    goto :goto_0
.end method
