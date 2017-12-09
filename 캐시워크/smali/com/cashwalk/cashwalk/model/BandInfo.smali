.class public Lcom/cashwalk/cashwalk/model/BandInfo;
.super Ljava/lang/Object;
.source "BandInfo.java"


# instance fields
.field public age:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "age"
    .end annotation
.end field

.field public alarm:Ljava/lang/String;

.field public battery:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "keyCode"
    .end annotation
.end field

.field public calories:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sportCalories"
    .end annotation
.end field

.field public distances:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sportDistances"
    .end annotation
.end field

.field public gender:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gender"
    .end annotation
.end field

.field public heartData:Lcom/cashwalk/cashwalk/model/BandHeart;

.field public heartData2:Ljava/lang/String;

.field public height:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field public macId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bleAddr"
    .end annotation
.end field

.field public model:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "model"
    .end annotation
.end field

.field public oadMode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "oadmode"
    .end annotation
.end field

.field public steps:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sportSteps"
    .end annotation
.end field

.field public swVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "swversion"
    .end annotation
.end field

.field public swVersionInt:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "intSwversion"
    .end annotation
.end field

.field public target:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "target"
    .end annotation
.end field

.field public userInfo:Ljava/lang/String;

.field public v3SleepData:Ljava/lang/String;

.field public v3SportData:Ljava/lang/String;

.field public weight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weight"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->model:Ljava/lang/String;

    .line 16
    iput v2, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->oadMode:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->swVersion:Ljava/lang/String;

    .line 22
    iput v2, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->swVersionInt:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->macId:Ljava/lang/String;

    .line 33
    iput v2, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->steps:I

    .line 36
    iput v2, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->calories:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->distances:D

    .line 42
    iput v2, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->age:I

    .line 45
    iput v2, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->gender:I

    .line 48
    iput v2, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->height:I

    .line 51
    iput v2, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->weight:I

    .line 54
    const/16 v0, 0x2710

    iput v0, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->target:I

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->userInfo:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->v3SleepData:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->v3SportData:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->alarm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setBattery(Lcom/cashwalk/cashwalk/model/BandInfo;)V
    .locals 1
    .param p1, "bandInfo"    # Lcom/cashwalk/cashwalk/model/BandInfo;

    .prologue
    .line 66
    iget-object v0, p1, Lcom/cashwalk/cashwalk/model/BandInfo;->battery:Ljava/lang/String;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->battery:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setDailyData(Lcom/cashwalk/cashwalk/model/BandInfo;)V
    .locals 2
    .param p1, "bandInfo"    # Lcom/cashwalk/cashwalk/model/BandInfo;

    .prologue
    .line 60
    iget v0, p1, Lcom/cashwalk/cashwalk/model/BandInfo;->steps:I

    iput v0, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->steps:I

    .line 61
    iget v0, p1, Lcom/cashwalk/cashwalk/model/BandInfo;->calories:I

    iput v0, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->calories:I

    .line 62
    iget-wide v0, p1, Lcom/cashwalk/cashwalk/model/BandInfo;->distances:D

    iput-wide v0, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->distances:D

    .line 63
    return-void
.end method

.method public setUserInfo(Lcom/cashwalk/cashwalk/model/BandInfo;)V
    .locals 1
    .param p1, "bandInfo"    # Lcom/cashwalk/cashwalk/model/BandInfo;

    .prologue
    .line 70
    iget v0, p1, Lcom/cashwalk/cashwalk/model/BandInfo;->age:I

    iput v0, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->age:I

    .line 71
    iget v0, p1, Lcom/cashwalk/cashwalk/model/BandInfo;->gender:I

    iput v0, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->gender:I

    .line 72
    iget v0, p1, Lcom/cashwalk/cashwalk/model/BandInfo;->height:I

    iput v0, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->height:I

    .line 73
    iget v0, p1, Lcom/cashwalk/cashwalk/model/BandInfo;->weight:I

    iput v0, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->weight:I

    .line 74
    iget v0, p1, Lcom/cashwalk/cashwalk/model/BandInfo;->target:I

    iput v0, p0, Lcom/cashwalk/cashwalk/model/BandInfo;->target:I

    .line 75
    return-void
.end method
