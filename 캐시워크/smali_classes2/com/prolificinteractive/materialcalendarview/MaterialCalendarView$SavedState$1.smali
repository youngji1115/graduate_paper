.class final Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState$1;
.super Ljava/lang/Object;
.source "MaterialCalendarView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1192
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;-><init>(Landroid/os/Parcel;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1190
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1196
    new-array v0, p1, [Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1190
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState$1;->newArray(I)[Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;

    move-result-object v0

    return-object v0
.end method
