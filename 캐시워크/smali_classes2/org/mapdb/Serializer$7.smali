.class final Lorg/mapdb/Serializer$7;
.super Ljava/lang/Object;
.source "Serializer.java"

# interfaces
.implements Lorg/mapdb/Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mapdb/Serializer",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/DataInput;I)Ljava/lang/Boolean;
    .locals 1
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "available"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 234
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/io/DataInput;
    .param p2, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Serializer$7;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public fixedSize()I
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public serialize(Ljava/io/DataOutput;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "value"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 229
    return-void
.end method

.method public bridge synthetic serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/DataOutput;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Serializer$7;->serialize(Ljava/io/DataOutput;Ljava/lang/Boolean;)V

    return-void
.end method
