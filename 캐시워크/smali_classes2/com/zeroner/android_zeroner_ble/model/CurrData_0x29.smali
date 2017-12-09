.class public Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;
.super Lcom/zeroner/android_zeroner_ble/model/Result;
.source "CurrData_0x29.java"


# static fields
.field private static indexTypes:[I = null

.field private static final serialVersionUID:J = 0x1L

.field private static suportTypes:[I


# instance fields
.field private activityTime:I

.field private count:I

.field private day:I

.field private endTime:I

.field private month:I

.field private sportCalories:Ljava/lang/String;

.field private sportDistances:Ljava/lang/String;

.field private sportSteps:Ljava/lang/String;

.field private sportType:I

.field private startTime:I

.field private totalCalories:Ljava/lang/String;

.field private totalSteps:Ljava/lang/String;

.field private uid:J

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->suportTypes:[I

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->indexTypes:[I

    return-void

    .line 43
    :array_0
    .array-data 4
        0x80
        0x81
        0x82
        0x83
        0x84
        0x85
        0x86
        0x87
        0x88
        0x89
        0x8a
        0x8b
        0x8c
        0x8e
        0x8f
        0x90
        0x91
    .end array-data

    .line 44
    :array_1
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/model/Result;-><init>()V

    .line 47
    return-void
.end method

.method public static parse([BLandroid/content/Context;)Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;
    .locals 14
    .param p0, "datas"    # [B
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v13, 0x8

    const v12, 0x3dcccccd    # 0.1f

    const/16 v11, 0xff

    const/16 v10, 0x10

    const/16 v9, 0xc

    .line 68
    new-instance v4, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;

    invoke-direct {v4}, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;-><init>()V

    .line 69
    .local v4, "nd":Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v7, ".0"

    invoke-direct {v1, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "decimalFormat":Ljava/text/DecimalFormat;
    array-length v7, p0

    const/4 v8, 0x4

    if-lt v7, v8, :cond_0

    array-length v7, p0

    if-lt v7, v9, :cond_0

    array-length v7, p0

    if-ge v7, v10, :cond_2

    .line 73
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "29datas.length"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, p0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 74
    const/4 v4, 0x0

    .line 115
    .end local v4    # "nd":Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;
    :cond_1
    :goto_0
    return-object v4

    .line 78
    .restart local v4    # "nd":Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;
    :cond_2
    const/4 v7, 0x4

    const/4 v8, 0x5

    invoke-static {p0, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v7

    add-int/lit16 v6, v7, 0x7d0

    .line 79
    .local v6, "year":I
    invoke-virtual {v4, v6}, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->setYear(I)V

    .line 81
    const/4 v7, 0x5

    const/4 v8, 0x6

    invoke-static {p0, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 82
    .local v3, "month":I
    invoke-virtual {v4, v3}, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->setMonth(I)V

    .line 84
    const/4 v7, 0x6

    const/4 v8, 0x7

    invoke-static {p0, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v7

    add-int/lit8 v0, v7, 0x1

    .line 85
    .local v0, "day":I
    invoke-virtual {v4, v0}, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->setDay(I)V

    .line 90
    const/4 v7, 0x7

    invoke-static {p0, v7, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v5

    .line 91
    .local v5, "sport_type":I
    invoke-virtual {v4, v5}, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->setSportType(I)V

    .line 93
    invoke-virtual {v4}, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->getYear()I

    move-result v7

    add-int/lit16 v7, v7, -0x7d0

    if-ne v7, v11, :cond_3

    invoke-virtual {v4}, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->getMonth()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v7, v11, :cond_3

    invoke-virtual {v4}, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->getDay()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v7, v11, :cond_3

    .line 94
    invoke-virtual {v4, v11}, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->setYear(I)V

    .line 95
    invoke-virtual {v4, v11}, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->setMonth(I)V

    .line 96
    invoke-virtual {v4, v11}, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->setDay(I)V

    .line 97
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p0, v13, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    invoke-static {v8}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v12

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->setSportCalories(Ljava/lang/String;)V

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p0, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    invoke-static {v8}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->setSportSteps(Ljava/lang/String;)V

    .line 99
    const/16 v7, 0x14

    invoke-static {p0, v10, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    float-to-double v8, v7

    invoke-virtual {v1, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->setSportDistances(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p0, v13, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    invoke-static {v8}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v12

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->setSportCalories(Ljava/lang/String;)V

    .line 102
    const/4 v7, 0x1

    if-ne v5, v7, :cond_4

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p0, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    invoke-static {v8}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->setSportSteps(Ljava/lang/String;)V

    .line 104
    const/16 v7, 0x14

    invoke-static {p0, v10, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    float-to-double v8, v7

    invoke-virtual {v1, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->setSportDistances(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v7, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->indexTypes:[I

    array-length v7, v7

    if-ge v2, v7, :cond_1

    .line 107
    if-ne v5, v2, :cond_5

    .line 108
    invoke-static {p0, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->setCount(I)V

    .line 106
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getActivityTime()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->activityTime:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->count:I

    return v0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->day:I

    return v0
.end method

.method public getEndTime()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->endTime:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->month:I

    return v0
.end method

.method public getSportCalories()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->sportCalories:Ljava/lang/String;

    return-object v0
.end method

.method public getSportDistances()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->sportDistances:Ljava/lang/String;

    return-object v0
.end method

.method public getSportSteps()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->sportSteps:Ljava/lang/String;

    return-object v0
.end method

.method public getSportType()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->sportType:I

    return v0
.end method

.method public getStartTime()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->startTime:I

    return v0
.end method

.method public getTotalCalories()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->totalCalories:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSteps()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->totalSteps:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->uid:J

    return-wide v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->year:I

    return v0
.end method

.method public isLive()Z
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 124
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->year:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->month:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->day:I

    if-ne v0, v1, :cond_0

    .line 125
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActivityTime(I)V
    .locals 0
    .param p1, "activityTime"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->activityTime:I

    .line 144
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 231
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->count:I

    .line 232
    return-void
.end method

.method public setDay(I)V
    .locals 0
    .param p1, "day"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->day:I

    .line 192
    return-void
.end method

.method public setEndTime(I)V
    .locals 0
    .param p1, "endTime"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->endTime:I

    .line 152
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->month:I

    .line 184
    return-void
.end method

.method public setSportCalories(Ljava/lang/String;)V
    .locals 0
    .param p1, "sportCalories"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->sportCalories:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setSportDistances(Ljava/lang/String;)V
    .locals 0
    .param p1, "sportDistances"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->sportDistances:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setSportSteps(Ljava/lang/String;)V
    .locals 0
    .param p1, "sportSteps"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->sportSteps:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setSportType(I)V
    .locals 0
    .param p1, "sportType"    # I

    .prologue
    .line 199
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->sportType:I

    .line 200
    return-void
.end method

.method public setStartTime(I)V
    .locals 0
    .param p1, "startTime"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->startTime:I

    .line 136
    return-void
.end method

.method public setTotalCalories(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalCalories"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->totalCalories:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setTotalSteps(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalSteps"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->totalSteps:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setUid(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->uid:J

    .line 55
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 175
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->year:I

    .line 176
    return-void
.end method
