.class public Lcom/prolificinteractive/materialcalendarview/CalendarUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyDateTo(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 3
    .param p0, "from"    # Ljava/util/Calendar;
    .param p1, "to"    # Ljava/util/Calendar;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getYear(Ljava/util/Calendar;)I

    move-result v2

    .line 62
    .local v2, "year":I
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getMonth(Ljava/util/Calendar;)I

    move-result v1

    .line 63
    .local v1, "month":I
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getDay(Ljava/util/Calendar;)I

    move-result v0

    .line 64
    .local v0, "day":I
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 65
    invoke-virtual {p1, v2, v1, v0}, Ljava/util/Calendar;->set(III)V

    .line 66
    return-void
.end method

.method public static getDay(Ljava/util/Calendar;)I
    .locals 1
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 77
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getDayOfWeek(Ljava/util/Calendar;)I
    .locals 1
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 81
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getInstance()Ljava/util/Calendar;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 38
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {v0, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->copyDateTo(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 39
    return-object v0
.end method

.method public static getInstance(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 25
    .local v0, "calendar":Ljava/util/Calendar;
    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 28
    :cond_0
    invoke-static {v0, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->copyDateTo(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 29
    return-object v0
.end method

.method public static getMonth(Ljava/util/Calendar;)I
    .locals 1
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 73
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getYear(Ljava/util/Calendar;)I
    .locals 1
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static setToFirstDay(Ljava/util/Calendar;)V
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getYear(Ljava/util/Calendar;)I

    move-result v1

    .line 49
    .local v1, "year":I
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getMonth(Ljava/util/Calendar;)I

    move-result v0

    .line 50
    .local v0, "month":I
    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    .line 51
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Ljava/util/Calendar;->set(III)V

    .line 52
    return-void
.end method
