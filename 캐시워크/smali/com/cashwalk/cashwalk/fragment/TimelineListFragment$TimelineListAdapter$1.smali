.class Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$1;
.super Ljava/lang/Object;
.source "TimelineListFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;-><init>(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;

.field final synthetic val$this$0:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$1;->this$1:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$1;->val$this$0:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;)I
    .locals 2
    .param p1, "item1"    # Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    .param p2, "item2"    # Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    .prologue
    .line 147
    iget-object v0, p1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->dateTime:Lorg/joda/time/DateTime;

    iget-object v1, p2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->dateTime:Lorg/joda/time/DateTime;

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->compareTo(Lorg/joda/time/ReadableInstant;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 144
    check-cast p1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    check-cast p2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$1;->compare(Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;)I

    move-result v0

    return v0
.end method
