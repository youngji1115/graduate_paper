.class Lde/halfbit/pinnedsection/PinnedSectionListView$3;
.super Ljava/lang/Object;
.source "PinnedSectionListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/halfbit/pinnedsection/PinnedSectionListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
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
    .line 344
    iput-object p1, p0, Lde/halfbit/pinnedsection/PinnedSectionListView$3;->this$0:Lde/halfbit/pinnedsection/PinnedSectionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lde/halfbit/pinnedsection/PinnedSectionListView$3;->this$0:Lde/halfbit/pinnedsection/PinnedSectionListView;

    invoke-virtual {v0}, Lde/halfbit/pinnedsection/PinnedSectionListView;->recreatePinnedShadow()V

    .line 347
    return-void
.end method
