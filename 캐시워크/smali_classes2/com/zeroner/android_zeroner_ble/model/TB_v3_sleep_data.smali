.class public Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;
.super Lcom/zeroner/android_zeroner_ble/model/Result;
.source "TB_v3_sleep_data.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _uploaded:I

.field private activity:I

.field private data_from:Ljava/lang/String;

.field private day:I

.field private end_time:I

.field public index:I

.field private month:I

.field private reserved:I

.field private sleep_type:I

.field private start_time:I

.field private uid:J

.field private week:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/model/Result;-><init>()V

    return-void
.end method

.method public static parse([BLandroid/content/Context;)Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;
    .locals 13
    .param p0, "datas"    # [B
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v12, 0xc

    const/16 v11, 0x8

    const/4 v10, 0x7

    const/4 v9, 0x6

    const/16 v8, 0xff

    .line 158
    new-instance v4, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;

    invoke-direct {v4}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;-><init>()V

    .line 160
    .local v4, "ne":Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;
    const/4 v7, 0x4

    invoke-static {p0, v7, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v2

    .line 161
    .local v2, "index":I
    invoke-virtual {v4, v2}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->setIndex(I)V

    .line 163
    invoke-static {p0, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v7

    add-int/lit16 v6, v7, 0x7d0

    .line 164
    .local v6, "year":I
    invoke-virtual {v4, v6}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->setYear(I)V

    .line 166
    invoke-static {p0, v10, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 167
    .local v3, "month":I
    invoke-virtual {v4, v3}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->setMonth(I)V

    .line 169
    const/16 v7, 0x9

    invoke-static {p0, v11, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    .line 170
    .local v1, "day":I
    invoke-virtual {v4, v1}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->setDay(I)V

    .line 172
    invoke-virtual {v4}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->getYear()I

    move-result v7

    add-int/lit16 v7, v7, -0x7d0

    if-ne v7, v8, :cond_0

    invoke-virtual {v4}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->getMonth()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v7, v8, :cond_0

    invoke-virtual {v4}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->getDay()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v7, v8, :cond_0

    .line 173
    invoke-virtual {v4, v8}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->setYear(I)V

    .line 174
    invoke-virtual {v4, v8}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->setMonth(I)V

    .line 175
    invoke-virtual {v4, v8}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->setDay(I)V

    .line 179
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 180
    .local v0, "c":Ljava/util/Calendar;
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v0, v6, v7, v1}, Ljava/util/Calendar;->set(III)V

    .line 181
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 182
    .local v5, "week":I
    invoke-virtual {v4, v5}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->setWeek(I)V

    .line 184
    const/16 v7, 0xa

    invoke-static {p0, v7, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->setStart_time(I)V

    .line 186
    const/16 v7, 0xe

    invoke-static {p0, v12, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->setEnd_time(I)V

    .line 188
    const/16 v7, 0xe

    const/16 v8, 0x10

    invoke-static {p0, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->setActivity(I)V

    .line 190
    const/16 v7, 0x10

    const/16 v8, 0x11

    invoke-static {p0, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->setSleep_type(I)V

    .line 192
    return-object v4
.end method


# virtual methods
.method public getActivity()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->activity:I

    return v0
.end method

.method public getData_from()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->data_from:Ljava/lang/String;

    return-object v0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->day:I

    return v0
.end method

.method public getEnd_time()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->end_time:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->index:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->month:I

    return v0
.end method

.method public getReserved()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->reserved:I

    return v0
.end method

.method public getSleep_type()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->sleep_type:I

    return v0
.end method

.method public getStart_time()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->start_time:I

    return v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->uid:J

    return-wide v0
.end method

.method public getWeek()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->week:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->year:I

    return v0
.end method

.method public get_uploaded()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->_uploaded:I

    return v0
.end method

.method public setActivity(I)V
    .locals 0
    .param p1, "activity"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->activity:I

    .line 123
    return-void
.end method

.method public setData_from(Ljava/lang/String;)V
    .locals 0
    .param p1, "data_from"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->data_from:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setDay(I)V
    .locals 0
    .param p1, "day"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->day:I

    .line 91
    return-void
.end method

.method public setEnd_time(I)V
    .locals 0
    .param p1, "end_time"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->end_time:I

    .line 115
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->index:I

    .line 147
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->month:I

    .line 83
    return-void
.end method

.method public setReserved(I)V
    .locals 0
    .param p1, "reserved"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->reserved:I

    .line 139
    return-void
.end method

.method public setSleep_type(I)V
    .locals 0
    .param p1, "sleep_type"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->sleep_type:I

    .line 59
    return-void
.end method

.method public setStart_time(I)V
    .locals 0
    .param p1, "start_time"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->start_time:I

    .line 107
    return-void
.end method

.method public setUid(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->uid:J

    .line 51
    return-void
.end method

.method public setWeek(I)V
    .locals 0
    .param p1, "week"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->week:I

    .line 99
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->year:I

    .line 75
    return-void
.end method

.method public set_uploaded(I)V
    .locals 0
    .param p1, "_uploaded"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->_uploaded:I

    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TB_v3_sleep_data [uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->uid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sleep_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->sleep_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data_from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->data_from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", week="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->week:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", start_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->start_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->end_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->activity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _uploaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->_uploaded:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    const-string v1, ", reserved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->reserved:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
