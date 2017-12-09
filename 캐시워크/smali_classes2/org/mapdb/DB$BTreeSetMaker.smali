.class public Lorg/mapdb/DB$BTreeSetMaker;
.super Ljava/lang/Object;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/DB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BTreeSetMaker"
.end annotation


# instance fields
.field protected comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<*>;"
        }
    .end annotation
.end field

.field protected counter:Z

.field protected final name:Ljava/lang/String;

.field protected nodeSize:I

.field protected pumpIgnoreDuplicates:Z

.field protected pumpPresortBatchSize:I

.field protected pumpSource:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation
.end field

.field protected serializer:Lorg/mapdb/BTreeKeySerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/BTreeKeySerializer",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/mapdb/DB;


# direct methods
.method public constructor <init>(Lorg/mapdb/DB;Ljava/lang/String;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 690
    iput-object p1, p0, Lorg/mapdb/DB$BTreeSetMaker;->this$0:Lorg/mapdb/DB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    const/16 v0, 0x20

    iput v0, p0, Lorg/mapdb/DB$BTreeSetMaker;->nodeSize:I

    .line 695
    iput-boolean v1, p0, Lorg/mapdb/DB$BTreeSetMaker;->counter:Z

    .line 700
    const/4 v0, -0x1

    iput v0, p0, Lorg/mapdb/DB$BTreeSetMaker;->pumpPresortBatchSize:I

    .line 701
    iput-boolean v1, p0, Lorg/mapdb/DB$BTreeSetMaker;->pumpIgnoreDuplicates:Z

    .line 691
    iput-object p2, p0, Lorg/mapdb/DB$BTreeSetMaker;->name:Ljava/lang/String;

    .line 692
    return-void
.end method


# virtual methods
.method public comparator(Ljava/util/Comparator;)Lorg/mapdb/DB$BTreeSetMaker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<*>;)",
            "Lorg/mapdb/DB$BTreeSetMaker;"
        }
    .end annotation

    .prologue
    .line 724
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    iput-object p1, p0, Lorg/mapdb/DB$BTreeSetMaker;->comparator:Ljava/util/Comparator;

    .line 725
    return-object p0
.end method

.method public counterEnable()Lorg/mapdb/DB$BTreeSetMaker;
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapdb/DB$BTreeSetMaker;->counter:Z

    .line 713
    return-object p0
.end method

.method public make()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 749
    iget-object v0, p0, Lorg/mapdb/DB$BTreeSetMaker;->this$0:Lorg/mapdb/DB;

    invoke-virtual {v0, p0}, Lorg/mapdb/DB;->createTreeSet(Lorg/mapdb/DB$BTreeSetMaker;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public makeLongSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 771
    sget-object v0, Lorg/mapdb/BTreeKeySerializer;->ZERO_OR_POSITIVE_LONG:Lorg/mapdb/BTreeKeySerializer;

    iput-object v0, p0, Lorg/mapdb/DB$BTreeSetMaker;->serializer:Lorg/mapdb/BTreeKeySerializer;

    .line 772
    invoke-virtual {p0}, Lorg/mapdb/DB$BTreeSetMaker;->make()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public makeOrGet()Ljava/util/NavigableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 753
    iget-object v1, p0, Lorg/mapdb/DB$BTreeSetMaker;->this$0:Lorg/mapdb/DB;

    monitor-enter v1

    .line 755
    :try_start_0
    iget-object v0, p0, Lorg/mapdb/DB$BTreeSetMaker;->this$0:Lorg/mapdb/DB;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/mapdb/DB$BTreeSetMaker;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mapdb/DB$BTreeSetMaker;->make()Ljava/util/NavigableSet;

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mapdb/DB$BTreeSetMaker;->this$0:Lorg/mapdb/DB;

    iget-object v2, p0, Lorg/mapdb/DB$BTreeSetMaker;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/mapdb/DB;->getTreeSet(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object v0

    goto :goto_0

    .line 757
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public makeStringSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 765
    sget-object v0, Lorg/mapdb/BTreeKeySerializer;->STRING:Lorg/mapdb/BTreeKeySerializer;

    iput-object v0, p0, Lorg/mapdb/DB$BTreeSetMaker;->serializer:Lorg/mapdb/BTreeKeySerializer;

    .line 766
    invoke-virtual {p0}, Lorg/mapdb/DB$BTreeSetMaker;->make()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public nodeSize(I)Lorg/mapdb/DB$BTreeSetMaker;
    .locals 0
    .param p1, "nodeSize"    # I

    .prologue
    .line 705
    iput p1, p0, Lorg/mapdb/DB$BTreeSetMaker;->nodeSize:I

    .line 706
    return-object p0
.end method

.method public pumpIgnoreDuplicates()Lorg/mapdb/DB$BTreeSetMaker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/mapdb/DB$BTreeSetMaker;"
        }
    .end annotation

    .prologue
    .line 738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapdb/DB$BTreeSetMaker;->pumpIgnoreDuplicates:Z

    .line 739
    return-object p0
.end method

.method public pumpPresort(I)Lorg/mapdb/DB$BTreeSetMaker;
    .locals 0
    .param p1, "batchSize"    # I

    .prologue
    .line 743
    iput p1, p0, Lorg/mapdb/DB$BTreeSetMaker;->pumpPresortBatchSize:I

    .line 744
    return-object p0
.end method

.method public pumpSource(Ljava/util/Iterator;)Lorg/mapdb/DB$BTreeSetMaker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)",
            "Lorg/mapdb/DB$BTreeSetMaker;"
        }
    .end annotation

    .prologue
    .line 729
    .local p1, "source":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    iput-object p1, p0, Lorg/mapdb/DB$BTreeSetMaker;->pumpSource:Ljava/util/Iterator;

    .line 730
    return-object p0
.end method

.method public serializer(Lorg/mapdb/BTreeKeySerializer;)Lorg/mapdb/DB$BTreeSetMaker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/BTreeKeySerializer",
            "<*>;)",
            "Lorg/mapdb/DB$BTreeSetMaker;"
        }
    .end annotation

    .prologue
    .line 718
    .local p1, "serializer":Lorg/mapdb/BTreeKeySerializer;, "Lorg/mapdb/BTreeKeySerializer<*>;"
    iput-object p1, p0, Lorg/mapdb/DB$BTreeSetMaker;->serializer:Lorg/mapdb/BTreeKeySerializer;

    .line 719
    return-object p0
.end method
