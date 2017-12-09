.class public Lcom/zeroner/android_zeroner_ble/model/Alerm;
.super Lcom/zeroner/android_zeroner_ble/model/Result;
.source "Alerm.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private alermStr:Ljava/lang/String;

.field private flag:I

.field private hour:I

.field private id:I

.field private length:I

.field private min:I

.field private repeat:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/model/Result;-><init>()V

    .line 21
    return-void
.end method

.method public static getSerialversionuid()J
    .locals 2

    .prologue
    .line 68
    const-wide/16 v0, 0x1

    return-wide v0
.end method


# virtual methods
.method public getAlermStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/Alerm;->alermStr:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/Alerm;->flag:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/Alerm;->hour:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/Alerm;->id:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/Alerm;->length:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/Alerm;->min:I

    return v0
.end method

.method public getRepeat()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/Alerm;->repeat:I

    return v0
.end method

.method public setAlermStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "alermStr"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/Alerm;->alermStr:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/Alerm;->flag:I

    .line 36
    return-void
.end method

.method public setHour(I)V
    .locals 0
    .param p1, "hour"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/Alerm;->hour:I

    .line 48
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/Alerm;->id:I

    .line 30
    return-void
.end method

.method public setLength(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/Alerm;->length:I

    .line 60
    return-void
.end method

.method public setMin(I)V
    .locals 0
    .param p1, "min"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/Alerm;->min:I

    .line 54
    return-void
.end method

.method public setRepeat(I)V
    .locals 0
    .param p1, "repeat"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/Alerm;->repeat:I

    .line 42
    return-void
.end method
