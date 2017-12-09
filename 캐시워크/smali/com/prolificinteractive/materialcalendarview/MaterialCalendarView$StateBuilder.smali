.class public Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
.super Ljava/lang/Object;
.source "MaterialCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateBuilder"
.end annotation


# instance fields
.field private cacheCurrentPosition:Z

.field private calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

.field private firstDayOfWeek:I

.field private maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field final synthetic this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;


# direct methods
.method public constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    .prologue
    const/4 v1, 0x0

    .line 1838
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1832
    sget-object v0, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->MONTHS:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    .line 1833
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->firstDayOfWeek:I

    .line 1834
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->cacheCurrentPosition:Z

    .line 1835
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1836
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1839
    return-void
.end method

.method private constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)V
    .locals 2
    .param p1, "this$0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
    .param p2, "state"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;

    .prologue
    const/4 v1, 0x0

    .line 1841
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1832
    sget-object v0, Lcom/prolificinteractive/materialcalendarview/CalendarMode;->MONTHS:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    .line 1833
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->firstDayOfWeek:I

    .line 1834
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->cacheCurrentPosition:Z

    .line 1835
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1836
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1842
    invoke-static {p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$1500(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    .line 1843
    invoke-static {p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$1600(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)I

    move-result v0

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->firstDayOfWeek:I

    .line 1844
    invoke-static {p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$1700(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1845
    invoke-static {p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$1800(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1846
    invoke-static {p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;->access$700(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->cacheCurrentPosition:Z

    .line 1847
    return-void
.end method

.method synthetic constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
    .param p2, "x1"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;
    .param p3, "x2"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;

    .prologue
    .line 1831
    invoke-direct {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;)I
    .locals 1
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    .prologue
    .line 1831
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->firstDayOfWeek:I

    return v0
.end method

.method static synthetic access$1100(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    .prologue
    .line 1831
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->cacheCurrentPosition:Z

    return v0
.end method

.method static synthetic access$900(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;)Lcom/prolificinteractive/materialcalendarview/CalendarMode;
    .locals 1
    .param p0, "x0"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    return-object v0
.end method


# virtual methods
.method public commit()V
    .locals 4

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    new-instance v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;)V

    invoke-static {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$2000(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$State;)V

    .line 1938
    return-void
.end method

.method public isCacheCalendarPositionEnabled(Z)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 0
    .param p1, "cacheCurrentPosition"    # Z

    .prologue
    .line 1932
    iput-boolean p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->cacheCurrentPosition:Z

    .line 1933
    return-object p0
.end method

.method public setCalendarDisplayMode(Lcom/prolificinteractive/materialcalendarview/CalendarMode;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 0
    .param p1, "mode"    # Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    .prologue
    .line 1870
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->calendarMode:Lcom/prolificinteractive/materialcalendarview/CalendarMode;

    .line 1871
    return-object p0
.end method

.method public setFirstDayOfWeek(I)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 0
    .param p1, "day"    # I

    .prologue
    .line 1858
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->firstDayOfWeek:I

    .line 1859
    return-object p0
.end method

.method public setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 0
    .param p1, "calendar"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1919
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1920
    return-object p0
.end method

.method public setMaximumDate(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1903
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    .line 1904
    return-object p0
.end method

.method public setMaximumDate(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1911
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    .line 1912
    return-object p0
.end method

.method public setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 0
    .param p1, "calendar"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1895
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1896
    return-object p0
.end method

.method public setMinimumDate(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1879
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    .line 1880
    return-object p0
.end method

.method public setMinimumDate(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1887
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;->setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$StateBuilder;

    .line 1888
    return-object p0
.end method
