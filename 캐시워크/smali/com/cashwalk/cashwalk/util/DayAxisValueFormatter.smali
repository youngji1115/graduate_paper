.class public Lcom/cashwalk/cashwalk/util/DayAxisValueFormatter;
.super Ljava/lang/Object;
.source "DayAxisValueFormatter.java"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;


# instance fields
.field private mStartDate:Lorg/joda/time/DateTime;

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;Lorg/joda/time/DateTime;II)V
    .locals 1
    .param p2, "startDate"    # Lorg/joda/time/DateTime;
    .param p3, "type"    # I
    .param p4, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/charts/BarLineChartBase",
            "<*>;",
            "Lorg/joda/time/DateTime;",
            "II)V"
        }
    .end annotation

    .prologue
    .local p1, "chart":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<*>;"
    const/4 v0, 0x1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-ne p3, v0, :cond_0

    invoke-virtual {p2, v0}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object p2

    .end local p2    # "startDate":Lorg/joda/time/DateTime;
    :cond_0
    iput-object p2, p0, Lcom/cashwalk/cashwalk/util/DayAxisValueFormatter;->mStartDate:Lorg/joda/time/DateTime;

    .line 17
    iput p3, p0, Lcom/cashwalk/cashwalk/util/DayAxisValueFormatter;->mType:I

    .line 18
    return-void
.end method


# virtual methods
.method public getFormattedValue(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # F
    .param p2, "axis"    # Lcom/github/mikephil/charting/components/AxisBase;

    .prologue
    .line 22
    iget v0, p0, Lcom/cashwalk/cashwalk/util/DayAxisValueFormatter;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/DayAxisValueFormatter;->mStartDate:Lorg/joda/time/DateTime;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object v0

    const-string v1, "MM/dd"

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
