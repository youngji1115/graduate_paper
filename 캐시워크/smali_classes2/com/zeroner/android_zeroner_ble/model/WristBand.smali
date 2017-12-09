.class public Lcom/zeroner/android_zeroner_ble/model/WristBand;
.super Ljava/lang/Object;
.source "WristBand.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zeroner/android_zeroner_ble/model/WristBand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private pair_code:Ljava/lang/String;

.field private rssi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/zeroner/android_zeroner_ble/model/WristBand$1;

    invoke-direct {v0}, Lcom/zeroner/android_zeroner_ble/model/WristBand$1;-><init>()V

    sput-object v0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 140
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->name:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->address:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->pair_code:Ljava/lang/String;

    .line 146
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/zeroner/android_zeroner_ble/model/WristBand;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/zeroner/android_zeroner_ble/model/WristBand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->name:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->address:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "rssi"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->name:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->address:Ljava/lang/String;

    .line 24
    iput p3, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->rssi:I

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    if-ne p0, p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v1

    .line 97
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 100
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 101
    check-cast v0, Lcom/zeroner/android_zeroner_ble/model/WristBand;

    .line 102
    .local v0, "other":Lcom/zeroner/android_zeroner_ble/model/WristBand;
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->address:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 103
    iget-object v3, v0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->address:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 104
    goto :goto_0

    .line 105
    :cond_4
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->address:Ljava/lang/String;

    iget-object v4, v0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 106
    goto :goto_0

    .line 107
    :cond_5
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->name:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 108
    iget-object v3, v0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->name:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 109
    goto :goto_0

    .line 110
    :cond_6
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 111
    goto :goto_0

    .line 112
    :cond_7
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->pair_code:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 113
    iget-object v3, v0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->pair_code:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 114
    goto :goto_0

    .line 115
    :cond_8
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->pair_code:Ljava/lang/String;

    iget-object v4, v0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->pair_code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 116
    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPairCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->name:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->pair_code:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->pair_code:Ljava/lang/String;

    return-object v0
.end method

.method public getPairCodeBytes()[B
    .locals 5

    .prologue
    .line 67
    const/4 v3, 0x4

    new-array v2, v3, [B

    .line 69
    .local v2, "pairs":[B
    const/4 v1, 0x6

    .local v1, "i":I
    :goto_0
    const/16 v3, 0xa

    if-lt v1, v3, :cond_0

    .line 79
    return-object v2

    .line 70
    :cond_0
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 71
    .local v0, "c":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "code"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    add-int/lit8 v3, v1, -0x6

    int-to-byte v4, v0

    aput-byte v4, v2, v3

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->rssi:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 84
    const/16 v0, 0x1f

    .line 85
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 86
    .local v1, "result":I
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->address:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 87
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->name:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 88
    mul-int/lit8 v2, v1, 0x1f

    .line 89
    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->pair_code:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 88
    :goto_2
    add-int v1, v2, v3

    .line 90
    return v1

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->address:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 89
    :cond_2
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->pair_code:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->address:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->name:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setRssi(I)V
    .locals 0
    .param p1, "rssi"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->rssi:I

    .line 43
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/WristBand;->pair_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return-void
.end method
