.class public Lcom/kakao/network/response/ResponseBodyArray;
.super Ljava/lang/Object;
.source "ResponseBodyArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/network/response/ResponseBodyArray$PrimitiveConverter;,
        Lcom/kakao/network/response/ResponseBodyArray$ArrayConverter;
    }
.end annotation


# static fields
.field public static final STRING_CONVERTER:Lcom/kakao/network/response/ResponseBodyArray$PrimitiveConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakao/network/response/ResponseBodyArray$PrimitiveConverter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final jsonArray:Lorg/json/JSONArray;

.field private final statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/kakao/network/response/ResponseBodyArray$1;

    invoke-direct {v0}, Lcom/kakao/network/response/ResponseBodyArray$1;-><init>()V

    sput-object v0, Lcom/kakao/network/response/ResponseBodyArray;->STRING_CONVERTER:Lcom/kakao/network/response/ResponseBodyArray$PrimitiveConverter;

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONArray;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/kakao/network/response/ResponseBodyArray;->statusCode:I

    .line 51
    if-nez p2, :cond_0

    .line 52
    new-instance v0, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    invoke-direct {v0}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>()V

    throw v0

    .line 54
    :cond_0
    iput-object p2, p0, Lcom/kakao/network/response/ResponseBodyArray;->jsonArray:Lorg/json/JSONArray;

    .line 55
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
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/kakao/network/response/ResponseBodyArray;->statusCode:I

    .line 38
    if-nez p2, :cond_0

    .line 39
    new-instance v1, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    invoke-direct {v1}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>()V

    throw v1

    .line 43
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kakao/network/response/ResponseBodyArray;->jsonArray:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    invoke-direct {v1, v0}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private getOrThrow(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, "v":Ljava/lang/Object;
    :try_start_0
    iget-object v1, p0, Lcom/kakao/network/response/ResponseBodyArray;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 121
    .end local v0    # "v":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_0

    .line 122
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 124
    :cond_0
    return-object v0

    .line 118
    .restart local v0    # "v":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static toList(Lcom/kakao/network/response/ResponseBodyArray;)Ljava/util/List;
    .locals 5
    .param p0, "array"    # Lcom/kakao/network/response/ResponseBodyArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/kakao/network/response/ResponseBodyArray;",
            ")",
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
    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/kakao/network/response/ResponseBodyArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 178
    invoke-direct {p0, v0}, Lcom/kakao/network/response/ResponseBodyArray;->getOrThrow(I)Ljava/lang/Object;

    move-result-object v2

    .line 179
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    .line 180
    new-instance v3, Lcom/kakao/network/response/ResponseBodyArray;

    invoke-virtual {p0}, Lcom/kakao/network/response/ResponseBodyArray;->getStatusCode()I

    move-result v4

    check-cast v2, Lorg/json/JSONArray;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-direct {v3, v4, v2}, Lcom/kakao/network/response/ResponseBodyArray;-><init>(ILorg/json/JSONArray;)V

    invoke-static {v3}, Lcom/kakao/network/response/ResponseBodyArray;->toList(Lcom/kakao/network/response/ResponseBodyArray;)Ljava/util/List;

    move-result-object v2

    .line 186
    :cond_0
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 184
    new-instance v3, Lcom/kakao/network/response/ResponseBody;

    invoke-virtual {p0}, Lcom/kakao/network/response/ResponseBodyArray;->getStatusCode()I

    move-result v4

    check-cast v2, Lorg/json/JSONObject;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-direct {v3, v4, v2}, Lcom/kakao/network/response/ResponseBody;-><init>(ILorg/json/JSONObject;)V

    invoke-static {v3}, Lcom/kakao/network/response/ResponseBody;->toMap(Lcom/kakao/network/response/ResponseBody;)Ljava/util/Map;

    move-result-object v2

    .local v2, "value":Ljava/util/Map;
    goto :goto_1

    .line 188
    .end local v2    # "value":Ljava/util/Map;
    :cond_2
    return-object v1
.end method


# virtual methods
.method public getBody(I)Lcom/kakao/network/response/ResponseBody;
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 78
    :try_start_0
    new-instance v2, Lcom/kakao/network/response/ResponseBody;

    invoke-virtual {p0}, Lcom/kakao/network/response/ResponseBodyArray;->getStatusCode()I

    move-result v3

    invoke-direct {p0, p1}, Lcom/kakao/network/response/ResponseBodyArray;->getOrThrow(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-direct {v2, v3, v1}, Lcom/kakao/network/response/ResponseBody;-><init>(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Lcom/kakao/network/response/ResponseBody$ResponseBodyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v2

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
    throw v0

    .line 83
    .end local v0    # "e":Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
    :catch_1
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    invoke-direct {v1, v0}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getBoolean(I)Ljava/lang/Boolean;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 107
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kakao/network/response/ResponseBodyArray;->getOrThrow(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    invoke-direct {v1, v0}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getConvertedList(Lcom/kakao/network/response/ResponseBodyArray$ArrayConverter;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/kakao/network/response/ResponseBodyArray$ArrayConverter",
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
    .line 128
    .local p1, "converter":Lcom/kakao/network/response/ResponseBodyArray$ArrayConverter;, "Lcom/kakao/network/response/ResponseBodyArray$ArrayConverter<TF;TT;>;"
    iget-object v2, p0, Lcom/kakao/network/response/ResponseBodyArray;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/kakao/network/response/ResponseBodyArray;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/kakao/network/response/ResponseBodyArray;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/kakao/network/response/ResponseBodyArray;->jsonArray:Lorg/json/JSONArray;

    invoke-interface {p1, v2, v0}, Lcom/kakao/network/response/ResponseBodyArray$ArrayConverter;->fromArray(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/kakao/network/response/ResponseBodyArray$ArrayConverter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kakao/network/response/ResponseBodyArray;->getOrThrow(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    invoke-direct {v1, v0}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getLong(I)J
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kakao/network/response/ResponseBodyArray;->getOrThrow(I)Ljava/lang/Object;

    move-result-object v1

    .line 62
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 63
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    .line 66
    :goto_0
    return-wide v2

    .line 65
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 66
    check-cast v1, Ljava/lang/Long;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 69
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v2, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    invoke-direct {v2}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    invoke-direct {v2, v0}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/kakao/network/response/ResponseBodyArray;->statusCode:I

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 89
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kakao/network/response/ResponseBodyArray;->getOrThrow(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    invoke-direct {v1, v0}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public length()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kakao/network/response/ResponseBodyArray;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public optConvertedList(Lcom/kakao/network/response/ResponseBodyArray$ArrayConverter;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/kakao/network/response/ResponseBodyArray$ArrayConverter",
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
    .line 140
    .local p1, "converter":Lcom/kakao/network/response/ResponseBodyArray$ArrayConverter;, "Lcom/kakao/network/response/ResponseBodyArray$ArrayConverter<TF;TT;>;"
    .local p2, "def":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/kakao/network/response/ResponseBodyArray;->getConvertedList(Lcom/kakao/network/response/ResponseBodyArray$ArrayConverter;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 144
    .end local p2    # "def":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    return-object p2

    .line 141
    .restart local p2    # "def":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/kakao/network/response/ResponseBodyArray;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
