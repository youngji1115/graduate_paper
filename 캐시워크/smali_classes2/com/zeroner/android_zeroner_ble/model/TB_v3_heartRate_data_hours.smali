.class public Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;
.super Lcom/zeroner/android_zeroner_ble/model/Result;
.source "TB_v3_heartRate_data_hours.java"


# instance fields
.field private _uploaded:I

.field private data_from:Ljava/lang/String;

.field private day:I

.field private detail_data:[Ljava/lang/Integer;

.field private hours:I

.field private month:I

.field private reserved:Ljava/lang/String;

.field private time_stamp:J

.field private uid:J

.field private week:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/model/Result;-><init>()V

    return-void
.end method


# virtual methods
.method public getData_from()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->data_from:Ljava/lang/String;

    return-object v0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->day:I

    return v0
.end method

.method public getDetail_data()[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->detail_data:[Ljava/lang/Integer;

    return-object v0
.end method

.method public getHours()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->hours:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->month:I

    return v0
.end method

.method public getReserved()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->reserved:Ljava/lang/String;

    return-object v0
.end method

.method public getTime_stamp()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->time_stamp:J

    return-wide v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->uid:J

    return-wide v0
.end method

.method public getWeek()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->week:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->year:I

    return v0
.end method

.method public get_uploaded()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->_uploaded:I

    return v0
.end method

.method public setData_from(Ljava/lang/String;)V
    .locals 0
    .param p1, "data_from"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->data_from:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setDay(I)V
    .locals 0
    .param p1, "day"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->day:I

    .line 91
    return-void
.end method

.method public setDetail_data([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "detail_data"    # [Ljava/lang/Integer;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->detail_data:[Ljava/lang/Integer;

    .line 44
    return-void
.end method

.method public setHours(I)Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;
    .locals 0
    .param p1, "hours"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->hours:I

    .line 50
    return-object p0
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->month:I

    .line 83
    return-void
.end method

.method public setReserved(Ljava/lang/String;)V
    .locals 0
    .param p1, "reserved"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->reserved:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setTime_stamp(J)V
    .locals 1
    .param p1, "time_stamp"    # J

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->time_stamp:J

    .line 125
    return-void
.end method

.method public setUid(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->uid:J

    .line 59
    return-void
.end method

.method public setWeek(I)V
    .locals 0
    .param p1, "week"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->week:I

    .line 99
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->year:I

    .line 75
    return-void
.end method

.method public set_uploaded(I)V
    .locals 0
    .param p1, "_uploaded"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->_uploaded:I

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TB_heartrate_data{uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    iget-wide v2, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->uid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    const-string v1, ", data_from=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->data_from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    const-string v1, ", year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    const-string v1, ", week="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->week:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const-string v1, ", hours="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->hours:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    const-string v1, ", detail_data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->detail_data:[Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    const-string v1, ", _uploaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->_uploaded:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    const-string v1, ", reserved=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->reserved:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 140
    const-string v1, ", time_stamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->time_stamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 141
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
