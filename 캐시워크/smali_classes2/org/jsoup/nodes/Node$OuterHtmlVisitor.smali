.class Lorg/jsoup/nodes/Node$OuterHtmlVisitor;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OuterHtmlVisitor"
.end annotation


# instance fields
.field private accum:Ljava/lang/Appendable;

.field private out:Lorg/jsoup/nodes/Document$OutputSettings;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0
    .param p1, "accum"    # Ljava/lang/Appendable;
    .param p2, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;

    .prologue
    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    iput-object p1, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->accum:Ljava/lang/Appendable;

    .line 673
    iput-object p2, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->out:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 674
    return-void
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 3
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .prologue
    .line 678
    :try_start_0
    iget-object v1, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->accum:Ljava/lang/Appendable;

    iget-object v2, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->out:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {p1, v1, p2, v2}, Lorg/jsoup/nodes/Node;->outerHtmlHead(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    return-void

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, "exception":Ljava/io/IOException;
    new-instance v1, Lorg/jsoup/SerializationException;

    invoke-direct {v1, v0}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 3
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .prologue
    .line 685
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 687
    :try_start_0
    iget-object v1, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->accum:Ljava/lang/Appendable;

    iget-object v2, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->out:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {p1, v1, p2, v2}, Lorg/jsoup/nodes/Node;->outerHtmlTail(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :cond_0
    return-void

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "exception":Ljava/io/IOException;
    new-instance v1, Lorg/jsoup/SerializationException;

    invoke-direct {v1, v0}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
