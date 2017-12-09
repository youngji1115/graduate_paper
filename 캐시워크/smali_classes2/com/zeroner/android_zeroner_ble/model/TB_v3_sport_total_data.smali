.class public Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;
.super Ljava/lang/Object;
.source "TB_v3_sport_total_data.java"


# instance fields
.field private _uploaded:I

.field private day:I

.field private day_goal_calo:I

.field private detail_data:Ljava/lang/String;

.field private month:I

.field private reserved:Ljava/lang/String;

.field private time_stamp:J

.field private total_calorie:F

.field private total_steps:I

.field private uid:J

.field private week:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->day:I

    return v0
.end method

.method public getDay_goal_calo()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->day_goal_calo:I

    return v0
.end method

.method public getDetail_data()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->detail_data:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->month:I

    return v0
.end method

.method public getReserved()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->reserved:Ljava/lang/String;

    return-object v0
.end method

.method public getTime_stamp()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->time_stamp:J

    return-wide v0
.end method

.method public getTotal_calorie()F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->total_calorie:F

    return v0
.end method

.method public getTotal_steps()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->total_steps:I

    return v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->uid:J

    return-wide v0
.end method

.method public getWeek()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->week:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->year:I

    return v0
.end method

.method public get_uploaded()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->_uploaded:I

    return v0
.end method

.method public setDay(I)V
    .locals 0
    .param p1, "day"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->day:I

    .line 65
    return-void
.end method

.method public setDay_goal_calo(I)V
    .locals 0
    .param p1, "day_goal_calo"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->day_goal_calo:I

    .line 89
    return-void
.end method

.method public setDetail_data(Ljava/lang/String;)V
    .locals 0
    .param p1, "detail_data"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->detail_data:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->month:I

    .line 57
    return-void
.end method

.method public setReserved(Ljava/lang/String;)V
    .locals 0
    .param p1, "reserved"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->reserved:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setTime_stamp(J)V
    .locals 1
    .param p1, "time_stamp"    # J

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->time_stamp:J

    .line 113
    return-void
.end method

.method public setTotal_calorie(F)V
    .locals 0
    .param p1, "total_calorie"    # F

    .prologue
    .line 40
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->total_calorie:F

    .line 41
    return-void
.end method

.method public setTotal_steps(I)V
    .locals 0
    .param p1, "total_steps"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->total_steps:I

    .line 33
    return-void
.end method

.method public setUid(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->uid:J

    .line 25
    return-void
.end method

.method public setWeek(I)V
    .locals 0
    .param p1, "week"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->week:I

    .line 73
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->year:I

    .line 49
    return-void
.end method

.method public set_uploaded(I)V
    .locals 0
    .param p1, "_uploaded"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->_uploaded:I

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TB_v3_sport_total_data{uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    iget-wide v2, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->uid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    const-string v1, ", total_steps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->total_steps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    const-string v1, ", total_calorie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->total_calorie:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 121
    const-string v1, ", year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    const-string v1, ", week="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->week:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    const-string v1, ", detail_data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->detail_data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    const-string v1, ", day_goal_calo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->day_goal_calo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    const-string v1, ", _uploaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->_uploaded:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 128
    const-string v1, ", reserved=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->reserved:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    const-string v1, ", time_stamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_total_data;->time_stamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
