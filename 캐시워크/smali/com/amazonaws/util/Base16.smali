.class public final enum Lcom/amazonaws/util/Base16;
.super Ljava/lang/Enum;
.source "Base16.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/util/Base16;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/util/Base16;

.field private static final codec:Lcom/amazonaws/util/Base16Codec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazonaws/util/Base16;

    sput-object v0, Lcom/amazonaws/util/Base16;->$VALUES:[Lcom/amazonaws/util/Base16;

    .line 25
    new-instance v0, Lcom/amazonaws/util/Base16Codec;

    invoke-direct {v0}, Lcom/amazonaws/util/Base16Codec;-><init>()V

    sput-object v0, Lcom/amazonaws/util/Base16;->codec:Lcom/amazonaws/util/Base16Codec;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 3
    .param p0, "b16"    # Ljava/lang/String;

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v2, 0x0

    .line 54
    :goto_0
    return-object v2

    .line 50
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 51
    const/4 v2, 0x0

    new-array v2, v2, [B

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [B

    .line 53
    .local v0, "buf":[B
    invoke-static {p0, v0}, Lcom/amazonaws/util/CodecUtils;->sanitize(Ljava/lang/String;[B)I

    move-result v1

    .line 54
    .local v1, "len":I
    sget-object v2, Lcom/amazonaws/util/Base16;->codec:Lcom/amazonaws/util/Base16Codec;

    invoke-virtual {v2, v0, v1}, Lcom/amazonaws/util/Base16Codec;->decode([BI)[B

    move-result-object v2

    goto :goto_0
.end method

.method public static decode([B)[B
    .locals 2
    .param p0, "b16"    # [B

    .prologue
    .line 61
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .end local p0    # "b16":[B
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "b16":[B
    :cond_1
    sget-object v0, Lcom/amazonaws/util/Base16;->codec:Lcom/amazonaws/util/Base16Codec;

    array-length v1, p0

    invoke-virtual {v0, p0, v1}, Lcom/amazonaws/util/Base16Codec;->decode([BI)[B

    move-result-object p0

    goto :goto_0
.end method

.method public static encode([B)[B
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 40
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .end local p0    # "bytes":[B
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "bytes":[B
    :cond_1
    sget-object v0, Lcom/amazonaws/util/Base16;->codec:Lcom/amazonaws/util/Base16Codec;

    invoke-virtual {v0, p0}, Lcom/amazonaws/util/Base16Codec;->encode([B)[B

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs encodeAsString([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazonaws/util/Base16;->codec:Lcom/amazonaws/util/Base16Codec;

    invoke-virtual {v0, p0}, Lcom/amazonaws/util/Base16Codec;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/CodecUtils;->toStringDirect([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/util/Base16;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/amazonaws/util/Base16;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/util/Base16;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/util/Base16;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/amazonaws/util/Base16;->$VALUES:[Lcom/amazonaws/util/Base16;

    invoke-virtual {v0}, [Lcom/amazonaws/util/Base16;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/util/Base16;

    return-object v0
.end method
