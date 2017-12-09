.class public Lcom/cashwalk/cashwalk/model/BandSleepGraph;
.super Ljava/lang/Object;
.source "BandSleepGraph.java"


# instance fields
.field public date:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date"
    .end annotation
.end field

.field public record:Lorg/json/JSONArray;

.field public records:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "records"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public sleepTimeAll:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total"
    .end annotation
.end field

.field public sleepTimeEnd:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end"
    .end annotation
.end field

.field public sleepTimeHigh:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "high"
    .end annotation
.end field

.field public sleepTimeLow:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "low"
    .end annotation
.end field

.field public sleepTimeStart:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->record:Lorg/json/JSONArray;

    .line 23
    iput v1, p0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeStart:I

    .line 26
    iput v1, p0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeEnd:I

    .line 29
    iput v1, p0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeAll:I

    .line 32
    iput v1, p0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeHigh:I

    .line 35
    iput v1, p0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->sleepTimeLow:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/cashwalk/cashwalk/model/BandSleepGraph;->date:Ljava/lang/String;

    return-void
.end method
