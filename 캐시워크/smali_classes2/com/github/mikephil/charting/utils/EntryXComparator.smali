.class public Lcom/github/mikephil/charting/utils/EntryXComparator;
.super Ljava/lang/Object;
.source "EntryXComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)I
    .locals 4
    .param p1, "entry1"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "entry2"    # Lcom/github/mikephil/charting/data/Entry;

    .prologue
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v2

    sub-float v0, v1, v2

    .line 16
    .local v0, "diff":F
    cmpl-float v1, v0, v3

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 19
    :goto_0
    return v1

    .line 18
    :cond_0
    cmpl-float v1, v0, v3

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/github/mikephil/charting/data/Entry;

    check-cast p2, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/utils/EntryXComparator;->compare(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)I

    move-result v0

    return v0
.end method
