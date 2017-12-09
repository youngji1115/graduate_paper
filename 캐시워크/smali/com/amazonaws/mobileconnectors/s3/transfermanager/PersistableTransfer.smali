.class public abstract Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;
.super Ljava/lang/Object;
.source "PersistableTransfer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserializeFrom(Ljava/io/InputStream;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;
    .locals 25
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 69
    const/16 v24, 0x0

    .line 70
    .local v24, "type":Ljava/lang/String;
    const/4 v3, 0x0

    .line 71
    .local v3, "bucketName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 72
    .local v4, "key":Ljava/lang/String;
    const/4 v9, 0x0

    .line 74
    .local v9, "file":Ljava/lang/String;
    const/4 v15, 0x0

    .line 75
    .local v15, "multipartUploadId":Ljava/lang/String;
    const-wide/16 v16, -0x1

    .line 76
    .local v16, "partSize":J
    const-wide/16 v18, -0x1

    .line 78
    .local v18, "mutlipartUploadThreshold":J
    const/4 v5, 0x0

    .line 79
    .local v5, "versionId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 80
    .local v6, "range":[J
    const/4 v7, 0x0

    .line 81
    .local v7, "responseHeaders":Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    const/4 v8, 0x0

    .line 83
    .local v8, "isRequesterPays":Z
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    sget-object v12, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 84
    invoke-static {v2}, Lcom/amazonaws/util/json/JsonUtils;->getJsonReader(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v22

    .line 87
    .local v22, "reader":Lcom/amazonaws/util/json/AwsJsonReader;
    :try_start_0
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 88
    :goto_0
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 89
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v21

    .line 90
    .local v21, "name":Ljava/lang/String;
    const-string v2, "pauseType"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v24

    goto :goto_0

    .line 92
    :cond_0
    const-string v2, "bucketName"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 94
    :cond_1
    const-string v2, "key"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 96
    :cond_2
    const-string v2, "file"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 100
    :cond_3
    const-string v2, "multipartUploadId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 102
    :cond_4
    const-string v2, "partSize"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 103
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    goto :goto_0

    .line 104
    :cond_5
    const-string v2, "mutlipartUploadThreshold"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 105
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    goto :goto_0

    .line 108
    :cond_6
    const-string/jumbo v2, "versionId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 109
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 110
    :cond_7
    const-string v2, "range"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 111
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->beginArray()V

    .line 112
    const/4 v2, 0x2

    new-array v6, v2, [J

    .line 113
    const/4 v2, 0x0

    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    aput-wide v12, v6, v2

    .line 114
    const/4 v2, 0x1

    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    aput-wide v12, v6, v2

    .line 115
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->endArray()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 145
    .end local v21    # "name":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 146
    .local v10, "e":Ljava/io/IOException;
    :goto_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 116
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v21    # "name":Ljava/lang/String;
    :cond_8
    :try_start_1
    const-string v2, "responseHeaders"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 117
    new-instance v23, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    invoke-direct/range {v23 .. v23}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    .end local v7    # "responseHeaders":Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .local v23, "responseHeaders":Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    :try_start_2
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 119
    :goto_2
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 120
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v20

    .line 121
    .local v20, "n":Ljava/lang/String;
    const-string v2, "contentType"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 122
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setContentType(Ljava/lang/String;)V

    goto :goto_2

    .line 145
    .end local v20    # "n":Ljava/lang/String;
    :catch_1
    move-exception v10

    move-object/from16 v7, v23

    .end local v23    # "responseHeaders":Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .restart local v7    # "responseHeaders":Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    goto :goto_1

    .line 123
    .end local v7    # "responseHeaders":Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .restart local v20    # "n":Ljava/lang/String;
    .restart local v23    # "responseHeaders":Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    :cond_9
    const-string v2, "contentLanguage"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 124
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setContentLanguage(Ljava/lang/String;)V

    goto :goto_2

    .line 125
    :cond_a
    const-string v2, "expires"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 126
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setExpires(Ljava/lang/String;)V

    goto :goto_2

    .line 127
    :cond_b
    const-string v2, "cacheControl"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 128
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setCacheControl(Ljava/lang/String;)V

    goto :goto_2

    .line 129
    :cond_c
    const-string v2, "contentDisposition"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 130
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setContentDisposition(Ljava/lang/String;)V

    goto :goto_2

    .line 131
    :cond_d
    const-string v2, "contentEncoding"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 132
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->setContentEncoding(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 134
    :cond_e
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    goto/16 :goto_2

    .line 137
    .end local v20    # "n":Ljava/lang/String;
    :cond_f
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->endObject()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v7, v23

    .end local v23    # "responseHeaders":Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .restart local v7    # "responseHeaders":Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    goto/16 :goto_0

    .line 138
    :cond_10
    :try_start_3
    const-string v2, "isRequesterPays"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 139
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_0

    .line 141
    :cond_11
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    goto/16 :goto_0

    .line 144
    .end local v21    # "name":Ljava/lang/String;
    :cond_12
    invoke-interface/range {v22 .. v22}, Lcom/amazonaws/util/json/AwsJsonReader;->endObject()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 149
    const-string v2, "download"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 150
    new-instance v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;

    invoke-direct/range {v2 .. v9}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[JLcom/amazonaws/services/s3/model/ResponseHeaderOverrides;ZLjava/lang/String;)V

    .line 153
    :goto_3
    return-object v2

    .line 152
    :cond_13
    const-string/jumbo v2, "upload"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 153
    new-instance v11, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;

    move-object v12, v3

    move-object v13, v4

    move-object v14, v9

    invoke-direct/range {v11 .. v19}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    move-object v2, v11

    goto :goto_3

    .line 156
    :cond_14
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported paused transfer type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static deserializeFrom(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;
    .locals 3
    .param p0, "serialized"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 171
    if-nez p0, :cond_0

    .line 172
    const/4 v1, 0x0

    .line 176
    :goto_0
    return-object v1

    .line 173
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    .line 174
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 176
    .local v0, "byteStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;->deserializeFrom(Ljava/io/InputStream;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 179
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v2

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v1

    .line 179
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 181
    :goto_1
    throw v1

    .line 180
    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public abstract serialize()Ljava/lang/String;
.end method

.method public final serialize(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;->serialize()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 55
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 56
    return-void
.end method
