.class public Lcom/amazonaws/transform/MapUnmarshaller;
.super Ljava/lang/Object;
.source "MapUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "TV;>;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# instance fields
.field private final valueUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TV;",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazonaws/transform/Unmarshaller;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TV;",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/amazonaws/transform/MapUnmarshaller;, "Lcom/amazonaws/transform/MapUnmarshaller<TV;>;"
    .local p1, "valueUnmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<TV;Lcom/amazonaws/transform/JsonUnmarshallerContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazonaws/transform/MapUnmarshaller;->valueUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/amazonaws/transform/MapUnmarshaller;, "Lcom/amazonaws/transform/MapUnmarshaller<TV;>;"
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/MapUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Map;
    .locals 6
    .param p1, "context"    # Lcom/amazonaws/transform/JsonUnmarshallerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/amazonaws/transform/MapUnmarshaller;, "Lcom/amazonaws/transform/MapUnmarshaller<TV;>;"
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getReader()Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v2

    .line 35
    .local v2, "reader":Lcom/amazonaws/util/json/AwsJsonReader;
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonReader;->peek()Lcom/amazonaws/util/json/AwsJsonToken;

    move-result-object v4

    sget-object v5, Lcom/amazonaws/util/json/AwsJsonToken;->VALUE_NULL:Lcom/amazonaws/util/json/AwsJsonToken;

    if-ne v4, v5, :cond_0

    .line 36
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    .line 37
    const/4 v1, 0x0

    .line 50
    :goto_0
    return-object v1

    .line 40
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 43
    :goto_1
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/amazonaws/transform/MapUnmarshaller;->valueUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    invoke-interface {v4, p1}, Lcom/amazonaws/transform/Unmarshaller;->unmarshall(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 46
    .local v3, "v":Ljava/lang/Object;, "TV;"
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 48
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonReader;->endObject()V

    goto :goto_0
.end method
