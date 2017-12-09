.class Lde/halfbit/pinnedsection/PinnedSectionListView$2;
.super Landroid/database/DataSetObserver;
.source "PinnedSectionListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/halfbit/pinnedsection/PinnedSectionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/halfbit/pinnedsection/PinnedSectionListView;


# direct methods
.method constructor <init>(Lde/halfbit/pinnedsection/PinnedSectionListView;)V
    .locals 0
    .param p1, "this$0"    # Lde/halfbit/pinnedsection/PinnedSectionListView;

    .prologue
    .line 131
    iput-object p1, p0, Lde/halfbit/pinnedsection/PinnedSectionListView$2;->this$0:Lde/halfbit/pinnedsection/PinnedSectionListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lde/halfbit/pinnedsection/PinnedSectionListView$2;->this$0:Lde/halfbit/pinnedsection/PinnedSectionListView;

    invoke-virtual {v0}, Lde/halfbit/pinnedsection/PinnedSectionListView;->recreatePinnedShadow()V

    .line 134
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lde/halfbit/pinnedsection/PinnedSectionListView$2;->this$0:Lde/halfbit/pinnedsection/PinnedSectionListView;

    invoke-virtual {v0}, Lde/halfbit/pinnedsection/PinnedSectionListView;->recreatePinnedShadow()V

    .line 137
    return-void
.end method
