.class public Lorg/jsoup/nodes/Document;
.super Lorg/jsoup/nodes/Element;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Document$QuirksMode;,
        Lorg/jsoup/nodes/Document$OutputSettings;
    }
.end annotation


# instance fields
.field private location:Ljava/lang/String;

.field private outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

.field private quirksMode:Lorg/jsoup/nodes/Document$QuirksMode;

.field private updateMetaCharset:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 30
    const-string v0, "#root"

    invoke-static {v0}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-direct {v0}, Lorg/jsoup/nodes/Document$OutputSettings;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 19
    sget-object v0, Lorg/jsoup/nodes/Document$QuirksMode;->noQuirks:Lorg/jsoup/nodes/Document$QuirksMode;

    iput-object v0, p0, Lorg/jsoup/nodes/Document;->quirksMode:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/nodes/Document;->updateMetaCharset:Z

    .line 31
    iput-object p1, p0, Lorg/jsoup/nodes/Document;->location:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static createShell(Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 3
    .param p0, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 42
    new-instance v0, Lorg/jsoup/nodes/Document;

    invoke-direct {v0, p0}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "doc":Lorg/jsoup/nodes/Document;
    const-string v2, "html"

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Document;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 44
    .local v1, "html":Lorg/jsoup/nodes/Element;
    const-string v2, "head"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 45
    const-string v2, "body"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 47
    return-object v0
.end method

.method private ensureMetaCharsetElement()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 311
    iget-boolean v6, p0, Lorg/jsoup/nodes/Document;->updateMetaCharset:Z

    if-eqz v6, :cond_1

    .line 312
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jsoup/nodes/Document$OutputSettings;->syntax()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object v4

    .line 314
    .local v4, "syntax":Lorg/jsoup/nodes/Document$OutputSettings$Syntax;
    sget-object v6, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne v4, v6, :cond_3

    .line 315
    const-string v6, "meta[charset]"

    invoke-virtual {p0, v6}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v2

    .line 317
    .local v2, "metaCharset":Lorg/jsoup/nodes/Element;
    if-eqz v2, :cond_2

    .line 318
    const-string v6, "charset"

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 328
    :cond_0
    :goto_0
    const-string v6, "meta[name=charset]"

    invoke-virtual {p0, v6}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jsoup/select/Elements;->remove()Lorg/jsoup/select/Elements;

    .line 359
    .end local v2    # "metaCharset":Lorg/jsoup/nodes/Element;
    .end local v4    # "syntax":Lorg/jsoup/nodes/Document$OutputSettings$Syntax;
    :cond_1
    :goto_1
    return-void

    .line 320
    .restart local v2    # "metaCharset":Lorg/jsoup/nodes/Element;
    .restart local v4    # "syntax":Lorg/jsoup/nodes/Document$OutputSettings$Syntax;
    :cond_2
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 322
    .local v1, "head":Lorg/jsoup/nodes/Element;
    if-eqz v1, :cond_0

    .line 323
    const-string v6, "meta"

    invoke-virtual {v1, v6}, Lorg/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v6

    const-string v7, "charset"

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 329
    .end local v1    # "head":Lorg/jsoup/nodes/Element;
    .end local v2    # "metaCharset":Lorg/jsoup/nodes/Element;
    :cond_3
    sget-object v6, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne v4, v6, :cond_1

    .line 330
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->childNodes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Node;

    .line 332
    .local v3, "node":Lorg/jsoup/nodes/Node;
    instance-of v6, v3, Lorg/jsoup/nodes/XmlDeclaration;

    if-eqz v6, :cond_5

    move-object v0, v3

    .line 333
    check-cast v0, Lorg/jsoup/nodes/XmlDeclaration;

    .line 335
    .local v0, "decl":Lorg/jsoup/nodes/XmlDeclaration;
    invoke-virtual {v0}, Lorg/jsoup/nodes/XmlDeclaration;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 336
    const-string v6, "encoding"

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    .line 338
    const-string v6, "version"

    invoke-virtual {v0, v6}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 340
    .local v5, "version":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 341
    const-string v6, "version"

    const-string v7, "1.0"

    invoke-virtual {v0, v6, v7}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    goto :goto_1

    .line 344
    .end local v5    # "version":Ljava/lang/String;
    :cond_4
    new-instance v0, Lorg/jsoup/nodes/XmlDeclaration;

    .end local v0    # "decl":Lorg/jsoup/nodes/XmlDeclaration;
    const-string v6, "xml"

    iget-object v7, p0, Lorg/jsoup/nodes/Document;->baseUri:Ljava/lang/String;

    invoke-direct {v0, v6, v7, v8}, Lorg/jsoup/nodes/XmlDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 345
    .restart local v0    # "decl":Lorg/jsoup/nodes/XmlDeclaration;
    const-string v6, "version"

    const-string v7, "1.0"

    invoke-virtual {v0, v6, v7}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    .line 346
    const-string v6, "encoding"

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    .line 348
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->prependChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_1

    .line 351
    .end local v0    # "decl":Lorg/jsoup/nodes/XmlDeclaration;
    :cond_5
    new-instance v0, Lorg/jsoup/nodes/XmlDeclaration;

    const-string v6, "xml"

    iget-object v7, p0, Lorg/jsoup/nodes/Document;->baseUri:Ljava/lang/String;

    invoke-direct {v0, v6, v7, v8}, Lorg/jsoup/nodes/XmlDeclaration;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 352
    .restart local v0    # "decl":Lorg/jsoup/nodes/XmlDeclaration;
    const-string v6, "version"

    const-string v7, "1.0"

    invoke-virtual {v0, v6, v7}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    .line 353
    const-string v6, "encoding"

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    .line 355
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->prependChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_1
.end method

.method private findFirstElementByTagName(Ljava/lang/String;Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "node"    # Lorg/jsoup/nodes/Node;

    .prologue
    .line 180
    invoke-virtual {p2}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    check-cast p2, Lorg/jsoup/nodes/Element;

    .line 189
    .end local p2    # "node":Lorg/jsoup/nodes/Node;
    :goto_0
    return-object p2

    .line 183
    .restart local p2    # "node":Lorg/jsoup/nodes/Node;
    :cond_0
    iget-object v2, p2, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    .line 184
    .local v0, "child":Lorg/jsoup/nodes/Node;
    invoke-direct {p0, p1, v0}, Lorg/jsoup/nodes/Document;->findFirstElementByTagName(Ljava/lang/String;Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 185
    .local v1, "found":Lorg/jsoup/nodes/Element;
    if-eqz v1, :cond_1

    move-object p2, v1

    .line 186
    goto :goto_0

    .line 189
    .end local v0    # "child":Lorg/jsoup/nodes/Node;
    .end local v1    # "found":Lorg/jsoup/nodes/Element;
    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private normaliseStructure(Ljava/lang/String;Lorg/jsoup/nodes/Element;)V
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "htmlEl"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 159
    .local v1, "elements":Lorg/jsoup/select/Elements;
    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v3

    .line 160
    .local v3, "master":Lorg/jsoup/nodes/Element;
    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 161
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v5, "toMove":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/Node;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 163
    invoke-virtual {v1, v2}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    .line 164
    .local v0, "dupe":Lorg/jsoup/nodes/Node;
    iget-object v6, v0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Node;

    .line 165
    .local v4, "node":Lorg/jsoup/nodes/Node;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 166
    .end local v4    # "node":Lorg/jsoup/nodes/Node;
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->remove()V

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "dupe":Lorg/jsoup/nodes/Node;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    .line 170
    .restart local v0    # "dupe":Lorg/jsoup/nodes/Node;
    invoke-virtual {v3, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_2

    .line 173
    .end local v0    # "dupe":Lorg/jsoup/nodes/Node;
    .end local v2    # "i":I
    .end local v5    # "toMove":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/Node;>;"
    :cond_2
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v6

    invoke-virtual {v6, p2}, Lorg/jsoup/nodes/Element;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 174
    invoke-virtual {p2, v3}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 176
    :cond_3
    return-void
.end method

.method private normaliseTextNodes(Lorg/jsoup/nodes/Element;)V
    .locals 8
    .param p1, "element"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 139
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v3, "toMove":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/Node;>;"
    iget-object v4, p1, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Node;

    .line 141
    .local v1, "node":Lorg/jsoup/nodes/Node;
    instance-of v5, v1, Lorg/jsoup/nodes/TextNode;

    if-eqz v5, :cond_0

    move-object v2, v1

    .line 142
    check-cast v2, Lorg/jsoup/nodes/TextNode;

    .line 143
    .local v2, "tn":Lorg/jsoup/nodes/TextNode;
    invoke-virtual {v2}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    move-result v5

    if-nez v5, :cond_0

    .line 144
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    .end local v1    # "node":Lorg/jsoup/nodes/Node;
    .end local v2    # "tn":Lorg/jsoup/nodes/TextNode;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 149
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Node;

    .line 150
    .restart local v1    # "node":Lorg/jsoup/nodes/Node;
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Element;->removeChild(Lorg/jsoup/nodes/Node;)V

    .line 151
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v4

    new-instance v5, Lorg/jsoup/nodes/TextNode;

    const-string v6, " "

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Element;->prependChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 152
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/jsoup/nodes/Element;->prependChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 148
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 154
    .end local v1    # "node":Lorg/jsoup/nodes/Node;
    :cond_2
    return-void
.end method


# virtual methods
.method public body()Lorg/jsoup/nodes/Element;
    .locals 1

    .prologue
    .line 72
    const-string v0, "body"

    invoke-direct {p0, v0, p0}, Lorg/jsoup/nodes/Document;->findFirstElementByTagName(Ljava/lang/String;Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public charset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document$OutputSettings;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public charset(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 238
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->updateMetaCharsetElement(Z)V

    .line 239
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Document$OutputSettings;->charset(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$OutputSettings;

    .line 240
    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->ensureMetaCharsetElement()V

    .line 241
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->clone()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/Document;
    .locals 2

    .prologue
    .line 286
    invoke-super {p0}, Lorg/jsoup/nodes/Element;->clone()Lorg/jsoup/nodes/Element;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Document;

    .line 287
    .local v0, "clone":Lorg/jsoup/nodes/Document;
    iget-object v1, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->clone()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 288
    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Element;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->clone()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Node;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->clone()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 3
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v0, Lorg/jsoup/nodes/Element;

    invoke-static {p1}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->baseUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method public head()Lorg/jsoup/nodes/Element;
    .locals 1

    .prologue
    .line 64
    const-string v0, "head"

    invoke-direct {p0, v0, p0}, Lorg/jsoup/nodes/Document;->findFirstElementByTagName(Ljava/lang/String;Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public location()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->location:Ljava/lang/String;

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string v0, "#document"

    return-object v0
.end method

.method public normalise()Lorg/jsoup/nodes/Document;
    .locals 2

    .prologue
    .line 115
    const-string v1, "html"

    invoke-direct {p0, v1, p0}, Lorg/jsoup/nodes/Document;->findFirstElementByTagName(Ljava/lang/String;Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 116
    .local v0, "htmlEl":Lorg/jsoup/nodes/Element;
    if-nez v0, :cond_0

    .line 117
    const-string v1, "html"

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Document;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-nez v1, :cond_1

    .line 119
    const-string v1, "head"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->prependElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 120
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-nez v1, :cond_2

    .line 121
    const-string v1, "body"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 125
    :cond_2
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jsoup/nodes/Document;->normaliseTextNodes(Lorg/jsoup/nodes/Element;)V

    .line 126
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Document;->normaliseTextNodes(Lorg/jsoup/nodes/Element;)V

    .line 127
    invoke-direct {p0, p0}, Lorg/jsoup/nodes/Document;->normaliseTextNodes(Lorg/jsoup/nodes/Element;)V

    .line 129
    const-string v1, "head"

    invoke-direct {p0, v1, v0}, Lorg/jsoup/nodes/Document;->normaliseStructure(Ljava/lang/String;Lorg/jsoup/nodes/Element;)V

    .line 130
    const-string v1, "body"

    invoke-direct {p0, v1, v0}, Lorg/jsoup/nodes/Document;->normaliseStructure(Ljava/lang/String;Lorg/jsoup/nodes/Element;)V

    .line 132
    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->ensureMetaCharsetElement()V

    .line 134
    return-object p0
.end method

.method public outerHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    return-object v0
.end method

.method public outputSettings(Lorg/jsoup/nodes/Document$OutputSettings;)Lorg/jsoup/nodes/Document;
    .locals 0
    .param p1, "outputSettings"    # Lorg/jsoup/nodes/Document$OutputSettings;

    .prologue
    .line 546
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 547
    iput-object p1, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 548
    return-object p0
.end method

.method public quirksMode()Lorg/jsoup/nodes/Document$QuirksMode;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lorg/jsoup/nodes/Document;->quirksMode:Lorg/jsoup/nodes/Document$QuirksMode;

    return-object v0
.end method

.method public quirksMode(Lorg/jsoup/nodes/Document$QuirksMode;)Lorg/jsoup/nodes/Document;
    .locals 0
    .param p1, "quirksMode"    # Lorg/jsoup/nodes/Document$QuirksMode;

    .prologue
    .line 560
    iput-object p1, p0, Lorg/jsoup/nodes/Document;->quirksMode:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 561
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 205
    return-object p0
.end method

.method public title()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 82
    .local v0, "titleEl":Lorg/jsoup/nodes/Element;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/helper/StringUtil;->normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public title(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 92
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 93
    .local v0, "titleEl":Lorg/jsoup/nodes/Element;
    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0
.end method

.method public updateMetaCharsetElement(Z)V
    .locals 0
    .param p1, "update"    # Z

    .prologue
    .line 269
    iput-boolean p1, p0, Lorg/jsoup/nodes/Document;->updateMetaCharset:Z

    .line 270
    return-void
.end method

.method public updateMetaCharsetElement()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lorg/jsoup/nodes/Document;->updateMetaCharset:Z

    return v0
.end method
