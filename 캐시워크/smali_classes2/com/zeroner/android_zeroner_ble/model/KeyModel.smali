.class public Lcom/zeroner/android_zeroner_ble/model/KeyModel;
.super Lcom/zeroner/android_zeroner_ble/model/Result;
.source "KeyModel.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private keyCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/model/Result;-><init>()V

    .line 7
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/model/Result;-><init>()V

    .line 11
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/KeyModel;->keyCode:I

    .line 12
    return-void
.end method


# virtual methods
.method public getKeyCode()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/KeyModel;->keyCode:I

    return v0
.end method

.method public setKeyCode(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/KeyModel;->keyCode:I

    .line 19
    return-void
.end method
