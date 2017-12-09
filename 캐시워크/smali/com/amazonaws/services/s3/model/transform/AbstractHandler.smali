.class abstract Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AbstractHandler.java"


# instance fields
.field private final context:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final text:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->text:Ljava/lang/StringBuilder;

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->context:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method protected final atTopLevel()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->context:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 64
    return-void
.end method

.method protected abstract doEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract doStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->context:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->doEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method protected final getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs in([Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 75
    array-length v4, p1

    iget-object v5, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->context:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v3

    .line 79
    :cond_1
    const/4 v1, 0x0

    .line 80
    .local v1, "i":I
    iget-object v4, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->context:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    .local v0, "element":Ljava/lang/String;
    aget-object v2, p1, v1

    .line 82
    .local v2, "pattern":Ljava/lang/String;
    const-string v5, "*"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 86
    goto :goto_1

    .line 88
    .end local v0    # "element":Ljava/lang/String;
    .end local v2    # "pattern":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->text:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 40
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->doStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 41
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->context:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method
