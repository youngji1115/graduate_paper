.class public Lorg/mapdb/SerializerBase;
.super Ljava/lang/Object;
.source "SerializerBase.java"

# interfaces
.implements Lorg/mapdb/Serializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/SerializerBase$Header;,
        Lorg/mapdb/SerializerBase$singletons;,
        Lorg/mapdb/SerializerBase$HeaderMapDB;,
        Lorg/mapdb/SerializerBase$FastArrayList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mapdb/Serializer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final EMPTY_STRING:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/mapdb/SerializerBase;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/SerializerBase;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1902
    return-void
.end method

.method public static assertSerializable(Ljava/lang/Object;)V
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 1480
    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/io/Serializable;

    if-nez v0, :cond_0

    sget-object v0, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1482
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not serializable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1484
    :cond_0
    return-void
.end method

.method protected static booleanToByteArray([Z)[B
    .locals 14
    .param p0, "bool"    # [Z

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1738
    array-length v4, p0

    .line 1739
    .local v4, "boolLen":I
    rem-int/lit8 v7, v4, 0x8

    .line 1740
    .local v7, "mod8":I
    div-int/lit8 v13, v4, 0x8

    rem-int/lit8 v10, v4, 0x8

    if-nez v10, :cond_0

    move v10, v11

    :goto_0
    add-int/2addr v10, v13

    new-array v3, v10, [B

    .line 1742
    .local v3, "boolBytes":[B
    if-nez v7, :cond_1

    move v5, v12

    .line 1743
    .local v5, "isFlushWith8":Z
    :goto_1
    if-eqz v5, :cond_2

    array-length v6, v3

    .line 1744
    .local v6, "length":I
    :goto_2
    const/4 v8, 0x0

    .line 1746
    .local v8, "x":I
    const/4 v1, 0x0

    .local v1, "boolByteIndex":I
    move v2, v1

    .end local v1    # "boolByteIndex":I
    .local v2, "boolByteIndex":I
    move v9, v8

    .end local v8    # "x":I
    .local v9, "x":I
    :goto_3
    if-ge v2, v6, :cond_b

    .line 1747
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v10, p0, v9

    if-eqz v10, :cond_3

    move v10, v12

    :goto_4
    shl-int/lit8 v13, v10, 0x0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "x":I
    .restart local v9    # "x":I
    aget-boolean v10, p0, v8

    if-eqz v10, :cond_4

    move v10, v12

    :goto_5
    shl-int/lit8 v10, v10, 0x1

    or-int/2addr v13, v10

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v10, p0, v9

    if-eqz v10, :cond_5

    move v10, v12

    :goto_6
    shl-int/lit8 v10, v10, 0x2

    or-int/2addr v13, v10

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "x":I
    .restart local v9    # "x":I
    aget-boolean v10, p0, v8

    if-eqz v10, :cond_6

    move v10, v12

    :goto_7
    shl-int/lit8 v10, v10, 0x3

    or-int/2addr v13, v10

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v10, p0, v9

    if-eqz v10, :cond_7

    move v10, v12

    :goto_8
    shl-int/lit8 v10, v10, 0x4

    or-int/2addr v13, v10

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "x":I
    .restart local v9    # "x":I
    aget-boolean v10, p0, v8

    if-eqz v10, :cond_8

    move v10, v12

    :goto_9
    shl-int/lit8 v10, v10, 0x5

    or-int/2addr v13, v10

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v10, p0, v9

    if-eqz v10, :cond_9

    move v10, v12

    :goto_a
    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v13, v10

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "x":I
    .restart local v9    # "x":I
    aget-boolean v10, p0, v8

    if-eqz v10, :cond_a

    move v10, v12

    :goto_b
    shl-int/lit8 v10, v10, 0x7

    or-int/2addr v10, v13

    int-to-byte v0, v10

    .line 1755
    .local v0, "b":B
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "boolByteIndex":I
    .restart local v1    # "boolByteIndex":I
    aput-byte v0, v3, v2

    move v2, v1

    .line 1756
    .end local v1    # "boolByteIndex":I
    .restart local v2    # "boolByteIndex":I
    goto :goto_3

    .end local v0    # "b":B
    .end local v2    # "boolByteIndex":I
    .end local v3    # "boolBytes":[B
    .end local v5    # "isFlushWith8":Z
    .end local v6    # "length":I
    .end local v9    # "x":I
    :cond_0
    move v10, v12

    .line 1740
    goto :goto_0

    .restart local v3    # "boolBytes":[B
    :cond_1
    move v5, v11

    .line 1742
    goto :goto_1

    .line 1743
    .restart local v5    # "isFlushWith8":Z
    :cond_2
    array-length v10, v3

    add-int/lit8 v6, v10, -0x1

    goto :goto_2

    .restart local v2    # "boolByteIndex":I
    .restart local v6    # "length":I
    .restart local v8    # "x":I
    :cond_3
    move v10, v11

    .line 1747
    goto :goto_4

    .end local v8    # "x":I
    .restart local v9    # "x":I
    :cond_4
    move v10, v11

    goto :goto_5

    .end local v9    # "x":I
    .restart local v8    # "x":I
    :cond_5
    move v10, v11

    goto :goto_6

    .end local v8    # "x":I
    .restart local v9    # "x":I
    :cond_6
    move v10, v11

    goto :goto_7

    .end local v9    # "x":I
    .restart local v8    # "x":I
    :cond_7
    move v10, v11

    goto :goto_8

    .end local v8    # "x":I
    .restart local v9    # "x":I
    :cond_8
    move v10, v11

    goto :goto_9

    .end local v9    # "x":I
    .restart local v8    # "x":I
    :cond_9
    move v10, v11

    goto :goto_a

    .end local v8    # "x":I
    .restart local v9    # "x":I
    :cond_a
    move v10, v11

    goto :goto_b

    .line 1757
    :cond_b
    if-nez v5, :cond_30

    .line 1758
    const/4 v0, 0x0

    .line 1760
    .restart local v0    # "b":B
    packed-switch v7, :pswitch_data_0

    move v8, v9

    .line 1850
    .end local v9    # "x":I
    .restart local v8    # "x":I
    :goto_c
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "boolByteIndex":I
    .restart local v1    # "boolByteIndex":I
    aput-byte v0, v3, v2

    .line 1853
    .end local v0    # "b":B
    :goto_d
    return-object v3

    .line 1762
    .end local v1    # "boolByteIndex":I
    .end local v8    # "x":I
    .restart local v0    # "b":B
    .restart local v2    # "boolByteIndex":I
    .restart local v9    # "x":I
    :pswitch_0
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v10, p0, v9

    if-eqz v10, :cond_c

    :goto_e
    shl-int/lit8 v10, v12, 0x0

    or-int/2addr v10, v0

    int-to-byte v0, v10

    .line 1763
    goto :goto_c

    :cond_c
    move v12, v11

    .line 1762
    goto :goto_e

    .line 1765
    .end local v8    # "x":I
    .restart local v9    # "x":I
    :pswitch_1
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v10, p0, v9

    if-eqz v10, :cond_d

    move v10, v12

    :goto_f
    shl-int/lit8 v10, v10, 0x0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "x":I
    .restart local v9    # "x":I
    aget-boolean v13, p0, v8

    if-eqz v13, :cond_e

    :goto_10
    shl-int/lit8 v11, v12, 0x1

    or-int/2addr v10, v11

    or-int/2addr v10, v0

    int-to-byte v0, v10

    move v8, v9

    .line 1767
    .end local v9    # "x":I
    .restart local v8    # "x":I
    goto :goto_c

    :cond_d
    move v10, v11

    .line 1765
    goto :goto_f

    .end local v8    # "x":I
    .restart local v9    # "x":I
    :cond_e
    move v12, v11

    goto :goto_10

    .line 1769
    :pswitch_2
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v10, p0, v9

    if-eqz v10, :cond_f

    move v10, v12

    :goto_11
    shl-int/lit8 v13, v10, 0x0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "x":I
    .restart local v9    # "x":I
    aget-boolean v10, p0, v8

    if-eqz v10, :cond_10

    move v10, v12

    :goto_12
    shl-int/lit8 v10, v10, 0x1

    or-int/2addr v10, v13

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v13, p0, v9

    if-eqz v13, :cond_11

    :goto_13
    shl-int/lit8 v11, v12, 0x2

    or-int/2addr v10, v11

    or-int/2addr v10, v0

    int-to-byte v0, v10

    .line 1772
    goto :goto_c

    :cond_f
    move v10, v11

    .line 1769
    goto :goto_11

    .end local v8    # "x":I
    .restart local v9    # "x":I
    :cond_10
    move v10, v11

    goto :goto_12

    .end local v9    # "x":I
    .restart local v8    # "x":I
    :cond_11
    move v12, v11

    goto :goto_13

    .line 1774
    .end local v8    # "x":I
    .restart local v9    # "x":I
    :pswitch_3
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v10, p0, v9

    if-eqz v10, :cond_12

    move v10, v12

    :goto_14
    shl-int/lit8 v13, v10, 0x0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "x":I
    .restart local v9    # "x":I
    aget-boolean v10, p0, v8

    if-eqz v10, :cond_13

    move v10, v12

    :goto_15
    shl-int/lit8 v10, v10, 0x1

    or-int/2addr v13, v10

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v10, p0, v9

    if-eqz v10, :cond_14

    move v10, v12

    :goto_16
    shl-int/lit8 v10, v10, 0x2

    or-int/2addr v10, v13

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "x":I
    .restart local v9    # "x":I
    aget-boolean v13, p0, v8

    if-eqz v13, :cond_15

    :goto_17
    shl-int/lit8 v11, v12, 0x3

    or-int/2addr v10, v11

    or-int/2addr v10, v0

    int-to-byte v0, v10

    move v8, v9

    .line 1778
    .end local v9    # "x":I
    .restart local v8    # "x":I
    goto :goto_c

    :cond_12
    move v10, v11

    .line 1774
    goto :goto_14

    .end local v8    # "x":I
    .restart local v9    # "x":I
    :cond_13
    move v10, v11

    goto :goto_15

    .end local v9    # "x":I
    .restart local v8    # "x":I
    :cond_14
    move v10, v11

    goto :goto_16

    .end local v8    # "x":I
    .restart local v9    # "x":I
    :cond_15
    move v12, v11

    goto :goto_17

    .line 1780
    :pswitch_4
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v10, p0, v9

    if-eqz v10, :cond_16

    move v10, v12

    :goto_18
    shl-int/lit8 v13, v10, 0x0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "x":I
    .restart local v9    # "x":I
    aget-boolean v10, p0, v8

    if-eqz v10, :cond_17

    move v10, v12

    :goto_19
    shl-int/lit8 v10, v10, 0x1

    or-int/2addr v13, v10

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v10, p0, v9

    if-eqz v10, :cond_18

    move v10, v12

    :goto_1a
    shl-int/lit8 v10, v10, 0x2

    or-int/2addr v13, v10

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "x":I
    .restart local v9    # "x":I
    aget-boolean v10, p0, v8

    if-eqz v10, :cond_19

    move v10, v12

    :goto_1b
    shl-int/lit8 v10, v10, 0x3

    or-int/2addr v10, v13

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v13, p0, v9

    if-eqz v13, :cond_1a

    :goto_1c
    shl-int/lit8 v11, v12, 0x4

    or-int/2addr v10, v11

    or-int/2addr v10, v0

    int-to-byte v0, v10

    .line 1785
    goto/16 :goto_c

    :cond_16
    move v10, v11

    .line 1780
    goto :goto_18

    .end local v8    # "x":I
    .restart local v9    # "x":I
    :cond_17
    move v10, v11

    goto :goto_19

    .end local v9    # "x":I
    .restart local v8    # "x":I
    :cond_18
    move v10, v11

    goto :goto_1a

    .end local v8    # "x":I
    .restart local v9    # "x":I
    :cond_19
    move v10, v11

    goto :goto_1b

    .end local v9    # "x":I
    .restart local v8    # "x":I
    :cond_1a
    move v12, v11

    goto :goto_1c

    .line 1787
    .end local v8    # "x":I
    .restart local v9    # "x":I
    :pswitch_5
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v10, p0, v9

    if-eqz v10, :cond_1b

    move v10, v12

    :goto_1d
    shl-int/lit8 v13, v10, 0x0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "x":I
    .restart local v9    # "x":I
    aget-boolean v10, p0, v8

    if-eqz v10, :cond_1c

    move v10, v12

    :goto_1e
    shl-int/lit8 v10, v10, 0x1

    or-int/2addr v13, v10

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v10, p0, v9

    if-eqz v10, :cond_1d

    move v10, v12

    :goto_1f
    shl-int/lit8 v10, v10, 0x2

    or-int/2addr v13, v10

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "x":I
    .restart local v9    # "x":I
    aget-boolean v10, p0, v8

    if-eqz v10, :cond_1e

    move v10, v12

    :goto_20
    shl-int/lit8 v10, v10, 0x3

    or-int/2addr v13, v10

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v10, p0, v9

    if-eqz v10, :cond_1f

    move v10, v12

    :goto_21
    shl-int/lit8 v10, v10, 0x4

    or-int/2addr v10, v13

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "x":I
    .restart local v9    # "x":I
    aget-boolean v13, p0, v8

    if-eqz v13, :cond_20

    :goto_22
    shl-int/lit8 v11, v12, 0x5

    or-int/2addr v10, v11

    or-int/2addr v10, v0

    int-to-byte v0, v10

    move v8, v9

    .line 1793
    .end local v9    # "x":I
    .restart local v8    # "x":I
    goto/16 :goto_c

    :cond_1b
    move v10, v11

    .line 1787
    goto :goto_1d

    .end local v8    # "x":I
    .restart local v9    # "x":I
    :cond_1c
    move v10, v11

    goto :goto_1e

    .end local v9    # "x":I
    .restart local v8    # "x":I
    :cond_1d
    move v10, v11

    goto :goto_1f

    .end local v8    # "x":I
    .restart local v9    # "x":I
    :cond_1e
    move v10, v11

    goto :goto_20

    .end local v9    # "x":I
    .restart local v8    # "x":I
    :cond_1f
    move v10, v11

    goto :goto_21

    .end local v8    # "x":I
    .restart local v9    # "x":I
    :cond_20
    move v12, v11

    goto :goto_22

    .line 1795
    :pswitch_6
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v10, p0, v9

    if-eqz v10, :cond_21

    move v10, v12

    :goto_23
    shl-int/lit8 v13, v10, 0x0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "x":I
    .restart local v9    # "x":I
    aget-boolean v10, p0, v8

    if-eqz v10, :cond_22

    move v10, v12

    :goto_24
    shl-int/lit8 v10, v10, 0x1

    or-int/2addr v13, v10

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v10, p0, v9

    if-eqz v10, :cond_23

    move v10, v12

    :goto_25
    shl-int/lit8 v10, v10, 0x2

    or-int/2addr v13, v10

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "x":I
    .restart local v9    # "x":I
    aget-boolean v10, p0, v8

    if-eqz v10, :cond_24

    move v10, v12

    :goto_26
    shl-int/lit8 v10, v10, 0x3

    or-int/2addr v13, v10

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v10, p0, v9

    if-eqz v10, :cond_25

    move v10, v12

    :goto_27
    shl-int/lit8 v10, v10, 0x4

    or-int/2addr v13, v10

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "x":I
    .restart local v9    # "x":I
    aget-boolean v10, p0, v8

    if-eqz v10, :cond_26

    move v10, v12

    :goto_28
    shl-int/lit8 v10, v10, 0x5

    or-int/2addr v10, v13

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v13, p0, v9

    if-eqz v13, :cond_27

    :goto_29
    shl-int/lit8 v11, v12, 0x6

    or-int/2addr v10, v11

    or-int/2addr v10, v0

    int-to-byte v0, v10

    .line 1802
    goto/16 :goto_c

    :cond_21
    move v10, v11

    .line 1795
    goto :goto_23

    .end local v8    # "x":I
    .restart local v9    # "x":I
    :cond_22
    move v10, v11

    goto :goto_24

    .end local v9    # "x":I
    .restart local v8    # "x":I
    :cond_23
    move v10, v11

    goto :goto_25

    .end local v8    # "x":I
    .restart local v9    # "x":I
    :cond_24
    move v10, v11

    goto :goto_26

    .end local v9    # "x":I
    .restart local v8    # "x":I
    :cond_25
    move v10, v11

    goto :goto_27

    .end local v8    # "x":I
    .restart local v9    # "x":I
    :cond_26
    move v10, v11

    goto :goto_28

    .end local v9    # "x":I
    .restart local v8    # "x":I
    :cond_27
    move v12, v11

    goto :goto_29

    .line 1804
    .end local v8    # "x":I
    .restart local v9    # "x":I
    :pswitch_7
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v10, p0, v9

    if-eqz v10, :cond_28

    move v10, v12

    :goto_2a
    shl-int/lit8 v13, v10, 0x0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "x":I
    .restart local v9    # "x":I
    aget-boolean v10, p0, v8

    if-eqz v10, :cond_29

    move v10, v12

    :goto_2b
    shl-int/lit8 v10, v10, 0x1

    or-int/2addr v13, v10

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v10, p0, v9

    if-eqz v10, :cond_2a

    move v10, v12

    :goto_2c
    shl-int/lit8 v10, v10, 0x2

    or-int/2addr v13, v10

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "x":I
    .restart local v9    # "x":I
    aget-boolean v10, p0, v8

    if-eqz v10, :cond_2b

    move v10, v12

    :goto_2d
    shl-int/lit8 v10, v10, 0x3

    or-int/2addr v13, v10

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v10, p0, v9

    if-eqz v10, :cond_2c

    move v10, v12

    :goto_2e
    shl-int/lit8 v10, v10, 0x4

    or-int/2addr v13, v10

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "x":I
    .restart local v9    # "x":I
    aget-boolean v10, p0, v8

    if-eqz v10, :cond_2d

    move v10, v12

    :goto_2f
    shl-int/lit8 v10, v10, 0x5

    or-int/2addr v13, v10

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "x":I
    .restart local v8    # "x":I
    aget-boolean v10, p0, v9

    if-eqz v10, :cond_2e

    move v10, v12

    :goto_30
    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v10, v13

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "x":I
    .restart local v9    # "x":I
    aget-boolean v13, p0, v8

    if-eqz v13, :cond_2f

    :goto_31
    shl-int/lit8 v11, v12, 0x7

    or-int/2addr v10, v11

    or-int/2addr v10, v0

    int-to-byte v0, v10

    move v8, v9

    .end local v9    # "x":I
    .restart local v8    # "x":I
    goto/16 :goto_c

    :cond_28
    move v10, v11

    goto :goto_2a

    .end local v8    # "x":I
    .restart local v9    # "x":I
    :cond_29
    move v10, v11

    goto :goto_2b

    .end local v9    # "x":I
    .restart local v8    # "x":I
    :cond_2a
    move v10, v11

    goto :goto_2c

    .end local v8    # "x":I
    .restart local v9    # "x":I
    :cond_2b
    move v10, v11

    goto :goto_2d

    .end local v9    # "x":I
    .restart local v8    # "x":I
    :cond_2c
    move v10, v11

    goto :goto_2e

    .end local v8    # "x":I
    .restart local v9    # "x":I
    :cond_2d
    move v10, v11

    goto :goto_2f

    .end local v9    # "x":I
    .restart local v8    # "x":I
    :cond_2e
    move v10, v11

    goto :goto_30

    .end local v8    # "x":I
    .restart local v9    # "x":I
    :cond_2f
    move v12, v11

    goto :goto_31

    .end local v0    # "b":B
    :cond_30
    move v1, v2

    .end local v2    # "boolByteIndex":I
    .restart local v1    # "boolByteIndex":I
    move v8, v9

    .end local v9    # "x":I
    .restart local v8    # "x":I
    goto/16 :goto_d

    .line 1760
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private deserialize2(ILjava/io/DataInput;)Ljava/lang/Object;
    .locals 8
    .param p1, "head"    # I
    .param p2, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1224
    packed-switch p1, :pswitch_data_0

    .line 1342
    :pswitch_0
    const/4 v2, 0x0

    .line 1346
    :cond_0
    :goto_0
    return-object v2

    .line 1226
    :pswitch_1
    invoke-static {p2}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v4

    new-array v0, v4, [B

    .line 1227
    .local v0, "b":[B
    invoke-interface {p2}, Ljava/io/DataInput;->readByte()B

    move-result v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 1228
    move-object v2, v0

    .line 1229
    .local v2, "ret":[B
    goto :goto_0

    .line 1231
    .end local v0    # "b":[B
    .end local v2    # "ret":[B
    :pswitch_2
    invoke-direct {p0, p2}, Lorg/mapdb/SerializerBase;->deserializeArrayByte(Ljava/io/DataInput;)[B

    move-result-object v2

    .line 1232
    .restart local v2    # "ret":[B
    goto :goto_0

    .line 1235
    .end local v2    # "ret":[B
    :pswitch_3
    invoke-static {p2}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v4

    invoke-static {v4, p2}, Lorg/mapdb/SerializerBase;->readBooleanArray(ILjava/io/DataInput;)[Z

    move-result-object v2

    .line 1236
    .local v2, "ret":[Z
    goto :goto_0

    .line 1238
    .end local v2    # "ret":[Z
    :pswitch_4
    invoke-static {p2}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v3

    .line 1239
    .local v3, "size":I
    new-array v2, v3, [S

    .line 1240
    .local v2, "ret":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    move-object v4, v2

    check-cast v4, [S

    check-cast v4, [S

    invoke-interface {p2}, Ljava/io/DataInput;->readShort()S

    move-result v5

    aput-short v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1243
    .end local v1    # "i":I
    .end local v2    # "ret":[S
    .end local v3    # "size":I
    :pswitch_5
    invoke-static {p2}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v3

    .line 1244
    .restart local v3    # "size":I
    new-array v2, v3, [D

    .line 1245
    .local v2, "ret":[D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v3, :cond_0

    move-object v4, v2

    check-cast v4, [D

    check-cast v4, [D

    invoke-interface {p2}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v6

    aput-wide v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1248
    .end local v1    # "i":I
    .end local v2    # "ret":[D
    .end local v3    # "size":I
    :pswitch_6
    invoke-static {p2}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v3

    .line 1249
    .restart local v3    # "size":I
    new-array v2, v3, [F

    .line 1250
    .local v2, "ret":[F
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v3, :cond_0

    move-object v4, v2

    check-cast v4, [F

    check-cast v4, [F

    invoke-interface {p2}, Ljava/io/DataInput;->readFloat()F

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1253
    .end local v1    # "i":I
    .end local v2    # "ret":[F
    .end local v3    # "size":I
    :pswitch_7
    invoke-static {p2}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v3

    .line 1254
    .restart local v3    # "size":I
    new-array v2, v3, [C

    .line 1255
    .local v2, "ret":[C
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v3, :cond_0

    move-object v4, v2

    check-cast v4, [C

    check-cast v4, [C

    invoke-interface {p2}, Ljava/io/DataInput;->readChar()C

    move-result v5

    aput-char v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1259
    .end local v1    # "i":I
    .end local v2    # "ret":[C
    .end local v3    # "size":I
    :pswitch_8
    invoke-static {p2}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v3

    .line 1260
    .restart local v3    # "size":I
    new-array v2, v3, [I

    .line 1261
    .local v2, "ret":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v3, :cond_0

    move-object v4, v2

    check-cast v4, [I

    check-cast v4, [I

    invoke-interface {p2}, Ljava/io/DataInput;->readByte()B

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1264
    .end local v1    # "i":I
    .end local v2    # "ret":[I
    .end local v3    # "size":I
    :pswitch_9
    invoke-static {p2}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v3

    .line 1265
    .restart local v3    # "size":I
    new-array v2, v3, [I

    .line 1266
    .restart local v2    # "ret":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, v3, :cond_0

    move-object v4, v2

    check-cast v4, [I

    check-cast v4, [I

    invoke-interface {p2}, Ljava/io/DataInput;->readShort()S

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1269
    .end local v1    # "i":I
    .end local v2    # "ret":[I
    .end local v3    # "size":I
    :pswitch_a
    invoke-static {p2}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v3

    .line 1270
    .restart local v3    # "size":I
    new-array v2, v3, [I

    .line 1271
    .restart local v2    # "ret":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    if-ge v1, v3, :cond_0

    move-object v4, v2

    check-cast v4, [I

    check-cast v4, [I

    invoke-static {p2}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1274
    .end local v1    # "i":I
    .end local v2    # "ret":[I
    .end local v3    # "size":I
    :pswitch_b
    invoke-static {p2}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v3

    .line 1275
    .restart local v3    # "size":I
    new-array v2, v3, [I

    .line 1276
    .restart local v2    # "ret":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    if-ge v1, v3, :cond_0

    move-object v4, v2

    check-cast v4, [I

    check-cast v4, [I

    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1280
    .end local v1    # "i":I
    .end local v2    # "ret":[I
    .end local v3    # "size":I
    :pswitch_c
    invoke-static {p2}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v3

    .line 1281
    .restart local v3    # "size":I
    new-array v2, v3, [J

    .line 1282
    .local v2, "ret":[J
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9
    if-ge v1, v3, :cond_0

    move-object v4, v2

    check-cast v4, [J

    check-cast v4, [J

    invoke-interface {p2}, Ljava/io/DataInput;->readByte()B

    move-result v5

    int-to-long v6, v5

    aput-wide v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1285
    .end local v1    # "i":I
    .end local v2    # "ret":[J
    .end local v3    # "size":I
    :pswitch_d
    invoke-static {p2}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v3

    .line 1286
    .restart local v3    # "size":I
    new-array v2, v3, [J

    .line 1287
    .restart local v2    # "ret":[J
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_a
    if-ge v1, v3, :cond_0

    move-object v4, v2

    check-cast v4, [J

    check-cast v4, [J

    invoke-interface {p2}, Ljava/io/DataInput;->readShort()S

    move-result v5

    int-to-long v6, v5

    aput-wide v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1290
    .end local v1    # "i":I
    .end local v2    # "ret":[J
    .end local v3    # "size":I
    :pswitch_e
    invoke-static {p2}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v3

    .line 1291
    .restart local v3    # "size":I
    new-array v2, v3, [J

    .line 1292
    .restart local v2    # "ret":[J
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_b
    if-ge v1, v3, :cond_0

    move-object v4, v2

    check-cast v4, [J

    check-cast v4, [J

    invoke-static {p2}, Lorg/mapdb/DataInput2;->unpackLong(Ljava/io/DataInput;)J

    move-result-wide v6

    aput-wide v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1295
    .end local v1    # "i":I
    .end local v2    # "ret":[J
    .end local v3    # "size":I
    :pswitch_f
    invoke-static {p2}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v3

    .line 1296
    .restart local v3    # "size":I
    new-array v2, v3, [J

    .line 1297
    .restart local v2    # "ret":[J
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_c
    if-ge v1, v3, :cond_0

    move-object v4, v2

    check-cast v4, [J

    check-cast v4, [J

    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v5

    int-to-long v6, v5

    aput-wide v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1300
    .end local v1    # "i":I
    .end local v2    # "ret":[J
    .end local v3    # "size":I
    :pswitch_10
    invoke-static {p2}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v3

    .line 1301
    .restart local v3    # "size":I
    new-array v2, v3, [J

    .line 1302
    .restart local v2    # "ret":[J
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_d
    if-ge v1, v3, :cond_0

    move-object v4, v2

    check-cast v4, [J

    check-cast v4, [J

    invoke-interface {p2}, Ljava/io/DataInput;->readLong()J

    move-result-wide v6

    aput-wide v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1306
    .end local v1    # "i":I
    .end local v2    # "ret":[J
    .end local v3    # "size":I
    :pswitch_11
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {p0, p2}, Lorg/mapdb/SerializerBase;->deserializeArrayByte(Ljava/io/DataInput;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>([B)V

    .line 1307
    .local v2, "ret":Ljava/math/BigInteger;
    goto/16 :goto_0

    .line 1309
    .end local v2    # "ret":Ljava/math/BigInteger;
    :pswitch_12
    new-instance v2, Ljava/math/BigDecimal;

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {p0, p2}, Lorg/mapdb/SerializerBase;->deserializeArrayByte(Ljava/io/DataInput;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>([B)V

    invoke-static {p2}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v5

    invoke-direct {v2, v4, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 1310
    .local v2, "ret":Ljava/math/BigDecimal;
    goto/16 :goto_0

    .line 1313
    .end local v2    # "ret":Ljava/math/BigDecimal;
    :pswitch_13
    invoke-virtual {p0, p2}, Lorg/mapdb/SerializerBase;->deserializeClass(Ljava/io/DataInput;)Ljava/lang/Class;

    move-result-object v2

    .line 1314
    .local v2, "ret":Ljava/lang/Class;
    goto/16 :goto_0

    .line 1316
    .end local v2    # "ret":Ljava/lang/Class;
    :pswitch_14
    new-instance v2, Ljava/util/Date;

    invoke-interface {p2}, Ljava/io/DataInput;->readLong()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1317
    .local v2, "ret":Ljava/util/Date;
    goto/16 :goto_0

    .line 1319
    .end local v2    # "ret":Ljava/util/Date;
    :pswitch_15
    new-instance v2, Ljava/util/UUID;

    invoke-interface {p2}, Ljava/io/DataInput;->readLong()J

    move-result-wide v4

    invoke-interface {p2}, Ljava/io/DataInput;->readLong()J

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    .line 1320
    .local v2, "ret":Ljava/util/UUID;
    goto/16 :goto_0

    .line 1323
    .end local v2    # "ret":Ljava/util/UUID;
    :pswitch_16
    invoke-direct {p0, p2}, Lorg/mapdb/SerializerBase;->deserializeArrayListPackedLong(Ljava/io/DataInput;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1324
    .local v2, "ret":Ljava/util/ArrayList;
    goto/16 :goto_0

    .line 1327
    .end local v2    # "ret":Ljava/util/ArrayList;
    :pswitch_17
    sget-object v2, Lorg/mapdb/Fun;->HI:Ljava/lang/Object;

    .line 1328
    .local v2, "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 1330
    .end local v2    # "ret":Ljava/lang/Object;
    :pswitch_18
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Wrong header, data were probably serialized with java.lang.ObjectOutputStream, not with MapDB serialization"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1332
    :pswitch_19
    invoke-direct {p0, p2}, Lorg/mapdb/SerializerBase;->deserializeArrayObjectPackedLong(Ljava/io/DataInput;)[Ljava/lang/Object;

    move-result-object v2

    .line 1333
    .local v2, "ret":[Ljava/lang/Object;
    goto/16 :goto_0

    .line 1335
    .end local v2    # "ret":[Ljava/lang/Object;
    :pswitch_1a
    invoke-direct {p0, p2}, Lorg/mapdb/SerializerBase;->deserializeArrayObjectAllNull(Ljava/io/DataInput;)[Ljava/lang/Object;

    move-result-object v2

    .line 1336
    .restart local v2    # "ret":[Ljava/lang/Object;
    goto/16 :goto_0

    .line 1338
    .end local v2    # "ret":[Ljava/lang/Object;
    :pswitch_1b
    invoke-direct {p0, p2}, Lorg/mapdb/SerializerBase;->deserializeArrayObjectNoRefs(Ljava/io/DataInput;)[Ljava/lang/Object;

    move-result-object v2

    .line 1339
    .restart local v2    # "ret":[Ljava/lang/Object;
    goto/16 :goto_0

    .line 1224
    nop

    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_17
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_16
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
    .end packed-switch
.end method

.method private deserialize3(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;I)Ljava/lang/Object;
    .locals 4
    .param p1, "is"    # Ljava/io/DataInput;
    .param p3, "head"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "Lorg/mapdb/SerializerBase$FastArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1147
    .local p2, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    packed-switch p3, :pswitch_data_0

    .line 1216
    :pswitch_0
    invoke-virtual {p0, p1, p3, p2}, Lorg/mapdb/SerializerBase;->deserializeUnknownHeader(Ljava/io/DataInput;ILorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    .line 1219
    :goto_0
    return-object v0

    .line 1149
    :pswitch_1
    iget-object v1, p2, Lorg/mapdb/SerializerBase$FastArrayList;->data:[Ljava/lang/Object;

    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v2

    aget-object v0, v1, v2

    .line 1150
    .local v0, "ret":Ljava/lang/Object;
    goto :goto_0

    .line 1152
    .end local v0    # "ret":Ljava/lang/Object;
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserializeArrayList(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1153
    .local v0, "ret":Ljava/util/ArrayList;
    goto :goto_0

    .line 1155
    .end local v0    # "ret":Ljava/util/ArrayList;
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserializeArrayObject(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)[Ljava/lang/Object;

    move-result-object v0

    .line 1156
    .local v0, "ret":[Ljava/lang/Object;
    goto :goto_0

    .line 1158
    .end local v0    # "ret":[Ljava/lang/Object;
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserializeLinkedList(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/util/LinkedList;

    move-result-object v0

    .line 1159
    .local v0, "ret":Ljava/util/LinkedList;
    goto :goto_0

    .line 1161
    .end local v0    # "ret":Ljava/util/LinkedList;
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserializeTreeSet(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/util/TreeSet;

    move-result-object v0

    .line 1162
    .local v0, "ret":Ljava/util/TreeSet;
    goto :goto_0

    .line 1164
    .end local v0    # "ret":Ljava/util/TreeSet;
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserializeHashSet(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/util/HashSet;

    move-result-object v0

    .line 1165
    .local v0, "ret":Ljava/util/HashSet;
    goto :goto_0

    .line 1167
    .end local v0    # "ret":Ljava/util/HashSet;
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserializeLinkedHashSet(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 1168
    .local v0, "ret":Ljava/util/LinkedHashSet;
    goto :goto_0

    .line 1170
    .end local v0    # "ret":Ljava/util/LinkedHashSet;
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserializeTreeMap(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/util/TreeMap;

    move-result-object v0

    .line 1171
    .local v0, "ret":Ljava/util/TreeMap;
    goto :goto_0

    .line 1173
    .end local v0    # "ret":Ljava/util/TreeMap;
    :pswitch_9
    invoke-direct {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserializeHashMap(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/util/HashMap;

    move-result-object v0

    .line 1174
    .local v0, "ret":Ljava/util/HashMap;
    goto :goto_0

    .line 1176
    .end local v0    # "ret":Ljava/util/HashMap;
    :pswitch_a
    invoke-direct {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserializeLinkedHashMap(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 1177
    .local v0, "ret":Ljava/util/LinkedHashMap;
    goto :goto_0

    .line 1179
    .end local v0    # "ret":Ljava/util/LinkedHashMap;
    :pswitch_b
    invoke-direct {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserializeProperties(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/util/Properties;

    move-result-object v0

    .line 1180
    .local v0, "ret":Ljava/util/Properties;
    goto :goto_0

    .line 1182
    .end local v0    # "ret":Ljava/util/Properties;
    :pswitch_c
    new-instance v0, Lorg/mapdb/Atomic$Long;

    invoke-virtual {p0}, Lorg/mapdb/SerializerBase;->getEngine()Lorg/mapdb/Engine;

    move-result-object v1

    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackLong(Ljava/io/DataInput;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/mapdb/Atomic$Long;-><init>(Lorg/mapdb/Engine;J)V

    .line 1183
    .local v0, "ret":Lorg/mapdb/Atomic$Long;
    goto :goto_0

    .line 1185
    .end local v0    # "ret":Lorg/mapdb/Atomic$Long;
    :pswitch_d
    new-instance v0, Lorg/mapdb/Atomic$Integer;

    invoke-virtual {p0}, Lorg/mapdb/SerializerBase;->getEngine()Lorg/mapdb/Engine;

    move-result-object v1

    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackLong(Ljava/io/DataInput;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/mapdb/Atomic$Integer;-><init>(Lorg/mapdb/Engine;J)V

    .line 1186
    .local v0, "ret":Lorg/mapdb/Atomic$Integer;
    goto :goto_0

    .line 1188
    .end local v0    # "ret":Lorg/mapdb/Atomic$Integer;
    :pswitch_e
    new-instance v0, Lorg/mapdb/Atomic$Boolean;

    invoke-virtual {p0}, Lorg/mapdb/SerializerBase;->getEngine()Lorg/mapdb/Engine;

    move-result-object v1

    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackLong(Ljava/io/DataInput;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/mapdb/Atomic$Boolean;-><init>(Lorg/mapdb/Engine;J)V

    .line 1189
    .local v0, "ret":Lorg/mapdb/Atomic$Boolean;
    goto :goto_0

    .line 1191
    .end local v0    # "ret":Lorg/mapdb/Atomic$Boolean;
    :pswitch_f
    new-instance v0, Lorg/mapdb/Atomic$String;

    invoke-virtual {p0}, Lorg/mapdb/SerializerBase;->getEngine()Lorg/mapdb/Engine;

    move-result-object v1

    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackLong(Ljava/io/DataInput;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/mapdb/Atomic$String;-><init>(Lorg/mapdb/Engine;J)V

    .line 1192
    .local v0, "ret":Lorg/mapdb/Atomic$String;
    goto :goto_0

    .line 1194
    .end local v0    # "ret":Lorg/mapdb/Atomic$String;
    :pswitch_10
    new-instance v0, Lorg/mapdb/Fun$Tuple2;

    invoke-direct {v0, p0, p1, p2}, Lorg/mapdb/Fun$Tuple2;-><init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 1195
    .local v0, "ret":Lorg/mapdb/Fun$Tuple2;
    goto :goto_0

    .line 1197
    .end local v0    # "ret":Lorg/mapdb/Fun$Tuple2;
    :pswitch_11
    new-instance v0, Lorg/mapdb/Fun$Tuple3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/mapdb/Fun$Tuple3;-><init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;I)V

    .line 1198
    .local v0, "ret":Lorg/mapdb/Fun$Tuple3;
    goto :goto_0

    .line 1200
    .end local v0    # "ret":Lorg/mapdb/Fun$Tuple3;
    :pswitch_12
    new-instance v0, Lorg/mapdb/Fun$Tuple4;

    invoke-direct {v0, p0, p1, p2}, Lorg/mapdb/Fun$Tuple4;-><init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 1201
    .local v0, "ret":Lorg/mapdb/Fun$Tuple4;
    goto/16 :goto_0

    .line 1203
    .end local v0    # "ret":Lorg/mapdb/Fun$Tuple4;
    :pswitch_13
    new-instance v0, Lorg/mapdb/Fun$Tuple5;

    invoke-direct {v0, p0, p1, p2}, Lorg/mapdb/Fun$Tuple5;-><init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 1204
    .local v0, "ret":Lorg/mapdb/Fun$Tuple5;
    goto/16 :goto_0

    .line 1206
    .end local v0    # "ret":Lorg/mapdb/Fun$Tuple5;
    :pswitch_14
    new-instance v0, Lorg/mapdb/Fun$Tuple6;

    invoke-direct {v0, p0, p1, p2}, Lorg/mapdb/Fun$Tuple6;-><init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 1207
    .local v0, "ret":Lorg/mapdb/Fun$Tuple6;
    goto/16 :goto_0

    .line 1209
    .end local v0    # "ret":Lorg/mapdb/Fun$Tuple6;
    :pswitch_15
    new-instance v0, Lorg/mapdb/Atomic$Var;

    invoke-virtual {p0}, Lorg/mapdb/SerializerBase;->getEngine()Lorg/mapdb/Engine;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/mapdb/Atomic$Var;-><init>(Lorg/mapdb/Engine;Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 1210
    .local v0, "ret":Lorg/mapdb/Atomic$Var;
    goto/16 :goto_0

    .line 1212
    .end local v0    # "ret":Lorg/mapdb/Atomic$Var;
    :pswitch_16
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserializeMapDB(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    .line 1213
    .local v0, "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 1147
    :pswitch_data_0
    .packed-switch 0x96
        :pswitch_16
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_15
    .end packed-switch
.end method

.method private deserializeArrayByte(Ljava/io/DataInput;)[B
    .locals 2
    .param p1, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1549
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v1

    new-array v0, v1, [B

    .line 1550
    .local v0, "bb":[B
    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 1551
    return-object v0
.end method

.method private deserializeArrayList(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "Lorg/mapdb/SerializerBase$FastArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1601
    .local p2, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v2

    .line 1602
    .local v2, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1603
    .local v1, "s":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p2, v1}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 1604
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1605
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1604
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1607
    :cond_0
    return-object v1
.end method

.method private deserializeArrayListPackedLong(Ljava/io/DataInput;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1611
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 1612
    .local v4, "size":I
    if-gez v4, :cond_0

    .line 1613
    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 1615
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1616
    .local v1, "s":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 1617
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackLong(Ljava/io/DataInput;)J

    move-result-wide v2

    .line 1618
    .local v2, "l":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_1

    .line 1619
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1616
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1621
    :cond_1
    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1623
    .end local v2    # "l":J
    :cond_2
    return-object v1
.end method

.method private deserializeArrayObject(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)[Ljava/lang/Object;
    .locals 5
    .param p1, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "Lorg/mapdb/SerializerBase$FastArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1558
    .local p2, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v3

    .line 1559
    .local v3, "size":I
    invoke-virtual {p0, p1}, Lorg/mapdb/SerializerBase;->deserializeClass(Ljava/io/DataInput;)Ljava/lang/Class;

    move-result-object v0

    .line 1560
    .local v0, "clazz":Ljava/lang/Class;
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 1561
    .local v2, "s":[Ljava/lang/Object;
    invoke-virtual {p2, v2}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 1562
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1563
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1562
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1565
    :cond_0
    return-object v2
.end method

.method private deserializeArrayObjectAllNull(Ljava/io/DataInput;)[Ljava/lang/Object;
    .locals 3
    .param p1, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1580
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v1

    .line 1581
    .local v1, "size":I
    invoke-virtual {p0, p1}, Lorg/mapdb/SerializerBase;->deserializeClass(Ljava/io/DataInput;)Ljava/lang/Class;

    move-result-object v0

    .line 1582
    .local v0, "clazz":Ljava/lang/Class;
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    return-object v2
.end method

.method private deserializeArrayObjectNoRefs(Ljava/io/DataInput;)[Ljava/lang/Object;
    .locals 5
    .param p1, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1569
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v3

    .line 1570
    .local v3, "size":I
    invoke-virtual {p0, p1}, Lorg/mapdb/SerializerBase;->deserializeClass(Ljava/io/DataInput;)Ljava/lang/Class;

    move-result-object v0

    .line 1571
    .local v0, "clazz":Ljava/lang/Class;
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 1572
    .local v2, "s":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1573
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1572
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1575
    :cond_0
    return-object v2
.end method

.method private deserializeArrayObjectPackedLong(Ljava/io/DataInput;)[Ljava/lang/Object;
    .locals 8
    .param p1, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1587
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 1588
    .local v4, "size":I
    new-array v1, v4, [Ljava/lang/Object;

    .line 1589
    .local v1, "s":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 1590
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackLong(Ljava/io/DataInput;)J

    move-result-wide v2

    .line 1591
    .local v2, "l":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    .line 1592
    const/4 v5, 0x0

    aput-object v5, v1, v0

    .line 1589
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1594
    :cond_0
    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v0

    goto :goto_1

    .line 1596
    .end local v2    # "l":J
    :cond_1
    return-object v1
.end method

.method private deserializeHashMap(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/util/HashMap;
    .locals 5
    .param p1, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "Lorg/mapdb/SerializerBase$FastArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1688
    .local p2, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v2

    .line 1690
    .local v2, "size":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1691
    .local v1, "s":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p2, v1}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 1692
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1693
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1694
    :cond_0
    return-object v1
.end method

.method private deserializeHashSet(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/util/HashSet;
    .locals 4
    .param p1, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "Lorg/mapdb/SerializerBase$FastArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1640
    .local p2, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v2

    .line 1641
    .local v2, "size":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 1642
    .local v1, "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    invoke-virtual {p2, v1}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 1643
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1644
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1643
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1645
    :cond_0
    return-object v1
.end method

.method private deserializeLinkedHashMap(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/util/LinkedHashMap;
    .locals 5
    .param p1, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "Lorg/mapdb/SerializerBase$FastArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1699
    .local p2, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v2

    .line 1701
    .local v2, "size":I
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1702
    .local v1, "s":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p2, v1}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 1703
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1704
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1705
    :cond_0
    return-object v1
.end method

.method private deserializeLinkedHashSet(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/util/LinkedHashSet;
    .locals 4
    .param p1, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "Lorg/mapdb/SerializerBase$FastArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1650
    .local p2, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v2

    .line 1651
    .local v2, "size":I
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 1652
    .local v1, "s":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Object;>;"
    invoke-virtual {p2, v1}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 1653
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1654
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1655
    :cond_0
    return-object v1
.end method

.method private deserializeLinkedList(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/util/LinkedList;
    .locals 4
    .param p1, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "Lorg/mapdb/SerializerBase$FastArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/LinkedList;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1628
    .local p2, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v2

    .line 1629
    .local v2, "size":I
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1630
    .local v1, "s":Ljava/util/LinkedList;
    invoke-virtual {p2, v1}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 1631
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1632
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1631
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1633
    :cond_0
    return-object v1
.end method

.method private deserializeProperties(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/util/Properties;
    .locals 5
    .param p1, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "Lorg/mapdb/SerializerBase$FastArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Properties;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1711
    .local p2, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v2

    .line 1713
    .local v2, "size":I
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 1714
    .local v1, "s":Ljava/util/Properties;
    invoke-virtual {p2, v1}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 1715
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1716
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1715
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1717
    :cond_0
    return-object v1
.end method

.method static deserializeString(Ljava/io/DataInput;I)Ljava/lang/String;
    .locals 3
    .param p0, "buf"    # Ljava/io/DataInput;
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 856
    new-array v0, p1, [C

    .line 857
    .local v0, "b":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 858
    invoke-static {p0}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 857
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 860
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private deserializeTreeMap(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/util/TreeMap;
    .locals 6
    .param p1, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "Lorg/mapdb/SerializerBase$FastArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1674
    .local p2, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v3

    .line 1676
    .local v3, "size":I
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 1677
    .local v2, "s":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p2, v2}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 1678
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 1679
    .local v0, "comparator":Ljava/util/Comparator;
    if-eqz v0, :cond_0

    .line 1680
    new-instance v2, Ljava/util/TreeMap;

    .end local v2    # "s":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {v2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 1681
    .restart local v2    # "s":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1682
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1683
    :cond_1
    return-object v2
.end method

.method private deserializeTreeSet(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/util/TreeSet;
    .locals 5
    .param p1, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "Lorg/mapdb/SerializerBase$FastArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1660
    .local p2, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v3

    .line 1661
    .local v3, "size":I
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 1662
    .local v2, "s":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    invoke-virtual {p2, v2}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 1663
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 1664
    .local v0, "comparator":Ljava/util/Comparator;
    if-eqz v0, :cond_0

    .line 1665
    new-instance v2, Ljava/util/TreeSet;

    .end local v2    # "s":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    invoke-direct {v2, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 1667
    .restart local v2    # "s":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1668
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1667
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1669
    :cond_1
    return-object v2
.end method

.method protected static readBooleanArray(ILjava/io/DataInput;)[Z
    .locals 14
    .param p0, "numBools"    # I
    .param p1, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1870
    div-int/lit8 v13, p0, 0x8

    rem-int/lit8 v12, p0, 0x8

    if-nez v12, :cond_0

    const/4 v12, 0x0

    :goto_0
    add-int v9, v13, v12

    .line 1871
    .local v9, "length":I
    new-array v2, v9, [B

    .line 1872
    .local v2, "boolBytes":[B
    invoke-interface {p1, v2}, Ljava/io/DataInput;->readFully([B)V

    .line 1875
    array-length v12, v2

    mul-int/lit8 v12, v12, 0x8

    new-array v10, v12, [Z

    .line 1876
    .local v10, "tmp":[Z
    array-length v7, v2

    .line 1877
    .local v7, "len":I
    const/4 v3, 0x0

    .line 1878
    .local v3, "boolIndex":I
    move-object v0, v2

    .local v0, "arr$":[B
    array-length v8, v0

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v8, :cond_3

    aget-byte v1, v0, v6

    .line 1879
    .local v1, "boolByte":B
    const/4 v11, 0x0

    .local v11, "y":I
    move v4, v3

    .end local v3    # "boolIndex":I
    .local v4, "boolIndex":I
    :goto_2
    const/16 v12, 0x8

    if-ge v11, v12, :cond_2

    .line 1880
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "boolIndex":I
    .restart local v3    # "boolIndex":I
    const/4 v12, 0x1

    shl-int/2addr v12, v11

    and-int/2addr v12, v1

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    :goto_3
    aput-boolean v12, v10, v4

    .line 1879
    add-int/lit8 v11, v11, 0x1

    move v4, v3

    .end local v3    # "boolIndex":I
    .restart local v4    # "boolIndex":I
    goto :goto_2

    .line 1870
    .end local v0    # "arr$":[B
    .end local v1    # "boolByte":B
    .end local v2    # "boolBytes":[B
    .end local v4    # "boolIndex":I
    .end local v6    # "i$":I
    .end local v7    # "len":I
    .end local v8    # "len$":I
    .end local v9    # "length":I
    .end local v10    # "tmp":[Z
    .end local v11    # "y":I
    :cond_0
    const/4 v12, 0x1

    goto :goto_0

    .line 1880
    .restart local v0    # "arr$":[B
    .restart local v1    # "boolByte":B
    .restart local v2    # "boolBytes":[B
    .restart local v3    # "boolIndex":I
    .restart local v6    # "i$":I
    .restart local v7    # "len":I
    .restart local v8    # "len$":I
    .restart local v9    # "length":I
    .restart local v10    # "tmp":[Z
    .restart local v11    # "y":I
    :cond_1
    const/4 v12, 0x0

    goto :goto_3

    .line 1878
    .end local v3    # "boolIndex":I
    .restart local v4    # "boolIndex":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    move v3, v4

    .end local v4    # "boolIndex":I
    .restart local v3    # "boolIndex":I
    goto :goto_1

    .line 1885
    .end local v1    # "boolByte":B
    .end local v11    # "y":I
    :cond_3
    new-array v5, p0, [Z

    .line 1886
    .local v5, "finalBoolArray":[Z
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v12, v5, v13, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1889
    return-object v5
.end method

.method private serialize2(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;Ljava/lang/Class;)V
    .locals 30
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/lang/Object;",
            "Lorg/mapdb/SerializerBase$FastArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    .local p3, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p2

    instance-of v0, v0, [B

    move/from16 v25, v0

    if-eqz v25, :cond_1

    .line 156
    check-cast p2, [B

    .end local p2    # "obj":Ljava/lang/Object;
    move-object/from16 v10, p2

    check-cast v10, [B

    .line 157
    .local v10, "b":[B
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lorg/mapdb/SerializerBase;->serializeByteArray(Ljava/io/DataOutput;[B)V

    .line 533
    .end local v10    # "b":[B
    :cond_0
    :goto_0
    return-void

    .line 160
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p2

    instance-of v0, v0, [Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    .line 161
    const/16 v25, 0x6f

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 162
    check-cast p2, [Z

    .end local p2    # "obj":Ljava/lang/Object;
    move-object/from16 v7, p2

    check-cast v7, [Z

    .line 163
    .local v7, "a_bool":[Z
    array-length v0, v7

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 164
    invoke-static {v7}, Lorg/mapdb/SerializerBase;->booleanToByteArray([Z)[B

    move-result-object v6

    .line 165
    .local v6, "a":[B
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/io/DataOutput;->write([B)V

    goto :goto_0

    .line 167
    .end local v6    # "a":[B
    .end local v7    # "a_bool":[Z
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p2

    instance-of v0, v0, [S

    move/from16 v25, v0

    if-eqz v25, :cond_3

    .line 168
    const/16 v25, 0x70

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 169
    check-cast p2, [S

    .end local p2    # "obj":Ljava/lang/Object;
    move-object/from16 v6, p2

    check-cast v6, [S

    .line 170
    .local v6, "a":[S
    array-length v0, v6

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 171
    move-object v9, v6

    .local v9, "arr$":[S
    array-length v0, v9

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_0

    aget-short v22, v9, v15

    .local v22, "s":S
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeShort(I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 173
    .end local v6    # "a":[S
    .end local v9    # "arr$":[S
    .end local v15    # "i$":I
    .end local v17    # "len$":I
    .end local v22    # "s":S
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p2

    instance-of v0, v0, [C

    move/from16 v25, v0

    if-eqz v25, :cond_4

    .line 174
    const/16 v25, 0x71

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 175
    check-cast p2, [C

    .end local p2    # "obj":Ljava/lang/Object;
    move-object/from16 v6, p2

    check-cast v6, [C

    .line 176
    .local v6, "a":[C
    array-length v0, v6

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 177
    move-object v9, v6

    .local v9, "arr$":[C
    array-length v0, v9

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v15, 0x0

    .restart local v15    # "i$":I
    :goto_2
    move/from16 v0, v17

    if-ge v15, v0, :cond_0

    aget-char v22, v9, v15

    .local v22, "s":C
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeChar(I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 179
    .end local v6    # "a":[C
    .end local v9    # "arr$":[C
    .end local v15    # "i$":I
    .end local v17    # "len$":I
    .end local v22    # "s":C
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p2

    instance-of v0, v0, [F

    move/from16 v25, v0

    if-eqz v25, :cond_5

    .line 180
    const/16 v25, 0x72

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 181
    check-cast p2, [F

    .end local p2    # "obj":Ljava/lang/Object;
    move-object/from16 v6, p2

    check-cast v6, [F

    .line 182
    .local v6, "a":[F
    array-length v0, v6

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 183
    move-object v9, v6

    .local v9, "arr$":[F
    array-length v0, v9

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v15, 0x0

    .restart local v15    # "i$":I
    :goto_3
    move/from16 v0, v17

    if-ge v15, v0, :cond_0

    aget v22, v9, v15

    .local v22, "s":F
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeFloat(F)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 185
    .end local v6    # "a":[F
    .end local v9    # "arr$":[F
    .end local v15    # "i$":I
    .end local v17    # "len$":I
    .end local v22    # "s":F
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p2

    instance-of v0, v0, [D

    move/from16 v25, v0

    if-eqz v25, :cond_6

    .line 186
    const/16 v25, 0x73

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 187
    check-cast p2, [D

    .end local p2    # "obj":Ljava/lang/Object;
    move-object/from16 v6, p2

    check-cast v6, [D

    .line 188
    .local v6, "a":[D
    array-length v0, v6

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 189
    move-object v9, v6

    .local v9, "arr$":[D
    array-length v0, v9

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v15, 0x0

    .restart local v15    # "i$":I
    :goto_4
    move/from16 v0, v17

    if-ge v15, v0, :cond_0

    aget-wide v22, v9, v15

    .local v22, "s":D
    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Ljava/io/DataOutput;->writeDouble(D)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 191
    .end local v6    # "a":[D
    .end local v9    # "arr$":[D
    .end local v15    # "i$":I
    .end local v17    # "len$":I
    .end local v22    # "s":D
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p2

    instance-of v0, v0, [I

    move/from16 v25, v0

    if-eqz v25, :cond_7

    .line 192
    check-cast p2, [I

    .end local p2    # "obj":Ljava/lang/Object;
    check-cast p2, [I

    invoke-direct/range {p0 .. p2}, Lorg/mapdb/SerializerBase;->serializeIntArray(Ljava/io/DataOutput;[I)V

    goto/16 :goto_0

    .line 194
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_7
    move-object/from16 v0, p2

    instance-of v0, v0, [J

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 195
    check-cast p2, [J

    .end local p2    # "obj":Ljava/lang/Object;
    check-cast p2, [J

    invoke-direct/range {p0 .. p2}, Lorg/mapdb/SerializerBase;->serializeLongArray(Ljava/io/DataOutput;[J)V

    goto/16 :goto_0

    .line 197
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_8
    const-class v25, Ljava/math/BigInteger;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 198
    const/16 v25, 0x8a

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 199
    check-cast p2, Ljava/math/BigInteger;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v11

    .line 200
    .local v11, "buf":[B
    array-length v0, v11

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 201
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/io/DataOutput;->write([B)V

    goto/16 :goto_0

    .line 203
    .end local v11    # "buf":[B
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_9
    const-class v25, Ljava/math/BigDecimal;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 204
    const/16 v25, 0x89

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    move-object/from16 v14, p2

    .line 205
    check-cast v14, Ljava/math/BigDecimal;

    .line 206
    .local v14, "d":Ljava/math/BigDecimal;
    invoke-virtual {v14}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v11

    .line 207
    .restart local v11    # "buf":[B
    array-length v0, v11

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 208
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/io/DataOutput;->write([B)V

    .line 209
    invoke-virtual {v14}, Ljava/math/BigDecimal;->scale()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    goto/16 :goto_0

    .line 211
    .end local v11    # "buf":[B
    .end local v14    # "d":Ljava/math/BigDecimal;
    :cond_a
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v25, v0

    if-eqz v25, :cond_b

    .line 212
    const/16 v25, 0x8b

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 213
    check-cast p2, Ljava/lang/Class;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p2}, Lorg/mapdb/SerializerBase;->serializeClass(Ljava/io/DataOutput;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 215
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_b
    const-class v25, Ljava/util/Date;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 216
    const/16 v25, 0x8c

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 217
    check-cast p2, Ljava/util/Date;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-interface {v0, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    goto/16 :goto_0

    .line 219
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_c
    const-class v25, Ljava/util/UUID;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 220
    const/16 v25, 0x8e

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    move-object/from16 v25, p2

    .line 221
    check-cast v25, Ljava/util/UUID;

    invoke-virtual/range {v25 .. v25}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v26

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-interface {v0, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    .line 222
    check-cast p2, Ljava/util/UUID;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v26

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-interface {v0, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    goto/16 :goto_0

    .line 224
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_d
    sget-object v25, Lorg/mapdb/Fun;->HI:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 225
    const/16 v25, 0x8d

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    goto/16 :goto_0

    .line 233
    :cond_e
    sget-object v25, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 234
    .local v18, "mapdbSingletonHeader":Ljava/lang/Integer;
    if-eqz v18, :cond_f

    .line 235
    const/16 v25, 0x96

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 236
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    goto/16 :goto_0

    .line 241
    :cond_f
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mapdb/Atomic$Long;

    move/from16 v25, v0

    if-eqz v25, :cond_10

    .line 242
    const/16 v25, 0xb0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 243
    check-cast p2, Lorg/mapdb/Atomic$Long;

    .end local p2    # "obj":Ljava/lang/Object;
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/mapdb/Atomic$Long;->recid:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    goto/16 :goto_0

    .line 245
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_10
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mapdb/Atomic$Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_11

    .line 246
    const/16 v25, 0xb1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 247
    check-cast p2, Lorg/mapdb/Atomic$Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/mapdb/Atomic$Integer;->recid:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    goto/16 :goto_0

    .line 249
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_11
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mapdb/Atomic$Boolean;

    move/from16 v25, v0

    if-eqz v25, :cond_12

    .line 250
    const/16 v25, 0xb2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 251
    check-cast p2, Lorg/mapdb/Atomic$Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/mapdb/Atomic$Boolean;->recid:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    goto/16 :goto_0

    .line 253
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_12
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mapdb/Atomic$String;

    move/from16 v25, v0

    if-eqz v25, :cond_13

    .line 254
    const/16 v25, 0xb3

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 255
    check-cast p2, Lorg/mapdb/Atomic$String;

    .end local p2    # "obj":Ljava/lang/Object;
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/mapdb/Atomic$String;->recid:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    goto/16 :goto_0

    .line 257
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_13
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_14

    .line 258
    const/16 v25, 0x96

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 259
    const/16 v25, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    goto/16 :goto_0

    .line 265
    :cond_14
    if-nez p3, :cond_15

    .line 266
    new-instance p3, Lorg/mapdb/SerializerBase$FastArrayList;

    .end local p3    # "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-direct/range {p3 .. p3}, Lorg/mapdb/SerializerBase$FastArrayList;-><init>()V

    .line 267
    .restart local p3    # "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 271
    :cond_15
    move-object/from16 v0, p2

    instance-of v0, v0, [Ljava/lang/Object;

    move/from16 v25, v0

    if-eqz v25, :cond_20

    move-object/from16 v25, p2

    .line 272
    check-cast v25, [Ljava/lang/Object;

    move-object/from16 v10, v25

    check-cast v10, [Ljava/lang/Object;

    .line 273
    .local v10, "b":[Ljava/lang/Object;
    array-length v0, v10

    move/from16 v25, v0

    const/16 v26, 0xff

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_19

    const/16 v20, 0x1

    .line 274
    .local v20, "packableLongs":Z
    :goto_5
    const/4 v8, 0x1

    .line 275
    .local v8, "allNull":Z
    if-eqz v20, :cond_1b

    .line 277
    move-object v9, v10

    .local v9, "arr$":[Ljava/lang/Object;
    array-length v0, v9

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v15, 0x0

    .restart local v15    # "i$":I
    :goto_6
    move/from16 v0, v17

    if-ge v15, v0, :cond_18

    aget-object v19, v9, v15

    .line 278
    .local v19, "o":Ljava/lang/Object;
    if-eqz v19, :cond_17

    .line 279
    const/4 v8, 0x0

    .line 280
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    const-class v26, Ljava/lang/Long;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_16

    move-object/from16 v25, v19

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-gez v25, :cond_17

    check-cast v19, Ljava/lang/Long;

    .end local v19    # "o":Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide v28, 0x7fffffffffffffffL

    cmp-long v25, v26, v28

    if-eqz v25, :cond_17

    .line 281
    :cond_16
    const/16 v20, 0x0

    .line 285
    :cond_17
    if-nez v20, :cond_1a

    if-nez v8, :cond_1a

    .line 297
    :cond_18
    :goto_7
    if-eqz v8, :cond_1d

    .line 298
    const/16 v25, 0xa1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 299
    array-length v0, v10

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v13

    .line 303
    .local v13, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lorg/mapdb/SerializerBase;->serializeClass(Ljava/io/DataOutput;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 273
    .end local v8    # "allNull":Z
    .end local v9    # "arr$":[Ljava/lang/Object;
    .end local v13    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "i$":I
    .end local v17    # "len$":I
    .end local v20    # "packableLongs":Z
    :cond_19
    const/16 v20, 0x0

    goto :goto_5

    .line 277
    .restart local v8    # "allNull":Z
    .restart local v9    # "arr$":[Ljava/lang/Object;
    .restart local v15    # "i$":I
    .restart local v17    # "len$":I
    .restart local v20    # "packableLongs":Z
    :cond_1a
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 290
    .end local v9    # "arr$":[Ljava/lang/Object;
    .end local v15    # "i$":I
    .end local v17    # "len$":I
    :cond_1b
    move-object v9, v10

    .restart local v9    # "arr$":[Ljava/lang/Object;
    array-length v0, v9

    move/from16 v17, v0

    .restart local v17    # "len$":I
    const/4 v15, 0x0

    .restart local v15    # "i$":I
    :goto_8
    move/from16 v0, v17

    if-ge v15, v0, :cond_18

    aget-object v19, v9, v15

    .line 291
    .restart local v19    # "o":Ljava/lang/Object;
    if-eqz v19, :cond_1c

    .line 292
    const/4 v8, 0x0

    .line 293
    goto :goto_7

    .line 290
    :cond_1c
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 305
    .end local v19    # "o":Ljava/lang/Object;
    :cond_1d
    if-eqz v20, :cond_1f

    .line 307
    const/16 v25, 0x9f

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 308
    array-length v0, v10

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 309
    move-object v9, v10

    array-length v0, v9

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_9
    move/from16 v0, v17

    if-ge v15, v0, :cond_0

    aget-object v19, v9, v15

    .line 310
    .restart local v19    # "o":Ljava/lang/Object;
    if-nez v19, :cond_1e

    .line 311
    const-wide/16 v26, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    .line 309
    .end local v19    # "o":Ljava/lang/Object;
    :goto_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 313
    .restart local v19    # "o":Ljava/lang/Object;
    :cond_1e
    check-cast v19, Ljava/lang/Long;

    .end local v19    # "o":Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x1

    add-long v26, v26, v28

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    goto :goto_a

    .line 317
    :cond_1f
    const/16 v25, 0x9e

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 318
    array-length v0, v10

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v13

    .line 322
    .restart local v13    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lorg/mapdb/SerializerBase;->serializeClass(Ljava/io/DataOutput;Ljava/lang/Class;)V

    .line 324
    move-object v9, v10

    array-length v0, v9

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_b
    move/from16 v0, v17

    if-ge v15, v0, :cond_0

    aget-object v19, v9, v15

    .line 325
    .restart local v19    # "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 324
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 329
    .end local v8    # "allNull":Z
    .end local v9    # "arr$":[Ljava/lang/Object;
    .end local v10    # "b":[Ljava/lang/Object;
    .end local v13    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "i$":I
    .end local v17    # "len$":I
    .end local v19    # "o":Ljava/lang/Object;
    .end local v20    # "packableLongs":Z
    :cond_20
    const-class v25, Ljava/util/ArrayList;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_27

    move-object/from16 v16, p2

    .line 330
    check-cast v16, Ljava/util/ArrayList;

    .line 331
    .local v16, "l":Ljava/util/ArrayList;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0xff

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_24

    const/16 v20, 0x1

    .line 332
    .restart local v20    # "packableLongs":Z
    :goto_c
    if-eqz v20, :cond_23

    .line 334
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_21
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_23

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .line 335
    .restart local v19    # "o":Ljava/lang/Object;
    if-eqz v19, :cond_21

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    const-class v26, Ljava/lang/Long;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_22

    move-object/from16 v25, v19

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-gez v25, :cond_21

    check-cast v19, Ljava/lang/Long;

    .end local v19    # "o":Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide v28, 0x7fffffffffffffffL

    cmp-long v25, v26, v28

    if-eqz v25, :cond_21

    .line 336
    :cond_22
    const/16 v20, 0x0

    .line 341
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_23
    if-eqz v20, :cond_26

    .line 342
    const/16 v25, 0xa0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 343
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 344
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .line 345
    .restart local v19    # "o":Ljava/lang/Object;
    if-nez v19, :cond_25

    .line 346
    const-wide/16 v26, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    goto :goto_d

    .line 331
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v19    # "o":Ljava/lang/Object;
    .end local v20    # "packableLongs":Z
    :cond_24
    const/16 v20, 0x0

    goto :goto_c

    .line 348
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v19    # "o":Ljava/lang/Object;
    .restart local v20    # "packableLongs":Z
    :cond_25
    check-cast v19, Ljava/lang/Long;

    .end local v19    # "o":Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x1

    add-long v26, v26, v28

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    goto :goto_d

    .line 351
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_26
    const/16 v25, 0xa3

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapdb/SerializerBase;->serializeCollection(ILjava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 354
    .end local v16    # "l":Ljava/util/ArrayList;
    .end local v20    # "packableLongs":Z
    :cond_27
    const-class v25, Ljava/util/LinkedList;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_28

    .line 355
    const/16 v25, 0xaa

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapdb/SerializerBase;->serializeCollection(ILjava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 356
    :cond_28
    const-class v25, Ljava/util/TreeSet;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_29

    move-object/from16 v16, p2

    .line 357
    check-cast v16, Ljava/util/TreeSet;

    .line 358
    .local v16, "l":Ljava/util/TreeSet;
    const/16 v25, 0xa7

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 359
    invoke-virtual/range {v16 .. v16}, Ljava/util/TreeSet;->size()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 360
    invoke-virtual/range {v16 .. v16}, Ljava/util/TreeSet;->comparator()Ljava/util/Comparator;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 361
    invoke-virtual/range {v16 .. v16}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .line 362
    .restart local v19    # "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto :goto_e

    .line 363
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "l":Ljava/util/TreeSet;
    .end local v19    # "o":Ljava/lang/Object;
    :cond_29
    const-class v25, Ljava/util/HashSet;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_2a

    .line 364
    const/16 v25, 0xa8

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapdb/SerializerBase;->serializeCollection(ILjava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 365
    :cond_2a
    const-class v25, Ljava/util/LinkedHashSet;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_2b

    .line 366
    const/16 v25, 0xa9

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapdb/SerializerBase;->serializeCollection(ILjava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 367
    :cond_2b
    const-class v25, Ljava/util/TreeMap;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_2c

    move-object/from16 v16, p2

    .line 368
    check-cast v16, Ljava/util/TreeMap;

    .line 369
    .local v16, "l":Ljava/util/TreeMap;
    const/16 v25, 0xa4

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 370
    invoke-virtual/range {v16 .. v16}, Ljava/util/TreeMap;->size()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 371
    invoke-virtual/range {v16 .. v16}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 372
    invoke-virtual/range {v16 .. v16}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .line 373
    .restart local v19    # "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 374
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto :goto_f

    .line 376
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "l":Ljava/util/TreeMap;
    .end local v19    # "o":Ljava/lang/Object;
    :cond_2c
    const-class v25, Ljava/util/HashMap;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_2d

    .line 377
    const/16 v25, 0xa5

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapdb/SerializerBase;->serializeMap(ILjava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 378
    :cond_2d
    const-class v25, Ljava/util/LinkedHashMap;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_2e

    .line 379
    const/16 v25, 0xa6

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapdb/SerializerBase;->serializeMap(ILjava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 380
    :cond_2e
    const-class v25, Ljava/util/Properties;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_2f

    .line 381
    const/16 v25, 0xab

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapdb/SerializerBase;->serializeMap(ILjava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 382
    :cond_2f
    const-class v25, Lorg/mapdb/Fun$Tuple2;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_30

    .line 383
    const/16 v25, 0x97

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    move-object/from16 v21, p2

    .line 384
    check-cast v21, Lorg/mapdb/Fun$Tuple2;

    .line 385
    .local v21, "t":Lorg/mapdb/Fun$Tuple2;
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 386
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mapdb/Fun$Tuple2;->b:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 387
    .end local v21    # "t":Lorg/mapdb/Fun$Tuple2;
    :cond_30
    const-class v25, Lorg/mapdb/Fun$Tuple3;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_31

    .line 388
    const/16 v25, 0x98

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    move-object/from16 v21, p2

    .line 389
    check-cast v21, Lorg/mapdb/Fun$Tuple3;

    .line 390
    .local v21, "t":Lorg/mapdb/Fun$Tuple3;
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mapdb/Fun$Tuple3;->a:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 391
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mapdb/Fun$Tuple3;->b:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 392
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mapdb/Fun$Tuple3;->c:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 393
    .end local v21    # "t":Lorg/mapdb/Fun$Tuple3;
    :cond_31
    const-class v25, Lorg/mapdb/Fun$Tuple4;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_32

    .line 394
    const/16 v25, 0x99

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    move-object/from16 v21, p2

    .line 396
    check-cast v21, Lorg/mapdb/Fun$Tuple4;

    .line 397
    .local v21, "t":Lorg/mapdb/Fun$Tuple4;
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mapdb/Fun$Tuple4;->a:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 398
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mapdb/Fun$Tuple4;->b:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 399
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mapdb/Fun$Tuple4;->c:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 400
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mapdb/Fun$Tuple4;->d:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 401
    .end local v21    # "t":Lorg/mapdb/Fun$Tuple4;
    :cond_32
    const-class v25, Lorg/mapdb/Fun$Tuple5;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_33

    .line 402
    const/16 v25, 0x9a

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    move-object/from16 v21, p2

    .line 403
    check-cast v21, Lorg/mapdb/Fun$Tuple5;

    .line 404
    .local v21, "t":Lorg/mapdb/Fun$Tuple5;
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mapdb/Fun$Tuple5;->a:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 405
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mapdb/Fun$Tuple5;->b:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 406
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mapdb/Fun$Tuple5;->c:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 407
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mapdb/Fun$Tuple5;->d:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 408
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mapdb/Fun$Tuple5;->e:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 409
    .end local v21    # "t":Lorg/mapdb/Fun$Tuple5;
    :cond_33
    const-class v25, Lorg/mapdb/Fun$Tuple6;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_34

    .line 410
    const/16 v25, 0x9b

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    move-object/from16 v21, p2

    .line 411
    check-cast v21, Lorg/mapdb/Fun$Tuple6;

    .line 412
    .local v21, "t":Lorg/mapdb/Fun$Tuple6;
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mapdb/Fun$Tuple6;->a:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 413
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mapdb/Fun$Tuple6;->b:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 414
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mapdb/Fun$Tuple6;->c:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 415
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mapdb/Fun$Tuple6;->d:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 416
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mapdb/Fun$Tuple6;->e:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 417
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mapdb/Fun$Tuple6;->f:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 418
    .end local v21    # "t":Lorg/mapdb/Fun$Tuple6;
    :cond_34
    const-class v25, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_35

    .line 419
    const/16 v25, 0x96

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 420
    const/16 v25, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    move-object/from16 v22, p2

    .line 421
    check-cast v22, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;

    .line 422
    .local v22, "s":Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->aComparator:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 423
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 424
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 425
    .end local v22    # "s":Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;
    :cond_35
    const-class v25, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_36

    .line 426
    const/16 v25, 0x96

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 427
    const/16 v25, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    move-object/from16 v22, p2

    .line 428
    check-cast v22, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;

    .line 429
    .local v22, "s":Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->aComparator:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 430
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->bComparator:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 431
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 432
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 433
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 434
    .end local v22    # "s":Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;
    :cond_36
    const-class v25, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_37

    .line 435
    const/16 v25, 0x96

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 436
    const/16 v25, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    move-object/from16 v22, p2

    .line 437
    check-cast v22, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;

    .line 438
    .local v22, "s":Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->aComparator:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 439
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->bComparator:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 440
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->cComparator:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 441
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 442
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 443
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 444
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 445
    .end local v22    # "s":Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;
    :cond_37
    const-class v25, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_38

    .line 446
    const/16 v25, 0x96

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 447
    const/16 v25, 0x37

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    move-object/from16 v22, p2

    .line 448
    check-cast v22, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;

    .line 449
    .local v22, "s":Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->aComparator:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 450
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->bComparator:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 451
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->cComparator:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 452
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->dComparator:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 453
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 454
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 455
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 456
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 457
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->eSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 458
    .end local v22    # "s":Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;
    :cond_38
    const-class v25, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_39

    .line 459
    const/16 v25, 0x96

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 460
    const/16 v25, 0x38

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    move-object/from16 v22, p2

    .line 461
    check-cast v22, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;

    .line 462
    .local v22, "s":Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->aComparator:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 463
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->bComparator:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 464
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->cComparator:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 465
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->dComparator:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 466
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->eComparator:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 467
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 468
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 469
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 470
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 471
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->eSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 472
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->fSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 473
    .end local v22    # "s":Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;
    :cond_39
    const-class v25, Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_3a

    .line 474
    const/16 v25, 0x96

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 475
    const/16 v25, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 476
    check-cast p2, Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;

    .end local p2    # "obj":Ljava/lang/Object;
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;->defaultSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 477
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3a
    const-class v25, Lorg/mapdb/Fun$ArrayComparator;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_3b

    .line 478
    const/16 v25, 0x96

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 479
    const/16 v25, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 480
    check-cast p2, Lorg/mapdb/Fun$ArrayComparator;

    .end local p2    # "obj":Ljava/lang/Object;
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mapdb/Fun$ArrayComparator;->comparators:[Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 481
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3b
    const-class v25, Lorg/mapdb/Serializer$CompressionWrapper;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_3c

    .line 482
    const/16 v25, 0x96

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 483
    const/16 v25, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 484
    check-cast p2, Lorg/mapdb/Serializer$CompressionWrapper;

    .end local p2    # "obj":Ljava/lang/Object;
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mapdb/Serializer$CompressionWrapper;->serializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 485
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3c
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mapdb/Fun$Tuple2Comparator;

    move/from16 v25, v0

    if-eqz v25, :cond_3d

    .line 486
    const/16 v25, 0x96

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 487
    const/16 v25, 0x16

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    move-object/from16 v12, p2

    .line 488
    check-cast v12, Lorg/mapdb/Fun$Tuple2Comparator;

    .line 489
    .local v12, "c":Lorg/mapdb/Fun$Tuple2Comparator;
    iget-object v0, v12, Lorg/mapdb/Fun$Tuple2Comparator;->a:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 490
    iget-object v0, v12, Lorg/mapdb/Fun$Tuple2Comparator;->b:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 491
    .end local v12    # "c":Lorg/mapdb/Fun$Tuple2Comparator;
    :cond_3d
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mapdb/Fun$Tuple3Comparator;

    move/from16 v25, v0

    if-eqz v25, :cond_3e

    .line 492
    const/16 v25, 0x96

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 493
    const/16 v25, 0x17

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    move-object/from16 v12, p2

    .line 494
    check-cast v12, Lorg/mapdb/Fun$Tuple3Comparator;

    .line 495
    .local v12, "c":Lorg/mapdb/Fun$Tuple3Comparator;
    iget-object v0, v12, Lorg/mapdb/Fun$Tuple3Comparator;->a:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 496
    iget-object v0, v12, Lorg/mapdb/Fun$Tuple3Comparator;->b:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 497
    iget-object v0, v12, Lorg/mapdb/Fun$Tuple3Comparator;->c:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 498
    .end local v12    # "c":Lorg/mapdb/Fun$Tuple3Comparator;
    :cond_3e
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mapdb/Fun$Tuple4Comparator;

    move/from16 v25, v0

    if-eqz v25, :cond_3f

    .line 499
    const/16 v25, 0x96

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 500
    const/16 v25, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    move-object/from16 v12, p2

    .line 501
    check-cast v12, Lorg/mapdb/Fun$Tuple4Comparator;

    .line 502
    .local v12, "c":Lorg/mapdb/Fun$Tuple4Comparator;
    iget-object v0, v12, Lorg/mapdb/Fun$Tuple4Comparator;->a:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 503
    iget-object v0, v12, Lorg/mapdb/Fun$Tuple4Comparator;->b:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 504
    iget-object v0, v12, Lorg/mapdb/Fun$Tuple4Comparator;->c:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 505
    iget-object v0, v12, Lorg/mapdb/Fun$Tuple4Comparator;->d:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 506
    .end local v12    # "c":Lorg/mapdb/Fun$Tuple4Comparator;
    :cond_3f
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mapdb/Fun$Tuple5Comparator;

    move/from16 v25, v0

    if-eqz v25, :cond_40

    .line 507
    const/16 v25, 0x96

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 508
    const/16 v25, 0x33

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    move-object/from16 v12, p2

    .line 509
    check-cast v12, Lorg/mapdb/Fun$Tuple5Comparator;

    .line 510
    .local v12, "c":Lorg/mapdb/Fun$Tuple5Comparator;
    iget-object v0, v12, Lorg/mapdb/Fun$Tuple5Comparator;->a:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 511
    iget-object v0, v12, Lorg/mapdb/Fun$Tuple5Comparator;->b:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 512
    iget-object v0, v12, Lorg/mapdb/Fun$Tuple5Comparator;->c:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 513
    iget-object v0, v12, Lorg/mapdb/Fun$Tuple5Comparator;->d:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 514
    iget-object v0, v12, Lorg/mapdb/Fun$Tuple5Comparator;->e:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 515
    .end local v12    # "c":Lorg/mapdb/Fun$Tuple5Comparator;
    :cond_40
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mapdb/Fun$Tuple6Comparator;

    move/from16 v25, v0

    if-eqz v25, :cond_41

    .line 516
    const/16 v25, 0x96

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 517
    const/16 v25, 0x34

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    move-object/from16 v12, p2

    .line 518
    check-cast v12, Lorg/mapdb/Fun$Tuple6Comparator;

    .line 519
    .local v12, "c":Lorg/mapdb/Fun$Tuple6Comparator;
    iget-object v0, v12, Lorg/mapdb/Fun$Tuple6Comparator;->a:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 520
    iget-object v0, v12, Lorg/mapdb/Fun$Tuple6Comparator;->b:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 521
    iget-object v0, v12, Lorg/mapdb/Fun$Tuple6Comparator;->c:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 522
    iget-object v0, v12, Lorg/mapdb/Fun$Tuple6Comparator;->d:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 523
    iget-object v0, v12, Lorg/mapdb/Fun$Tuple6Comparator;->e:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 524
    iget-object v0, v12, Lorg/mapdb/Fun$Tuple6Comparator;->f:Ljava/util/Comparator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 525
    .end local v12    # "c":Lorg/mapdb/Fun$Tuple6Comparator;
    :cond_41
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mapdb/Atomic$Var;

    move/from16 v25, v0

    if-eqz v25, :cond_42

    .line 526
    const/16 v25, 0xb4

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    move-object/from16 v24, p2

    .line 527
    check-cast v24, Lorg/mapdb/Atomic$Var;

    .line 528
    .local v24, "v":Lorg/mapdb/Atomic$Var;
    move-object/from16 v0, v24

    iget-wide v0, v0, Lorg/mapdb/Atomic$Var;->recid:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    .line 529
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/mapdb/Atomic$Var;->serializer:Lorg/mapdb/Serializer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0

    .line 531
    .end local v24    # "v":Lorg/mapdb/Atomic$Var;
    :cond_42
    invoke-virtual/range {p0 .. p3}, Lorg/mapdb/SerializerBase;->serializeUnknownObject(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto/16 :goto_0
.end method

.method private serializeByte(Ljava/io/DataOutput;Ljava/lang/Object;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    check-cast p2, Ljava/lang/Byte;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 689
    .local v0, "val":B
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 690
    const/16 v1, 0x52

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 699
    :goto_0
    return-void

    .line 691
    :cond_0
    if-nez v0, :cond_1

    .line 692
    const/16 v1, 0x53

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 693
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 694
    const/16 v1, 0x54

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 696
    :cond_2
    const/16 v1, 0x55

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 697
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0
.end method

.method private serializeByteArray(Ljava/io/DataOutput;[B)V
    .locals 5
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 835
    array-length v3, p2

    if-lez v3, :cond_1

    const/4 v0, 0x1

    .line 837
    .local v0, "allEqual":Z
    :goto_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 838
    add-int/lit8 v3, v1, -0x1

    aget-byte v3, p2, v3

    aget-byte v4, p2, v1

    if-eq v3, v4, :cond_2

    .line 839
    const/4 v0, 0x0

    .line 843
    :cond_0
    if-eqz v0, :cond_3

    .line 844
    const/16 v3, 0x6e

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write(I)V

    .line 845
    array-length v3, p2

    invoke-static {p1, v3}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 846
    aget-byte v2, p2, v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write(I)V

    .line 852
    :goto_2
    return-void

    .end local v0    # "allEqual":Z
    .end local v1    # "i":I
    :cond_1
    move v0, v2

    .line 835
    goto :goto_0

    .line 837
    .restart local v0    # "allEqual":Z
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 848
    :cond_3
    const/16 v2, 0x6d

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write(I)V

    .line 849
    array-length v2, p2

    invoke-static {p1, v2}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 850
    invoke-interface {p1, p2}, Ljava/io/DataOutput;->write([B)V

    goto :goto_2
.end method

.method private serializeCollection(ILjava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V
    .locals 4
    .param p1, "header"    # I
    .param p2, "out"    # Ljava/io/DataOutput;
    .param p3, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/DataOutput;",
            "Ljava/lang/Object;",
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
    .line 825
    .local p4, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    move-object v1, p3

    check-cast v1, Ljava/util/Collection;

    .line 826
    .local v1, "l":Ljava/util/Collection;
    invoke-interface {p2, p1}, Ljava/io/DataOutput;->write(I)V

    .line 827
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {p2, v3}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 829
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 830
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {p0, p2, v2, p4}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto :goto_0

    .line 832
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private serializeDouble(Ljava/io/DataOutput;Ljava/lang/Object;)V
    .locals 6
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 610
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 611
    .local v0, "v":D
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .line 612
    const/16 v2, 0x66

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write(I)V

    .line 630
    :goto_0
    return-void

    .line 613
    :cond_0
    cmpl-double v2, v0, v4

    if-nez v2, :cond_1

    .line 614
    const/16 v2, 0x67

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 615
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_2

    .line 616
    const/16 v2, 0x68

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 617
    :cond_2
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_3

    const-wide v2, 0x406fe00000000000L    # 255.0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_3

    double-to-int v2, v0

    int-to-double v2, v2

    cmpl-double v2, v2, v0

    if-nez v2, :cond_3

    .line 618
    const/16 v2, 0x69

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write(I)V

    .line 619
    double-to-int v2, v0

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 620
    :cond_3
    const-wide/high16 v2, -0x3f20000000000000L    # -32768.0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_4

    const-wide v2, 0x40dfffc000000000L    # 32767.0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_4

    double-to-int v2, v0

    int-to-short v2, v2

    int-to-double v2, v2

    cmpl-double v2, v2, v0

    if-nez v2, :cond_4

    .line 621
    const/16 v2, 0x6a

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write(I)V

    .line 622
    double-to-int v2, v0

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_0

    .line 623
    :cond_4
    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_5

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_5

    double-to-int v2, v0

    int-to-double v2, v2

    cmpl-double v2, v2, v0

    if-nez v2, :cond_5

    .line 624
    const/16 v2, 0x6b

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write(I)V

    .line 625
    double-to-int v2, v0

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0

    .line 627
    :cond_5
    const/16 v2, 0x6c

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write(I)V

    .line 628
    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    goto :goto_0
.end method

.method private serializeFloat(Ljava/io/DataOutput;Ljava/lang/Object;)V
    .locals 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 633
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 634
    .local v0, "v":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 635
    const/16 v1, 0x60

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 650
    :goto_0
    return-void

    .line 636
    :cond_0
    cmpl-float v1, v0, v2

    if-nez v1, :cond_1

    .line 637
    const/16 v1, 0x61

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 638
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 639
    const/16 v1, 0x62

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 640
    :cond_2
    cmpl-float v1, v0, v2

    if-ltz v1, :cond_3

    const/high16 v1, 0x437f0000    # 255.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_3

    float-to-int v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_3

    .line 641
    const/16 v1, 0x63

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 642
    float-to-int v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 643
    :cond_3
    const/high16 v1, -0x39000000    # -32768.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_4

    const v1, 0x46fffe00    # 32767.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_4

    float-to-int v1, v0

    int-to-short v1, v1

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_4

    .line 644
    const/16 v1, 0x64

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 645
    float-to-int v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_0

    .line 647
    :cond_4
    const/16 v1, 0x65

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 648
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    goto :goto_0
.end method

.method private serializeInt(Ljava/io/DataOutput;Ljava/lang/Object;)V
    .locals 10
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0xff

    .line 741
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 743
    .local v2, "val":I
    sparse-switch v2, :sswitch_data_0

    .line 780
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    ushr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    if-eqz v3, :cond_1

    .line 781
    const/16 v3, 0x26

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write(I)V

    .line 782
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 770
    :sswitch_0
    add-int/lit8 v3, v2, 0x9

    add-int/lit8 v3, v3, 0x4

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 773
    :sswitch_1
    const/16 v3, 0x1e

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 776
    :sswitch_2
    const/16 v3, 0x1f

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 786
    :cond_1
    const/4 v0, 0x0

    .line 787
    .local v0, "neg":I
    if-gez v2, :cond_2

    .line 788
    const/4 v0, -0x1

    .line 789
    neg-int v2, v2

    .line 793
    :cond_2
    const/16 v1, 0x18

    .line 794
    .local v1, "size":I
    :goto_1
    shr-int v3, v2, v1

    int-to-long v4, v3

    and-long/2addr v4, v8

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 795
    add-int/lit8 v1, v1, -0x8

    goto :goto_1

    .line 799
    :cond_3
    div-int/lit8 v3, v1, 0x8

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x21

    add-int/2addr v3, v0

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write(I)V

    .line 802
    :goto_2
    if-ltz v1, :cond_0

    .line 803
    shr-int v3, v2, v1

    int-to-long v4, v3

    and-long/2addr v4, v8

    long-to-int v3, v4

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write(I)V

    .line 804
    add-int/lit8 v1, v1, -0x8

    goto :goto_2

    .line 743
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        -0x9 -> :sswitch_0
        -0x8 -> :sswitch_0
        -0x7 -> :sswitch_0
        -0x6 -> :sswitch_0
        -0x5 -> :sswitch_0
        -0x4 -> :sswitch_0
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x7fffffff -> :sswitch_2
    .end sparse-switch
.end method

.method private serializeIntArray(Ljava/io/DataOutput;[I)V
    .locals 8
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "val"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    const/high16 v5, -0x80000000

    .line 585
    .local v5, "max":I
    const v6, 0x7fffffff

    .line 586
    .local v6, "min":I
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v0, v2

    .line 587
    .local v1, "i":I
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 588
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 586
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 590
    .end local v1    # "i":I
    :cond_0
    const/16 v7, -0x80

    if-gt v7, v6, :cond_1

    const/16 v7, 0x7f

    if-gt v5, v7, :cond_1

    .line 591
    const/16 v7, 0x74

    invoke-interface {p1, v7}, Ljava/io/DataOutput;->write(I)V

    .line 592
    array-length v7, p2

    invoke-static {p1, v7}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 593
    move-object v0, p2

    array-length v4, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_4

    aget v1, v0, v2

    .restart local v1    # "i":I
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 594
    .end local v1    # "i":I
    :cond_1
    const/16 v7, -0x8000

    if-gt v7, v6, :cond_2

    const/16 v7, 0x7fff

    if-gt v5, v7, :cond_2

    .line 595
    const/16 v7, 0x75

    invoke-interface {p1, v7}, Ljava/io/DataOutput;->write(I)V

    .line 596
    array-length v7, p2

    invoke-static {p1, v7}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 597
    move-object v0, p2

    array-length v4, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_4

    aget v1, v0, v2

    .restart local v1    # "i":I
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeShort(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 598
    .end local v1    # "i":I
    :cond_2
    if-ltz v6, :cond_3

    .line 599
    const/16 v7, 0x76

    invoke-interface {p1, v7}, Ljava/io/DataOutput;->write(I)V

    .line 600
    array-length v7, p2

    invoke-static {p1, v7}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 601
    move-object v0, p2

    array-length v4, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_4

    aget v3, v0, v2

    .local v3, "l":I
    invoke-static {p1, v3}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 603
    .end local v3    # "l":I
    :cond_3
    const/16 v7, 0x77

    invoke-interface {p1, v7}, Ljava/io/DataOutput;->write(I)V

    .line 604
    array-length v7, p2

    invoke-static {p1, v7}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 605
    move-object v0, p2

    array-length v4, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v4, :cond_4

    aget v1, v0, v2

    .restart local v1    # "i":I
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 607
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method private serializeLong(Ljava/io/DataOutput;Ljava/lang/Object;)V
    .locals 12
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0xff

    const-wide/16 v8, 0x0

    .line 702
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 703
    .local v2, "val":J
    const-wide/16 v4, -0x9

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    const-wide/16 v4, 0x10

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 704
    const-wide/16 v4, 0x27

    const-wide/16 v6, 0x9

    add-long/2addr v6, v2

    add-long/2addr v4, v6

    long-to-int v4, v4

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->write(I)V

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    .line 707
    const/16 v4, 0x41

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 709
    :cond_2
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    .line 710
    const/16 v4, 0x42

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 712
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const/16 v6, 0x38

    ushr-long/2addr v4, v6

    and-long/2addr v4, v10

    cmp-long v4, v4, v8

    if-eqz v4, :cond_4

    .line 713
    const/16 v4, 0x51

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->write(I)V

    .line 714
    invoke-interface {p1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_0

    .line 718
    :cond_4
    const/4 v0, 0x0

    .line 719
    .local v0, "neg":I
    cmp-long v4, v2, v8

    if-gez v4, :cond_5

    .line 720
    const/4 v0, -0x1

    .line 721
    neg-long v2, v2

    .line 725
    :cond_5
    const/16 v1, 0x30

    .line 726
    .local v1, "size":I
    :goto_1
    shr-long v4, v2, v1

    and-long/2addr v4, v10

    cmp-long v4, v4, v8

    if-nez v4, :cond_6

    .line 727
    add-int/lit8 v1, v1, -0x8

    goto :goto_1

    .line 731
    :cond_6
    div-int/lit8 v4, v1, 0x8

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x44

    add-int/2addr v4, v0

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->write(I)V

    .line 734
    :goto_2
    if-ltz v1, :cond_0

    .line 735
    shr-long v4, v2, v1

    and-long/2addr v4, v10

    long-to-int v4, v4

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->write(I)V

    .line 736
    add-int/lit8 v1, v1, -0x8

    goto :goto_2
.end method

.method private serializeLongArray(Ljava/io/DataOutput;[J)V
    .locals 16
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "val"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    const-wide/high16 v10, -0x8000000000000000L

    .line 555
    .local v10, "max":J
    const-wide v12, 0x7fffffffffffffffL

    .line 556
    .local v12, "min":J
    move-object/from16 v2, p2

    .local v2, "arr$":[J
    array-length v8, v2

    .local v8, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v8, :cond_0

    aget-wide v4, v2, v3

    .line 557
    .local v4, "i":J
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 558
    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 556
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 560
    .end local v4    # "i":J
    :cond_0
    const-wide/16 v14, -0x80

    cmp-long v9, v14, v12

    if-gtz v9, :cond_1

    const-wide/16 v14, 0x7f

    cmp-long v9, v10, v14

    if-gtz v9, :cond_1

    .line 561
    const/16 v9, 0x78

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/io/DataOutput;->write(I)V

    .line 562
    move-object/from16 v0, p2

    array-length v9, v0

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 563
    move-object/from16 v2, p2

    array-length v8, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_5

    aget-wide v4, v2, v3

    .restart local v4    # "i":J
    long-to-int v9, v4

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/io/DataOutput;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 564
    .end local v4    # "i":J
    :cond_1
    const-wide/16 v14, -0x8000

    cmp-long v9, v14, v12

    if-gtz v9, :cond_2

    const-wide/16 v14, 0x7fff

    cmp-long v9, v10, v14

    if-gtz v9, :cond_2

    .line 565
    const/16 v9, 0x79

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/io/DataOutput;->write(I)V

    .line 566
    move-object/from16 v0, p2

    array-length v9, v0

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 567
    move-object/from16 v2, p2

    array-length v8, v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_5

    aget-wide v4, v2, v3

    .restart local v4    # "i":J
    long-to-int v9, v4

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/io/DataOutput;->writeShort(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 568
    .end local v4    # "i":J
    :cond_2
    const-wide/16 v14, 0x0

    cmp-long v9, v14, v12

    if-gtz v9, :cond_3

    .line 569
    const/16 v9, 0x7a

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/io/DataOutput;->write(I)V

    .line 570
    move-object/from16 v0, p2

    array-length v9, v0

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 571
    move-object/from16 v2, p2

    array-length v8, v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v8, :cond_5

    aget-wide v6, v2, v3

    .local v6, "l":J
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 572
    .end local v6    # "l":J
    :cond_3
    const-wide/32 v14, -0x80000000

    cmp-long v9, v14, v12

    if-gtz v9, :cond_4

    const-wide/32 v14, 0x7fffffff

    cmp-long v9, v10, v14

    if-gtz v9, :cond_4

    .line 573
    const/16 v9, 0x7b

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/io/DataOutput;->write(I)V

    .line 574
    move-object/from16 v0, p2

    array-length v9, v0

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 575
    move-object/from16 v2, p2

    array-length v8, v2

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v8, :cond_5

    aget-wide v4, v2, v3

    .restart local v4    # "i":J
    long-to-int v9, v4

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/io/DataOutput;->writeInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 577
    .end local v4    # "i":J
    :cond_4
    const/16 v9, 0x7c

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/io/DataOutput;->write(I)V

    .line 578
    move-object/from16 v0, p2

    array-length v9, v0

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 579
    move-object/from16 v2, p2

    array-length v8, v2

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v8, :cond_5

    aget-wide v4, v2, v3

    .restart local v4    # "i":J
    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Ljava/io/DataOutput;->writeLong(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 581
    .end local v4    # "i":J
    :cond_5
    return-void
.end method

.method private serializeMap(ILjava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V
    .locals 4
    .param p1, "header"    # I
    .param p2, "out"    # Ljava/io/DataOutput;
    .param p3, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/DataOutput;",
            "Ljava/lang/Object;",
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
    .line 815
    .local p4, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    move-object v1, p3

    check-cast v1, Ljava/util/Map;

    .line 816
    .local v1, "l":Ljava/util/Map;
    invoke-interface {p2, p1}, Ljava/io/DataOutput;->write(I)V

    .line 817
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {p2, v3}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 818
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 819
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {p0, p2, v2, p4}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 820
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p2, v3, p4}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto :goto_0

    .line 822
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private serializeShort(Ljava/io/DataOutput;Ljava/lang/Object;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    check-cast p2, Ljava/lang/Short;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 654
    .local v0, "val":S
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 655
    const/16 v1, 0x5a

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 670
    :goto_0
    return-void

    .line 656
    :cond_0
    if-nez v0, :cond_1

    .line 657
    const/16 v1, 0x5b

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 658
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 659
    const/16 v1, 0x5c

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 660
    :cond_2
    if-lez v0, :cond_3

    const/16 v1, 0xff

    if-ge v0, v1, :cond_3

    .line 661
    const/16 v1, 0x5d

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 662
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 663
    :cond_3
    if-gez v0, :cond_4

    const/16 v1, -0xff

    if-le v0, v1, :cond_4

    .line 664
    const/16 v1, 0x5e

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 665
    neg-int v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 667
    :cond_4
    const/16 v1, 0x5f

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 668
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_0
.end method

.method private serializeString(Ljava/io/DataOutput;Ljava/lang/Object;)V
    .locals 4
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 537
    .local v2, "val":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 538
    .local v1, "len":I
    if-nez v1, :cond_1

    .line 539
    const/16 v3, 0x7d

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write(I)V

    .line 550
    :cond_0
    return-void

    .line 541
    :cond_1
    const/16 v3, 0xa

    if-gt v1, v3, :cond_2

    .line 542
    add-int/lit8 v3, v1, 0x7d

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write(I)V

    .line 547
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    move-object v3, p2

    .line 548
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {p1, v3}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 544
    .end local v0    # "i":I
    :cond_2
    const/16 v3, 0x88

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write(I)V

    .line 545
    invoke-static {p1, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    goto :goto_0
.end method

.method private serializerChar(Ljava/io/DataOutput;Ljava/lang/Object;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    move-object v1, p2

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 674
    .local v0, "val":C
    if-nez v0, :cond_0

    .line 675
    const/16 v1, 0x56

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 685
    .end local p2    # "obj":Ljava/lang/Object;
    :goto_0
    return-void

    .line 676
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 677
    const/16 v1, 0x57

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 678
    :cond_1
    const/16 v1, 0xff

    if-gt v0, v1, :cond_2

    .line 679
    const/16 v1, 0x58

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 680
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 682
    :cond_2
    const/16 v1, 0x59

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 683
    check-cast p2, Ljava/lang/Character;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeChar(I)V

    goto :goto_0
.end method


# virtual methods
.method public deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;
    .locals 1
    .param p1, "is"    # Ljava/io/DataInput;
    .param p2, "capacity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 866
    if-nez p2, :cond_0

    .line 867
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;
    .locals 12
    .param p1, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "Lorg/mapdb/SerializerBase$FastArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 872
    .local p2, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 874
    .local v5, "ret":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 875
    .local v1, "ir":I
    const-wide/16 v2, 0x0

    .line 876
    .local v2, "lr":J
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 879
    .local v0, "head":I
    packed-switch v0, :pswitch_data_0

    .line 1116
    .end local v5    # "ret":Ljava/lang/Object;
    :goto_0
    :pswitch_0
    if-nez v5, :cond_0

    .line 1117
    invoke-direct {p0, v0, p1}, Lorg/mapdb/SerializerBase;->deserialize2(ILjava/io/DataInput;)Ljava/lang/Object;

    move-result-object v5

    .line 1120
    :cond_0
    if-nez v5, :cond_1

    const/4 v6, 0x1

    if-ne v0, v6, :cond_5

    .line 1121
    :cond_1
    if-eqz p2, :cond_2

    .line 1122
    invoke-virtual {p2, v5}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 1140
    :cond_2
    :goto_1
    return-object v5

    .line 881
    .restart local v5    # "ret":Ljava/lang/Object;
    :pswitch_1
    new-instance v6, Ljava/io/IOError;

    new-instance v7, Ljava/io/IOException;

    const-string v8, "Zero Header, data corrupted"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 885
    :pswitch_2
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 886
    .local v5, "ret":Ljava/lang/Boolean;
    goto :goto_0

    .line 888
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_3
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 889
    .local v5, "ret":Ljava/lang/Boolean;
    goto :goto_0

    .line 916
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_4
    add-int/lit8 v6, v0, -0x4

    add-int/lit8 v6, v6, -0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 917
    .local v5, "ret":Ljava/lang/Integer;
    goto :goto_0

    .line 919
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_5
    const/high16 v6, -0x80000000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 920
    .local v5, "ret":Ljava/lang/Integer;
    goto :goto_0

    .line 922
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_6
    const v6, 0x7fffffff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 923
    .local v5, "ret":Ljava/lang/Integer;
    goto :goto_0

    .line 927
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_7
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    and-int/lit16 v1, v6, 0xff

    .line 930
    :pswitch_8
    shl-int/lit8 v6, v1, 0x8

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    or-int v1, v6, v7

    .line 933
    :pswitch_9
    shl-int/lit8 v6, v1, 0x8

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    or-int v1, v6, v7

    .line 934
    rem-int/lit8 v6, v0, 0x2

    if-nez v6, :cond_3

    .line 935
    neg-int v1, v1

    .line 936
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 937
    .local v5, "ret":Ljava/lang/Integer;
    goto :goto_0

    .line 940
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_a
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 941
    .local v5, "ret":Ljava/lang/Integer;
    goto :goto_0

    .line 969
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_b
    add-int/lit8 v6, v0, -0x27

    add-int/lit8 v6, v6, -0x9

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 970
    .local v5, "ret":Ljava/lang/Long;
    goto :goto_0

    .line 972
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_c
    const-wide/high16 v6, -0x8000000000000000L

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 973
    .local v5, "ret":Ljava/lang/Long;
    goto :goto_0

    .line 975
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_d
    const-wide v6, 0x7fffffffffffffffL

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 976
    .local v5, "ret":Ljava/lang/Long;
    goto/16 :goto_0

    .line 980
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_e
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long v2, v6, v8

    .line 983
    :pswitch_f
    const/16 v6, 0x8

    shl-long v6, v2, v6

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v8

    int-to-long v8, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    or-long v2, v6, v8

    .line 986
    :pswitch_10
    const/16 v6, 0x8

    shl-long v6, v2, v6

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v8

    int-to-long v8, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    or-long v2, v6, v8

    .line 989
    :pswitch_11
    const/16 v6, 0x8

    shl-long v6, v2, v6

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v8

    int-to-long v8, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    or-long v2, v6, v8

    .line 992
    :pswitch_12
    const/16 v6, 0x8

    shl-long v6, v2, v6

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v8

    int-to-long v8, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    or-long v2, v6, v8

    .line 995
    :pswitch_13
    const/16 v6, 0x8

    shl-long v6, v2, v6

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v8

    int-to-long v8, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    or-long v2, v6, v8

    .line 998
    :pswitch_14
    const/16 v6, 0x8

    shl-long v6, v2, v6

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v8

    int-to-long v8, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    or-long v2, v6, v8

    .line 999
    rem-int/lit8 v6, v0, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    neg-long v2, v2

    .line 1000
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1001
    .local v5, "ret":Ljava/lang/Long;
    goto/16 :goto_0

    .line 1004
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_15
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1005
    .local v5, "ret":Ljava/lang/Long;
    goto/16 :goto_0

    .line 1008
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_16
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    .line 1009
    .local v5, "ret":Ljava/lang/Byte;
    goto/16 :goto_0

    .line 1011
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_17
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    .line 1012
    .local v5, "ret":Ljava/lang/Byte;
    goto/16 :goto_0

    .line 1014
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_18
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    .line 1015
    .local v5, "ret":Ljava/lang/Byte;
    goto/16 :goto_0

    .line 1017
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_19
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    .line 1018
    .local v5, "ret":Ljava/lang/Byte;
    goto/16 :goto_0

    .line 1021
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_1a
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 1022
    .local v5, "ret":Ljava/lang/Character;
    goto/16 :goto_0

    .line 1024
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_1b
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 1025
    .local v5, "ret":Ljava/lang/Character;
    goto/16 :goto_0

    .line 1027
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_1c
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    int-to-char v6, v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 1028
    .local v5, "ret":Ljava/lang/Character;
    goto/16 :goto_0

    .line 1030
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_1d
    invoke-interface {p1}, Ljava/io/DataInput;->readChar()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 1031
    .local v5, "ret":Ljava/lang/Character;
    goto/16 :goto_0

    .line 1035
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_1e
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    .line 1036
    .local v5, "ret":Ljava/lang/Short;
    goto/16 :goto_0

    .line 1038
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_1f
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    .line 1039
    .local v5, "ret":Ljava/lang/Short;
    goto/16 :goto_0

    .line 1041
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_20
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    .line 1042
    .local v5, "ret":Ljava/lang/Short;
    goto/16 :goto_0

    .line 1044
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_21
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    int-to-short v6, v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    .line 1045
    .local v5, "ret":Ljava/lang/Short;
    goto/16 :goto_0

    .line 1047
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_22
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    neg-int v6, v6

    int-to-short v6, v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    .line 1048
    .local v5, "ret":Ljava/lang/Short;
    goto/16 :goto_0

    .line 1050
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_23
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    .line 1051
    .local v5, "ret":Ljava/lang/Short;
    goto/16 :goto_0

    .line 1054
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_24
    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 1055
    .local v5, "ret":Ljava/lang/Float;
    goto/16 :goto_0

    .line 1057
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_25
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 1058
    .local v5, "ret":Ljava/lang/Float;
    goto/16 :goto_0

    .line 1060
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_26
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 1061
    .local v5, "ret":Ljava/lang/Float;
    goto/16 :goto_0

    .line 1063
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_27
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 1064
    .local v5, "ret":Ljava/lang/Float;
    goto/16 :goto_0

    .line 1066
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_28
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v6

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 1067
    .local v5, "ret":Ljava/lang/Float;
    goto/16 :goto_0

    .line 1069
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_29
    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 1070
    .local v5, "ret":Ljava/lang/Float;
    goto/16 :goto_0

    .line 1072
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_2a
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 1073
    .local v5, "ret":Ljava/lang/Double;
    goto/16 :goto_0

    .line 1075
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_2b
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 1076
    .local v5, "ret":Ljava/lang/Double;
    goto/16 :goto_0

    .line 1078
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_2c
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 1079
    .local v5, "ret":Ljava/lang/Double;
    goto/16 :goto_0

    .line 1081
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_2d
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 1082
    .local v5, "ret":Ljava/lang/Double;
    goto/16 :goto_0

    .line 1084
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_2e
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 1085
    .local v5, "ret":Ljava/lang/Double;
    goto/16 :goto_0

    .line 1087
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_2f
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 1088
    .local v5, "ret":Ljava/lang/Double;
    goto/16 :goto_0

    .line 1090
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_30
    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 1091
    .local v5, "ret":Ljava/lang/Double;
    goto/16 :goto_0

    .line 1094
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_31
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v6

    invoke-static {p1, v6}, Lorg/mapdb/SerializerBase;->deserializeString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object v5

    .line 1095
    .local v5, "ret":Ljava/lang/String;
    goto/16 :goto_0

    .line 1097
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_32
    const-string v5, ""

    .line 1098
    .local v5, "ret":Ljava/lang/String;
    goto/16 :goto_0

    .line 1109
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_33
    add-int/lit8 v6, v0, -0x7d

    invoke-static {p1, v6}, Lorg/mapdb/SerializerBase;->deserializeString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object v5

    .line 1110
    .local v5, "ret":Ljava/lang/String;
    goto/16 :goto_0

    .line 1113
    .local v5, "ret":Ljava/lang/Object;
    :pswitch_34
    new-instance v6, Ljava/io/EOFException;

    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    throw v6

    .line 1128
    .end local v5    # "ret":Ljava/lang/Object;
    :cond_5
    if-nez p2, :cond_6

    .line 1129
    new-instance p2, Lorg/mapdb/SerializerBase$FastArrayList;

    .end local p2    # "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-direct {p2}, Lorg/mapdb/SerializerBase$FastArrayList;-><init>()V

    .line 1130
    .restart local p2    # "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    :cond_6
    iget v4, p2, Lorg/mapdb/SerializerBase$FastArrayList;->size:I

    .line 1132
    .local v4, "oldObjectStackSize":I
    invoke-direct {p0, p1, p2, v0}, Lorg/mapdb/SerializerBase;->deserialize3(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;I)Ljava/lang/Object;

    move-result-object v5

    .line 1134
    .restart local v5    # "ret":Ljava/lang/Object;
    const/16 v6, 0xae

    if-eq v0, v6, :cond_2

    iget v6, p2, Lorg/mapdb/SerializerBase$FastArrayList;->size:I

    if-ne v6, v4, :cond_2

    .line 1136
    invoke-virtual {p2, v5}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 879
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_34
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_32
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_31
    .end packed-switch
.end method

.method protected deserializeClass(Ljava/io/DataInput;)Ljava/lang/Class;
    .locals 1
    .param p1, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1544
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mapdb/SerializerPojo;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected deserializeMapDB(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;
    .locals 6
    .param p1, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "Lorg/mapdb/SerializerBase$FastArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 1488
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v0

    .line 1490
    .local v0, "head":I
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->reverse:Lorg/mapdb/LongHashMap;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lorg/mapdb/LongHashMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    .line 1491
    .local v1, "singleton":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1530
    .end local v1    # "singleton":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1494
    .restart local v1    # "singleton":Ljava/lang/Object;
    :cond_0
    sget-boolean v2, Lorg/mapdb/SerializerBase;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1496
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 1533
    new-instance v2, Ljava/io/IOError;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unknown header byte, data corrupted"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1498
    :sswitch_0
    new-instance v1, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;

    .end local v1    # "singleton":Ljava/lang/Object;
    invoke-direct {v1, p0, p1, p2, v3}, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;-><init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;I)V

    goto :goto_0

    .line 1500
    .restart local v1    # "singleton":Ljava/lang/Object;
    :sswitch_1
    new-instance v1, Lorg/mapdb/Fun$ArrayComparator;

    .end local v1    # "singleton":Ljava/lang/Object;
    invoke-direct {v1, p0, p1, p2}, Lorg/mapdb/Fun$ArrayComparator;-><init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto :goto_0

    .line 1503
    .restart local v1    # "singleton":Ljava/lang/Object;
    :sswitch_2
    new-instance v1, Lorg/mapdb/Serializer$CompressionWrapper;

    .end local v1    # "singleton":Ljava/lang/Object;
    invoke-direct {v1, p0, p1, p2}, Lorg/mapdb/Serializer$CompressionWrapper;-><init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto :goto_0

    .line 1507
    .restart local v1    # "singleton":Ljava/lang/Object;
    :sswitch_3
    new-instance v1, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;

    .end local v1    # "singleton":Ljava/lang/Object;
    invoke-direct {v1, p0, p1, p2}, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;-><init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto :goto_0

    .line 1510
    .restart local v1    # "singleton":Ljava/lang/Object;
    :sswitch_4
    new-instance v1, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;

    .end local v1    # "singleton":Ljava/lang/Object;
    invoke-direct {v1, p0, p1, p2}, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;-><init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto :goto_0

    .line 1512
    .restart local v1    # "singleton":Ljava/lang/Object;
    :sswitch_5
    new-instance v1, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;

    .end local v1    # "singleton":Ljava/lang/Object;
    invoke-direct {v1, p0, p1, p2}, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;-><init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto :goto_0

    .line 1514
    .restart local v1    # "singleton":Ljava/lang/Object;
    :sswitch_6
    new-instance v1, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;

    .end local v1    # "singleton":Ljava/lang/Object;
    invoke-direct {v1, p0, p1, p2}, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;-><init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto :goto_0

    .line 1517
    .restart local v1    # "singleton":Ljava/lang/Object;
    :sswitch_7
    new-instance v1, Lorg/mapdb/Fun$Tuple2Comparator;

    .end local v1    # "singleton":Ljava/lang/Object;
    invoke-direct {v1, p0, p1, p2}, Lorg/mapdb/Fun$Tuple2Comparator;-><init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto :goto_0

    .line 1519
    .restart local v1    # "singleton":Ljava/lang/Object;
    :sswitch_8
    new-instance v1, Lorg/mapdb/Fun$Tuple3Comparator;

    .end local v1    # "singleton":Ljava/lang/Object;
    invoke-direct {v1, p0, p1, p2, v3}, Lorg/mapdb/Fun$Tuple3Comparator;-><init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;I)V

    goto :goto_0

    .line 1521
    .restart local v1    # "singleton":Ljava/lang/Object;
    :sswitch_9
    new-instance v1, Lorg/mapdb/Fun$Tuple4Comparator;

    .end local v1    # "singleton":Ljava/lang/Object;
    invoke-direct {v1, p0, p1, p2}, Lorg/mapdb/Fun$Tuple4Comparator;-><init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto :goto_0

    .line 1523
    .restart local v1    # "singleton":Ljava/lang/Object;
    :sswitch_a
    new-instance v1, Lorg/mapdb/Fun$Tuple5Comparator;

    .end local v1    # "singleton":Ljava/lang/Object;
    invoke-direct {v1, p0, p1, p2}, Lorg/mapdb/Fun$Tuple5Comparator;-><init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto :goto_0

    .line 1525
    .restart local v1    # "singleton":Ljava/lang/Object;
    :sswitch_b
    new-instance v1, Lorg/mapdb/Fun$Tuple6Comparator;

    .end local v1    # "singleton":Ljava/lang/Object;
    invoke-direct {v1, p0, p1, p2}, Lorg/mapdb/Fun$Tuple6Comparator;-><init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto :goto_0

    .line 1528
    .restart local v1    # "singleton":Ljava/lang/Object;
    :sswitch_c
    new-instance v1, Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;

    .end local v1    # "singleton":Ljava/lang/Object;
    invoke-direct {v1, p0, p1, p2}, Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;-><init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)V

    goto :goto_0

    .restart local v1    # "singleton":Ljava/lang/Object;
    :sswitch_d
    move-object v1, p0

    .line 1530
    goto :goto_0

    .line 1496
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_3
        0x9 -> :sswitch_4
        0xc -> :sswitch_d
        0xf -> :sswitch_c
        0x16 -> :sswitch_7
        0x17 -> :sswitch_8
        0x18 -> :sswitch_9
        0x2d -> :sswitch_1
        0x2f -> :sswitch_2
        0x33 -> :sswitch_a
        0x34 -> :sswitch_b
        0x37 -> :sswitch_5
        0x38 -> :sswitch_6
    .end sparse-switch
.end method

.method protected deserializeUnknownHeader(Ljava/io/DataInput;ILorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;
    .locals 3
    .param p1, "is"    # Ljava/io/DataInput;
    .param p2, "head"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "I",
            "Lorg/mapdb/SerializerBase$FastArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1726
    .local p3, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown serialization header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public fixedSize()I
    .locals 1

    .prologue
    .line 2122
    const/4 v0, -0x1

    return v0
.end method

.method protected getEngine()Lorg/mapdb/Engine;
    .locals 1

    .prologue
    .line 1538
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/mapdb/SerializerBase;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V

    .line 95
    return-void
.end method

.method public serialize(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V
    .locals 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/lang/Object;",
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
    .line 101
    .local p3, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    if-eqz p3, :cond_1

    .line 102
    invoke-virtual {p3, p2}, Lorg/mapdb/SerializerBase$FastArrayList;->identityIndexOf(Ljava/lang/Object;)I

    move-result v1

    .line 103
    .local v1, "indexInObjectStack":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 105
    const/16 v2, 0xae

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write(I)V

    .line 106
    invoke-static {p1, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 152
    .end local v1    # "indexInObjectStack":I
    .end local p2    # "obj":Ljava/lang/Object;
    :goto_0
    return-void

    .line 110
    .restart local v1    # "indexInObjectStack":I
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p3, p2}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 113
    .end local v1    # "indexInObjectStack":I
    :cond_1
    if-nez p2, :cond_2

    .line 114
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 121
    .local v0, "clazz":Ljava/lang/Class;
    const-class v2, Ljava/lang/Integer;

    if-ne v0, v2, :cond_3

    .line 122
    invoke-direct {p0, p1, p2}, Lorg/mapdb/SerializerBase;->serializeInt(Ljava/io/DataOutput;Ljava/lang/Object;)V

    goto :goto_0

    .line 124
    :cond_3
    const-class v2, Ljava/lang/Long;

    if-ne v0, v2, :cond_4

    .line 125
    invoke-direct {p0, p1, p2}, Lorg/mapdb/SerializerBase;->serializeLong(Ljava/io/DataOutput;Ljava/lang/Object;)V

    goto :goto_0

    .line 127
    :cond_4
    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_5

    .line 128
    invoke-direct {p0, p1, p2}, Lorg/mapdb/SerializerBase;->serializeString(Ljava/io/DataOutput;Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    :cond_5
    const-class v2, Ljava/lang/Boolean;

    if-ne v0, v2, :cond_7

    .line 131
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    :goto_1
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x3

    goto :goto_1

    .line 133
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_7
    const-class v2, Ljava/lang/Byte;

    if-ne v0, v2, :cond_8

    .line 134
    invoke-direct {p0, p1, p2}, Lorg/mapdb/SerializerBase;->serializeByte(Ljava/io/DataOutput;Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    :cond_8
    const-class v2, Ljava/lang/Character;

    if-ne v0, v2, :cond_9

    .line 137
    invoke-direct {p0, p1, p2}, Lorg/mapdb/SerializerBase;->serializerChar(Ljava/io/DataOutput;Ljava/lang/Object;)V

    goto :goto_0

    .line 139
    :cond_9
    const-class v2, Ljava/lang/Short;

    if-ne v0, v2, :cond_a

    .line 140
    invoke-direct {p0, p1, p2}, Lorg/mapdb/SerializerBase;->serializeShort(Ljava/io/DataOutput;Ljava/lang/Object;)V

    goto :goto_0

    .line 142
    :cond_a
    const-class v2, Ljava/lang/Float;

    if-ne v0, v2, :cond_b

    .line 143
    invoke-direct {p0, p1, p2}, Lorg/mapdb/SerializerBase;->serializeFloat(Ljava/io/DataOutput;Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    :cond_b
    const-class v2, Ljava/lang/Double;

    if-ne v0, v2, :cond_c

    .line 146
    invoke-direct {p0, p1, p2}, Lorg/mapdb/SerializerBase;->serializeDouble(Ljava/io/DataOutput;Ljava/lang/Object;)V

    goto :goto_0

    .line 150
    :cond_c
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mapdb/SerializerBase;->serialize2(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method protected serializeClass(Ljava/io/DataOutput;Ljava/lang/Class;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 810
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method protected serializeUnknownObject(Ljava/io/DataOutput;Ljava/lang/Object;Lorg/mapdb/SerializerBase$FastArrayList;)V
    .locals 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/lang/Object;",
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
    .line 1722
    .local p3, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not serialize unknown object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
