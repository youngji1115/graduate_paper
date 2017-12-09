.class public final Lorg/mapdb/SerializerBase$FastArrayList;
.super Ljava/lang/Object;
.source "SerializerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/SerializerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "FastArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public data:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field public forwardRefs:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<TK;>;"
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v0, p0, Lorg/mapdb/SerializerBase$FastArrayList;->forwardRefs:Z

    .line 46
    iput v0, p0, Lorg/mapdb/SerializerBase$FastArrayList;->size:I

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/mapdb/SerializerBase$FastArrayList;->data:[Ljava/lang/Object;

    .line 48
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<TK;>;"
    .local p1, "o":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/mapdb/SerializerBase$FastArrayList;->data:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lorg/mapdb/SerializerBase$FastArrayList;->size:I

    if-ne v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lorg/mapdb/SerializerBase$FastArrayList;->data:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/mapdb/SerializerBase$FastArrayList;->data:[Ljava/lang/Object;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mapdb/SerializerBase$FastArrayList;->data:[Ljava/lang/Object;

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/mapdb/SerializerBase$FastArrayList;->data:[Ljava/lang/Object;

    iget v1, p0, Lorg/mapdb/SerializerBase$FastArrayList;->size:I

    aput-object p1, v0, v1

    .line 60
    iget v0, p0, Lorg/mapdb/SerializerBase$FastArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mapdb/SerializerBase$FastArrayList;->size:I

    .line 61
    return-void
.end method

.method public identityIndexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 78
    .local p0, "this":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<TK;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/mapdb/SerializerBase$FastArrayList;->size:I

    if-ge v0, v1, :cond_1

    .line 79
    iget-object v1, p0, Lorg/mapdb/SerializerBase$FastArrayList;->data:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mapdb/SerializerBase$FastArrayList;->forwardRefs:Z

    .line 84
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 78
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
