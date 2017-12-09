.class public Lcom/zeroner/android_zeroner_ble/model/UserInfo;
.super Lcom/zeroner/android_zeroner_ble/model/Result;
.source "UserInfo.java"


# instance fields
.field private age:I

.field private gender:I

.field private height:I

.field private target:I

.field private weight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/model/Result;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/UserInfo;->age:I

    return v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/UserInfo;->gender:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/UserInfo;->height:I

    return v0
.end method

.method public getTarget()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/UserInfo;->target:I

    return v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/UserInfo;->weight:I

    return v0
.end method

.method public setAge(I)V
    .locals 0
    .param p1, "age"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/UserInfo;->age:I

    .line 32
    return-void
.end method

.method public setGender(I)V
    .locals 0
    .param p1, "gender"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/UserInfo;->gender:I

    .line 26
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/UserInfo;->height:I

    .line 14
    return-void
.end method

.method public setTarget(I)V
    .locals 0
    .param p1, "target"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/UserInfo;->target:I

    .line 38
    return-void
.end method

.method public setWeight(I)V
    .locals 0
    .param p1, "weight"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/UserInfo;->weight:I

    .line 20
    return-void
.end method
