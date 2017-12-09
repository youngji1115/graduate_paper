.class public Lcom/amazonaws/util/XpathUtils;
.super Ljava/lang/Object;
.source "XpathUtils.java"


# static fields
.field private static factory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/amazonaws/util/XpathUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/util/XpathUtils;->log:Lorg/apache/commons/logging/Log;

    .line 48
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/util/XpathUtils;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asBoolean(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "booleanString":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static asByte(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Byte;
    .locals 2
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "byteString":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0
.end method

.method public static asByteBuffer(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 213
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "base64EncodedString":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-object v2

    .line 217
    :cond_1
    invoke-static {p1}, Lcom/amazonaws/util/XpathUtils;->isEmpty(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 218
    invoke-static {v0}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 219
    .local v1, "decodedBytes":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_0
.end method

.method public static asDate(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/util/Date;
    .locals 2
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "dateString":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const/4 v1, 0x0

    .line 197
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/amazonaws/util/DateUtils;->parseISO8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_0
.end method

.method public static asDouble(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Double;
    .locals 2
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "doubleString":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0
.end method

.method public static asFloat(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Float;
    .locals 2
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "floatString":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0
.end method

.method public static asInteger(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Integer;
    .locals 2
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "intString":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public static asLong(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Long;
    .locals 2
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "longString":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public static asNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .param p0, "nodeName"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 280
    if-nez p1, :cond_0

    .line 281
    const/4 v0, 0x0

    .line 282
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/amazonaws/util/XpathUtils;->xpath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v0, p0, p1, v1}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public static asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static documentFrom(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v1, Lcom/amazonaws/util/NamespaceRemovingInputStream;

    invoke-direct {v1, p0}, Lcom/amazonaws/util/NamespaceRemovingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 53
    .end local p0    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    sget-object v2, Lcom/amazonaws/util/XpathUtils;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 54
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 56
    return-object v0
.end method

.method public static documentFrom(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 2
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->documentFrom(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static documentFrom(Ljava/net/URL;)Lorg/w3c/dom/Document;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->documentFrom(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method private static evaluateAsString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-static {p1}, Lcom/amazonaws/util/XpathUtils;->isEmpty(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-object v1

    .line 260
    :cond_1
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 269
    invoke-static {p0, p1}, Lcom/amazonaws/util/XpathUtils;->asNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 273
    :cond_2
    invoke-static {}, Lcom/amazonaws/util/XpathUtils;->xpath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isEmpty(Lorg/w3c/dom/Node;)Z
    .locals 1
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 231
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEmptyString(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 292
    if-nez p0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nodeLength(Lorg/w3c/dom/NodeList;)I
    .locals 1
    .param p0, "list"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 241
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    goto :goto_0
.end method

.method public static xpath()Ljavax/xml/xpath/XPath;
    .locals 1

    .prologue
    .line 305
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    return-object v0
.end method
