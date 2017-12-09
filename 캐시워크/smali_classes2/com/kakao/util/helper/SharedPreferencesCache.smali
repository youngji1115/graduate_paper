.class public Lcom/kakao/util/helper/SharedPreferencesCache;
.super Ljava/lang/Object;
.source "SharedPreferencesCache.java"


# static fields
.field private static final JSON_VALUE:Ljava/lang/String; = "value"

.field private static final JSON_VALUE_ENUM_TYPE:Ljava/lang/String; = "enumType"

.field private static final JSON_VALUE_TYPE:Ljava/lang/String; = "valueType"

.field private static final TYPE_BOOLEAN:Ljava/lang/String; = "bool"

.field private static final TYPE_BOOLEAN_ARRAY:Ljava/lang/String; = "bool[]"

.field private static final TYPE_BYTE:Ljava/lang/String; = "byte"

.field private static final TYPE_BYTE_ARRAY:Ljava/lang/String; = "byte[]"

.field private static final TYPE_CHAR:Ljava/lang/String; = "char"

.field private static final TYPE_CHAR_ARRAY:Ljava/lang/String; = "char[]"

.field private static final TYPE_DOUBLE:Ljava/lang/String; = "double"

.field private static final TYPE_DOUBLE_ARRAY:Ljava/lang/String; = "double[]"

.field private static final TYPE_ENUM:Ljava/lang/String; = "enum"

.field private static final TYPE_FLOAT:Ljava/lang/String; = "float"

.field private static final TYPE_FLOAT_ARRAY:Ljava/lang/String; = "float[]"

.field private static final TYPE_INTEGER:Ljava/lang/String; = "int"

.field private static final TYPE_INTEGER_ARRAY:Ljava/lang/String; = "int[]"

.field private static final TYPE_LONG:Ljava/lang/String; = "long"

.field private static final TYPE_LONG_ARRAY:Ljava/lang/String; = "long[]"

.field private static final TYPE_SHORT:Ljava/lang/String; = "short"

.field private static final TYPE_SHORT_ARRAY:Ljava/lang/String; = "short[]"

.field private static final TYPE_STRING:Ljava/lang/String; = "string"

.field private static final TYPE_STRING_LIST:Ljava/lang/String; = "stringList"


# instance fields
.field private final file:Landroid/content/SharedPreferences;

.field private final memory:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    .line 63
    const-string v1, "context"

    invoke-static {p1, v1}, Lcom/kakao/util/helper/Utility;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const-string v1, "cacheName"

    invoke-static {p2, v1}, Lcom/kakao/util/helper/Utility;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    .local v0, "applicationContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 68
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/kakao/util/helper/SharedPreferencesCache;->file:Landroid/content/SharedPreferences;

    .line 69
    return-void
.end method

