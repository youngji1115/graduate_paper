.class public final Lcom/prolificinteractive/materialcalendarview/CalendarDay;
.super Ljava/lang/Object;
.source "CalendarDay.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/CalendarDay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient _calendar:Ljava/util/Calendar;

.field private transient _date:Ljava/util/Date;

.field private final day:I

.field private final month:I

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 293
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay$1;

    invoke-direct {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay$1;-><init>()V

    sput-object v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Calendar;)V

    .line 91
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    .line 115
    iput p2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    .line 116
    iput p3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(III)V

    .line 279
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "calendar"    # Ljava/util/Calendar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    .line 100
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getYear(Ljava/util/Calendar;)I

    move-result v0

    .line 101
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getMonth(Ljava/util/Calendar;)I

    move-result v1

    .line 102
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getDay(Ljava/util/Calendar;)I

    move-result v2

    .line 99
    invoke-direct {p0, v0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(III)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 125
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Calendar;)V

    .line 126
    return-void
.end method

.method public static from(III)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {v0, p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(III)V

    return-object v0
.end method

.method public static from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    .line 50
    :cond_0
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getYear(Ljava/util/Calendar;)I

    move-result v0

    .line 51
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getMonth(Ljava/util/Calendar;)I

    move-result v1

    .line 52
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getDay(Ljava/util/Calendar;)I

    move-result v2

    .line 49
    invoke-static {v0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(III)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    goto :goto_0
.end method

.method public static from(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    goto :goto_0
.end method

.method private static hashCode(III)I
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 265
    mul-int/lit16 v0, p0, 0x2710

    mul-int/lit8 v1, p1, 0x64

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    return v0
.end method

.method public static today()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 23
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public copyTo(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "calendar"    # Ljava/util/Calendar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 193
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 194
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 195
    return-void
.end method

.method copyToMonthOnly(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "calendar"    # Ljava/util/Calendar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 183
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 184
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 185
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 246
    if-ne p0, p1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v1

    .line 249
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 250
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 253
    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 255
    .local v0, "that":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    iget v3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    iget v4, v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v4, v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v4, v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_calendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 176
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_calendar:Ljava/util/Calendar;

    .line 177
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_calendar:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->copyTo(Ljava/util/Calendar;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_date:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_date:Ljava/util/Date;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->_date:Ljava/util/Date;

    return-object v0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 260
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    invoke-static {v0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->hashCode(III)I

    move-result v0

    return v0
.end method

.method public isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z
    .locals 4
    .param p1, "other"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 233
    if-nez p1, :cond_0

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "other cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    if-ne v2, v3, :cond_4

    .line 238
    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    if-le v2, v3, :cond_2

    .line 240
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 238
    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    if-gt v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 240
    :cond_4
    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    if-gt v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z
    .locals 4
    .param p1, "other"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 216
    if-nez p1, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "other cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    if-ne v2, v3, :cond_4

    .line 220
    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    if-ge v2, v3, :cond_2

    .line 222
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 220
    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    if-lt v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 222
    :cond_4
    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    if-lt v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public isInRange(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z
    .locals 1
    .param p1, "minDate"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "maxDate"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 205
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    .line 206
    invoke-virtual {p2, p0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CalendarDay{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 288
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    return-void
.end method
