.class public Lcom/kakao/network/response/ResponseBody;
.super Ljava/lang/Object;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/network/response/ResponseBody$PrimitiveConverter;,
        Lcom/kakao/network/response/ResponseBody$BodyConverter;,
        Lcom/kakao/network/response/ResponseBody$Converter;,
        Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
    }
.end annotation


# static fields
.field public static final LONG_CONVERTER:Lcom/kakao/network/response/ResponseBody$PrimitiveConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakao/network/response/ResponseBody$PrimitiveConverter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_CONVERTER:Lcom/kakao/network/response/ResponseBody$PrimitiveConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakao/network/response/ResponseBody$PrimitiveConverter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private json:Lorg/json/JSONObject;

.field private final statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 272
    new-instance v0, Lcom/kakao/network/response/ResponseBody$1;

    invoke-direct {v0}, Lcom/kakao/network/response/ResponseBody$1;-><init>()V

    sput-object v0, Lcom/kakao/network/response/ResponseBody;->LONG_CONVERTER:Lcom/kakao/network/response/ResponseBody$PrimitiveConverter;

    .line 279
    new-instance v0, Lcom/kakao/network/response/ResponseBody$2;

    invoke-direct {v0}, Lcom/kakao/network/response/ResponseBody$2;-><init>()V

    sput-object v0, Lcom/kakao/network/response/ResponseBody;->STRING_CONVERTER:Lcom/kakao/network/response/ResponseBody$PrimitiveConverter;

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "body"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kakao/network/response/ResponseBody;->json:Lorg/json/JSONObject;

    .line 67
    iput p1, p0, Lcom/kakao/network/response/ResponseBody;->statusCode:I

    .line 68
    if-nez p2, :cond_0

    .line 69
    new-instance v0, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    invoke-direct {v0}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>()V

    throw v0

    .line 71
    :cond_0
    iput-object p2, p0, Lcom/kakao/network/response/ResponseBody;->json:Lorg/json/JSONObject;

    .line 72
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kakao/network/response/ResponseBody;->json:Lorg/json/JSONObject;

    .line 54
    iput p1, p0, Lcom/kakao/network/response/ResponseBody;->statusCode:I

    .line 55
    if-nez p2, :cond_0

    .line 56
    new-instance v1, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    invoke-direct {v1}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>()V

    throw v1

    .line 60
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kakao/network/response/ResponseBody;->json:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    invoke-direct {v1, v0}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private getKeys()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/kakao/network/response/ResponseBody;->json:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kakao/network/response/ResponseBody;->json:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method private getOrThrow(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, "v":Ljava/lang/Object;
    :try_start_0
    iget-object v1, p0, Lcom/kakao/network/response/ResponseBody;->json:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    .end local v0    # "v":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_0

    .line 82
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_0
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 86
    const/4 v0, 0x0

    .line 88
    :cond_1
    return-object v0

    .line 78
    .restart local v0    # "v":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static toMap(Lcom/kakao/network/response/ResponseBody;)Ljava/util/Map;
    .locals 6
    .param p0, "body"    # Lcom/kakao/network/response/ResponseBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/kakao/network/response/ResponseBody;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 291
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 293
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    invoke-direct {p0}, Lcom/kakao/network/response/ResponseBody;->getKeys()Ljava/util/Iterator;

    move-result-object v1

    .line 294
    .local v1, "keysItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 295
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 296
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kakao/network/response/ResponseBody;->getOrThrow(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 298
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_1

    .line 299
    new-instance v4, Lcom/kakao/network/response/ResponseBodyArray;

    invoke-virtual {p0}, Lcom/kakao/network/response/ResponseBody;->getStatusCode()I

    move-result v5

    check-cast v3, Lorg/json/JSONArray;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {v4, v5, v3}, Lcom/kakao/network/response/ResponseBodyArray;-><init>(ILorg/json/JSONArray;)V

    invoke-static {v4}, Lcom/kakao/network/response/ResponseBodyArray;->toList(Lcom/kakao/network/response/ResponseBodyArray;)Ljava/util/List;

    move-result-object v3

    .line 305
    :cond_0
    :goto_1
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 302
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 303
    new-instance v4, Lcom/kakao/network/response/ResponseBody;

    invoke-virtual {p0}, Lcom/kakao/network/response/ResponseBody;->getStatusCode()I

    move-result v5

    check-cast v3, Lorg/json/JSONObject;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {v4, v5, v3}, Lcom/kakao/network/response/ResponseBody;-><init>(ILorg/json/JSONObject;)V

    invoke-static {v4}, Lcom/kakao/network/response/ResponseBody;->toMap(Lcom/kakao/network/response/ResponseBody;)Ljava/util/Map;

    move-result-object v3

    .local v3, "value":Ljava/util/Map;
    goto :goto_1

    .line 307
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/util/Map;
    :cond_2
    return-object v2
.end method


# virtual methods
.method public getArray(Ljava/lang/String;)Lcom/kakao/network/response/ResponseBodyArray;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 160
    :try_start_0
    new-instance v2, Lcom/kakao/network/response/ResponseBodyArray;

    invoke-virtual {p0}, Lcom/kakao/network/response/ResponseBody;->getStatusCode()I

    move-result v3

    invoke-direct {p0, p1}, Lcom/kakao/network/response/ResponseBody;->getOrThrow(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    invoke-direct {v2, v3, v1}, Lcom/kakao/network/response/ResponseBodyArray;-><init>(ILorg/json/JSONArray;)V
    :try_end_0
    .catch Lcom/kakao/network/response/ResponseBody$ResponseBodyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v2

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
    throw v0

    .line 163
    .end local v0    # "e":Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
    :catch_1
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    invoke-direct {v1, v0}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getBody(Ljava/lang/String;)Lcom/kakao/network/response/ResponseBody;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 180
    :try_start_0
    new-instance v2, Lcom/kakao/network/response/ResponseBody;

    invoke-virtual {p0}, Lcom/kakao/network/response/ResponseBody;->getStatusCode()I

    move-result v3

    invoke-direct {p0, p1}, Lcom/kakao/network/response/ResponseBody;->getOrThrow(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-direct {v2, v3, v1}, Lcom/kakao/network/response/ResponseBody;-><init>(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    invoke-direct {v1, v0}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kakao/network/response/ResponseBody;->getOrThrow(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    invoke-direct {v1, v0}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getConverted(Ljava/lang/String;Lcom/kakao/network/response/ResponseBody$BodyConverter;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/kakao/network/response/ResponseBody$BodyConverter",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 241
    .local p2, "converter":Lcom/kakao/network/response/ResponseBody$BodyConverter;, "Lcom/kakao/network/response/ResponseBody$BodyConverter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/kakao/network/response/ResponseBody;->getBody(Ljava/lang/String;)Lcom/kakao/network/response/ResponseBody;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/kakao/network/response/ResponseBody$BodyConverter;->convert(Lcom/kakao/network/response/ResponseBody;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getConvertedList(Ljava/lang/String;Lcom/kakao/network/response/ResponseBody$Converter;)Ljava/util/List;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/kakao/network/response/ResponseBody$Converter",
            "<TF;TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 222
    .local p2, "converter":Lcom/kakao/network/response/ResponseBody$Converter;, "Lcom/kakao/network/response/ResponseBody$Converter<TF;TT;>;"
    invoke-virtual {p0, p1}, Lcom/kakao/network/response/ResponseBody;->getArray(Ljava/lang/String;)Lcom/kakao/network/response/ResponseBodyArray;

    move-result-object v0

    .line 223
    .local v0, "array":Lcom/kakao/network/response/ResponseBodyArray;
    invoke-virtual {v0}, Lcom/kakao/network/response/ResponseBodyArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 224
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/kakao/network/response/ResponseBodyArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/kakao/network/response/ResponseBodyArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 226
    invoke-interface {p2, v0, v1}, Lcom/kakao/network/response/ResponseBody$Converter;->fromArray(Lcom/kakao/network/response/ResponseBodyArray;I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/kakao/network/response/ResponseBody$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kakao/network/response/ResponseBody;->getOrThrow(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    invoke-direct {v1, v0}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kakao/network/response/ResponseBody;->getOrThrow(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 94
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 95
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    .line 98
    :goto_0
    return-wide v2

    .line 97
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 98
    check-cast v1, Ljava/lang/Long;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 101
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v2, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    invoke-direct {v2}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>()V

    throw v2
    :try_end_0
    .catch Lcom/kakao/network/response/ResponseBody$ResponseBodyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    .end local v1    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
    throw v0

    .line 105
    .end local v0    # "e":Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
    :catch_1
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    invoke-direct {v2, v0}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/kakao/network/response/ResponseBody;->statusCode:I

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kakao/network/response/ResponseBody;->getOrThrow(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    invoke-direct {v1, v0}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/kakao/network/response/ResponseBody;->json:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public optArray(Ljava/lang/String;Lcom/kakao/network/response/ResponseBodyArray;)Lcom/kakao/network/response/ResponseBodyArray;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Lcom/kakao/network/response/ResponseBodyArray;

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/kakao/network/response/ResponseBody;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/kakao/network/response/ResponseBody;->getArray(Ljava/lang/String;)Lcom/kakao/network/response/ResponseBodyArray;
    :try_end_0
    .catch Lcom/kakao/network/response/ResponseBody$ResponseBodyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 175
    .end local p2    # "def":Lcom/kakao/network/response/ResponseBodyArray;
    :cond_0
    :goto_0
    return-object p2

    .line 172
    .restart local p2    # "def":Lcom/kakao/network/response/ResponseBodyArray;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public optBody(Ljava/lang/String;Lcom/kakao/network/response/ResponseBody;)Lcom/kakao/network/response/ResponseBody;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Lcom/kakao/network/response/ResponseBody;

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/kakao/network/response/ResponseBody;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/kakao/network/response/ResponseBody;->getBody(Ljava/lang/String;)Lcom/kakao/network/response/ResponseBody;
    :try_end_0
    .catch Lcom/kakao/network/response/ResponseBody$ResponseBodyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 193
    .end local p2    # "def":Lcom/kakao/network/response/ResponseBody;
    :cond_0
    :goto_0
    return-object p2

    .line 190
    .restart local p2    # "def":Lcom/kakao/network/response/ResponseBody;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public optBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/kakao/network/response/ResponseBody;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/kakao/network/response/ResponseBody;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/kakao/network/response/ResponseBody$ResponseBodyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 203
    .end local p2    # "def":Z
    :cond_0
    :goto_0
    return p2

    .line 200
    .restart local p2    # "def":Z
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public optConverted(Ljava/lang/String;Lcom/kakao/network/response/ResponseBody$BodyConverter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/kakao/network/response/ResponseBody$BodyConverter",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 245
    .local p2, "converter":Lcom/kakao/network/response/ResponseBody$BodyConverter;, "Lcom/kakao/network/response/ResponseBody$BodyConverter<TT;>;"
    .local p3, "def":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/kakao/network/response/ResponseBody;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0, p1}, Lcom/kakao/network/response/ResponseBody;->getBody(Ljava/lang/String;)Lcom/kakao/network/response/ResponseBody;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/kakao/network/response/ResponseBody$BodyConverter;->convert(Lcom/kakao/network/response/ResponseBody;)Ljava/lang/Object;

    move-result-object p3

    .line 248
    .end local p3    # "def":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object p3
.end method

.method public optConvertedList(Ljava/lang/String;Lcom/kakao/network/response/ResponseBody$Converter;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/kakao/network/response/ResponseBody$Converter",
            "<TF;TT;>;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 234
    .local p2, "converter":Lcom/kakao/network/response/ResponseBody$Converter;, "Lcom/kakao/network/response/ResponseBody$Converter<TF;TT;>;"
    .local p3, "def":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, p1}, Lcom/kakao/network/response/ResponseBody;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/kakao/network/response/ResponseBody;->getConvertedList(Ljava/lang/String;Lcom/kakao/network/response/ResponseBody$Converter;)Ljava/util/List;

    move-result-object p3

    .line 237
    .end local p3    # "def":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    return-object p3
.end method

.method public optInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/kakao/network/response/ResponseBody;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/kakao/network/response/ResponseBody;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/kakao/network/response/ResponseBody$ResponseBodyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 129
    .end local p2    # "def":I
    :cond_0
    :goto_0
    return p2

    .line 126
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public optLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/kakao/network/response/ResponseBody;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/kakao/network/response/ResponseBody;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lcom/kakao/network/response/ResponseBody$ResponseBodyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 213
    .end local p2    # "def":J
    :cond_0
    :goto_0
    return-wide p2

    .line 210
    .restart local p2    # "def":J
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/kakao/network/response/ResponseBody;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/kakao/network/response/ResponseBody;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/kakao/network/response/ResponseBody$ResponseBodyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 147
    .end local p2    # "def":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 144
    .restart local p2    # "def":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/kakao/network/response/ResponseBody;->json:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
