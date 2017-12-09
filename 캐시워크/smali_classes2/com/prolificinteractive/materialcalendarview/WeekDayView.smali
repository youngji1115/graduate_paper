.class Lcom/prolificinteractive/materialcalendarview/WeekDayView;
.super Landroid/widget/TextView;
.source "WeekDayView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation build Lcom/prolificinteractive/materialcalendarview/Experimental;
.end annotation


# instance fields
.field private dayOfWeek:I

.field private formatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dayOfWeek"    # I

    .prologue
    const/16 v1, 0x11

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 20
    sget-object v0, Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->formatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    .line 26
    invoke-virtual {p0, v1}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->setGravity(I)V

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 29
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->setTextAlignment(I)V

    .line 32
    :cond_0
    invoke-virtual {p0, p2}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->setDayOfWeek(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public setDayOfWeek(I)V
    .locals 1
    .param p1, "dayOfWeek"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->dayOfWeek:I

    .line 42
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->formatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    invoke-interface {v0, p1}, Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;->format(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method

.method public setDayOfWeek(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 46
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getDayOfWeek(Ljava/util/Calendar;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->setDayOfWeek(I)V

    .line 47
    return-void
.end method

.method public setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    .prologue
    .line 36
    if-nez p1, :cond_0

    sget-object p1, Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    .end local p1    # "formatter":Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;
    :cond_0
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->formatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    .line 37
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->dayOfWeek:I

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->setDayOfWeek(I)V

    .line 38
    return-void
.end method
