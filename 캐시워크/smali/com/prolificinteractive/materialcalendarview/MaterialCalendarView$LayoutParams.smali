.class public Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "MaterialCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LayoutParams"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "tileHeight"    # I

    .prologue
    .line 1771
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1772
    return-void
.end method
