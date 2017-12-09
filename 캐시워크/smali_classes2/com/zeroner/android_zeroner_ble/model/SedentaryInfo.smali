.class public Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo;
.super Lcom/zeroner/android_zeroner_ble/model/Result;
.source "SedentaryInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;
    }
.end annotation


# static fields
.field public static CALLBACK_ITEM_COUNT:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x3

    sput v0, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo;->CALLBACK_ITEM_COUNT:I

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/model/Result;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo;->mList:Ljava/util/List;

    .line 8
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo;->mList:Ljava/util/List;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;>;"
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo;->mList:Ljava/util/List;

    .line 21
    return-void
.end method
