.class public final Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;
.super Lorg/mapdb/BTreeKeySerializer;
.source "BTreeKeySerializer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/BTreeKeySerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tuple2KeySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mapdb/BTreeKeySerializer",
        "<",
        "Lorg/mapdb/Fun$Tuple2",
        "<TA;TB;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x1e4e6e8063f1397cL


# instance fields
.field protected final aComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TA;>;"
        }
    .end annotation
.end field

.field protected final aSerializer:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<TA;>;"
        }
    .end annotation
.end field

.field protected final bSerializer:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<TB;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 292
    const-class v0, Lorg/mapdb/BTreeKeySerializer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Comparator;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TA;>;",
            "Lorg/mapdb/Serializer",
            "<TA;>;",
            "Lorg/mapdb/Serializer",
            "<TB;>;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer<TA;TB;>;"
    .local p1, "aComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TA;>;"
    .local p2, "aSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    .local p3, "bSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TB;>;"
    invoke-direct {p0}, Lorg/mapdb/BTreeKeySerializer;-><init>()V

    .line 308
    iput-object p1, p0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->aComparator:Ljava/util/Comparator;

    .line 309
    iput-object p2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    .line 310
    iput-object p3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    .line 311
    return-void
.end method

.method constructor <init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;I)V
    .locals 1
    .param p1, "serializerBase"    # Lorg/mapdb/SerializerBase;
    .param p2, "is"    # Ljava/io/DataInput;
    .param p4, "extra"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/SerializerBase;",
            "Ljava/io/DataInput;",
            "Lorg/mapdb/SerializerBase$FastArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer<TA;TB;>;"
    .local p3, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/mapdb/BTreeKeySerializer;-><init>()V

    .line 315
    invoke-virtual {p3, p0}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 316
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->aComparator:Ljava/util/Comparator;

    .line 317
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    .line 318
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    .line 319
    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/DataInput;III)[Ljava/lang/Object;
    .locals 7
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer<TA;TB;>;"
    const/4 v6, -0x1

    .line 344
    new-array v4, p4, [Ljava/lang/Object;

    .line 345
    .local v4, "ret":[Ljava/lang/Object;
    const/4 v0, 0x0

    .line 346
    .local v0, "a":Ljava/lang/Object;, "TA;"
    const/4 v1, 0x0

    .line 348
    .local v1, "acount":I
    move v3, p2

    .end local v0    # "a":Ljava/lang/Object;, "TA;"
    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_1

    .line 349
    if-nez v1, :cond_0

    .line 351
    iget-object v5, p0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v5, p1, v6}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v0

    .line 352
    .restart local v0    # "a":Ljava/lang/Object;, "TA;"
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v1

    .line 354
    .end local v0    # "a":Ljava/lang/Object;, "TA;"
    :cond_0
    iget-object v5, p0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v5, p1, v6}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v2

    .line 355
    .local v2, "b":Ljava/lang/Object;, "TB;"
    invoke-static {v0, v2}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v5

    aput-object v5, v4, v3

    .line 356
    add-int/lit8 v1, v1, -0x1

    .line 348
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 358
    .end local v2    # "b":Ljava/lang/Object;, "TB;"
    :cond_1
    sget-boolean v5, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    if-eqz v1, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 360
    :cond_2
    return-object v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer<TA;TB;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 370
    if-ne p0, p1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v1

    .line 371
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

    .line 373
    check-cast v0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;

    .line 375
    .local v0, "t":Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;
    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->aComparator:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->aComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lorg/mapdb/Fun$Tuple2",
            "<TA;TB;>;>;"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer<TA;TB;>;"
    sget-object v0, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer<TA;TB;>;"
    const/4 v1, 0x0

    .line 383
    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->aComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->aComparator:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 384
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 385
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 386
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 383
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 384
    goto :goto_1
.end method

.method public serialize(Ljava/io/DataOutput;II[Ljava/lang/Object;)V
    .locals 6
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "keys"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer<TA;TB;>;"
    const/4 v0, 0x0

    .line 324
    .local v0, "acount":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 325
    aget-object v2, p4, v1

    check-cast v2, Lorg/mapdb/Fun$Tuple2;

    .line 326
    .local v2, "t":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<TA;TB;>;"
    if-nez v0, :cond_1

    .line 328
    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    iget-object v4, v2, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    invoke-interface {v3, p1, v4}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 330
    const/4 v0, 0x1

    .line 331
    :goto_1
    add-int v3, v1, v0

    if-ge v3, p3, :cond_0

    iget-object v4, p0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->aComparator:Ljava/util/Comparator;

    iget-object v5, v2, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    add-int v3, v1, v0

    aget-object v3, p4, v3

    check-cast v3, Lorg/mapdb/Fun$Tuple2;

    iget-object v3, v3, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    invoke-interface {v4, v5, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_0

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 334
    :cond_0
    invoke-static {p1, v0}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 336
    :cond_1
    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    iget-object v4, v2, Lorg/mapdb/Fun$Tuple2;->b:Ljava/lang/Object;

    invoke-interface {v3, p1, v4}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 338
    add-int/lit8 v0, v0, -0x1

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .end local v2    # "t":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<TA;TB;>;"
    :cond_2
    return-void
.end method
