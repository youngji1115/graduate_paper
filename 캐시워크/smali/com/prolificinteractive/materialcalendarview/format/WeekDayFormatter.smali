.class public interface abstract Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;
.super Ljava/lang/Object;
.source "WeekDayFormatter.java"


# static fields
.field public static final DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/format/CalendarWeekDayFormatter;

    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/prolificinteractive/materialcalendarview/format/CalendarWeekDayFormatter;-><init>(Ljava/util/Calendar;)V

    sput-object v0, Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    return-void
.end method


# virtual methods
.method public abstract format(I)Ljava/lang/CharSequence;
.end method
