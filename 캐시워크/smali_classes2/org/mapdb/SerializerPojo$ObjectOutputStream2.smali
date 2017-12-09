.class public final Lorg/mapdb/SerializerPojo$ObjectOutputStream2;
.super Ljava/io/ObjectOutputStream;
.source "SerializerPojo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/SerializerPojo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "ObjectOutputStream2"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapdb/SerializerPojo;


# direct methods
.method protected constructor <init>(Lorg/mapdb/SerializerPojo;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 592
    iput-object p1, p0, Lorg/mapdb/SerializerPojo$ObjectOutputStream2;->this$0:Lorg/mapdb/SerializerPojo;

    .line 593
    invoke-direct {p0, p2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 594
    return-void
.end method


# virtual methods
.method protected writeClassDescriptor(Ljava/io/ObjectStreamClass;)V
    .locals 3
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    iget-object v1, p0, Lorg/mapdb/SerializerPojo$ObjectOutputStream2;->this$0:Lorg/mapdb/SerializerPojo;

    iget-object v1, v1, Lorg/mapdb/SerializerPojo;->class2classId:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 599
    .local v0, "classId":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 600
    iget-object v1, p0, Lorg/mapdb/SerializerPojo$ObjectOutputStream2;->this$0:Lorg/mapdb/SerializerPojo;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mapdb/SerializerPojo;->registerClass(Ljava/lang/Class;)V

    .line 601
    iget-object v1, p0, Lorg/mapdb/SerializerPojo$ObjectOutputStream2;->this$0:Lorg/mapdb/SerializerPojo;

    iget-object v1, v1, Lorg/mapdb/SerializerPojo;->class2classId:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "classId":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 603
    .restart local v0    # "classId":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 604
    return-void
.end method
