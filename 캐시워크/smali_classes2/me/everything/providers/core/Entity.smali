.class public abstract Lme/everything/providers/core/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/everything/providers/core/Entity$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method public static create(Landroid/database/Cursor;Ljava/lang/Class;)Lme/everything/providers/core/Entity;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lme/everything/providers/core/Entity;",
            ">(",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/everything/providers/core/Entity;

    .line 169
    .local v1, "entity":Lme/everything/providers/core/Entity;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 170
    .local v2, "fields":[Ljava/lang/reflect/Field;
    invoke-static {v1, p0, p1, v2}, Lme/everything/providers/core/Entity;->create(Lme/everything/providers/core/Entity;Landroid/database/Cursor;Ljava/lang/Class;[Ljava/lang/reflect/Field;)Lme/everything/providers/core/Entity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 174
    .end local v1    # "entity":Lme/everything/providers/core/Entity;, "TT;"
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static varargs create(Landroid/database/Cursor;Ljava/lang/Class;[Ljava/lang/String;)Lme/everything/providers/core/Entity;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p2, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lme/everything/providers/core/Entity;",
            ">(",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/everything/providers/core/Entity;

    .line 188
    .local v1, "entity":Lme/everything/providers/core/Entity;, "TT;"
    array-length v5, p2

    new-array v2, v5, [Ljava/lang/reflect/Field;

    .line 189
    .local v2, "fields":[Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, p2

    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 190
    aget-object v5, p2, v3

    invoke-static {v5, v1}, Lme/everything/providers/core/Entity;->getColumnField(Ljava/lang/String;Lme/everything/providers/core/Entity;)Ljava/lang/reflect/Field;

    move-result-object v5

    aput-object v5, v2, v3

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    :cond_0
    invoke-static {v1, p0, p1, v2}, Lme/everything/providers/core/Entity;->create(Lme/everything/providers/core/Entity;Landroid/database/Cursor;Ljava/lang/Class;[Ljava/lang/reflect/Field;)Lme/everything/providers/core/Entity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 196
    .end local v1    # "entity":Lme/everything/providers/core/Entity;, "TT;"
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .end local v3    # "i":I
    .end local v4    # "size":I
    :goto_1
    return-object v5

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static create(Lme/everything/providers/core/Entity;Landroid/database/Cursor;Ljava/lang/Class;[Ljava/lang/reflect/Field;)Lme/everything/providers/core/Entity;
    .locals 23
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p3, "fields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lme/everything/providers/core/Entity;",
            ">(TT;",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/reflect/Field;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "entity":Lme/everything/providers/core/Entity;, "TT;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object/from16 v2, p3

    .local v2, "arr$":[Ljava/lang/reflect/Field;
    array-length v13, v2

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v13, :cond_2

    aget-object v10, v2, v11

    .line 203
    .local v10, "field":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v19, Lme/everything/providers/core/FieldMapping;

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lme/everything/providers/core/FieldMapping;

    .line 204
    .local v5, "contentField":Lme/everything/providers/core/FieldMapping;
    const-class v19, Lme/everything/providers/core/IgnoreMapping;

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lme/everything/providers/core/IgnoreMapping;

    .line 205
    .local v12, "ignoreMapping":Lme/everything/providers/core/IgnoreMapping;
    if-eqz v5, :cond_0

    if-nez v12, :cond_0

    .line 206
    invoke-interface {v5}, Lme/everything/providers/core/FieldMapping;->columnName()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "columnName":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "get"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v5}, Lme/everything/providers/core/FieldMapping;->physicalType()Lme/everything/providers/core/FieldMapping$PhysicalType;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lme/everything/providers/core/FieldMapping$PhysicalType;->name()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 209
    .local v15, "methodName":Ljava/lang/String;
    const-class v19, Landroid/database/Cursor;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 210
    .local v14, "method":Ljava/lang/reflect/Method;
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 211
    .local v3, "columnIndex":I
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 212
    .local v16, "object":Ljava/lang/Object;
    sget-object v19, Lme/everything/providers/core/Entity$1;->$SwitchMap$me$everything$providers$core$FieldMapping$LogicalType:[I

    invoke-interface {v5}, Lme/everything/providers/core/FieldMapping;->logicalType()Lme/everything/providers/core/FieldMapping$LogicalType;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lme/everything/providers/core/FieldMapping$LogicalType;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    .line 232
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 233
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    .end local v3    # "columnIndex":I
    .end local v4    # "columnName":Ljava/lang/String;
    .end local v5    # "contentField":Lme/everything/providers/core/FieldMapping;
    .end local v12    # "ignoreMapping":Lme/everything/providers/core/IgnoreMapping;
    .end local v14    # "method":Ljava/lang/reflect/Method;
    .end local v15    # "methodName":Ljava/lang/String;
    .end local v16    # "object":Ljava/lang/Object;
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 214
    .restart local v3    # "columnIndex":I
    .restart local v4    # "columnName":Ljava/lang/String;
    .restart local v5    # "contentField":Lme/everything/providers/core/FieldMapping;
    .restart local v12    # "ignoreMapping":Lme/everything/providers/core/IgnoreMapping;
    .restart local v14    # "method":Ljava/lang/reflect/Method;
    .restart local v15    # "methodName":Ljava/lang/String;
    .restart local v16    # "object":Ljava/lang/Object;
    :pswitch_0
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-nez v19, :cond_1

    const/16 v18, 0x0

    .line 215
    .local v18, "value":Z
    :goto_2
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 216
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 238
    .end local v3    # "columnIndex":I
    .end local v4    # "columnName":Ljava/lang/String;
    .end local v5    # "contentField":Lme/everything/providers/core/FieldMapping;
    .end local v12    # "ignoreMapping":Lme/everything/providers/core/IgnoreMapping;
    .end local v14    # "method":Ljava/lang/reflect/Method;
    .end local v15    # "methodName":Ljava/lang/String;
    .end local v16    # "object":Ljava/lang/Object;
    .end local v18    # "value":Z
    :catch_0
    move-exception v6

    .line 239
    .local v6, "e":Ljava/lang/Exception;
    const-class v19, Lme/everything/providers/core/Entity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "field="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 214
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "columnIndex":I
    .restart local v4    # "columnName":Ljava/lang/String;
    .restart local v5    # "contentField":Lme/everything/providers/core/FieldMapping;
    .restart local v12    # "ignoreMapping":Lme/everything/providers/core/IgnoreMapping;
    .restart local v14    # "method":Ljava/lang/reflect/Method;
    .restart local v15    # "methodName":Ljava/lang/String;
    .restart local v16    # "object":Ljava/lang/Object;
    :cond_1
    const/16 v18, 0x1

    goto :goto_2

    .line 220
    :pswitch_1
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    .line 221
    .local v9, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<+Lme/everything/providers/core/EnumInt;>;"
    const-string v19, "fromVal"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 222
    .local v8, "enumStaticMethod":Ljava/lang/reflect/Method;
    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v16, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 223
    .local v7, "enumInstance":Ljava/lang/Object;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 224
    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 227
    .end local v7    # "enumInstance":Ljava/lang/Object;
    .end local v8    # "enumStaticMethod":Ljava/lang/reflect/Method;
    .end local v9    # "enumType":Ljava/lang/Class;, "Ljava/lang/Class<+Lme/everything/providers/core/EnumInt;>;"
    :pswitch_2
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-interface {v5}, Lme/everything/providers/core/FieldMapping;->splitRegex()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 228
    .local v17, "strings":[Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 229
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 242
    .end local v3    # "columnIndex":I
    .end local v4    # "columnName":Ljava/lang/String;
    .end local v5    # "contentField":Lme/everything/providers/core/FieldMapping;
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v12    # "ignoreMapping":Lme/everything/providers/core/IgnoreMapping;
    .end local v14    # "method":Ljava/lang/reflect/Method;
    .end local v15    # "methodName":Ljava/lang/String;
    .end local v16    # "object":Ljava/lang/Object;
    .end local v17    # "strings":[Ljava/lang/String;
    :cond_2
    return-object p0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getColumnField(Ljava/lang/String;Lme/everything/providers/core/Entity;)Ljava/lang/reflect/Field;
    .locals 7
    .param p0, "columnName"    # Ljava/lang/String;
    .param p1, "entity"    # Lme/everything/providers/core/Entity;

    .prologue
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 101
    .local v3, "fields":[Ljava/lang/reflect/Field;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 102
    .local v2, "field":Ljava/lang/reflect/Field;
    const-class v6, Lme/everything/providers/core/IgnoreMapping;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 103
    const-class v6, Lme/everything/providers/core/FieldMapping;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lme/everything/providers/core/FieldMapping;

    .line 104
    .local v1, "contentField":Lme/everything/providers/core/FieldMapping;
    invoke-interface {v1}, Lme/everything/providers/core/FieldMapping;->columnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 109
    .end local v1    # "contentField":Lme/everything/providers/core/FieldMapping;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_1
    return-object v2

    .line 101
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 109
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getColumnValue(Ljava/lang/String;Lme/everything/providers/core/Entity;)Ljava/lang/Object;
    .locals 3
    .param p0, "columnName"    # Ljava/lang/String;
    .param p1, "entity"    # Lme/everything/providers/core/Entity;

    .prologue
    .line 72
    :try_start_0
    invoke-static {p0, p1}, Lme/everything/providers/core/Entity;->getColumnField(Ljava/lang/String;Lme/everything/providers/core/Entity;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 73
    .local v1, "field":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 83
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v2

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 83
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 80
    :catch_1
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getColumnValue(Ljava/lang/reflect/Field;Lme/everything/providers/core/Entity;)Ljava/lang/Object;
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "entity"    # Lme/everything/providers/core/Entity;

    .prologue
    .line 88
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 96
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 96
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getColumns(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v2, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 25
    .local v5, "fields":[Ljava/lang/reflect/Field;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v4, v0, v6

    .line 26
    .local v4, "field":Ljava/lang/reflect/Field;
    const-class v8, Lme/everything/providers/core/IgnoreMapping;

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 27
    const-class v8, Lme/everything/providers/core/FieldMapping;

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lme/everything/providers/core/FieldMapping;

    .line 28
    .local v3, "contentField":Lme/everything/providers/core/FieldMapping;
    if-nez v3, :cond_1

    .line 25
    .end local v3    # "contentField":Lme/everything/providers/core/FieldMapping;
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 29
    .restart local v3    # "contentField":Lme/everything/providers/core/FieldMapping;
    :cond_1
    invoke-interface {v3}, Lme/everything/providers/core/FieldMapping;->columnName()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "columnName":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 33
    .end local v1    # "columnName":Ljava/lang/String;
    .end local v3    # "contentField":Lme/everything/providers/core/FieldMapping;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v2, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    return-object v8
.end method

.method public static getContentValues([Ljava/lang/String;Lme/everything/providers/core/Entity;)Landroid/content/ContentValues;
    .locals 11
    .param p0, "columns"    # [Ljava/lang/String;
    .param p1, "entity"    # Lme/everything/providers/core/Entity;

    .prologue
    .line 113
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 114
    .local v2, "contentValues":Landroid/content/ContentValues;
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v0, v5

    .line 115
    .local v1, "column":Ljava/lang/String;
    invoke-static {v1, p1}, Lme/everything/providers/core/Entity;->getColumnField(Ljava/lang/String;Lme/everything/providers/core/Entity;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 116
    .local v3, "field":Ljava/lang/reflect/Field;
    const-class v9, Lme/everything/providers/core/FieldMapping;

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lme/everything/providers/core/FieldMapping;

    .line 117
    .local v4, "fieldMapping":Lme/everything/providers/core/FieldMapping;
    invoke-static {v3, p1}, Lme/everything/providers/core/Entity;->getColumnValue(Ljava/lang/reflect/Field;Lme/everything/providers/core/Entity;)Ljava/lang/Object;

    move-result-object v8

    .line 118
    .local v8, "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 119
    invoke-interface {v4}, Lme/everything/providers/core/FieldMapping;->physicalType()Lme/everything/providers/core/FieldMapping$PhysicalType;

    move-result-object v7

    .line 125
    .local v7, "physicalType":Lme/everything/providers/core/FieldMapping$PhysicalType;
    sget-object v9, Lme/everything/providers/core/Entity$1;->$SwitchMap$me$everything$providers$core$FieldMapping$PhysicalType:[I

    invoke-virtual {v7}, Lme/everything/providers/core/FieldMapping$PhysicalType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 114
    .end local v7    # "physicalType":Lme/everything/providers/core/FieldMapping$PhysicalType;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 127
    .restart local v7    # "physicalType":Lme/everything/providers/core/FieldMapping$PhysicalType;
    :pswitch_0
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 130
    :pswitch_1
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :pswitch_2
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 136
    :pswitch_3
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v2, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 143
    .end local v1    # "column":Ljava/lang/String;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "fieldMapping":Lme/everything/providers/core/FieldMapping;
    .end local v7    # "physicalType":Lme/everything/providers/core/FieldMapping$PhysicalType;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_1
    return-object v2

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getFlattenedValues([Ljava/lang/String;Lme/everything/providers/core/Entity;)Ljava/util/List;
    .locals 8
    .param p0, "columns"    # [Ljava/lang/String;
    .param p1, "entity"    # Lme/everything/providers/core/Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lme/everything/providers/core/Entity;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 149
    .local v1, "column":Ljava/lang/String;
    invoke-static {v1, p1}, Lme/everything/providers/core/Entity;->getColumnField(Ljava/lang/String;Lme/everything/providers/core/Entity;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 150
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-static {v2, p1}, Lme/everything/providers/core/Entity;->getColumnValue(Ljava/lang/reflect/Field;Lme/everything/providers/core/Entity;)Ljava/lang/Object;

    move-result-object v5

    .line 151
    .local v5, "value":Ljava/lang/Object;
    instance-of v7, v5, Lme/everything/providers/core/EnumInt;

    if-eqz v7, :cond_0

    .line 152
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 154
    .end local v5    # "value":Ljava/lang/Object;
    :cond_0
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "column":Ljava/lang/String;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_1
    return-object v6
.end method

.method public static getId(Lme/everything/providers/core/Entity;)Ljava/lang/Long;
    .locals 1
    .param p0, "entity"    # Lme/everything/providers/core/Entity;

    .prologue
    .line 57
    const-string v0, "_id"

    invoke-static {v0, p0}, Lme/everything/providers/core/Entity;->getColumnValue(Ljava/lang/String;Lme/everything/providers/core/Entity;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getWriteColumns(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v2, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 44
    .local v5, "fields":[Ljava/lang/reflect/Field;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v4, v0, v6

    .line 45
    .local v4, "field":Ljava/lang/reflect/Field;
    const-class v8, Lme/everything/providers/core/IgnoreMapping;

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 46
    const-class v8, Lme/everything/providers/core/FieldMapping;

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lme/everything/providers/core/FieldMapping;

    .line 47
    .local v3, "contentField":Lme/everything/providers/core/FieldMapping;
    invoke-interface {v3}, Lme/everything/providers/core/FieldMapping;->canUpdate()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 48
    invoke-interface {v3}, Lme/everything/providers/core/FieldMapping;->columnName()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "columnName":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .end local v1    # "columnName":Ljava/lang/String;
    .end local v3    # "contentField":Lme/everything/providers/core/FieldMapping;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 53
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v2, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    return-object v8
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 247
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v7, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v8, "{"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 250
    .local v3, "fields":[Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    .line 251
    .local v4, "firstTime":Z
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 253
    .local v2, "field":Ljava/lang/reflect/Field;
    if-nez v4, :cond_0

    .line 254
    :try_start_0
    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_0
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 257
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    const/4 v4, 0x0

    .line 251
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 266
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_1
    const-string v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method
