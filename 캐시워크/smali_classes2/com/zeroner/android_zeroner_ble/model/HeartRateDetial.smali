.class public Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;
.super Lcom/zeroner/android_zeroner_ble/model/Result;
.source "HeartRateDetial.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private end_time:I

.field private energy:F

.field private r1Energy:F

.field private r1Hr:I

.field private r1Time:I

.field private r2Energy:F

.field private r2Hr:I

.field private r2Time:I

.field private r3Energy:F

.field private r3Hr:I

.field private r3Time:I

.field private r4Energy:F

.field private r4Hr:I

.field private r4Time:I

.field private r5Energy:F

.field private r5Hr:I

.field private r5Time:I

.field private sport_type:I

.field private start_time:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/model/Result;-><init>()V

    return-void
.end method

.method public static getSerialversionuid()J
    .locals 2

    .prologue
    .line 214
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public static parse([BLandroid/content/Context;)Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;
    .locals 28
    .param p0, "datas"    # [B
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    new-instance v4, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;

    invoke-direct {v4}, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;-><init>()V

    .line 54
    .local v4, "detial":Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;
    const/16 v23, 0x9

    const/16 v24, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v22

    .line 55
    .local v22, "type":I
    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->setSport_type(I)V

    .line 56
    const/16 v23, 0xa

    const/16 v24, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v21

    .line 57
    .local v21, "start_time":I
    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->setStart_time(I)V

    .line 58
    const/16 v23, 0xc

    const/16 v24, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v5

    .line 59
    .local v5, "end_time":I
    invoke-virtual {v4, v5}, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->setEnd_time(I)V

    .line 60
    const/16 v23, 0xe

    const/16 v24, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x3fb999999999999aL    # 0.1

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x4024000000000000L    # 10.0

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x41200000    # 10.0f

    div-float v23, v23, v24

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->setEnergy(F)V

    .line 61
    const/16 v23, 0x10

    const/16 v24, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v7

    .line 62
    .local v7, "r1Time":I
    invoke-virtual {v4, v7}, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->setR1Time(I)V

    .line 63
    const/16 v23, 0x12

    const/16 v24, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v10

    .line 64
    .local v10, "r2Time":I
    invoke-virtual {v4, v10}, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->setR2Time(I)V

    .line 65
    const/16 v23, 0x14

    const/16 v24, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v13

    .line 66
    .local v13, "r3Time":I
    invoke-virtual {v4, v13}, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->setR3Time(I)V

    .line 67
    const/16 v23, 0x16

    const/16 v24, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v16

    .line 68
    .local v16, "r4Time":I
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->setR4Time(I)V

    .line 69
    const/16 v23, 0x18

    const/16 v24, 0x1a

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v19

    .line 70
    .local v19, "r5Time":I
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->setR5Time(I)V

    .line 71
    const/16 v23, 0x1a

    const/16 v24, 0x1c

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x3fb999999999999aL    # 0.1

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x4024000000000000L    # 10.0

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x41200000    # 10.0f

    div-float v8, v23, v24

    .line 72
    .local v8, "r1calorie":F
    invoke-virtual {v4, v8}, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->setR1Energy(F)V

    .line 73
    const/16 v23, 0x1c

    const/16 v24, 0x1e

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x3fb999999999999aL    # 0.1

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x4024000000000000L    # 10.0

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x41200000    # 10.0f

    div-float v11, v23, v24

    .line 74
    .local v11, "r2calorie":F
    invoke-virtual {v4, v11}, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->setR2Energy(F)V

    .line 75
    const/16 v23, 0x1e

    const/16 v24, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x3fb999999999999aL    # 0.1

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x4024000000000000L    # 10.0

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x41200000    # 10.0f

    div-float v14, v23, v24

    .line 76
    .local v14, "r3calorie":F
    invoke-virtual {v4, v14}, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->setR3Energy(F)V

    .line 77
    const/16 v23, 0x20

    const/16 v24, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x3fb999999999999aL    # 0.1

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x4024000000000000L    # 10.0

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x41200000    # 10.0f

    div-float v17, v23, v24

    .line 78
    .local v17, "r4calorie":F
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->setR4Energy(F)V

    .line 79
    const/16 v23, 0x22

    const/16 v24, 0x24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x3fb999999999999aL    # 0.1

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x4024000000000000L    # 10.0

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x41200000    # 10.0f

    div-float v20, v23, v24

    .line 80
    .local v20, "r5calorie":F
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->setR5Energy(F)V

    .line 81
    const/16 v23, 0x24

    const/16 v24, 0x25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v6

    .line 82
    .local v6, "r1Hr":I
    invoke-virtual {v4, v6}, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->setR1Hr(I)V

    .line 83
    const/16 v23, 0x25

    const/16 v24, 0x26

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v9

    .line 84
    .local v9, "r2Hr":I
    invoke-virtual {v4, v9}, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->setR2Hr(I)V

    .line 85
    const/16 v23, 0x26

    const/16 v24, 0x27

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v12

    .line 86
    .local v12, "r3Hr":I
    invoke-virtual {v4, v12}, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->setR3Hr(I)V

    .line 87
    const/16 v23, 0x27

    const/16 v24, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v15

    .line 88
    .local v15, "r4Hr":I
    invoke-virtual {v4, v15}, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->setR4Hr(I)V

    .line 89
    const/16 v23, 0x28

    const/16 v24, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v18

    .line 90
    .local v18, "r5Hr":I
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->setR5Hr(I)V

    .line 92
    return-object v4
.end method


# virtual methods
.method public getEnd_time()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->end_time:I

    return v0
.end method

.method public getEnergy()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->energy:F

    return v0
.end method

.method public getR1Energy()F
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r1Energy:F

    return v0
.end method

.method public getR1Hr()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r1Hr:I

    return v0
.end method

.method public getR1Time()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r1Time:I

    return v0
.end method

.method public getR2Energy()F
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r2Energy:F

    return v0
.end method

.method public getR2Hr()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r2Hr:I

    return v0
.end method

.method public getR2Time()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r2Time:I

    return v0
.end method

.method public getR3Energy()F
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r3Energy:F

    return v0
.end method

.method public getR3Hr()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r3Hr:I

    return v0
.end method

.method public getR3Time()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r3Time:I

    return v0
.end method

.method public getR4Energy()F
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r4Energy:F

    return v0
.end method

.method public getR4Hr()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r4Hr:I

    return v0
.end method

.method public getR4Time()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r4Time:I

    return v0
.end method

.method public getR5Energy()F
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r5Energy:F

    return v0
.end method

.method public getR5Hr()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r5Hr:I

    return v0
.end method

.method public getR5Time()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r5Time:I

    return v0
.end method

.method public getSport_type()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->sport_type:I

    return v0
.end method

.method public getStart_time()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->start_time:I

    return v0
.end method

.method public setEnd_time(I)V
    .locals 0
    .param p1, "end_time"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->end_time:I

    .line 116
    return-void
.end method

.method public setEnergy(F)V
    .locals 0
    .param p1, "energy"    # F

    .prologue
    .line 121
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->energy:F

    .line 122
    return-void
.end method

.method public setR1Energy(F)V
    .locals 0
    .param p1, "r1Energy"    # F

    .prologue
    .line 157
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r1Energy:F

    .line 158
    return-void
.end method

.method public setR1Hr(I)V
    .locals 0
    .param p1, "r1Hr"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r1Hr:I

    .line 188
    return-void
.end method

.method public setR1Time(I)V
    .locals 0
    .param p1, "r1Time"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r1Time:I

    .line 128
    return-void
.end method

.method public setR2Energy(F)V
    .locals 0
    .param p1, "r2Energy"    # F

    .prologue
    .line 163
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r2Energy:F

    .line 164
    return-void
.end method

.method public setR2Hr(I)V
    .locals 0
    .param p1, "r2Hr"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r2Hr:I

    .line 194
    return-void
.end method

.method public setR2Time(I)V
    .locals 0
    .param p1, "r2Time"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r2Time:I

    .line 134
    return-void
.end method

.method public setR3Energy(F)V
    .locals 0
    .param p1, "r3Energy"    # F

    .prologue
    .line 169
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r3Energy:F

    .line 170
    return-void
.end method

.method public setR3Hr(I)V
    .locals 0
    .param p1, "r3Hr"    # I

    .prologue
    .line 199
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r3Hr:I

    .line 200
    return-void
.end method

.method public setR3Time(I)V
    .locals 0
    .param p1, "r3Time"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r3Time:I

    .line 140
    return-void
.end method

.method public setR4Energy(F)V
    .locals 0
    .param p1, "r4Energy"    # F

    .prologue
    .line 175
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r4Energy:F

    .line 176
    return-void
.end method

.method public setR4Hr(I)V
    .locals 0
    .param p1, "r4Hr"    # I

    .prologue
    .line 205
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r4Hr:I

    .line 206
    return-void
.end method

.method public setR4Time(I)V
    .locals 0
    .param p1, "r4Time"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r4Time:I

    .line 146
    return-void
.end method

.method public setR5Energy(F)V
    .locals 0
    .param p1, "r5Energy"    # F

    .prologue
    .line 181
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r5Energy:F

    .line 182
    return-void
.end method

.method public setR5Hr(I)V
    .locals 0
    .param p1, "r5Hr"    # I

    .prologue
    .line 211
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r5Hr:I

    .line 212
    return-void
.end method

.method public setR5Time(I)V
    .locals 0
    .param p1, "r5Time"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r5Time:I

    .line 152
    return-void
.end method

.method public setSport_type(I)V
    .locals 0
    .param p1, "sport_type"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->sport_type:I

    .line 104
    return-void
.end method

.method public setStart_time(I)V
    .locals 0
    .param p1, "start_time"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->start_time:I

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HeartRateDetial [sport_type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->sport_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", start_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->start_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->end_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", energy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->energy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", r1Time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 224
    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r1Time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", r2Time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r2Time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", r3Time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r3Time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", r4Time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r4Time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", r5Time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r5Time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", r1Energy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r1Energy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", r2Energy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 225
    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r2Energy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", r3Energy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r3Energy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", r4Energy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r4Energy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", r5Energy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r5Energy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", r1Hr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r1Hr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", r2Hr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r2Hr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", r3Hr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 226
    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r3Hr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", r4Hr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r4Hr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", r5Hr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->r5Hr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
