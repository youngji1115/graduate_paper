.class final Lorg/jsoup/select/CombiningEvaluator$Or;
.super Lorg/jsoup/select/CombiningEvaluator;
.source "CombiningEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/CombiningEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Or"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/jsoup/select/CombiningEvaluator;-><init>()V

    .line 82
    return-void
.end method

.method constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/jsoup/select/Evaluator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "evaluators":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jsoup/select/Evaluator;>;"
    invoke-direct {p0}, Lorg/jsoup/select/CombiningEvaluator;-><init>()V

    .line 73
    iget v0, p0, Lorg/jsoup/select/CombiningEvaluator$Or;->num:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lorg/jsoup/select/CombiningEvaluator$Or;->evaluators:Ljava/util/ArrayList;

    new-instance v1, Lorg/jsoup/select/CombiningEvaluator$And;

    invoke-direct {v1, p1}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/select/CombiningEvaluator$Or;->updateNumEvaluators()V

    .line 78
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/jsoup/select/CombiningEvaluator$Or;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/jsoup/select/Evaluator;)V
    .locals 1
    .param p1, "e"    # Lorg/jsoup/select/Evaluator;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/jsoup/select/CombiningEvaluator$Or;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {p0}, Lorg/jsoup/select/CombiningEvaluator$Or;->updateNumEvaluators()V

    .line 87
    return-void
.end method

.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 3
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "node"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/jsoup/select/CombiningEvaluator$Or;->num:I

    if-ge v0, v2, :cond_1

    .line 92
    iget-object v2, p0, Lorg/jsoup/select/CombiningEvaluator$Or;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/select/Evaluator;

    .line 93
    .local v1, "s":Lorg/jsoup/select/Evaluator;
    invoke-virtual {v1, p1, p2}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const/4 v2, 0x1

    .line 96
    .end local v1    # "s":Lorg/jsoup/select/Evaluator;
    :goto_1
    return v2

    .line 91
    .restart local v1    # "s":Lorg/jsoup/select/Evaluator;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "s":Lorg/jsoup/select/Evaluator;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 101
    const-string v0, ":or%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jsoup/select/CombiningEvaluator$Or;->evaluators:Ljava/util/ArrayList;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
