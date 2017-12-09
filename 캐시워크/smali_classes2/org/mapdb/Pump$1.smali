.class final Lorg/mapdb/Pump$1;
.super Ljava/lang/Object;
.source "Pump.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/Pump;->sort(Ljava/util/Iterator;ZILjava/util/Comparator;Lorg/mapdb/Serializer;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ins:[Ljava/io/DataInputStream;

.field final synthetic val$pos:I

.field final synthetic val$presortCount:[I

.field final synthetic val$presortFiles:Ljava/util/List;

.field final synthetic val$serializer:Lorg/mapdb/Serializer;


# direct methods
.method constructor <init>([IILorg/mapdb/Serializer;[Ljava/io/DataInputStream;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lorg/mapdb/Pump$1;->val$presortCount:[I

    iput p2, p0, Lorg/mapdb/Pump$1;->val$pos:I

    iput-object p3, p0, Lorg/mapdb/Pump$1;->val$serializer:Lorg/mapdb/Serializer;

    iput-object p4, p0, Lorg/mapdb/Pump$1;->val$ins:[Ljava/io/DataInputStream;

    iput-object p5, p0, Lorg/mapdb/Pump$1;->val$presortFiles:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/mapdb/Pump$1;->val$presortCount:[I

    iget v1, p0, Lorg/mapdb/Pump$1;->val$pos:I

    aget v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 124
    :try_start_0
    iget-object v2, p0, Lorg/mapdb/Pump$1;->val$serializer:Lorg/mapdb/Serializer;

    iget-object v3, p0, Lorg/mapdb/Pump$1;->val$ins:[Ljava/io/DataInputStream;

    iget v4, p0, Lorg/mapdb/Pump$1;->val$pos:I

    aget-object v3, v3, v4

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v1

    .line 125
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, p0, Lorg/mapdb/Pump$1;->val$presortCount:[I

    iget v3, p0, Lorg/mapdb/Pump$1;->val$pos:I

    aget v4, v2, v3

    add-int/lit8 v4, v4, -0x1

    aput v4, v2, v3

    if-nez v4, :cond_0

    .line 126
    iget-object v2, p0, Lorg/mapdb/Pump$1;->val$ins:[Ljava/io/DataInputStream;

    iget v3, p0, Lorg/mapdb/Pump$1;->val$pos:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 127
    iget-object v2, p0, Lorg/mapdb/Pump$1;->val$presortFiles:Ljava/util/List;

    iget v3, p0, Lorg/mapdb/Pump$1;->val$pos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    return-object v1

    .line 130
    .end local v1    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOError;

    invoke-direct {v2, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method
