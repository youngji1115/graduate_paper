.class public Lcom/zeroner/android_zeroner_ble/model/QuietModeInfo;
.super Lcom/zeroner/android_zeroner_ble/model/Result;
.source "QuietModeInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private endHour:I

.field private endMin:I

.field private isOpened:I

.field private startHour:I

.field private startMin:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/model/Result;-><init>()V

    .line 18
    return-void
.end method

.method public static getSerialversionuid()J
    .locals 2

    .prologue
    .line 62
    const-wide/16 v0, 0x1

    return-wide v0
.end method


# virtual methods
.method public getEndHour()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/QuietModeInfo;->endHour:I

    return v0
.end method

.method public getEndMin()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/QuietModeInfo;->endMin:I

    return v0
.end method

.method public getStartHour()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/QuietModeInfo;->startHour:I

    return v0
.end method

.method public getStartMin()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/QuietModeInfo;->startMin:I

    return v0
.end method

.method public isOpened()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/QuietModeInfo;->isOpened:I

    return v0
.end method

.method public setEndHour(I)V
    .locals 0
    .param p1, "endHour"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/QuietModeInfo;->endHour:I

    .line 43
    return-void
.end method

.method public setEndMin(I)V
    .locals 0
    .param p1, "endMin"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/QuietModeInfo;->endMin:I

    .line 59
    return-void
.end method

.method public setOpened(I)V
    .locals 0
    .param p1, "opened"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/QuietModeInfo;->isOpened:I

    .line 27
    return-void
.end method

.method public setStartHour(I)V
    .locals 0
    .param p1, "startHour"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/QuietModeInfo;->startHour:I

    .line 35
    return-void
.end method

.method public setStartMin(I)V
    .locals 0
    .param p1, "startMin"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/QuietModeInfo;->startMin:I

    .line 51
    return-void
.end method
