.class final enum Lcom/amazonaws/util/EncodingSchemeEnum$3;
.super Lcom/amazonaws/util/EncodingSchemeEnum;
.source "EncodingSchemeEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/EncodingSchemeEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/util/EncodingSchemeEnum;-><init>(Ljava/lang/String;ILcom/amazonaws/util/EncodingSchemeEnum$1;)V

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[B
    .locals 1
    .param p1, "encoded"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public encodeAsString([B)Ljava/lang/String;
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 49
    invoke-static {p1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
