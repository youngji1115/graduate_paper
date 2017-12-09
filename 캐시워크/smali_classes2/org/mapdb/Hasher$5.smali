.class final Lorg/mapdb/Hasher$5;
.super Ljava/lang/Object;
.source "Hasher.java"

# interfaces
.implements Lorg/mapdb/Hasher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Hasher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mapdb/Hasher",
        "<[J>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p1, [J

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [J

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Hasher$5;->equals([J[J)Z

    move-result v0

    return v0
.end method

.method public equals([J[J)Z
    .locals 1
    .param p1, "k1"    # [J
    .param p2, "k2"    # [J

    .prologue
    .line 90
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p1, [J

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/mapdb/Hasher$5;->hashCode([J)I

    move-result v0

    return v0
.end method

.method public final hashCode([J)I
    .locals 1
    .param p1, "k"    # [J

    .prologue
    .line 85
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0
.end method
