.class public final Lorg/mapdb/EncryptionXTEA;
.super Ljava/lang/Object;
.source "EncryptionXTEA.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ALIGN:I = 0x10

.field private static final DELTA:I = -0x61c88647

.field private static final K:[I


# instance fields
.field private final k0:I

.field private final k1:I

.field private final k10:I

.field private final k11:I

.field private final k12:I

.field private final k13:I

.field private final k14:I

.field private final k15:I

.field private final k16:I

.field private final k17:I

.field private final k18:I

.field private final k19:I

.field private final k2:I

.field private final k20:I

.field private final k21:I

.field private final k22:I

.field private final k23:I

.field private final k24:I

.field private final k25:I

.field private final k26:I

.field private final k27:I

.field private final k28:I

.field private final k29:I

.field private final k3:I

.field private final k30:I

.field private final k31:I

.field private final k4:I

.field private final k5:I

.field private final k6:I

.field private final k7:I

.field private final k8:I

.field private final k9:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/mapdb/EncryptionXTEA;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/EncryptionXTEA;->$assertionsDisabled:Z

    .line 131
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mapdb/EncryptionXTEA;->K:[I

    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    nop

    :array_0
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.80805568E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.81751936E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 12
    .param p1, "password"    # [B

    .prologue
    const/16 v11, 0x20

    const/16 v10, 0x10

    const/4 v9, 0x4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lorg/mapdb/EncryptionXTEA;->getHash([B)[B

    move-result-object v0

    .line 47
    .local v0, "b":[B
    new-array v3, v9, [I

    .line 48
    .local v3, "key":[I
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v2, v10, :cond_0

    .line 49
    div-int/lit8 v6, v2, 0x4

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v7, v0, v2

    shl-int/lit8 v7, v7, 0x18

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aget-byte v8, v0, v1

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/2addr v7, v8

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v8, v0, v2

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aget-byte v8, v0, v1

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    aput v7, v3, v6

    goto :goto_0

    .line 51
    :cond_0
    new-array v4, v11, [I

    .line 52
    .local v4, "r":[I
    const/4 v1, 0x0

    .end local v2    # "i":I
    .restart local v1    # "i":I
    const/4 v5, 0x0

    .local v5, "sum":I
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v11, :cond_1

    .line 53
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    and-int/lit8 v6, v5, 0x3

    aget v6, v3, v6

    add-int/2addr v6, v5

    aput v6, v4, v2

    .line 54
    const v6, 0x61c88647

    sub-int/2addr v5, v6

    .line 55
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    ushr-int/lit8 v6, v5, 0xb

    and-int/lit8 v6, v6, 0x3

    aget v6, v3, v6

    add-int/2addr v6, v5

    aput v6, v4, v1

    goto :goto_1

    .line 57
    :cond_1
    const/4 v6, 0x0

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k0:I

    const/4 v6, 0x1

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k1:I

    const/4 v6, 0x2

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k2:I

    const/4 v6, 0x3

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k3:I

    aget v6, v4, v9

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k4:I

    const/4 v6, 0x5

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k5:I

    const/4 v6, 0x6

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k6:I

    const/4 v6, 0x7

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k7:I

    .line 58
    const/16 v6, 0x8

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k8:I

    const/16 v6, 0x9

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k9:I

    const/16 v6, 0xa

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k10:I

    const/16 v6, 0xb

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k11:I

    const/16 v6, 0xc

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k12:I

    const/16 v6, 0xd

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k13:I

    const/16 v6, 0xe

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k14:I

    const/16 v6, 0xf

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k15:I

    .line 59
    aget v6, v4, v10

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k16:I

    const/16 v6, 0x11

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k17:I

    const/16 v6, 0x12

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k18:I

    const/16 v6, 0x13

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k19:I

    const/16 v6, 0x14

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k20:I

    const/16 v6, 0x15

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k21:I

    const/16 v6, 0x16

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k22:I

    const/16 v6, 0x17

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k23:I

    .line 60
    const/16 v6, 0x18

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k24:I

    const/16 v6, 0x19

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k25:I

    const/16 v6, 0x1a

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k26:I

    const/16 v6, 0x1b

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k27:I

    const/16 v6, 0x1c

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k28:I

    const/16 v6, 0x1d

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k29:I

    const/16 v6, 0x1e

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k30:I

    const/16 v6, 0x1f

    aget v6, v4, v6

    iput v6, p0, Lorg/mapdb/EncryptionXTEA;->k31:I

    .line 61
    return-void
.end method

.method private decryptBlock([B[BI)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "out"    # [B
    .param p3, "off"    # I

    .prologue
    .line 104
    aget-byte v2, p1, p3

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 105
    .local v0, "y":I
    add-int/lit8 v2, p3, 0x4

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p3, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p3, 0x6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p3, 0x7

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 106
    .local v1, "z":I
    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k31:I

    xor-int/2addr v2, v3

    sub-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k30:I

    xor-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 107
    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k29:I

    xor-int/2addr v2, v3

    sub-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k28:I

    xor-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 108
    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k27:I

    xor-int/2addr v2, v3

    sub-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k26:I

    xor-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 109
    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k25:I

    xor-int/2addr v2, v3

    sub-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k24:I

    xor-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 110
    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k23:I

    xor-int/2addr v2, v3

    sub-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k22:I

    xor-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 111
    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k21:I

    xor-int/2addr v2, v3

    sub-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k20:I

    xor-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 112
    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k19:I

    xor-int/2addr v2, v3

    sub-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k18:I

    xor-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 113
    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k17:I

    xor-int/2addr v2, v3

    sub-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k16:I

    xor-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 114
    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k15:I

    xor-int/2addr v2, v3

    sub-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k14:I

    xor-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 115
    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k13:I

    xor-int/2addr v2, v3

    sub-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k12:I

    xor-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 116
    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k11:I

    xor-int/2addr v2, v3

    sub-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k10:I

    xor-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 117
    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k9:I

    xor-int/2addr v2, v3

    sub-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k8:I

    xor-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 118
    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k7:I

    xor-int/2addr v2, v3

    sub-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k6:I

    xor-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 119
    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k5:I

    xor-int/2addr v2, v3

    sub-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k4:I

    xor-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 120
    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k3:I

    xor-int/2addr v2, v3

    sub-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k2:I

    xor-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 121
    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k1:I

    xor-int/2addr v2, v3

    sub-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k0:I

    xor-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 122
    shr-int/lit8 v2, v0, 0x18

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    add-int/lit8 v2, p3, 0x1

    shr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int/lit8 v2, p3, 0x2

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int/lit8 v2, p3, 0x3

    int-to-byte v3, v0

    aput-byte v3, p2, v2

    .line 123
    add-int/lit8 v2, p3, 0x4

    shr-int/lit8 v3, v1, 0x18

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int/lit8 v2, p3, 0x5

    shr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int/lit8 v2, p3, 0x6

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int/lit8 v2, p3, 0x7

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    .line 124
    return-void
.end method

.method private encryptBlock([B[BI)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "out"    # [B
    .param p3, "off"    # I

    .prologue
    .line 81
    aget-byte v2, p1, p3

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 82
    .local v0, "y":I
    add-int/lit8 v2, p3, 0x4

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p3, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p3, 0x6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p3, 0x7

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 83
    .local v1, "z":I
    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k0:I

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k1:I

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 84
    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k2:I

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k3:I

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 85
    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k4:I

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k5:I

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 86
    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k6:I

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k7:I

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 87
    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k8:I

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k9:I

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 88
    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k10:I

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k11:I

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 89
    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k12:I

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k13:I

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 90
    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k14:I

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k15:I

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 91
    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k16:I

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k17:I

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 92
    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k18:I

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k19:I

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 93
    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k20:I

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k21:I

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 94
    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k22:I

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k23:I

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 95
    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k24:I

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k25:I

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 96
    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k26:I

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k27:I

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 97
    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k28:I

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k29:I

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 98
    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    add-int/2addr v2, v1

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k30:I

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x5

    shl-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lorg/mapdb/EncryptionXTEA;->k31:I

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 99
    shr-int/lit8 v2, v0, 0x18

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    add-int/lit8 v2, p3, 0x1

    shr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int/lit8 v2, p3, 0x2

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int/lit8 v2, p3, 0x3

    int-to-byte v3, v0

    aput-byte v3, p2, v2

    .line 100
    add-int/lit8 v2, p3, 0x4

    shr-int/lit8 v3, v1, 0x18

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int/lit8 v2, p3, 0x5

    shr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int/lit8 v2, p3, 0x6

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int/lit8 v2, p3, 0x7

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    .line 101
    return-void
.end method

.method public static getHash([B)[B
    .locals 30
    .param p0, "data"    # [B

    .prologue
    .line 153
    move-object/from16 v0, p0

    array-length v8, v0

    .line 154
    .local v8, "byteLen":I
    add-int/lit8 v27, v8, 0x9

    add-int/lit8 v27, v27, 0x3f

    div-int/lit8 v27, v27, 0x40

    mul-int/lit8 v18, v27, 0x10

    .line 155
    .local v18, "intLen":I
    mul-int/lit8 v27, v18, 0x4

    move/from16 v0, v27

    new-array v9, v0, [B

    .line 156
    .local v9, "bytes":[B
    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v9, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    const/16 v27, -0x80

    aput-byte v27, v9, v8

    .line 159
    move/from16 v0, v18

    new-array v7, v0, [I

    .line 160
    .local v7, "buff":[I
    const/16 v17, 0x0

    .local v17, "i":I
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 161
    move/from16 v0, v17

    invoke-static {v9, v0}, Lorg/mapdb/EncryptionXTEA;->readInt([BI)I

    move-result v27

    aput v27, v7, v19

    .line 160
    add-int/lit8 v17, v17, 0x4

    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 163
    :cond_0
    add-int/lit8 v27, v18, -0x2

    ushr-int/lit8 v28, v8, 0x1d

    aput v28, v7, v27

    .line 164
    add-int/lit8 v27, v18, -0x1

    shl-int/lit8 v28, v8, 0x3

    aput v28, v7, v27

    .line 165
    const/16 v27, 0x40

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .line 166
    .local v25, "w":[I
    const/16 v27, 0x8

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    .line 168
    .local v16, "hh":[I
    const/4 v6, 0x0

    .local v6, "block":I
    :goto_1
    move/from16 v0, v18

    if-ge v6, v0, :cond_3

    .line 169
    add-int/lit8 v27, v6, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x10

    move/from16 v0, v27

    move-object/from16 v1, v25

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-static {v7, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    const/16 v17, 0x10

    :goto_2
    const/16 v27, 0x40

    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    .line 171
    add-int/lit8 v27, v17, -0x2

    aget v26, v25, v27

    .line 172
    .local v26, "x":I
    const/16 v27, 0x11

    invoke-static/range {v26 .. v27}, Lorg/mapdb/EncryptionXTEA;->rot(II)I

    move-result v27

    const/16 v28, 0x13

    move/from16 v0, v26

    move/from16 v1, v28

    invoke-static {v0, v1}, Lorg/mapdb/EncryptionXTEA;->rot(II)I

    move-result v28

    xor-int v27, v27, v28

    ushr-int/lit8 v28, v26, 0xa

    xor-int v24, v27, v28

    .line 173
    .local v24, "theta1":I
    add-int/lit8 v27, v17, -0xf

    aget v26, v25, v27

    .line 174
    const/16 v27, 0x7

    invoke-static/range {v26 .. v27}, Lorg/mapdb/EncryptionXTEA;->rot(II)I

    move-result v27

    const/16 v28, 0x12

    move/from16 v0, v26

    move/from16 v1, v28

    invoke-static {v0, v1}, Lorg/mapdb/EncryptionXTEA;->rot(II)I

    move-result v28

    xor-int v27, v27, v28

    ushr-int/lit8 v28, v26, 0x3

    xor-int v23, v27, v28

    .line 175
    .local v23, "theta0":I
    add-int/lit8 v27, v17, -0x7

    aget v27, v25, v27

    add-int v27, v27, v24

    add-int v27, v27, v23

    add-int/lit8 v28, v17, -0x10

    aget v28, v25, v28

    add-int v27, v27, v28

    aput v27, v25, v17

    .line 170
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 178
    .end local v23    # "theta0":I
    .end local v24    # "theta1":I
    .end local v26    # "x":I
    :cond_1
    const/16 v27, 0x0

    aget v4, v16, v27

    .local v4, "a":I
    const/16 v27, 0x1

    aget v5, v16, v27

    .local v5, "b":I
    const/16 v27, 0x2

    aget v10, v16, v27

    .local v10, "c":I
    const/16 v27, 0x3

    aget v11, v16, v27

    .line 179
    .local v11, "d":I
    const/16 v27, 0x4

    aget v12, v16, v27

    .local v12, "e":I
    const/16 v27, 0x5

    aget v13, v16, v27

    .local v13, "f":I
    const/16 v27, 0x6

    aget v14, v16, v27

    .local v14, "g":I
    const/16 v27, 0x7

    aget v15, v16, v27

    .line 181
    .local v15, "h":I
    const/16 v17, 0x0

    :goto_3
    const/16 v27, 0x40

    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    .line 182
    const/16 v27, 0x6

    move/from16 v0, v27

    invoke-static {v12, v0}, Lorg/mapdb/EncryptionXTEA;->rot(II)I

    move-result v27

    const/16 v28, 0xb

    move/from16 v0, v28

    invoke-static {v12, v0}, Lorg/mapdb/EncryptionXTEA;->rot(II)I

    move-result v28

    xor-int v27, v27, v28

    const/16 v28, 0x19

    move/from16 v0, v28

    invoke-static {v12, v0}, Lorg/mapdb/EncryptionXTEA;->rot(II)I

    move-result v28

    xor-int v27, v27, v28

    add-int v27, v27, v15

    and-int v28, v12, v13

    xor-int/lit8 v29, v12, -0x1

    and-int v29, v29, v14

    xor-int v28, v28, v29

    add-int v27, v27, v28

    sget-object v28, Lorg/mapdb/EncryptionXTEA;->K:[I

    aget v28, v28, v17

    add-int v27, v27, v28

    aget v28, v25, v17

    add-int v21, v27, v28

    .line 184
    .local v21, "t1":I
    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-static {v4, v0}, Lorg/mapdb/EncryptionXTEA;->rot(II)I

    move-result v27

    const/16 v28, 0xd

    move/from16 v0, v28

    invoke-static {v4, v0}, Lorg/mapdb/EncryptionXTEA;->rot(II)I

    move-result v28

    xor-int v27, v27, v28

    const/16 v28, 0x16

    move/from16 v0, v28

    invoke-static {v4, v0}, Lorg/mapdb/EncryptionXTEA;->rot(II)I

    move-result v28

    xor-int v27, v27, v28

    and-int v28, v4, v5

    and-int v29, v4, v10

    xor-int v28, v28, v29

    and-int v29, v5, v10

    xor-int v28, v28, v29

    add-int v22, v27, v28

    .line 186
    .local v22, "t2":I
    move v15, v14

    .line 187
    move v14, v13

    .line 188
    move v13, v12

    .line 189
    add-int v12, v11, v21

    .line 190
    move v11, v10

    .line 191
    move v10, v5

    .line 192
    move v5, v4

    .line 193
    add-int v4, v21, v22

    .line 181
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 195
    .end local v21    # "t1":I
    .end local v22    # "t2":I
    :cond_2
    const/16 v27, 0x0

    aget v28, v16, v27

    add-int v28, v28, v4

    aput v28, v16, v27

    .line 196
    const/16 v27, 0x1

    aget v28, v16, v27

    add-int v28, v28, v5

    aput v28, v16, v27

    .line 197
    const/16 v27, 0x2

    aget v28, v16, v27

    add-int v28, v28, v10

    aput v28, v16, v27

    .line 198
    const/16 v27, 0x3

    aget v28, v16, v27

    add-int v28, v28, v11

    aput v28, v16, v27

    .line 199
    const/16 v27, 0x4

    aget v28, v16, v27

    add-int v28, v28, v12

    aput v28, v16, v27

    .line 200
    const/16 v27, 0x5

    aget v28, v16, v27

    add-int v28, v28, v13

    aput v28, v16, v27

    .line 201
    const/16 v27, 0x6

    aget v28, v16, v27

    add-int v28, v28, v14

    aput v28, v16, v27

    .line 202
    const/16 v27, 0x7

    aget v28, v16, v27

    add-int v28, v28, v15

    aput v28, v16, v27

    .line 168
    add-int/lit8 v6, v6, 0x10

    goto/16 :goto_1

    .line 204
    .end local v4    # "a":I
    .end local v5    # "b":I
    .end local v10    # "c":I
    .end local v11    # "d":I
    .end local v12    # "e":I
    .end local v13    # "f":I
    .end local v14    # "g":I
    .end local v15    # "h":I
    :cond_3
    const/16 v27, 0x20

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 205
    .local v20, "result":[B
    const/16 v17, 0x0

    :goto_4
    const/16 v27, 0x8

    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    .line 206
    mul-int/lit8 v27, v17, 0x4

    aget v28, v16, v17

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lorg/mapdb/EncryptionXTEA;->writeInt([BII)V

    .line 205
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 208
    :cond_4
    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 209
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-static {v7, v0}, Ljava/util/Arrays;->fill([II)V

    .line 210
    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 211
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-static {v9, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 212
    return-object v20

    .line 166
    nop

    :array_0
    .array-data 4
        0x6a09e667
        -0x4498517b
        0x3c6ef372
        -0x5ab00ac6
        0x510e527f
        -0x64fa9774
        0x1f83d9ab
        0x5be0cd19
    .end array-data
.end method

.method private static readInt([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "i"    # I

    .prologue
    .line 220
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private static rot(II)I
    .locals 2
    .param p0, "i"    # I
    .param p1, "count"    # I

    .prologue
    .line 216
    rsub-int/lit8 v0, p1, 0x20

    shl-int v0, p0, v0

    ushr-int v1, p0, p1

    or-int/2addr v0, v1

    return v0
.end method

.method private static writeInt([BII)V
    .locals 2
    .param p0, "b"    # [B
    .param p1, "i"    # I
    .param p2, "value"    # I

    .prologue
    .line 225
    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 226
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 227
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 228
    add-int/lit8 v0, p1, 0x3

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 229
    return-void
.end method


# virtual methods
.method public decrypt([BII)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 73
    sget-boolean v1, Lorg/mapdb/EncryptionXTEA;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    rem-int/lit8 v1, p3, 0x10

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unaligned len "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 75
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 76
    invoke-direct {p0, p1, p1, v0}, Lorg/mapdb/EncryptionXTEA;->decryptBlock([B[BI)V

    .line 75
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 78
    :cond_1
    return-void
.end method

.method public encrypt([BII)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 65
    sget-boolean v1, Lorg/mapdb/EncryptionXTEA;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    rem-int/lit8 v1, p3, 0x10

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unaligned len "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 67
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 68
    invoke-direct {p0, p1, p1, v0}, Lorg/mapdb/EncryptionXTEA;->encryptBlock([B[BI)V

    .line 67
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 70
    :cond_1
    return-void
.end method
