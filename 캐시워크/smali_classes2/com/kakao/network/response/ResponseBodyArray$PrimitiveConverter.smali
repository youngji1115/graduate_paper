.class public abstract Lcom/kakao/network/response/ResponseBodyArray$PrimitiveConverter;
.super Ljava/lang/Object;
.source "ResponseBodyArray.java"

# interfaces
.implements Lcom/kakao/network/response/ResponseBodyArray$ArrayConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/network/response/ResponseBodyArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PrimitiveConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/kakao/network/response/ResponseBodyArray$ArrayConverter",
        "<TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 157
    .local p0, "this":Lcom/kakao/network/response/ResponseBodyArray$PrimitiveConverter;, "Lcom/kakao/network/response/ResponseBodyArray$PrimitiveConverter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lcom/kakao/network/response/ResponseBodyArray$PrimitiveConverter;, "Lcom/kakao/network/response/ResponseBodyArray$PrimitiveConverter<TT;>;"
    .local p1, "o":Ljava/lang/Object;, "TT;"
    return-object p1
.end method
