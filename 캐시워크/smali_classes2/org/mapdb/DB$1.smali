.class Lorg/mapdb/DB$1;
.super Ljava/lang/Object;
.source "DB.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/DB;->createTreeMap(Lorg/mapdb/DB$BTreeMapMaker;)Lorg/mapdb/BTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapdb/DB;

.field final synthetic val$m:Lorg/mapdb/DB$BTreeMapMaker;


# direct methods
.method constructor <init>(Lorg/mapdb/DB;Lorg/mapdb/DB$BTreeMapMaker;)V
    .locals 0

    .prologue
    .line 857
    iput-object p1, p0, Lorg/mapdb/DB$1;->this$0:Lorg/mapdb/DB;

    iput-object p2, p0, Lorg/mapdb/DB$1;->val$m:Lorg/mapdb/DB$BTreeMapMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 861
    iget-object v0, p0, Lorg/mapdb/DB$1;->val$m:Lorg/mapdb/DB$BTreeMapMaker;

    iget-object v0, v0, Lorg/mapdb/DB$BTreeMapMaker;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lorg/mapdb/DB$1;->val$m:Lorg/mapdb/DB$BTreeMapMaker;

    iget-object v1, v1, Lorg/mapdb/DB$BTreeMapMaker;->pumpKeyExtractor:Lorg/mapdb/Fun$Function1;

    invoke-interface {v1, p1}, Lorg/mapdb/Fun$Function1;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/mapdb/DB$1;->val$m:Lorg/mapdb/DB$BTreeMapMaker;

    iget-object v2, v2, Lorg/mapdb/DB$BTreeMapMaker;->pumpKeyExtractor:Lorg/mapdb/Fun$Function1;

    invoke-interface {v2, p2}, Lorg/mapdb/Fun$Function1;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    neg-int v0, v0

    return v0
.end method
