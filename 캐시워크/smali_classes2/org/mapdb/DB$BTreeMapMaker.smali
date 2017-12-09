.class public Lorg/mapdb/DB$BTreeMapMaker;
.super Ljava/lang/Object;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/DB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BTreeMapMaker"
.end annotation


# instance fields
.field protected comparator:Ljava/util/Comparator;

.field protected counter:Z

.field protected keySerializer:Lorg/mapdb/BTreeKeySerializer;

.field protected final name:Ljava/lang/String;

.field protected nodeSize:I

.field protected pumpIgnoreDuplicates:Z

.field protected pumpKeyExtractor:Lorg/mapdb/Fun$Function1;

.field protected pumpPresortBatchSize:I

.field protected pumpSource:Ljava/util/Iterator;

.field protected pumpValueExtractor:Lorg/mapdb/Fun$Function1;

.field final synthetic this$0:Lorg/mapdb/DB;

.field protected valueSerializer:Lorg/mapdb/Serializer;

.field protected valuesOutsideNodes:Z


# direct methods
.method public constructor <init>(Lorg/mapdb/DB;Ljava/lang/String;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 570
    iput-object p1, p0, Lorg/mapdb/DB$BTreeMapMaker;->this$0:Lorg/mapdb/DB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    const/16 v0, 0x20

    iput v0, p0, Lorg/mapdb/DB$BTreeMapMaker;->nodeSize:I

    .line 575
    iput-boolean v1, p0, Lorg/mapdb/DB$BTreeMapMaker;->valuesOutsideNodes:Z

    .line 576
    iput-boolean v1, p0, Lorg/mapdb/DB$BTreeMapMaker;->counter:Z

    .line 584
    const/4 v0, -0x1

    iput v0, p0, Lorg/mapdb/DB$BTreeMapMaker;->pumpPresortBatchSize:I

    .line 585
    iput-boolean v1, p0, Lorg/mapdb/DB$BTreeMapMaker;->pumpIgnoreDuplicates:Z

    .line 571
    iput-object p2, p0, Lorg/mapdb/DB$BTreeMapMaker;->name:Ljava/lang/String;

    .line 572
    return-void
.end method


# virtual methods
.method public comparator(Ljava/util/Comparator;)Lorg/mapdb/DB$BTreeMapMaker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<*>;)",
            "Lorg/mapdb/DB$BTreeMapMaker;"
        }
    .end annotation

    .prologue
    .line 626
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    iput-object p1, p0, Lorg/mapdb/DB$BTreeMapMaker;->comparator:Ljava/util/Comparator;

    .line 627
    return-object p0
.end method

.method public counterEnable()Lorg/mapdb/DB$BTreeMapMaker;
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapdb/DB$BTreeMapMaker;->counter:Z

    .line 603
    return-object p0
.end method

.method public keySerializer(Lorg/mapdb/BTreeKeySerializer;)Lorg/mapdb/DB$BTreeMapMaker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/BTreeKeySerializer",
            "<*>;)",
            "Lorg/mapdb/DB$BTreeMapMaker;"
        }
    .end annotation

    .prologue
    .line 608
    .local p1, "keySerializer":Lorg/mapdb/BTreeKeySerializer;, "Lorg/mapdb/BTreeKeySerializer<*>;"
    iput-object p1, p0, Lorg/mapdb/DB$BTreeMapMaker;->keySerializer:Lorg/mapdb/BTreeKeySerializer;

    .line 609
    return-object p0
.end method

.method public keySerializerWrap(Lorg/mapdb/Serializer;)Lorg/mapdb/DB$BTreeMapMaker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Serializer",
            "<*>;)",
            "Lorg/mapdb/DB$BTreeMapMaker;"
        }
    .end annotation

    .prologue
    .line 614
    .local p1, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<*>;"
    new-instance v0, Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;

    invoke-direct {v0, p1}, Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;-><init>(Lorg/mapdb/Serializer;)V

    iput-object v0, p0, Lorg/mapdb/DB$BTreeMapMaker;->keySerializer:Lorg/mapdb/BTreeKeySerializer;

    .line 615
    return-object p0
.end method

.method public make()Lorg/mapdb/BTreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/mapdb/BTreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 661
    iget-object v0, p0, Lorg/mapdb/DB$BTreeMapMaker;->this$0:Lorg/mapdb/DB;

    invoke-virtual {v0, p0}, Lorg/mapdb/DB;->createTreeMap(Lorg/mapdb/DB$BTreeMapMaker;)Lorg/mapdb/BTreeMap;

    move-result-object v0

    return-object v0
.end method

.method public makeLongMap()Lorg/mapdb/BTreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/mapdb/BTreeMap",
            "<",
            "Ljava/lang/Long;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 681
    sget-object v0, Lorg/mapdb/BTreeKeySerializer;->ZERO_OR_POSITIVE_LONG:Lorg/mapdb/BTreeKeySerializer;

    iput-object v0, p0, Lorg/mapdb/DB$BTreeMapMaker;->keySerializer:Lorg/mapdb/BTreeKeySerializer;

    .line 682
    invoke-virtual {p0}, Lorg/mapdb/DB$BTreeMapMaker;->make()Lorg/mapdb/BTreeMap;

    move-result-object v0

    return-object v0
.end method

