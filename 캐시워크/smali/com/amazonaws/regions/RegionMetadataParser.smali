.class public Lcom/amazonaws/regions/RegionMetadataParser;
.super Ljava/lang/Object;
.source "RegionMetadataParser.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DOMAIN_TAG:Ljava/lang/String; = "Domain"

.field private static final ENDPOINT_TAG:Ljava/lang/String; = "Endpoint"

.field private static final HOSTNAME_TAG:Ljava/lang/String; = "Hostname"

.field private static final HTTPS_TAG:Ljava/lang/String; = "Https"

.field private static final HTTP_TAG:Ljava/lang/String; = "Http"

.field private static final REGION_ID_TAG:Ljava/lang/String; = "Name"

.field private static final REGION_TAG:Ljava/lang/String; = "Region"

.field private static final SERVICE_TAG:Ljava/lang/String; = "ServiceName"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method private static addRegionEndpoint(Lcom/amazonaws/regions/Region;Lorg/w3c/dom/Element;Z)V
    .locals 7
    .param p0, "region"    # Lcom/amazonaws/regions/Region;
    .param p1, "endpointElement"    # Lorg/w3c/dom/Element;
    .param p2, "endpointVerification"    # Z

    .prologue
    .line 169
    const-string v4, "ServiceName"

    invoke-static {v4, p1}, Lcom/amazonaws/regions/RegionMetadataParser;->getChildElementValue(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "serviceName":Ljava/lang/String;
    const-string v4, "Hostname"

    invoke-static {v4, p1}, Lcom/amazonaws/regions/RegionMetadataParser;->getChildElementValue(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "hostname":Ljava/lang/String;
    const-string v4, "Http"

    invoke-static {v4, p1}, Lcom/amazonaws/regions/RegionMetadataParser;->getChildElementValue(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "http":Ljava/lang/String;
    const-string v4, "Https"

    invoke-static {v4, p1}, Lcom/amazonaws/regions/RegionMetadataParser;->getChildElementValue(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "https":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/amazonaws/regions/RegionMetadataParser;->verifyLegacyEndpoint(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 175
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid service endpoint ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is detected."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/regions/Region;->getServiceEndpoints()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {p0}, Lcom/amazonaws/regions/Region;->getHttpSupport()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-virtual {p0}, Lcom/amazonaws/regions/Region;->getHttpsSupport()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method

.method private static getChildElementValue(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 5
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-interface {p1, p0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 189
    .local v2, "tagNode":Lorg/w3c/dom/Node;
    if-nez v2, :cond_0

    .line 190
    const/4 v3, 0x0

    .line 194
    :goto_0
    return-object v3

    .line 191
    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 192
    .local v1, "nodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 194
    .local v0, "node":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static internalParse(Ljava/io/InputStream;Z)Ljava/util/List;
    .locals 12
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "endpointVerification"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 114
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 115
    .local v1, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 125
    .local v0, "document":Lorg/w3c/dom/Document;
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 130
    :goto_0
    const-string v9, "Region"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 131
    .local v7, "regionNodes":Lorg/w3c/dom/NodeList;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v8, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/regions/Region;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v5, v9, :cond_1

    .line 133
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 134
    .local v6, "node":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    move-object v2, v6

    .line 135
    check-cast v2, Lorg/w3c/dom/Element;

    .line 136
    .local v2, "element":Lorg/w3c/dom/Element;
    invoke-static {v2, p1}, Lcom/amazonaws/regions/RegionMetadataParser;->parseRegionElement(Lorg/w3c/dom/Element;Z)Lcom/amazonaws/regions/Region;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v2    # "element":Lorg/w3c/dom/Element;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 117
    .end local v0    # "document":Lorg/w3c/dom/Document;
    .end local v1    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "i":I
    .end local v6    # "node":Lorg/w3c/dom/Node;
    .end local v7    # "regionNodes":Lorg/w3c/dom/NodeList;
    .end local v8    # "regions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/regions/Region;>;"
    :catch_0
    move-exception v3

    .line 118
    .local v3, "exception":Ljava/io/IOException;
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    .end local v3    # "exception":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 125
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 127
    :goto_2
    throw v9

    .line 119
    :catch_1
    move-exception v3

    .line 120
    .local v3, "exception":Ljava/lang/Exception;
    :try_start_4
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to parse region metadata file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 121
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    .end local v3    # "exception":Ljava/lang/Exception;
    .restart local v0    # "document":Lorg/w3c/dom/Document;
    .restart local v1    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_2
    move-exception v9

    goto :goto_0

    .end local v0    # "document":Lorg/w3c/dom/Document;
    .end local v1    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_3
    move-exception v10

    goto :goto_2

    .line 140
    .restart local v0    # "document":Lorg/w3c/dom/Document;
    .restart local v1    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "i":I
    .restart local v7    # "regionNodes":Lorg/w3c/dom/NodeList;
    .restart local v8    # "regions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/regions/Region;>;"
    :cond_1
    return-object v8
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/amazonaws/regions/RegionMetadata;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/amazonaws/regions/RegionMetadata;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/amazonaws/regions/RegionMetadataParser;->internalParse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/regions/RegionMetadata;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static parseRegionElement(Lorg/w3c/dom/Element;Z)Lcom/amazonaws/regions/Region;
    .locals 6
    .param p0, "regionElement"    # Lorg/w3c/dom/Element;
    .param p1, "endpointVerification"    # Z

    .prologue
    .line 147
    const-string v5, "Name"

    invoke-static {v5, p0}, Lcom/amazonaws/regions/RegionMetadataParser;->getChildElementValue(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "name":Ljava/lang/String;
    const-string v5, "Domain"

    invoke-static {v5, p0}, Lcom/amazonaws/regions/RegionMetadataParser;->getChildElementValue(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "domain":Ljava/lang/String;
    new-instance v4, Lcom/amazonaws/regions/Region;

    invoke-direct {v4, v3, v0}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v4, "region":Lcom/amazonaws/regions/Region;
    const-string v5, "Endpoint"

    .line 153
    invoke-interface {p0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 155
    .local v1, "endpointNodes":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 157
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 156
    invoke-static {v4, v5, p1}, Lcom/amazonaws/regions/RegionMetadataParser;->addRegionEndpoint(Lcom/amazonaws/regions/Region;Lorg/w3c/dom/Element;Z)V

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_0
    return-object v4
.end method

.method private static verifyLegacyEndpoint(Ljava/lang/String;)Z
    .locals 1
    .param p0, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 202
    const-string v0, ".amazonaws.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public parseRegionMetadata(Ljava/io/InputStream;)Ljava/util/List;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazonaws/regions/RegionMetadataParser;->internalParse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parseRegionMetadata(Ljava/io/InputStream;Z)Ljava/util/List;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "endpointVerification"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    invoke-static {p1, p2}, Lcom/amazonaws/regions/RegionMetadataParser;->internalParse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
