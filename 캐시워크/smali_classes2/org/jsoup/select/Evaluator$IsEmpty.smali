.class public final Lorg/jsoup/select/Evaluator$IsEmpty;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsEmpty"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 4
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "element"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 596
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->childNodes()Ljava/util/List;

    move-result-object v0

    .line 597
    .local v0, "family":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/Node;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Node;

    .line 598
    .local v1, "n":Lorg/jsoup/nodes/Node;
    instance-of v3, v1, Lorg/jsoup/nodes/Comment;

    if-nez v3, :cond_0

    instance-of v3, v1, Lorg/jsoup/nodes/XmlDeclaration;

    if-nez v3, :cond_0

    instance-of v3, v1, Lorg/jsoup/nodes/DocumentType;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 600
    .end local v1    # "n":Lorg/jsoup/nodes/Node;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    const-string v0, ":empty"

    return-object v0
.end method
