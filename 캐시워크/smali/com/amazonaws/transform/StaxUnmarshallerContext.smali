.class public Lcom/amazonaws/transform/StaxUnmarshallerContext;
.super Ljava/lang/Object;
.source "StaxUnmarshallerContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;
    }
.end annotation


# instance fields
.field private currentEventType:I

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private metadataExpressions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;",
            ">;"
        }
    .end annotation
.end field

.field public final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stackString:Ljava/lang/String;

.field private final xpp:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 1
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stack:Ljava/util/Deque;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->metadata:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->metadataExpressions:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    .line 70
    iput-object p2, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->headers:Ljava/util/Map;

    .line 71
    return-void
.end method

.method private updateContext()V
    .locals 2

    .prologue
    .line 252
    iget v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stack:Ljava/util/Deque;

    iget-object v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getCurrentDepth()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    return v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public isStartOfDocument()Z
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEventType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextEvent()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    iput v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEventType:I

    .line 184
    iget v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEventType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 185
    iget-object v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    iput v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEventType:I

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->updateContext()V

    .line 191
    iget v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEventType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 192
    iget-object v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->metadataExpressions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;

    .line 193
    .local v0, "metadataExpression":Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;
    iget-object v2, v0, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->expression:Ljava/lang/String;

    iget v3, v0, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->targetDepth:I

    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    iget-object v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->metadata:Ljava/util/Map;

    iget-object v2, v0, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->key:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->readText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .end local v0    # "metadataExpression":Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;
    :cond_2
    iget v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEventType:I

    return v1
.end method

.method public readText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 102
    iget-object v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    iput v1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEventType:I

    .line 105
    invoke-direct {p0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->updateContext()V

    .line 106
    return-object v0
.end method

.method public registerMetadataExpression(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "targetDepth"    # I
    .param p3, "storageKey"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->metadataExpressions:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;

    invoke-direct {v1, p1, p2, p3}, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    return-void
.end method

.method public testExpression(Ljava/lang/String;)Z
    .locals 1
    .param p1, "expression"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public testExpression(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "startingStackDepth"    # I

    .prologue
    const/4 v1, 0x1

    .line 145
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v1

    .line 148
    :cond_1
    const/4 v0, -0x1

    .line 149
    .local v0, "index":I
    :cond_2
    :goto_1
    const-string v2, "/"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_3

    .line 151
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_2

    .line 152
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 156
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v2

    if-ne v2, p2, :cond_4

    iget-object v2, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method
