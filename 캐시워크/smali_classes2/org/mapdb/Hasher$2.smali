.class final Lorg/mapdb/Hasher$2;
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
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, [B

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [B

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Hasher$2;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public equals([B[B)Z
    .locals 1
    .param p1, "k1"    # [B
    .param p2, "k2"    # [B

    .prologue
    .line 54
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, [B

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/mapdb/Hasher$2;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public final hashCode([B)I
    .locals 1
    .param p1, "k"    # [B

    .prologue
    .line 49
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
