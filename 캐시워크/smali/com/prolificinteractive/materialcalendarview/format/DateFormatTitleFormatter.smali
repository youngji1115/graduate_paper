.class public Lcom/prolificinteractive/materialcalendarview/format/DateFormatTitleFormatter;
.super Ljava/lang/Object;
.source "DateFormatTitleFormatter.java"

# interfaces
.implements Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "LLLL yyyy"

    .line 21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/format/DateFormatTitleFormatter;->dateFormat:Ljava/text/DateFormat;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/text/DateFormat;)V
    .locals 0
    .param p1, "format"    # Ljava/text/DateFormat;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/format/DateFormatTitleFormatter;->dateFormat:Ljava/text/DateFormat;

    .line 32
    return-void
.end method


# virtual methods
.method public format(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "day"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/format/DateFormatTitleFormatter;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
