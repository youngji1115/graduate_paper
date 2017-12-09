.class public Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;
.super Ljava/lang/Object;
.source "SedentaryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Sedentary"
.end annotation


# instance fields
.field public duration:I

.field public end_hour:I

.field public repeat:I

.field public start_hour:I

.field final synthetic this$0:Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo;

.field public work_counts:I


# direct methods
.method public constructor <init>(Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;->this$0:Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;->duration:I

    return v0
.end method

.method public getEnd_hour()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;->end_hour:I

    return v0
.end method

.method public getRepeat()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;->repeat:I

    return v0
.end method

.method public getStart_hour()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;->start_hour:I

    return v0
.end method

.method public getWork_counts()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;->work_counts:I

    return v0
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;->duration:I

    .line 62
    return-void
.end method

.method public setEnd_hour(I)V
    .locals 0
    .param p1, "end_hour"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;->end_hour:I

    .line 54
    return-void
.end method

.method public setRepeat(I)V
    .locals 0
    .param p1, "repeat"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;->repeat:I

    .line 38
    return-void
.end method

.method public setStart_hour(I)V
    .locals 0
    .param p1, "start_hour"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;->start_hour:I

    .line 46
    return-void
.end method

.method public setWork_counts(I)V
    .locals 0
    .param p1, "work_counts"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;->work_counts:I

    .line 70
    return-void
.end method
