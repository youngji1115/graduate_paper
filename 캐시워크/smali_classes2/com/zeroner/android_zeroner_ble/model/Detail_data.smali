.class public Lcom/zeroner/android_zeroner_ble/model/Detail_data;
.super Lcom/zeroner/android_zeroner_ble/model/Result;
.source "Detail_data.java"


# instance fields
.field private activity:I

.field private count:I

.field private distance:F

.field private step:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/model/Result;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->activity:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->count:I

    return v0
.end method

.method public getDistance()F
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->distance:F

    return v0
.end method

.method public getStep()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->step:I

    return v0
.end method

.method public setActivity(I)V
    .locals 0
    .param p1, "activity"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->activity:I

    .line 27
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->count:I

    .line 33
    return-void
.end method

.method public setDistance(F)V
    .locals 0
    .param p1, "distance"    # F

    .prologue
    .line 20
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->distance:F

    .line 21
    return-void
.end method

.method public setStep(I)V
    .locals 0
    .param p1, "step"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->step:I

    .line 15
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Detail_data [step="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->step:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->distance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->activity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
