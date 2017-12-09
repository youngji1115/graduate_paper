.class final Lcom/kakao/network/response/ResponseBody$1;
.super Lcom/kakao/network/response/ResponseBody$PrimitiveConverter;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/network/response/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/network/response/ResponseBody$PrimitiveConverter",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/kakao/network/response/ResponseBody$PrimitiveConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public fromArray(Lcom/kakao/network/response/ResponseBodyArray;I)Ljava/lang/Long;
    .locals 2
    .param p1, "array"    # Lcom/kakao/network/response/ResponseBodyArray;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p1, p2}, Lcom/kakao/network/response/ResponseBodyArray;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fromArray(Lcom/kakao/network/response/ResponseBodyArray;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/kakao/network/response/ResponseBody$1;->fromArray(Lcom/kakao/network/response/ResponseBodyArray;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
