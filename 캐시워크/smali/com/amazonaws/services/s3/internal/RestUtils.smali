.class public Lcom/amazonaws/services/s3/internal/RestUtils;
.super Ljava/lang/Object;
.source "RestUtils.java"


# static fields
.field private static final SIGNED_PARAMETERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "acl"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "torrent"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "logging"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "policy"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "requestPayment"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "versioning"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "versions"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "versionId"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "notification"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "uploadId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "uploads"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "partNumber"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "website"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "delete"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "lifecycle"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "tagging"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "cors"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "restore"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "accelerate"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "response-cache-control"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "response-content-disposition"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "response-content-encoding"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "response-content-language"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "response-content-type"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "response-expires"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/RestUtils;->SIGNED_PARAMETERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeS3CanonicalString(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "resource"    # Ljava/lang/String;
    .param p3, "expires"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/Request",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v1, "buf":Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v4

    .line 66
    .local v4, "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 67
    .local v6, "interestingHeaders":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v15

    if-lez v15, :cond_2

    .line 68
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 69
    .local v3, "headerIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 70
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 71
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 72
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 74
    .local v14, "value":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 76
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/amazonaws/util/StringUtils;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, "lk":Ljava/lang/String;
    const-string v15, "content-type"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, "content-md5"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, "date"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string/jumbo v15, "x-amz-"

    .line 80
    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 82
    :cond_1
    invoke-interface {v6, v8, v14}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "headerIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "lk":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_2
    const-string/jumbo v15, "x-amz-date"

    invoke-interface {v6, v15}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 89
    const-string v15, "date"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_3
    if-eqz p3, :cond_4

    .line 96
    const-string v15, "date"

    move-object/from16 v0, p3

    invoke-interface {v6, v15, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_4
    const-string v15, "content-type"

    invoke-interface {v6, v15}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 102
    const-string v15, "content-type"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_5
    const-string v15, "content-md5"

    invoke-interface {v6, v15}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 105
    const-string v15, "content-md5"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_6
    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_7
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 111
    .local v9, "parameter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string/jumbo v17, "x-amz-"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 112
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v6, v15, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 117
    .end local v9    # "parameter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    invoke-interface {v6}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 118
    .local v5, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 119
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 120
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 121
    .restart local v7    # "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 123
    .restart local v14    # "value":Ljava/lang/String;
    const-string/jumbo v15, "x-amz-"

    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 124
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x3a

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    if-eqz v14, :cond_9

    .line 126
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_9
    :goto_3
    const-string v15, "\n"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 128
    :cond_a
    if-eqz v14, :cond_9

    .line 129
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 135
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    .line 137
    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 136
    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 138
    .local v11, "parameterNames":[Ljava/lang/String;
    invoke-static {v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 139
    const/16 v13, 0x3f

    .line 140
    .local v13, "separator":C
    array-length v0, v11

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v15, v0, :cond_e

    aget-object v10, v11, v15

    .line 143
    .local v10, "parameterName":Ljava/lang/String;
    sget-object v17, Lcom/amazonaws/services/s3/internal/RestUtils;->SIGNED_PARAMETERS:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 140
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 146
    :cond_c
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 149
    .local v12, "parameterValue":Ljava/lang/String;
    if-eqz v12, :cond_d

    .line 150
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_d
    const/16 v13, 0x26

    goto :goto_5

    .line 156
    .end local v10    # "parameterName":Ljava/lang/String;
    .end local v12    # "parameterValue":Ljava/lang/String;
    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    return-object v15
.end method
