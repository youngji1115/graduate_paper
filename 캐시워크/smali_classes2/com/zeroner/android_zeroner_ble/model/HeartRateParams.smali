.class public Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;
.super Lcom/zeroner/android_zeroner_ble/model/Result;
.source "HeartRateParams.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private heartrateExist:I

.field private statue:I

.field private strong:I

.field private time:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/model/Result;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public getHeartrateExist()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;->heartrateExist:I

    return v0
.end method

.method public getStatue()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;->statue:I

    return v0
.end method

.method public getStrong()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;->strong:I

    return v0
.end method

.method public getTime()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;->time:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;->version:I

    return v0
.end method

.method public setHeartrateExist(I)V
    .locals 0
    .param p1, "heartrateExist"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;->heartrateExist:I

    .line 18
    return-void
.end method

.method public setStatue(I)V
    .locals 0
    .param p1, "statue"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;->statue:I

    .line 36
    return-void
.end method

.method public setStrong(I)V
    .locals 0
    .param p1, "strong"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;->strong:I

    .line 24
    return-void
.end method

.method public setTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;->time:I

    .line 30
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;->version:I

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HeartRateParams [heartrateExist="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;->heartrateExist:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;->strong:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;->statue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 47
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
