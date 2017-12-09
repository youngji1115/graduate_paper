.class public Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;
.super Lcom/zeroner/android_zeroner_ble/model/Result;
.source "DeviceSetting.java"


# instance fields
.field private autoSleep:I

.field private backLightEt:I

.field private backLightSt:I

.field private gesture:I

.field private is24Hour:I

.field private language:I

.field private light:I

.field private screen:I

.field private unit:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "light"    # I
    .param p2, "gesture"    # I
    .param p3, "is24Hour"    # I
    .param p4, "autoSleep"    # I
    .param p5, "backLightSt"    # I
    .param p6, "backLightEt"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/model/Result;-><init>()V

    .line 73
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->light:I

    .line 74
    iput p2, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->gesture:I

    .line 75
    iput p3, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->is24Hour:I

    .line 76
    iput p4, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->autoSleep:I

    .line 77
    iput p5, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->backLightSt:I

    .line 78
    iput p6, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->backLightEt:I

    .line 79
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0
    .param p1, "light"    # I
    .param p2, "gesture"    # I
    .param p3, "unit"    # I
    .param p4, "is24Hour"    # I
    .param p5, "autoSleep"    # I
    .param p6, "backLightSt"    # I
    .param p7, "backLightEt"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/model/Result;-><init>()V

    .line 21
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->light:I

    .line 22
    iput p2, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->gesture:I

    .line 23
    iput p3, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->unit:I

    .line 24
    iput p4, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->is24Hour:I

    .line 25
    iput p5, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->autoSleep:I

    .line 26
    iput p6, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->backLightSt:I

    .line 27
    iput p7, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->backLightEt:I

    .line 28
    return-void
.end method

.method public constructor <init>(IIIIIIIII)V
    .locals 0
    .param p1, "light"    # I
    .param p2, "gesture"    # I
    .param p3, "unit"    # I
    .param p4, "is24Hour"    # I
    .param p5, "autoSleep"    # I
    .param p6, "backLightSt"    # I
    .param p7, "backLightEt"    # I
    .param p8, "screen"    # I
    .param p9, "language"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/model/Result;-><init>()V

    .line 38
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->light:I

    .line 39
    iput p2, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->gesture:I

    .line 40
    iput p3, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->unit:I

    .line 41
    iput p4, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->is24Hour:I

    .line 42
    iput p5, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->autoSleep:I

    .line 43
    iput p6, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->backLightSt:I

    .line 44
    iput p7, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->backLightEt:I

    .line 45
    iput p8, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->screen:I

    .line 46
    iput p9, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->language:I

    .line 47
    return-void
.end method


# virtual methods
.method public getAutoSleep()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->autoSleep:I

    return v0
.end method

.method public getBackLightEt()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->backLightEt:I

    return v0
.end method

.method public getBackLightSt()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->backLightSt:I

    return v0
.end method

.method public getGesture()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->gesture:I

    return v0
.end method

.method public getIs24Hour()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->is24Hour:I

    return v0
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->language:I

    return v0
.end method

.method public getLight()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->light:I

    return v0
.end method

.method public getScreen()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->screen:I

    return v0
.end method

.method public getUnit()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->unit:I

    return v0
.end method

.method public setAutoSleep(I)V
    .locals 0
    .param p1, "autoSleep"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->autoSleep:I

    .line 106
    return-void
.end method

.method public setBackLightEt(I)V
    .locals 0
    .param p1, "backLightEt"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->backLightEt:I

    .line 118
    return-void
.end method

.method public setBackLightSt(I)V
    .locals 0
    .param p1, "backLightSt"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->backLightSt:I

    .line 112
    return-void
.end method

.method public setGesture(I)V
    .locals 0
    .param p1, "gesture"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->gesture:I

    .line 94
    return-void
.end method

.method public setIs24Hour(I)V
    .locals 0
    .param p1, "is24Hour"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->is24Hour:I

    .line 100
    return-void
.end method

.method public setLanguage(I)V
    .locals 0
    .param p1, "language"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->language:I

    .line 130
    return-void
.end method

.method public setLight(I)V
    .locals 0
    .param p1, "light"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->light:I

    .line 88
    return-void
.end method

.method public setScreen(I)V
    .locals 0
    .param p1, "screen"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->screen:I

    .line 124
    return-void
.end method

.method public setUnit(I)V
    .locals 0
    .param p1, "unit"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->unit:I

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceSetting [light="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->light:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->gesture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", is24Hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->is24Hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoSleep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->autoSleep:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backLightSt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->backLightSt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backLightEt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->backLightEt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
