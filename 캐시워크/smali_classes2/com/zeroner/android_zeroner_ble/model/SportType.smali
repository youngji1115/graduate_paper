.class public Lcom/zeroner/android_zeroner_ble/model/SportType;
.super Lcom/zeroner/android_zeroner_ble/model/Result;
.source "SportType.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private maxSuport:I

.field private types:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/model/Result;-><init>()V

    .line 26
    return-void
.end method

.method public static parse([BLandroid/content/Context;)Lcom/zeroner/android_zeroner_ble/model/SportType;
    .locals 5
    .param p0, "datas"    # [B
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    new-instance v1, Lcom/zeroner/android_zeroner_ble/model/SportType;

    invoke-direct {v1}, Lcom/zeroner/android_zeroner_ble/model/SportType;-><init>()V

    .line 42
    .local v1, "type":Lcom/zeroner/android_zeroner_ble/model/SportType;
    const/4 v3, 0x3

    aget-byte v3, p0, v3

    add-int/lit8 v3, v3, -0x1

    new-array v2, v3, [I

    .line 43
    .local v2, "types":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 46
    const/4 v3, 0x4

    const/4 v4, 0x5

    invoke-static {p0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/zeroner/android_zeroner_ble/model/SportType;->setMaxSuport(I)V

    .line 47
    invoke-virtual {v1, v2}, Lcom/zeroner/android_zeroner_ble/model/SportType;->setTypes([I)V

    .line 48
    return-object v1

    .line 44
    :cond_0
    mul-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x5

    mul-int/lit8 v4, v0, 0x1

    add-int/lit8 v4, v4, 0x6

    invoke-static {p0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v3

    aput v3, v2, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toParse(Ljava/lang/String;)Lcom/zeroner/android_zeroner_ble/model/SportType;
    .locals 2
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 53
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v1, Lcom/zeroner/android_zeroner_ble/model/SportType;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeroner/android_zeroner_ble/model/SportType;

    return-object v1
.end method


# virtual methods
.method public getMaxSuport()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/SportType;->maxSuport:I

    return v0
.end method

.method public getTypes()[I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/SportType;->types:[I

    return-object v0
.end method

.method public setMaxSuport(I)V
    .locals 0
    .param p1, "maxSuport"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/SportType;->maxSuport:I

    .line 24
    return-void
.end method

.method public setTypes([I)V
    .locals 0
    .param p1, "types"    # [I

    .prologue
    .line 31
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/SportType;->types:[I

    .line 32
    return-void
.end method
