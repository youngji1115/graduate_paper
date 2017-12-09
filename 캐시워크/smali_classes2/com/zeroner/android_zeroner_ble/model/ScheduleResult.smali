.class public Lcom/zeroner/android_zeroner_ble/model/ScheduleResult;
.super Lcom/zeroner/android_zeroner_ble/model/Result;
.source "ScheduleResult.java"


# instance fields
.field private dayMax:I

.field private max:I

.field private odd:I

.field private result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/model/Result;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "max"    # I
    .param p2, "dayMax"    # I
    .param p3, "odd"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/model/Result;-><init>()V

    .line 18
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/ScheduleResult;->max:I

    .line 19
    iput p2, p0, Lcom/zeroner/android_zeroner_ble/model/ScheduleResult;->dayMax:I

    .line 20
    iput p3, p0, Lcom/zeroner/android_zeroner_ble/model/ScheduleResult;->odd:I

    .line 21
    return-void
.end method


# virtual methods
.method public getDayMax()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/ScheduleResult;->dayMax:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/ScheduleResult;->max:I

    return v0
.end method

.method public getOdd()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/ScheduleResult;->odd:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/ScheduleResult;->result:I

    return v0
.end method

.method public setDayMax(I)V
    .locals 0
    .param p1, "dayMax"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/ScheduleResult;->dayMax:I

    .line 37
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/ScheduleResult;->max:I

    .line 29
    return-void
.end method

.method public setOdd(I)V
    .locals 0
    .param p1, "odd"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/ScheduleResult;->odd:I

    .line 45
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/ScheduleResult;->result:I

    .line 53
    return-void
.end method