.method private deserializeKey(Ljava/lang/String;)V
    .locals 22
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kakao/util/helper/SharedPreferencesCache;->file:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "{}"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 319
    .local v13, "jsonString":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 321
    .local v11, "json":Lorg/json/JSONObject;
    const-string v18, "valueType"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 323
    .local v17, "valueType":Ljava/lang/String;
    const-string v18, "bool"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "value"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    const-string v18, "bool[]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 326
    const-string v18, "value"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 327
    .local v12, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v4, v0, [Z

    .line 328
    .local v4, "array":[Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_2

    .line 329
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v18

    aput-boolean v18, v4, v10

    .line 328
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 331
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_0

    .line 332
    .end local v4    # "array":[Z
    .end local v10    # "i":I
    .end local v12    # "jsonArray":Lorg/json/JSONArray;
    :cond_3
    const-string v18, "byte"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "value"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_0

    .line 334
    :cond_4
    const-string v18, "byte[]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 335
    const-string v18, "value"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 336
    .restart local v12    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v4, v0, [B

    .line 337
    .local v4, "array":[B
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_2
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_5

    .line 338
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v4, v10

    .line 337
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 340
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 341
    .end local v4    # "array":[B
    .end local v10    # "i":I
    .end local v12    # "jsonArray":Lorg/json/JSONArray;
    :cond_6
    const-string v18, "short"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "value"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_0

    .line 343
    :cond_7
    const-string v18, "short[]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 344
    const-string v18, "value"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 345
    .restart local v12    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v4, v0, [S

    .line 346
    .local v4, "array":[S
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_8

    .line 347
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v18, v0

    aput-short v18, v4, v10

    .line 346
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 349
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    goto/16 :goto_0

    .line 350
    .end local v4    # "array":[S
    .end local v10    # "i":I
    .end local v12    # "jsonArray":Lorg/json/JSONArray;
    :cond_9
    const-string v18, "int"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "value"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 352
    :cond_a
    const-string v18, "int[]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 353
    const-string v18, "value"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 354
    .restart local v12    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v4, v0, [I

    .line 355
    .local v4, "array":[I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_b

    .line 356
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v18

    aput v18, v4, v10

    .line 355
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 358
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 359
    .end local v4    # "array":[I
    .end local v10    # "i":I
    .end local v12    # "jsonArray":Lorg/json/JSONArray;
    :cond_c
    const-string v18, "long"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "value"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 361
    :cond_d
    const-string v18, "long[]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 362
    const-string v18, "value"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 363
    .restart local v12    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v4, v0, [J

    .line 364
    .local v4, "array":[J
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_5
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_e

    .line 365
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v18

    aput-wide v18, v4, v10

    .line 364
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 367
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 368
    .end local v4    # "array":[J
    .end local v10    # "i":I
    .end local v12    # "jsonArray":Lorg/json/JSONArray;
    :cond_f
    const-string v18, "float"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "value"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 370
    :cond_10
    const-string v18, "float[]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 371
    const-string v18, "value"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 372
    .restart local v12    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v4, v0, [F

    .line 373
    .local v4, "array":[F
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_11

    .line 374
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    aput v18, v4, v10

    .line 373
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 376
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_0

    .line 377
    .end local v4    # "array":[F
    .end local v10    # "i":I
    .end local v12    # "jsonArray":Lorg/json/JSONArray;
    :cond_12
    const-string v18, "double"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "value"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 379
    :cond_13
    const-string v18, "double[]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 380
    const-string v18, "value"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 381
    .restart local v12    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v4, v0, [D

    .line 382
    .local v4, "array":[D
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_7
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_14

    .line 383
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v18

    aput-wide v18, v4, v10

    .line 382
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 385
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto/16 :goto_0

    .line 386
    .end local v4    # "array":[D
    .end local v10    # "i":I
    .end local v12    # "jsonArray":Lorg/json/JSONArray;
    :cond_15
    const-string v18, "char"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 387
    const-string v18, "value"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 388
    .local v5, "charString":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto/16 :goto_0

    .line 391
    .end local v5    # "charString":Ljava/lang/String;
    :cond_16
    const-string v18, "char[]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 392
    const-string v18, "value"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 393
    .restart local v12    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v4, v0, [C

    .line 394
    .local v4, "array":[C
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_8
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_18

    .line 395
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 396
    .restart local v5    # "charString":Ljava/lang/String;
    if-eqz v5, :cond_17

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_17

    .line 397
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aput-char v18, v4, v10

    .line 394
    :cond_17
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 400
    .end local v5    # "charString":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    goto/16 :goto_0

    .line 401
    .end local v4    # "array":[C
    .end local v10    # "i":I
    .end local v12    # "jsonArray":Lorg/json/JSONArray;
    :cond_19
    const-string v18, "string"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "value"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 403
    :cond_1a
    const-string v18, "stringList"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1d

    .line 404
    const-string v18, "value"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 405
    .restart local v12    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    .line 406
    .local v15, "numStrings":I
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 407
    .local v16, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_9
    if-ge v10, v15, :cond_1c

    .line 408
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 409
    .local v14, "jsonStringValue":Ljava/lang/Object;
    sget-object v18, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_1b

    const/4 v14, 0x0

    .end local v14    # "jsonStringValue":Ljava/lang/Object;
    :goto_a
    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 407
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 409
    .restart local v14    # "jsonStringValue":Ljava/lang/Object;
    :cond_1b
    check-cast v14, Ljava/lang/String;

    goto :goto_a

    .line 411
    .end local v14    # "jsonStringValue":Ljava/lang/Object;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 412
    .end local v10    # "i":I
    .end local v12    # "jsonArray":Lorg/json/JSONArray;
    .end local v15    # "numStrings":I
    .end local v16    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1d
    const-string v18, "enum"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 414
    :try_start_0
    const-string v18, "enumType"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 416
    .local v8, "enumType":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 418
    .local v7, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    const-string v18, "value"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v9

    .line 419
    .local v9, "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 420
    .end local v7    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    .end local v8    # "enumType":Ljava/lang/String;
    .end local v9    # "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :catch_0
    move-exception v6

    .line 421
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SharedPreferences.deserializeKey: Error deserializing key \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\' -- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/kakao/util/helper/log/Logger;->e(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 422
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v6

    .line 423
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SharedPreferences.deserializeKey: Error deserializing key \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\' -- "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/kakao/util/helper/log/Logger;->e(Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private serializeKey(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)V
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "editor"    # Landroid/content/SharedPreferences$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 205
    if-nez p2, :cond_1

    .line 314
    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 210
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    .line 211
    .local v4, "supportedType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 212
    .local v1, "jsonArray":Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 214
    .local v0, "json":Lorg/json/JSONObject;
    instance-of v8, p2, Ljava/lang/Byte;

    if-eqz v8, :cond_4

    .line 215
    const-string v4, "byte"

    .line 216
    const-string v5, "value"

    check-cast p2, Ljava/lang/Byte;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Byte;->intValue()I

    move-result v8

    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 303
    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    .line 304
    const-string v5, "valueType"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    if-eqz v1, :cond_3

    .line 308
    const-string v5, "value"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "jsonString":Ljava/lang/String;
    invoke-interface {p3, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 217
    .end local v2    # "jsonString":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v8, p2, Ljava/lang/Short;

    if-eqz v8, :cond_5

    .line 218
    const-string v4, "short"

    .line 219
    const-string v5, "value"

    check-cast p2, Ljava/lang/Short;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->intValue()I

    move-result v8

    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 220
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v8, p2, Ljava/lang/Integer;

    if-eqz v8, :cond_6

    .line 221
    const-string v4, "int"

    .line 222
    const-string v5, "value"

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 223
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v8, p2, Ljava/lang/Long;

    if-eqz v8, :cond_7

    .line 224
    const-string v4, "long"

    .line 225
    const-string v5, "value"

    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1

    .line 226
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v8, p2, Ljava/lang/Float;

    if-eqz v8, :cond_8

    .line 227
    const-string v4, "float"

    .line 228
    const-string v5, "value"

    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v0, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_1

    .line 229
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v8, p2, Ljava/lang/Double;

    if-eqz v8, :cond_9

    .line 230
    const-string v4, "double"

    .line 231
    const-string v5, "value"

    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v0, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_1

    .line 232
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v8, p2, Ljava/lang/Boolean;

    if-eqz v8, :cond_a

    .line 233
    const-string v4, "bool"

    .line 234
    const-string v5, "value"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 235
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v8, p2, Ljava/lang/Character;

    if-eqz v8, :cond_b

    .line 236
    const-string v4, "char"

    .line 237
    const-string v5, "value"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 238
    :cond_b
    instance-of v8, p2, Ljava/lang/String;

    if-eqz v8, :cond_c

    .line 239
    const-string v4, "string"

    .line 240
    const-string v5, "value"

    invoke-virtual {v0, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 241
    :cond_c
    instance-of v8, p2, Ljava/lang/Enum;

    if-eqz v8, :cond_d

    .line 242
    const-string v4, "enum"

    .line 243
    const-string v5, "value"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v5, "enumType"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 248
    :cond_d
    new-instance v1, Lorg/json/JSONArray;

    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 249
    .restart local v1    # "jsonArray":Lorg/json/JSONArray;
    instance-of v8, p2, [B

    if-eqz v8, :cond_e

    .line 250
    const-string v4, "byte[]"

    .line 251
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [B

    array-length v8, p2

    :goto_2
    if-ge v5, v8, :cond_2

    aget-byte v6, p2, v5

    .line 252
    .local v6, "v":B
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 251
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 254
    .end local v6    # "v":B
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_e
    instance-of v8, p2, [S

    if-eqz v8, :cond_f

    .line 255
    const-string v4, "short[]"

    .line 256
    check-cast p2, [S

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [S

    array-length v8, p2

    :goto_3
    if-ge v5, v8, :cond_2

    aget-short v6, p2, v5

    .line 257
    .local v6, "v":S
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 256
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 259
    .end local v6    # "v":S
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_f
    instance-of v8, p2, [I

    if-eqz v8, :cond_10

    .line 260
    const-string v4, "int[]"

    .line 261
    check-cast p2, [I

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [I

    array-length v8, p2

    :goto_4
    if-ge v5, v8, :cond_2

    aget v6, p2, v5

    .line 262
    .local v6, "v":I
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 261
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 264
    .end local v6    # "v":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_10
    instance-of v8, p2, [J

    if-eqz v8, :cond_11

    .line 265
    const-string v4, "long[]"

    .line 266
    check-cast p2, [J

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [J

    array-length v8, p2

    :goto_5
    if-ge v5, v8, :cond_2

    aget-wide v6, p2, v5

    .line 267
    .local v6, "v":J
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 266
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 269
    .end local v6    # "v":J
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_11
    instance-of v8, p2, [F

    if-eqz v8, :cond_12

    .line 270
    const-string v4, "float[]"

    .line 271
    check-cast p2, [F

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [F

    array-length v8, p2

    :goto_6
    if-ge v5, v8, :cond_2

    aget v6, p2, v5

    .line 272
    .local v6, "v":F
    float-to-double v10, v6

    invoke-virtual {v1, v10, v11}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 271
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 274
    .end local v6    # "v":F
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_12
    instance-of v8, p2, [D

    if-eqz v8, :cond_13

    .line 275
    const-string v4, "double[]"

    .line 276
    check-cast p2, [D

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [D

    array-length v8, p2

    :goto_7
    if-ge v5, v8, :cond_2

    aget-wide v6, p2, v5

    .line 277
    .local v6, "v":D
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 276
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 279
    .end local v6    # "v":D
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_13
    instance-of v8, p2, [Z

    if-eqz v8, :cond_14

    .line 280
    const-string v4, "bool[]"

    .line 281
    check-cast p2, [Z

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [Z

    array-length v8, p2

    :goto_8
    if-ge v5, v8, :cond_2

    aget-boolean v6, p2, v5

    .line 282
    .local v6, "v":Z
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 281
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 284
    .end local v6    # "v":Z
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_14
    instance-of v8, p2, [C

    if-eqz v8, :cond_15

    .line 285
    const-string v4, "char[]"

    .line 286
    check-cast p2, [C

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [C

    array-length v8, p2

    :goto_9
    if-ge v5, v8, :cond_2

    aget-char v6, p2, v5

    .line 287
    .local v6, "v":C
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 286
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 289
    .end local v6    # "v":C
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_15
    instance-of v5, p2, Ljava/util/List;

    if-eqz v5, :cond_17

    .line 290
    const-string v4, "stringList"

    move-object v3, p2

    .line 292
    check-cast v3, Ljava/util/List;

    .line 293
    .local v3, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 294
    .local v6, "v":Ljava/lang/String;
    if-nez v6, :cond_16

    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .end local v6    # "v":Ljava/lang/String;
    :cond_16
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_a

    .line 299
    .end local v3    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public declared-synchronized clear(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "keysToClear":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/kakao/util/helper/SharedPreferencesCache;->file:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 115
    .local v0, "cacheEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 114
    .end local v0    # "cacheEditor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 118
    .restart local v0    # "cacheEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 120
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 123
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized clearAll()V
    .locals 1

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kakao/util/helper/SharedPreferencesCache;->file:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    iget-object v0, p0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/kakao/util/helper/SharedPreferencesCache;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 200
    .local v0, "value":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 199
    .end local v0    # "value":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 174
    .local v0, "value":I
    if-nez v0, :cond_0

    .line 176
    :try_start_1
    invoke-direct {p0, p1}, Lcom/kakao/util/helper/SharedPreferencesCache;->deserializeKey(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 182
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 173
    .end local v0    # "value":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 178
    .restart local v0    # "value":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 187
    .local v0, "value":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 189
    :try_start_1
    invoke-direct {p0, p1}, Lcom/kakao/util/helper/SharedPreferencesCache;->deserializeKey(Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 195
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 186
    .end local v0    # "value":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 191
    .restart local v0    # "value":J
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public declared-synchronized getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 161
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 163
    :try_start_1
    invoke-direct {p0, p1}, Lcom/kakao/util/helper/SharedPreferencesCache;->deserializeKey(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 169
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 160
    .end local v0    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 165
    .restart local v0    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized getStringMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p1, "keyPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/kakao/util/helper/SharedPreferencesCache;->reloadAll()V

    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 134
    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 132
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 139
    .restart local v1    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/kakao/util/helper/SharedPreferencesCache;->file:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 145
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_1
    invoke-direct {p0, p1, p2, v1}, Lcom/kakao/util/helper/SharedPreferencesCache;->serializeKey(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :try_start_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :try_start_3
    invoke-direct {p0, p1}, Lcom/kakao/util/helper/SharedPreferencesCache;->deserializeKey(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    :goto_0
    monitor-exit p0

    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_0

    .line 154
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    goto :goto_0

    .line 143
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized reloadAll()V
    .locals 4

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/kakao/util/helper/SharedPreferencesCache;->file:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 73
    .local v0, "allCachedEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .local v1, "key":Ljava/lang/String;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/kakao/util/helper/SharedPreferencesCache;->deserializeKey(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v3

    goto :goto_0

    .line 80
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    return-void

    .line 72
    .end local v0    # "allCachedEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/kakao/util/helper/SharedPreferencesCache;->file:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 107
    .local v0, "cacheEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    iget-object v1, p0, Lcom/kakao/util/helper/SharedPreferencesCache;->memory:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 106
    .end local v0    # "cacheEditor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized save(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    const-string v3, "bundle"

    invoke-static {p1, v3}, Lcom/kakao/util/helper/Utility;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v3, p0, Lcom/kakao/util/helper/SharedPreferencesCache;->file:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 86
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .local v2, "key":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2, v4, v1}, Lcom/kakao/util/helper/SharedPreferencesCache;->serializeKey(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 103
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    return-void

    .line 95
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    .restart local v2    # "key":Ljava/lang/String;
    :try_start_3
    invoke-direct {p0, v2}, Lcom/kakao/util/helper/SharedPreferencesCache;->deserializeKey(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 99
    :catch_1
    move-exception v4

    goto :goto_1

    .line 83
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
