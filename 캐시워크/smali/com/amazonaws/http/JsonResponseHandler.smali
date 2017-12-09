.class public Lcom/amazonaws/http/JsonResponseHandler;
.super Ljava/lang/Object;
.source "JsonResponseHandler.java"

# interfaces
.implements Lcom/amazonaws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/http/HttpResponseHandler",
        "<",
        "Lcom/amazonaws/AmazonWebServiceResponse",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field public needsConnectionLeftOpen:Z

.field private responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TT;",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "com.amazonaws.request"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/JsonResponseHandler;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/transform/Unmarshaller;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TT;",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<TT;>;"
    .local p1, "responseUnmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<TT;Lcom/amazonaws/transform/JsonUnmarshallerContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    .line 66
    iput-object p1, p0, Lcom/amazonaws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    .line 74
    iget-object v0, p0, Lcom/amazonaws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/amazonaws/transform/VoidJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/transform/VoidJsonUnmarshaller;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;
    .locals 19
    .param p1, "response"    # Lcom/amazonaws/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<TT;>;"
    sget-object v16, Lcom/amazonaws/http/JsonResponseHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v17, "Parsing service response JSON"

    invoke-interface/range {v16 .. v17}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v16

    const-string/jumbo v17, "x-amz-crc32"

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 87
    .local v2, "CRC32Checksum":Ljava/lang/String;
    const/4 v8, 0x0

    .line 91
    .local v8, "crc32ChecksumInputStream":Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v6

    .line 92
    .local v6, "content":Ljava/io/InputStream;
    if-nez v6, :cond_0

    .line 94
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .end local v6    # "content":Ljava/io/InputStream;
    const-string/jumbo v16, "{}"

    sget-object v17, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 97
    .restart local v6    # "content":Ljava/io/InputStream;
    :cond_0
    if-eqz v2, :cond_1

    .line 98
    new-instance v8, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;

    .end local v8    # "crc32ChecksumInputStream":Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;
    invoke-direct {v8, v6}, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 99
    .restart local v8    # "crc32ChecksumInputStream":Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;
    move-object v6, v8

    .line 101
    :cond_1
    const-string v16, "gzip"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v17

    const-string v18, "Content-Encoding"

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 102
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v6    # "content":Ljava/io/InputStream;
    .local v7, "content":Ljava/io/InputStream;
    move-object v6, v7

    .line 105
    .end local v7    # "content":Ljava/io/InputStream;
    .restart local v6    # "content":Ljava/io/InputStream;
    :cond_2
    new-instance v16, Ljava/io/InputStreamReader;

    sget-object v17, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static/range {v16 .. v16}, Lcom/amazonaws/util/json/JsonUtils;->getJsonReader(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v10

    .line 109
    .local v10, "jsonReader":Lcom/amazonaws/util/json/AwsJsonReader;
    :try_start_0
    new-instance v3, Lcom/amazonaws/AmazonWebServiceResponse;

    invoke-direct {v3}, Lcom/amazonaws/AmazonWebServiceResponse;-><init>()V

    .line 110
    .local v3, "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<TT;>;"
    new-instance v13, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    move-object/from16 v0, p1

    invoke-direct {v13, v10, v0}, Lcom/amazonaws/transform/JsonUnmarshallerContext;-><init>(Lcom/amazonaws/util/json/AwsJsonReader;Lcom/amazonaws/http/HttpResponse;)V

    .line 113
    .local v13, "unmarshallerContext":Lcom/amazonaws/transform/JsonUnmarshallerContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Lcom/amazonaws/transform/Unmarshaller;->unmarshall(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 115
    .local v12, "result":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_4

    .line 116
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 117
    .local v14, "serverSideCRC":J
    invoke-virtual {v8}, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;->getCRC32Checksum()J

    move-result-wide v4

    .line 118
    .local v4, "clientSideCRC":J
    cmp-long v16, v4, v14

    if-eqz v16, :cond_4

    .line 119
    new-instance v16, Lcom/amazonaws/internal/CRC32MismatchException;

    const-string v17, "Client calculated crc32 checksum didn\'t match that calculated by server side"

    invoke-direct/range {v16 .. v17}, Lcom/amazonaws/internal/CRC32MismatchException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local v3    # "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<TT;>;"
    .end local v4    # "clientSideCRC":J
    .end local v12    # "result":Ljava/lang/Object;, "TT;"
    .end local v13    # "unmarshallerContext":Lcom/amazonaws/transform/JsonUnmarshallerContext;
    .end local v14    # "serverSideCRC":J
    :catchall_0
    move-exception v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 136
    :try_start_1
    invoke-interface {v10}, Lcom/amazonaws/util/json/AwsJsonReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    :cond_3
    :goto_0
    throw v16

    .line 124
    .restart local v3    # "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<TT;>;"
    .restart local v12    # "result":Ljava/lang/Object;, "TT;"
    .restart local v13    # "unmarshallerContext":Lcom/amazonaws/transform/JsonUnmarshallerContext;
    :cond_4
    :try_start_2
    invoke-virtual {v3, v12}, Lcom/amazonaws/AmazonWebServiceResponse;->setResult(Ljava/lang/Object;)V

    .line 126
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v11, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v16, "AWS_REQUEST_ID"

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v17

    const-string/jumbo v18, "x-amzn-RequestId"

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 127
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v16, Lcom/amazonaws/ResponseMetadata;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Lcom/amazonaws/ResponseMetadata;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/amazonaws/AmazonWebServiceResponse;->setResponseMetadata(Lcom/amazonaws/ResponseMetadata;)V

    .line 131
    sget-object v16, Lcom/amazonaws/http/JsonResponseHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v17, "Done parsing service response"

    invoke-interface/range {v16 .. v17}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    move/from16 v16, v0

    if-nez v16, :cond_5

    .line 136
    :try_start_3
    invoke-interface {v10}, Lcom/amazonaws/util/json/AwsJsonReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 132
    :cond_5
    :goto_1
    return-object v3

    .line 137
    :catch_0
    move-exception v9

    .line 138
    .local v9, "e":Ljava/io/IOException;
    sget-object v16, Lcom/amazonaws/http/JsonResponseHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v17, "Error closing json parser"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v9}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 137
    .end local v3    # "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<TT;>;"
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "result":Ljava/lang/Object;, "TT;"
    .end local v13    # "unmarshallerContext":Lcom/amazonaws/transform/JsonUnmarshallerContext;
    :catch_1
    move-exception v9

    .line 138
    .restart local v9    # "e":Ljava/io/IOException;
    sget-object v17, Lcom/amazonaws/http/JsonResponseHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v18, "Error closing json parser"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v9}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<TT;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/http/JsonResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    move-result-object v0

    return-object v0
.end method

.method public needsConnectionLeftOpen()Z
    .locals 1

    .prologue
    .line 164
    .local p0, "this":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<TT;>;"
    iget-boolean v0, p0, Lcom/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    return v0
.end method

.method protected registerAdditionalMetadataExpressions(Lcom/amazonaws/transform/JsonUnmarshallerContext;)V
    .locals 0
    .param p1, "unmarshallerContext"    # Lcom/amazonaws/transform/JsonUnmarshallerContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<TT;>;"
    return-void
.end method
