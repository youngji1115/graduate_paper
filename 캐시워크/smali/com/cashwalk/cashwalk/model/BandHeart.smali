.class public Lcom/cashwalk/cashwalk/model/BandHeart;
.super Ljava/lang/Object;
.source "BandHeart.java"


# instance fields
.field public _id:I

.field public avg:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avg"
    .end annotation
.end field

.field public date:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date"
    .end annotation
.end field

.field public day:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "day"
    .end annotation
.end field

.field public hour:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hour"
    .end annotation
.end field

.field public hourData:[I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "detail_data"
    .end annotation
.end field

.field public hourDataString:Ljava/lang/String;

.field public max:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max"
    .end annotation
.end field

.field public min:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "min"
    .end annotation
.end field

.field public month:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "month"
    .end annotation
.end field

.field public records:[I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "records"
    .end annotation
.end field

.field public timeStamp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time_stamp"
    .end annotation
.end field

.field public uid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uid"
    .end annotation
.end field

.field public uploaded:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_uploaded"
    .end annotation
.end field

.field public week:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "week"
    .end annotation
.end field

.field public year:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "year"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/model/BandHeart;->uploaded:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/model/BandHeart;->uid:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/model/BandHeart;->timeStamp:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/model/BandHeart;->week:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/model/BandHeart;->year:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/model/BandHeart;->month:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/model/BandHeart;->day:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/model/BandHeart;->hour:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/model/BandHeart;->date:Ljava/lang/String;

    .line 45
    iput v1, p0, Lcom/cashwalk/cashwalk/model/BandHeart;->max:I

    .line 48
    iput v1, p0, Lcom/cashwalk/cashwalk/model/BandHeart;->min:I

    .line 51
    iput v1, p0, Lcom/cashwalk/cashwalk/model/BandHeart;->avg:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 64
    instance-of v1, p1, Lcom/cashwalk/cashwalk/model/BandHeart;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 65
    check-cast v0, Lcom/cashwalk/cashwalk/model/BandHeart;

    .line 66
    .local v0, "temp":Lcom/cashwalk/cashwalk/model/BandHeart;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/model/BandHeart;->date:Ljava/lang/String;

    iget-object v2, v0, Lcom/cashwalk/cashwalk/model/BandHeart;->date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const/4 v1, 0x1

    .line 70
    .end local v0    # "temp":Lcom/cashwalk/cashwalk/model/BandHeart;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cashwalk/cashwalk/model/BandHeart;->date:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
