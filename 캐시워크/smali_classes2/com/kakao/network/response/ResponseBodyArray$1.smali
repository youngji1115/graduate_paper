.class final Lcom/kakao/network/response/ResponseBodyArray$1;
.super Lcom/kakao/network/response/ResponseBodyArray$PrimitiveConverter;
.source "ResponseBodyArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/network/response/ResponseBodyArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/network/response/ResponseBodyArray$PrimitiveConverter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/kakao/network/response/ResponseBodyArray$PrimitiveConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromArray(Lorg/json/JSONArray;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0, p1, p2}, Lcom/kakao/network/response/ResponseBodyArray$1;->fromArray(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fromArray(Lorg/json/JSONArray;I)Ljava/lang/String;
    .locals 2
    .param p1, "array"    # Lorg/json/JSONArray;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 168
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    invoke-direct {v1, v0}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
