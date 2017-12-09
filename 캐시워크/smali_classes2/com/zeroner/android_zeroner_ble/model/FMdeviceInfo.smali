.class public Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;
.super Lcom/zeroner/android_zeroner_ble/model/Result;
.source "FMdeviceInfo.java"


# instance fields
.field private bleAddr:Ljava/lang/String;

.field private intSwversion:J

.field private model:Ljava/lang/String;

.field private oadmode:I

.field private swversion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/model/Result;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;->model:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getBleAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;->bleAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getIntSwversion()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;->intSwversion:J

    return-wide v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOadmode()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;->oadmode:I

    return v0
.end method

.method public getSwversion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;->swversion:Ljava/lang/String;

    return-object v0
.end method

.method public setBleAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "bleAddr"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;->bleAddr:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setIntSwversion(J)V
    .locals 1
    .param p1, "intSwversion"    # J

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;->intSwversion:J

    .line 24
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;->model:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setOadmode(I)V
    .locals 0
    .param p1, "oadmode"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;->oadmode:I

    .line 48
    return-void
.end method

.method public setSwversion(Ljava/lang/String;)V
    .locals 0
    .param p1, "swversion"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;->swversion:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FMdeviceInfo [model="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oadmode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;->oadmode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", swversion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;->swversion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
