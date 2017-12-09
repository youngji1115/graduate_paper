.class public Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;
.super Lcom/zeroner/android_zeroner_ble/model/Result;
.source "TB_v3_sport_data.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _uploaded:I

.field private calorie:D

.field private complete_progress:I

.field private data_from:Ljava/lang/String;

.field private day:I

.field private detail_data:Ljava/lang/String;

.field private end_time:I

.field public index:I

.field private month:I

.field private reserved:I

.field private sport_type:I

.field private start_time:I

.field private uid:J

.field private week:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/model/Result;-><init>()V

    .line 50
    return-void
.end method

.method public static parse([BLandroid/content/Context;I)Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;
    .locals 20
    .param p0, "datas"    # [B
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "goal"    # I

    .prologue
    .line 183
    new-instance v11, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;

    invoke-direct {v11}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;-><init>()V

    .line 185
    .local v11, "nd":Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;
    const/4 v15, 0x4

    const/16 v16, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    invoke-static {v15}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v9

    .line 186
    .local v9, "index":I
    invoke-virtual {v11, v9}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->setIndex(I)V

    .line 188
    const/4 v15, 0x6

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    invoke-static {v15}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v15

    add-int/lit16 v14, v15, 0x7d0

    .line 189
    .local v14, "year":I
    invoke-virtual {v11, v14}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->setYear(I)V

    .line 191
    const/4 v15, 0x7

    const/16 v16, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    invoke-static {v15}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v15

    add-int/lit8 v10, v15, 0x1

    .line 192
    .local v10, "month":I
    invoke-virtual {v11, v10}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->setMonth(I)V

    .line 194
    const/16 v15, 0x8

    const/16 v16, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    invoke-static {v15}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v15

    add-int/lit8 v7, v15, 0x1

    .line 195
    .local v7, "day":I
    invoke-virtual {v11, v7}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->setDay(I)V

    .line 198
    invoke-virtual {v11}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->getYear()I

    move-result v15

    add-int/lit16 v15, v15, -0x7d0

    const/16 v16, 0xff

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    invoke-virtual {v11}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->getMonth()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    const/16 v16, 0xff

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    invoke-virtual {v11}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->getDay()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    const/16 v16, 0xff

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 199
    const/16 v15, 0xff

    invoke-virtual {v11, v15}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->setYear(I)V

    .line 200
    const/16 v15, 0xff

    invoke-virtual {v11, v15}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->setMonth(I)V

    .line 201
    const/16 v15, 0xff

    invoke-virtual {v11, v15}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->setDay(I)V

    .line 204
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 205
    .local v4, "c":Ljava/util/Calendar;
    add-int/lit8 v15, v10, -0x1

    invoke-virtual {v4, v14, v15, v7}, Ljava/util/Calendar;->set(III)V

    .line 206
    const/4 v15, 0x3

    invoke-virtual {v4, v15}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 207
    .local v13, "week":I
    invoke-virtual {v11, v13}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->setWeek(I)V

    .line 213
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->set_uploaded(I)V

    .line 215
    const/16 v15, 0x9

    const/16 v16, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    invoke-static {v15}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v12

    .line 216
    .local v12, "sport_type":I
    invoke-virtual {v11, v12}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->setSport_type(I)V

    .line 218
    const/16 v15, 0xa

    const/16 v16, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    invoke-static {v15}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v15

    invoke-virtual {v11, v15}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->setStart_time(I)V

    .line 220
    const/16 v15, 0xc

    const/16 v16, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    invoke-static {v15}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v15

    invoke-virtual {v11, v15}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->setEnd_time(I)V

    .line 226
    const/16 v15, 0x10

    const/16 v16, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    invoke-static {v15}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v15

    int-to-float v15, v15

    const v16, 0x3dcccccd    # 0.1f

    mul-float v2, v15, v16

    .line 227
    .local v2, "a1":F
    const/high16 v15, 0x41200000    # 10.0f

    mul-float/2addr v15, v2

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x41200000    # 10.0f

    div-float v5, v15, v16

    .line 228
    .local v5, "car":F
    float-to-double v0, v5

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->setCalorie(D)V

    .line 230
    const/16 v15, 0x80

    if-ge v12, v15, :cond_6

    .line 232
    const/4 v15, 0x1

    if-eq v12, v15, :cond_1

    const/4 v15, 0x7

    if-ne v12, v15, :cond_4

    .line 233
    :cond_1
    new-instance v6, Lcom/zeroner/android_zeroner_ble/model/Detail_data;

    invoke-direct {v6}, Lcom/zeroner/android_zeroner_ble/model/Detail_data;-><init>()V

    .line 234
    .local v6, "d":Lcom/zeroner/android_zeroner_ble/model/Detail_data;
    const/16 v15, 0x12

    const/16 v16, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    invoke-static {v15}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v15

    invoke-virtual {v6, v15}, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->setStep(I)V

    .line 236
    const/16 v15, 0x14

    const/16 v16, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    invoke-static {v15}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v15

    int-to-float v15, v15

    const v16, 0x3dcccccd    # 0.1f

    mul-float v3, v15, v16

    .line 237
    .local v3, "a2":F
    const/high16 v15, 0x41200000    # 10.0f

    mul-float/2addr v15, v3

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x41200000    # 10.0f

    div-float v8, v15, v16

    .line 238
    .local v8, "dis":F
    invoke-virtual {v6, v8}, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->setDistance(F)V

    .line 239
    const/16 v15, 0xe

    const/16 v16, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    invoke-static {v15}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v15

    invoke-virtual {v6, v15}, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->setActivity(I)V

    .line 241
    invoke-virtual {v6}, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->toJson()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->setDetail_data(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v6}, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->getStep()I

    move-result v15

    if-nez v15, :cond_3

    .line 243
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->setComplete_progress(I)V

    .line 268
    .end local v3    # "a2":F
    .end local v6    # "d":Lcom/zeroner/android_zeroner_ble/model/Detail_data;
    .end local v8    # "dis":F
    :cond_2
    :goto_0
    return-object v11

    .line 245
    .restart local v3    # "a2":F
    .restart local v6    # "d":Lcom/zeroner/android_zeroner_ble/model/Detail_data;
    .restart local v8    # "dis":F
    :cond_3
    invoke-virtual {v6}, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->getStep()I

    move-result v15

    mul-int/lit8 v15, v15, 0x64

    div-int v15, v15, p2

    invoke-virtual {v11, v15}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->setComplete_progress(I)V

    goto :goto_0

    .line 248
    .end local v3    # "a2":F
    .end local v6    # "d":Lcom/zeroner/android_zeroner_ble/model/Detail_data;
    .end local v8    # "dis":F
    :cond_4
    new-instance v6, Lcom/zeroner/android_zeroner_ble/model/Detail_data;

    invoke-direct {v6}, Lcom/zeroner/android_zeroner_ble/model/Detail_data;-><init>()V

    .line 249
    .restart local v6    # "d":Lcom/zeroner/android_zeroner_ble/model/Detail_data;
    const/16 v15, 0xe

    const/16 v16, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    invoke-static {v15}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v15

    invoke-virtual {v6, v15}, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->setActivity(I)V

    .line 250
    const/16 v15, 0x12

    const/16 v16, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    invoke-static {v15}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v15

    invoke-virtual {v6, v15}, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->setCount(I)V

    .line 251
    invoke-virtual {v6}, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->getCount()I

    move-result v15

    if-nez v15, :cond_5

    .line 252
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->setComplete_progress(I)V

    .line 256
    :goto_1
    invoke-virtual {v6}, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->toJson()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->setDetail_data(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_5
    invoke-virtual {v6}, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->getCount()I

    move-result v15

    mul-int/lit8 v15, v15, 0x64

    div-int v15, v15, p2

    invoke-virtual {v11, v15}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->setComplete_progress(I)V

    goto :goto_1

    .line 258
    .end local v6    # "d":Lcom/zeroner/android_zeroner_ble/model/Detail_data;
    :cond_6
    const/16 v15, 0x80

    if-lt v12, v15, :cond_2

    .line 259
    new-instance v6, Lcom/zeroner/android_zeroner_ble/model/Detail_data;

    invoke-direct {v6}, Lcom/zeroner/android_zeroner_ble/model/Detail_data;-><init>()V

    .line 260
    .restart local v6    # "d":Lcom/zeroner/android_zeroner_ble/model/Detail_data;
    invoke-virtual {v11}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->getCalorie()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmpl-double v15, v16, v18

    if-nez v15, :cond_7

    .line 261
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->setComplete_progress(I)V

    .line 265
    :goto_2
    const/16 v15, 0xe

    const/16 v16, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    invoke-static {v15}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v15

    invoke-virtual {v6, v15}, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->setActivity(I)V

    .line 266
    invoke-virtual {v6}, Lcom/zeroner/android_zeroner_ble/model/Detail_data;->toJson()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->setDetail_data(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    :cond_7
    invoke-virtual {v11}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->getCalorie()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v15, v0

    mul-int/lit8 v15, v15, 0x64

    div-int v15, v15, p2

    invoke-virtual {v11, v15}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->setComplete_progress(I)V

    goto :goto_2
.end method


# virtual methods
.method public getCalorie()D
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->calorie:D

    return-wide v0
.end method

.method public getComplete_progress()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->complete_progress:I

    return v0
.end method

.method public getData_from()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->data_from:Ljava/lang/String;

    return-object v0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->day:I

    return v0
.end method

.method public getDetail_data()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->detail_data:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd_time()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->end_time:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->index:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->month:I

    return v0
.end method

.method public getReserved()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->reserved:I

    return v0
.end method

.method public getSport_type()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->sport_type:I

    return v0
.end method

.method public getStart_time()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->start_time:I

    return v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->uid:J

    return-wide v0
.end method

.method public getWeek()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->week:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->year:I

    return v0
.end method

.method public get_uploaded()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->_uploaded:I

    return v0
.end method

.method public isLive()Z
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 278
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->year:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->month:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->day:I

    if-ne v0, v1, :cond_0

    .line 279
    const/4 v0, 0x1

    .line 281
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCalorie(D)V
    .locals 1
    .param p1, "calorie"    # D

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->calorie:D

    .line 82
    return-void
.end method

.method public setComplete_progress(I)V
    .locals 0
    .param p1, "complete_progress"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->complete_progress:I

    .line 90
    return-void
.end method

.method public setData_from(Ljava/lang/String;)V
    .locals 0
    .param p1, "data_from"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->data_from:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setDay(I)V
    .locals 0
    .param p1, "day"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->day:I

    .line 114
    return-void
.end method

.method public setDetail_data(Ljava/lang/String;)V
    .locals 0
    .param p1, "detail_data"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->detail_data:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setEnd_time(I)V
    .locals 0
    .param p1, "end_time"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->end_time:I

    .line 138
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->index:I

    .line 170
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->month:I

    .line 106
    return-void
.end method

.method public setReserved(I)V
    .locals 0
    .param p1, "reserved"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->reserved:I

    .line 162
    return-void
.end method

.method public setSport_type(I)V
    .locals 0
    .param p1, "sport_type"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->sport_type:I

    .line 66
    return-void
.end method

.method public setStart_time(I)V
    .locals 0
    .param p1, "start_time"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->start_time:I

    .line 130
    return-void
.end method

.method public setUid(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->uid:J

    .line 58
    return-void
.end method

.method public setWeek(I)V
    .locals 0
    .param p1, "week"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->week:I

    .line 122
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->year:I

    .line 98
    return-void
.end method

.method public set_uploaded(I)V
    .locals 0
    .param p1, "_uploaded"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->_uploaded:I

    .line 154
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TB_v3_sport_data{uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    iget-wide v2, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->uid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    const-string v1, ", sport_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->sport_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 289
    const-string v1, ", data_from=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->data_from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 290
    const-string v1, ", calorie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->calorie:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 291
    const-string v1, ", complete_progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->complete_progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    const-string v1, ", year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 293
    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 294
    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 295
    const-string v1, ", week="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->week:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 296
    const-string v1, ", start_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->start_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    const-string v1, ", end_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->end_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 298
    const-string v1, ", detail_data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->detail_data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 299
    const-string v1, ", _uploaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->_uploaded:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 300
    const-string v1, ", reserved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->reserved:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 301
    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 302
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
