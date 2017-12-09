.class public Lorg/mapdb/SerializerPojo$FieldInfo;
.super Ljava/lang/Object;
.source "SerializerPojo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/SerializerPojo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FieldInfo"
.end annotation


# instance fields
.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected field:Ljava/lang/reflect/Field;

.field protected final name:Ljava/lang/String;

.field protected final primitive:Z

.field protected final type:Ljava/lang/String;

.field protected typeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/ObjectStreamField;Ljava/lang/Class;)V
    .locals 3
    .param p1, "sf"    # Ljava/io/ObjectStreamField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamField;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v1

    invoke-virtual {p1}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/mapdb/SerializerPojo$FieldInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Class;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Class;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primitive"    # Z
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lorg/mapdb/SerializerPojo$FieldInfo;->name:Ljava/lang/String;

    .line 197
    iput-boolean p2, p0, Lorg/mapdb/SerializerPojo$FieldInfo;->primitive:Z

    .line 198
    iput-object p3, p0, Lorg/mapdb/SerializerPojo$FieldInfo;->type:Ljava/lang/String;

    .line 199
    iput-object p4, p0, Lorg/mapdb/SerializerPojo$FieldInfo;->clazz:Ljava/lang/Class;

    .line 200
    if-eqz p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lorg/mapdb/SerializerPojo$FieldInfo;->typeClass:Ljava/lang/Class;

    .line 204
    move-object v0, p4

    .line 208
    .local v0, "aClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not set field value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    .end local v0    # "aClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-static {p3}, Lorg/mapdb/SerializerPojo;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 211
    .restart local v0    # "aClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 213
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_2

    .line 214
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 215
    :cond_2
    iput-object v1, p0, Lorg/mapdb/SerializerPojo$FieldInfo;->field:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    return-void

    .line 217
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 221
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1
.end method
