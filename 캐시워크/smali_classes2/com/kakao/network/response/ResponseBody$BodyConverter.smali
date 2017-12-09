.class public abstract Lcom/kakao/network/response/ResponseBody$BodyConverter;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Lcom/kakao/network/response/ResponseBody$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/network/response/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BodyConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/kakao/network/response/ResponseBody$Converter",
        "<",
        "Lcom/kakao/network/response/ResponseBody;",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 256
    .local p0, "this":Lcom/kakao/network/response/ResponseBody$BodyConverter;, "Lcom/kakao/network/response/ResponseBody$BodyConverter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract convert(Lcom/kakao/network/response/ResponseBody;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/network/response/ResponseBody;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "this":Lcom/kakao/network/response/ResponseBody$BodyConverter;, "Lcom/kakao/network/response/ResponseBody$BodyConverter<TT;>;"
    check-cast p1, Lcom/kakao/network/response/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/kakao/network/response/ResponseBody$BodyConverter;->convert(Lcom/kakao/network/response/ResponseBody;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromArray(Lcom/kakao/network/response/ResponseBodyArray;I)Lcom/kakao/network/response/ResponseBody;
    .locals 1
    .param p1, "array"    # Lcom/kakao/network/response/ResponseBodyArray;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lcom/kakao/network/response/ResponseBody$BodyConverter;, "Lcom/kakao/network/response/ResponseBody$BodyConverter<TT;>;"
    invoke-virtual {p1, p2}, Lcom/kakao/network/response/ResponseBodyArray;->getBody(I)Lcom/kakao/network/response/ResponseBody;

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
    .line 256
    .local p0, "this":Lcom/kakao/network/response/ResponseBody$BodyConverter;, "Lcom/kakao/network/response/ResponseBody$BodyConverter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/kakao/network/response/ResponseBody$BodyConverter;->fromArray(Lcom/kakao/network/response/ResponseBodyArray;I)Lcom/kakao/network/response/ResponseBody;

    move-result-object v0

    return-object v0
.end method
