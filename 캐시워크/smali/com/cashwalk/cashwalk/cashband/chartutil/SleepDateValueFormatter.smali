.class public Lcom/cashwalk/cashwalk/cashband/chartutil/SleepDateValueFormatter;
.super Ljava/lang/Object;
.source "SleepDateValueFormatter.java"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;


# instance fields
.field private selectMonth:Lorg/joda/time/DateTime;


# direct methods
.method public constructor <init>(Lorg/joda/time/DateTime;)V
    .locals 0
    .param p1, "selectMonth"    # Lorg/joda/time/DateTime;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/chartutil/SleepDateValueFormatter;->selectMonth:Lorg/joda/time/DateTime;

    .line 14
    return-void
.end method


# virtual methods
.method public getFormattedValue(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # F
    .param p2, "axis"    # Lcom/github/mikephil/charting/components/AxisBase;

    .prologue
    .line 18
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/chartutil/SleepDateValueFormatter;->selectMonth:Lorg/joda/time/DateTime;

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->dayOfMonth()Lorg/joda/time/DateTime$Property;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/DateTime$Property;->getMaximumValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 19
    const-string v1, ""

    .line 24
    :goto_0
    return-object v1

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/chartutil/SleepDateValueFormatter;->selectMonth:Lorg/joda/time/DateTime;

    .line 23
    .local v0, "date":Lorg/joda/time/DateTime;
    float-to-int v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->withDayOfMonth(I)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 24
    const-string v1, "MM/dd"

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
