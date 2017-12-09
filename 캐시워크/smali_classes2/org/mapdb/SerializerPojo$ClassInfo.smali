.class public final Lorg/mapdb/SerializerPojo$ClassInfo;
.super Ljava/lang/Object;
.source "SerializerPojo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/SerializerPojo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ClassInfo"
.end annotation


# instance fields
.field protected final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mapdb/SerializerPojo$FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final isEnum:Z

.field protected final name:Ljava/lang/String;

.field protected final name2fieldId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final name2fieldInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/mapdb/SerializerPojo$FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected objectStreamFields:[Ljava/io/ObjectStreamField;

.field protected final useObjectStream:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lorg/mapdb/SerializerPojo$FieldInfo;ZZ)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fields"    # [Lorg/mapdb/SerializerPojo$FieldInfo;
    .param p3, "isEnum"    # Z
    .param p4, "isExternalizable"    # Z

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/mapdb/SerializerPojo$ClassInfo;->fields:Ljava/util/List;

    .line 131
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/mapdb/SerializerPojo$ClassInfo;->name2fieldInfo:Ljava/util/Map;

    .line 132
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/mapdb/SerializerPojo$ClassInfo;->name2fieldId:Ljava/util/Map;

    .line 140
    iput-object p1, p0, Lorg/mapdb/SerializerPojo$ClassInfo;->name:Ljava/lang/String;

    .line 141
    iput-boolean p3, p0, Lorg/mapdb/SerializerPojo$ClassInfo;->isEnum:Z

    .line 142
    iput-boolean p4, p0, Lorg/mapdb/SerializerPojo$ClassInfo;->useObjectStream:Z

    .line 144
    move-object v0, p2

    .local v0, "arr$":[Lorg/mapdb/SerializerPojo$FieldInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 145
    .local v1, "f":Lorg/mapdb/SerializerPojo$FieldInfo;
    iget-object v4, p0, Lorg/mapdb/SerializerPojo$ClassInfo;->name2fieldId:Ljava/util/Map;

    iget-object v5, v1, Lorg/mapdb/SerializerPojo$FieldInfo;->name:Ljava/lang/String;

    iget-object v6, p0, Lorg/mapdb/SerializerPojo$ClassInfo;->fields:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v4, p0, Lorg/mapdb/SerializerPojo$ClassInfo;->fields:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v4, p0, Lorg/mapdb/SerializerPojo$ClassInfo;->name2fieldInfo:Ljava/util/Map;

    iget-object v5, v1, Lorg/mapdb/SerializerPojo$FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "f":Lorg/mapdb/SerializerPojo$FieldInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public addFieldInfo(Lorg/mapdb/SerializerPojo$FieldInfo;)I
    .locals 3
    .param p1, "field"    # Lorg/mapdb/SerializerPojo$FieldInfo;

    .prologue
    .line 161
    iget-object v0, p0, Lorg/mapdb/SerializerPojo$ClassInfo;->name2fieldId:Ljava/util/Map;

    iget-object v1, p1, Lorg/mapdb/SerializerPojo$FieldInfo;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/mapdb/SerializerPojo$ClassInfo;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lorg/mapdb/SerializerPojo$ClassInfo;->name2fieldInfo:Ljava/util/Map;

    iget-object v1, p1, Lorg/mapdb/SerializerPojo$FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lorg/mapdb/SerializerPojo$ClassInfo;->fields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lorg/mapdb/SerializerPojo$ClassInfo;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getFieldId(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v1, p0, Lorg/mapdb/SerializerPojo$ClassInfo;->name2fieldId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 154
    .local v0, "fieldId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 156
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getObjectStreamFields()[Ljava/io/ObjectStreamField;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/mapdb/SerializerPojo$ClassInfo;->objectStreamFields:[Ljava/io/ObjectStreamField;

    return-object v0
.end method

.method public setObjectStreamFields([Ljava/io/ObjectStreamField;)V
    .locals 0
    .param p1, "objectStreamFields"    # [Ljava/io/ObjectStreamField;

    .prologue
    .line 172
    iput-object p1, p0, Lorg/mapdb/SerializerPojo$ClassInfo;->objectStreamFields:[Ljava/io/ObjectStreamField;

    .line 173
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mapdb/SerializerPojo$ClassInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
