.class public interface abstract Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;
.super Ljava/lang/Object;
.source "DayFormatter.java"


# static fields
.field public static final DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/format/DateFormatDayFormatter;

    invoke-direct {v0}, Lcom/prolificinteractive/materialcalendarview/format/DateFormatDayFormatter;-><init>()V

    sput-object v0, Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    return-void
.end method


# virtual methods
.method public abstract format(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Ljava/lang/String;
    .param p1    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method
