.class public Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter$Weekly;
.super Ljava/lang/Object;
.source "WeekPagerAdapter.java"

# interfaces
.implements Lcom/prolificinteractive/materialcalendarview/DateRangeIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Weekly"
.end annotation


# static fields
.field private static final DAYS_IN_WEEK:I = 0x7


# instance fields
.field private final count:I

.field private final min:Lcom/prolificinteractive/materialcalendarview/CalendarDay;


# direct methods
.method public constructor <init>(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)V
    .locals 1
    .param p1, "min"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "max"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "firstDayOfWeek"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-direct {p0, p1, p3}, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter$Weekly;->getFirstDayOfWeek(Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter$Weekly;->min:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 45
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter$Weekly;->min:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {p0, v0, p2}, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter$Weekly;->weekNumberDifference(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter$Weekly;->count:I

    .line 46
    return-void
.end method

.method private getFirstDayOfWeek(Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 3
    .param p1, "min"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "wantedFirstDayOfWeek"    # I

    .prologue
    const/4 v2, 0x7

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 83
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->copyTo(Ljava/util/Calendar;)V

    .line 84
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 85
    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    return-object v1
.end method

.method private weekNumberDifference(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I
    .locals 12
    .param p1, "min"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "max"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v10, 0x10

    .line 69
    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 71
    .local v4, "millisDiff":J
    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 72
    .local v2, "dstOffsetMax":I
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 74
    .local v3, "dstOffsetMin":I
    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, v2

    add-long/2addr v8, v4

    int-to-long v10, v3

    sub-long/2addr v8, v10

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 75
    .local v0, "dayDiff":J
    const-wide/16 v6, 0x7

    div-long v6, v0, v6

    long-to-int v6, v6

    return v6
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter$Weekly;->count:I

    return v0
.end method

.method public getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 10
    .param p1, "position"    # I

    .prologue
    .line 60
    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter$Weekly;->min:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v6}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 61
    .local v2, "minMillis":J
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    mul-int/lit8 v7, p1, 0x7

    int-to-long v8, v7

    sget-object v7, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 64
    .local v0, "millisOffset":J
    add-long v4, v2, v0

    .line 65
    .local v4, "positionMillis":J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v6

    return-object v6
.end method

.method public indexOf(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I
    .locals 1
    .param p1, "day"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter$Weekly;->min:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {p0, v0, p1}, Lcom/prolificinteractive/materialcalendarview/WeekPagerAdapter$Weekly;->weekNumberDifference(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result v0

    return v0
.end method
