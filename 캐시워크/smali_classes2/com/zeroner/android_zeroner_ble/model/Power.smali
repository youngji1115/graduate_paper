.class public Lcom/zeroner/android_zeroner_ble/model/Power;
.super Lcom/zeroner/android_zeroner_ble/model/Result;
.source "Power.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private keyCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/model/Result;-><init>()V

    .line 8
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/model/Result;-><init>()V

    .line 12
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/Power;->keyCode:I

    .line 13
    return-void
.end method


# virtual methods
.method public getKeyCode()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/Power;->keyCode:I

    return v0
.end method

.method public setKeyCode(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/Power;->keyCode:I

    .line 20
    return-void
.end method
