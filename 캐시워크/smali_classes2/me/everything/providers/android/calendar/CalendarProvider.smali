.class public Lme/everything/providers/android/calendar/CalendarProvider;
.super Lme/everything/providers/core/AbstractProvider;
.source "CalendarProvider.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lme/everything/providers/core/AbstractProvider;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getAttendees(J)Lme/everything/providers/core/Data;
    .locals 7
    .param p1, "eventId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/calendar/Attendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    const-string v2, "(event_id=?)"

    .line 125
    .local v2, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 126
    .local v3, "selectionArgs":[Ljava/lang/String;
    sget-object v1, Lme/everything/providers/android/calendar/Attendee;->uri:Landroid/net/Uri;

    const/4 v4, 0x0

    const-class v5, Lme/everything/providers/android/calendar/Attendee;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lme/everything/providers/android/calendar/CalendarProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v6

    .line 127
    .local v6, "attendees":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<Lme/everything/providers/android/calendar/Attendee;>;"
    return-object v6
.end method

.method public getCalendar(J)Lme/everything/providers/android/calendar/Calendar;
    .locals 7
    .param p1, "calendarId"    # J

    .prologue
    .line 53
    const-string v2, "(_id = ?)"

    .line 54
    .local v2, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 55
    .local v3, "selectionArgs":[Ljava/lang/String;
    sget-object v1, Lme/everything/providers/android/calendar/Calendar;->uri:Landroid/net/Uri;

    const/4 v4, 0x0

    const-class v5, Lme/everything/providers/android/calendar/Calendar;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lme/everything/providers/android/calendar/CalendarProvider;->getContentRowData(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lme/everything/providers/core/Entity;

    move-result-object v6

    check-cast v6, Lme/everything/providers/android/calendar/Calendar;

    .line 56
    .local v6, "calendar":Lme/everything/providers/android/calendar/Calendar;
    return-object v6
.end method

.method public getCalendars()Lme/everything/providers/core/Data;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/calendar/Calendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    sget-object v1, Lme/everything/providers/android/calendar/Calendar;->uri:Landroid/net/Uri;

    const-class v2, Lme/everything/providers/android/calendar/Calendar;

    invoke-virtual {p0, v1, v2}, Lme/everything/providers/android/calendar/CalendarProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    .line 44
    .local v0, "calendars":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<Lme/everything/providers/android/calendar/Calendar;>;"
    return-object v0
.end method

.method public getEvent(J)Lme/everything/providers/android/calendar/Event;
    .locals 7
    .param p1, "eventId"    # J

    .prologue
    .line 79
    const-string v2, "(_id = ?)"

    .line 80
    .local v2, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 81
    .local v3, "selectionArgs":[Ljava/lang/String;
    sget-object v1, Lme/everything/providers/android/calendar/Event;->uri:Landroid/net/Uri;

    const/4 v4, 0x0

    const-class v5, Lme/everything/providers/android/calendar/Event;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lme/everything/providers/android/calendar/CalendarProvider;->getContentRowData(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lme/everything/providers/core/Entity;

    move-result-object v6

    check-cast v6, Lme/everything/providers/android/calendar/Event;

    .line 82
    .local v6, "event":Lme/everything/providers/android/calendar/Event;
    return-object v6
.end method

.method public getEvents(J)Lme/everything/providers/core/Data;
    .locals 7
    .param p1, "calendarId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/calendar/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    const-string v2, "(calendar_id = ?)"

    .line 67
    .local v2, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 68
    .local v3, "selectionArgs":[Ljava/lang/String;
    sget-object v1, Lme/everything/providers/android/calendar/Event;->uri:Landroid/net/Uri;

    const/4 v4, 0x0

    const-class v5, Lme/everything/providers/android/calendar/Event;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lme/everything/providers/android/calendar/CalendarProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v6

    .line 69
    .local v6, "events":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<Lme/everything/providers/android/calendar/Event;>;"
    return-object v6
.end method

.method public getInstances(JJ)Lme/everything/providers/core/Data;
    .locals 5
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/calendar/Instance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    sget-object v3, Lme/everything/providers/android/calendar/Instance;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 93
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 94
    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 95
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 96
    .local v2, "uri":Landroid/net/Uri;
    const-class v3, Lme/everything/providers/android/calendar/Instance;

    invoke-virtual {p0, v2, v3}, Lme/everything/providers/android/calendar/CalendarProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v1

    .line 97
    .local v1, "instances":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<Lme/everything/providers/android/calendar/Instance;>;"
    return-object v1
.end method

.method public getInstances(JJJ)Lme/everything/providers/core/Data;
    .locals 9
    .param p1, "eventId"    # J
    .param p3, "begin"    # J
    .param p5, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ)",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/calendar/Instance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    const-string v2, "(event_id = ?)"

    .line 108
    .local v2, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 109
    .local v3, "selectionArgs":[Ljava/lang/String;
    sget-object v0, Lme/everything/providers/android/calendar/Instance;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 110
    .local v6, "builder":Landroid/net/Uri$Builder;
    invoke-static {v6, p3, p4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 111
    invoke-static {v6, p5, p6}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 112
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 113
    .local v1, "uri":Landroid/net/Uri;
    const/4 v4, 0x0

    const-class v5, Lme/everything/providers/android/calendar/Instance;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lme/everything/providers/android/calendar/CalendarProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v7

    .line 114
    .local v7, "instances":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<Lme/everything/providers/android/calendar/Instance;>;"
    return-object v7
.end method

.method public getReminders(J)Lme/everything/providers/core/Data;
    .locals 7
    .param p1, "eventId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/calendar/Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    const-string v2, "(event_id=?)"

    .line 138
    .local v2, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 139
    .local v3, "selectionArgs":[Ljava/lang/String;
    sget-object v1, Lme/everything/providers/android/calendar/Reminder;->uri:Landroid/net/Uri;

    const/4 v4, 0x0

    const-class v5, Lme/everything/providers/android/calendar/Reminder;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lme/everything/providers/android/calendar/CalendarProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v6

    .line 140
    .local v6, "reminders":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<Lme/everything/providers/android/calendar/Reminder;>;"
    return-object v6
.end method

.method public update(Lme/everything/providers/android/calendar/Attendee;)I
    .locals 1
    .param p1, "attendee"    # Lme/everything/providers/android/calendar/Attendee;

    .prologue
    .line 190
    sget-object v0, Lme/everything/providers/android/calendar/Attendee;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lme/everything/providers/android/calendar/CalendarProvider;->updateTableRow(Landroid/net/Uri;Lme/everything/providers/core/Entity;)I

    move-result v0

    return v0
.end method

.method public update(Lme/everything/providers/android/calendar/Calendar;)I
    .locals 1
    .param p1, "calendar"    # Lme/everything/providers/android/calendar/Calendar;

    .prologue
    .line 150
    sget-object v0, Lme/everything/providers/android/calendar/Calendar;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lme/everything/providers/android/calendar/CalendarProvider;->updateTableRow(Landroid/net/Uri;Lme/everything/providers/core/Entity;)I

    move-result v0

    return v0
.end method

.method public update(Lme/everything/providers/android/calendar/Event;)I
    .locals 1
    .param p1, "event"    # Lme/everything/providers/android/calendar/Event;

    .prologue
    .line 160
    sget-object v0, Lme/everything/providers/android/calendar/Event;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lme/everything/providers/android/calendar/CalendarProvider;->updateTableRow(Landroid/net/Uri;Lme/everything/providers/core/Entity;)I

    move-result v0

    return v0
.end method

.method public update(Lme/everything/providers/android/calendar/Instance;)I
    .locals 1
    .param p1, "instance"    # Lme/everything/providers/android/calendar/Instance;

    .prologue
    .line 170
    sget-object v0, Lme/everything/providers/android/calendar/Instance;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lme/everything/providers/android/calendar/CalendarProvider;->updateTableRow(Landroid/net/Uri;Lme/everything/providers/core/Entity;)I

    move-result v0

    return v0
.end method

.method public update(Lme/everything/providers/android/calendar/Reminder;)I
    .locals 1
    .param p1, "reminder"    # Lme/everything/providers/android/calendar/Reminder;

    .prologue
    .line 180
    sget-object v0, Lme/everything/providers/android/calendar/Reminder;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lme/everything/providers/android/calendar/CalendarProvider;->updateTableRow(Landroid/net/Uri;Lme/everything/providers/core/Entity;)I

    move-result v0

    return v0
.end method