.method public makeOrGet()Lorg/mapdb/BTreeMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/mapdb/BTreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 665
    iget-object v1, p0, Lorg/mapdb/DB$BTreeMapMaker;->this$0:Lorg/mapdb/DB;

    monitor-enter v1

    .line 667
    :try_start_0
    iget-object v0, p0, Lorg/mapdb/DB$BTreeMapMaker;->this$0:Lorg/mapdb/DB;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/mapdb/DB$BTreeMapMaker;->name:Ljava/lang/String;

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

    invoke-virtual {p0}, Lorg/mapdb/DB$BTreeMapMaker;->make()Lorg/mapdb/BTreeMap;

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mapdb/DB$BTreeMapMaker;->this$0:Lorg/mapdb/DB;

    iget-object v2, p0, Lorg/mapdb/DB$BTreeMapMaker;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/mapdb/DB;->getTreeMap(Ljava/lang/String;)Lorg/mapdb/BTreeMap;

    move-result-object v0

    goto :goto_0

    .line 669
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public makeStringMap()Lorg/mapdb/BTreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/mapdb/BTreeMap",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 675
    sget-object v0, Lorg/mapdb/BTreeKeySerializer;->STRING:Lorg/mapdb/BTreeKeySerializer;

    iput-object v0, p0, Lorg/mapdb/DB$BTreeMapMaker;->keySerializer:Lorg/mapdb/BTreeKeySerializer;

    .line 676
    invoke-virtual {p0}, Lorg/mapdb/DB$BTreeMapMaker;->make()Lorg/mapdb/BTreeMap;

    move-result-object v0

    return-object v0
.end method

.method public nodeSize(I)Lorg/mapdb/DB$BTreeMapMaker;
    .locals 0
    .param p1, "nodeSize"    # I

    .prologue
    .line 590
    iput p1, p0, Lorg/mapdb/DB$BTreeMapMaker;->nodeSize:I

    .line 591
    return-object p0
.end method

.method public pumpIgnoreDuplicates()Lorg/mapdb/DB$BTreeMapMaker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/mapdb/DB$BTreeMapMaker;"
        }
    .end annotation

    .prologue
    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapdb/DB$BTreeMapMaker;->pumpIgnoreDuplicates:Z

    .line 657
    return-object p0
.end method

.method public pumpPresort(I)Lorg/mapdb/DB$BTreeMapMaker;
    .locals 0
    .param p1, "batchSize"    # I

    .prologue
    .line 646
    iput p1, p0, Lorg/mapdb/DB$BTreeMapMaker;->pumpPresortBatchSize:I

    .line 647
    return-object p0
.end method

.method public pumpSource(Ljava/util/Iterator;)Lorg/mapdb/DB$BTreeMapMaker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<",
            "Lorg/mapdb/Fun$Tuple2",
            "<TK;TV;>;>;)",
            "Lorg/mapdb/DB$BTreeMapMaker;"
        }
    .end annotation

    .prologue
    .line 639
    .local p1, "entriesSource":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapdb/Fun$Tuple2<TK;TV;>;>;"
    iput-object p1, p0, Lorg/mapdb/DB$BTreeMapMaker;->pumpSource:Ljava/util/Iterator;

    .line 640
    invoke-static {}, Lorg/mapdb/Fun;->extractKey()Lorg/mapdb/Fun$Function1;

    move-result-object v0

    iput-object v0, p0, Lorg/mapdb/DB$BTreeMapMaker;->pumpKeyExtractor:Lorg/mapdb/Fun$Function1;

    .line 641
    invoke-static {}, Lorg/mapdb/Fun;->extractValue()Lorg/mapdb/Fun$Function1;

    move-result-object v0

    iput-object v0, p0, Lorg/mapdb/DB$BTreeMapMaker;->pumpValueExtractor:Lorg/mapdb/Fun$Function1;

    .line 642
    return-object p0
.end method

.method public pumpSource(Ljava/util/Iterator;Lorg/mapdb/Fun$Function1;)Lorg/mapdb/DB$BTreeMapMaker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TK;>;",
            "Lorg/mapdb/Fun$Function1",
            "<TV;TK;>;)",
            "Lorg/mapdb/DB$BTreeMapMaker;"
        }
    .end annotation

    .prologue
    .line 631
    .local p1, "keysSource":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    .local p2, "valueExtractor":Lorg/mapdb/Fun$Function1;, "Lorg/mapdb/Fun$Function1<TV;TK;>;"
    iput-object p1, p0, Lorg/mapdb/DB$BTreeMapMaker;->pumpSource:Ljava/util/Iterator;

    .line 632
    invoke-static {}, Lorg/mapdb/Fun;->extractNoTransform()Lorg/mapdb/Fun$Function1;

    move-result-object v0

    iput-object v0, p0, Lorg/mapdb/DB$BTreeMapMaker;->pumpKeyExtractor:Lorg/mapdb/Fun$Function1;

    .line 633
    iput-object p2, p0, Lorg/mapdb/DB$BTreeMapMaker;->pumpValueExtractor:Lorg/mapdb/Fun$Function1;

    .line 634
    return-object p0
.end method

.method public valueSerializer(Lorg/mapdb/Serializer;)Lorg/mapdb/DB$BTreeMapMaker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Serializer",
            "<*>;)",
            "Lorg/mapdb/DB$BTreeMapMaker;"
        }
    .end annotation

    .prologue
    .line 620
    .local p1, "valueSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<*>;"
    iput-object p1, p0, Lorg/mapdb/DB$BTreeMapMaker;->valueSerializer:Lorg/mapdb/Serializer;

    .line 621
    return-object p0
.end method

.method public valuesOutsideNodesEnable()Lorg/mapdb/DB$BTreeMapMaker;
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapdb/DB$BTreeMapMaker;->valuesOutsideNodes:Z

    .line 597
    return-object p0
.end method
