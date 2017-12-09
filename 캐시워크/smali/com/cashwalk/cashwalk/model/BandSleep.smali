.class public Lcom/cashwalk/cashwalk/model/BandSleep;
.super Ljava/lang/Object;
.source "BandSleep.java"


# instance fields
.field public createTime:Ljava/lang/String;

.field public day:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "day"
    .end annotation
.end field

.field public endTime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end_time"
    .end annotation
.end field

.field public index:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "index"
    .end annotation
.end field

.field public month:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "month"
    .end annotation
.end field

.field public saveTime:Ljava/lang/String;

.field public sleepType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sleep_type"
    .end annotation
.end field

.field public startTime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_time"
    .end annotation
.end field

.field public timeCode:I

.field public year:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "year"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v0, p0, Lcom/cashwalk/cashwalk/model/BandSleep;->index:I

    .line 14
    iput v0, p0, Lcom/cashwalk/cashwalk/model/BandSleep;->startTime:I

    .line 17
    iput v0, p0, Lcom/cashwalk/cashwalk/model/BandSleep;->endTime:I

    .line 20
    iput v0, p0, Lcom/cashwalk/cashwalk/model/BandSleep;->sleepType:I

    .line 23
    iput v0, p0, Lcom/cashwalk/cashwalk/model/BandSleep;->year:I

    .line 26
    iput v0, p0, Lcom/cashwalk/cashwalk/model/BandSleep;->month:I

    .line 29
    iput v0, p0, Lcom/cashwalk/cashwalk/model/BandSleep;->day:I

    .line 32
    iput v0, p0, Lcom/cashwalk/cashwalk/model/BandSleep;->timeCode:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/model/BandSleep;->saveTime:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/model/BandSleep;->createTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 44
    instance-of v1, p1, Lcom/cashwalk/cashwalk/model/BandSleep;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 45
    check-cast v0, Lcom/cashwalk/cashwalk/model/BandSleep;

    .line 46
    .local v0, "temp":Lcom/cashwalk/cashwalk/model/BandSleep;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/model/BandSleep;->saveTime:Ljava/lang/String;

    iget-object v2, v0, Lcom/cashwalk/cashwalk/model/BandSleep;->saveTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const/4 v1, 0x1

    .line 50
    .end local v0    # "temp":Lcom/cashwalk/cashwalk/model/BandSleep;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cashwalk/cashwalk/model/BandSleep;->saveTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
