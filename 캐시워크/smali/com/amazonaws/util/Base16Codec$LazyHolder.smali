.class Lcom/amazonaws/util/Base16Codec$LazyHolder;
.super Ljava/lang/Object;
.source "Base16Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/Base16Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final DECODED:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/amazonaws/util/Base16Codec$LazyHolder;->decodeTable()[B

    move-result-object v0

    sput-object v0, Lcom/amazonaws/util/Base16Codec$LazyHolder;->DECODED:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/amazonaws/util/Base16Codec$LazyHolder;->DECODED:[B

    return-object v0
.end method

.method private static decodeTable()[B
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 32
    const/16 v2, 0x67

    new-array v0, v2, [B

    .line 34
    .local v0, "dest":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v3, :cond_3

    .line 36
    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 37
    add-int/lit8 v2, v1, -0x30

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 34
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    const/16 v2, 0x46

    if-gt v1, v2, :cond_1

    .line 39
    add-int/lit8 v2, v1, -0x37

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    .line 40
    :cond_1
    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    if-gt v1, v3, :cond_2

    .line 41
    add-int/lit8 v2, v1, -0x57

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    .line 43
    :cond_2
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    goto :goto_1

    .line 45
    :cond_3
    return-object v0
.end method
