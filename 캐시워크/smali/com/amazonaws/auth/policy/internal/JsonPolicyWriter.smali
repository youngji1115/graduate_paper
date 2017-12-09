.class public Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;
.super Ljava/lang/Object;
.source "JsonPolicyWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private jsonWriter:Lcom/amazonaws/util/json/AwsJsonWriter;

.field private final writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "com.amazonaws.auth.policy"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 58
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writer:Ljava/io/Writer;

    .line 59
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writer:Ljava/io/Writer;

    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->getJsonWriter(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 60
    return-void
.end method

.method private groupConditionsByTypeAndKey(Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Condition;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 306
    .local v2, "conditionsByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/policy/Condition;

    .line 307
    .local v0, "condition":Lcom/amazonaws/auth/policy/Condition;
    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Condition;->getType()Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Condition;->getConditionKey()Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 311
    new-instance v6, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;

    invoke-direct {v6}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;-><init>()V

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;

    .line 315
    .local v1, "conditionsByKey":Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;
    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Condition;->getValues()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;->addValuesToKey(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 317
    .end local v0    # "condition":Lcom/amazonaws/auth/policy/Condition;
    .end local v1    # "conditionsByKey":Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private groupPrincipalByScheme(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Principal;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "principals":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Principal;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 240
    .local v2, "principalsByScheme":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/policy/Principal;

    .line 241
    .local v0, "principal":Lcom/amazonaws/auth/policy/Principal;
    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Principal;->getProvider()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "provider":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 243
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 246
    .local v1, "principalValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Principal;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    .end local v0    # "principal":Lcom/amazonaws/auth/policy/Principal;
    .end local v1    # "principalValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "provider":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private isNotNull(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 391
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jsonStringOf(Lcom/amazonaws/auth/policy/Policy;)Ljava/lang/String;
    .locals 8
    .param p1, "policy"    # Lcom/amazonaws/auth/policy/Policy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v5, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v5}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 99
    const-string v5, "Version"

    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Policy;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Policy;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->isNotNull(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    const-string v5, "Id"

    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Policy;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    const-string v5, "Statement"

    invoke-direct {p0, v5}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonArrayStart(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Policy;->getStatements()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/auth/policy/Statement;

    .line 107
    .local v4, "statement":Lcom/amazonaws/auth/policy/Statement;
    iget-object v6, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 109
    invoke-virtual {v4}, Lcom/amazonaws/auth/policy/Statement;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->isNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 110
    const-string v6, "Sid"

    invoke-virtual {v4}, Lcom/amazonaws/auth/policy/Statement;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_1
    const-string v6, "Effect"

    .line 113
    invoke-virtual {v4}, Lcom/amazonaws/auth/policy/Statement;->getEffect()Lcom/amazonaws/auth/policy/Statement$Effect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazonaws/auth/policy/Statement$Effect;->toString()Ljava/lang/String;

    move-result-object v7

    .line 112
    invoke-direct {p0, v6, v7}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v4}, Lcom/amazonaws/auth/policy/Statement;->getPrincipals()Ljava/util/List;

    move-result-object v2

    .line 116
    .local v2, "principals":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Principal;>;"
    invoke-direct {p0, v2}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->isNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 117
    invoke-direct {p0, v2}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writePrincipals(Ljava/util/List;)V

    .line 119
    :cond_2
    invoke-virtual {v4}, Lcom/amazonaws/auth/policy/Statement;->getActions()Ljava/util/List;

    move-result-object v0

    .line 120
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Action;>;"
    invoke-direct {p0, v0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->isNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 121
    invoke-direct {p0, v0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeActions(Ljava/util/List;)V

    .line 123
    :cond_3
    invoke-virtual {v4}, Lcom/amazonaws/auth/policy/Statement;->getResources()Ljava/util/List;

    move-result-object v3

    .line 124
    .local v3, "resources":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Resource;>;"
    invoke-direct {p0, v3}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->isNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 125
    invoke-direct {p0, v3}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeResources(Ljava/util/List;)V

    .line 127
    :cond_4
    invoke-virtual {v4}, Lcom/amazonaws/auth/policy/Statement;->getConditions()Ljava/util/List;

    move-result-object v1

    .line 128
    .local v1, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Condition;>;"
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->isNotNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 129
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeConditions(Ljava/util/List;)V

    .line 131
    :cond_5
    iget-object v6, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v6}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    goto/16 :goto_0

    .line 134
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Action;>;"
    .end local v1    # "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Condition;>;"
    .end local v2    # "principals":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Principal;>;"
    .end local v3    # "resources":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Resource;>;"
    .end local v4    # "statement":Lcom/amazonaws/auth/policy/Statement;
    :cond_6
    invoke-direct {p0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonArrayEnd()V

    .line 136
    iget-object v5, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v5}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 138
    iget-object v5, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v5}, Lcom/amazonaws/util/json/AwsJsonWriter;->flush()V

    .line 140
    iget-object v5, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private writeActions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Action;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Action;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v1, "actionStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/policy/Action;

    .line 194
    .local v0, "action":Lcom/amazonaws/auth/policy/Action;
    invoke-interface {v0}, Lcom/amazonaws/auth/policy/Action;->getActionName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    .end local v0    # "action":Lcom/amazonaws/auth/policy/Action;
    :cond_0
    const-string v2, "Action"

    invoke-direct {p0, v2, v1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonArray(Ljava/lang/String;Ljava/util/List;)V

    .line 197
    return-void
.end method

.method private writeConditions(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Condition;>;"
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->groupConditionsByTypeAndKey(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 152
    .local v1, "conditionsByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;>;"
    const-string v4, "Condition"

    invoke-direct {p0, v4}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonObjectStart(Ljava/lang/String;)V

    .line 156
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 155
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 157
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;

    .line 159
    .local v0, "conditionsByKey":Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonObjectStart(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 161
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;->getConditionsByKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonArray(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 163
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonObjectEnd()V

    goto :goto_0

    .line 165
    .end local v0    # "conditionsByKey":Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey;>;"
    :cond_1
    invoke-direct {p0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonObjectEnd()V

    .line 166
    return-void
.end method

.method private writeJsonArray(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "arrayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonArrayStart(Ljava/lang/String;)V

    .line 329
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    .local v0, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_0

    .line 331
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonArrayEnd()V

    .line 332
    return-void
.end method

.method private writeJsonArrayEnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 370
    return-void
.end method

.method private writeJsonArrayStart(Ljava/lang/String;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 362
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 363
    return-void
.end method

.method private writeJsonKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 381
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0, p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 382
    return-void
.end method

.method private writeJsonObjectEnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 351
    return-void
.end method

.method private writeJsonObjectStart(Ljava/lang/String;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 343
    iget-object v0, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonWriter:Lcom/amazonaws/util/json/AwsJsonWriter;

    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 344
    return-void
.end method

.method private writePrincipals(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Principal;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "principals":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Principal;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 206
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/auth/policy/Principal;

    sget-object v4, Lcom/amazonaws/auth/policy/Principal;->All:Lcom/amazonaws/auth/policy/Principal;

    invoke-virtual {v3, v4}, Lcom/amazonaws/auth/policy/Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    const-string v3, "Principal"

    sget-object v4, Lcom/amazonaws/auth/policy/Principal;->All:Lcom/amazonaws/auth/policy/Principal;

    invoke-virtual {v4}, Lcom/amazonaws/auth/policy/Principal;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_0
    return-void

    .line 209
    :cond_0
    const-string v3, "Principal"

    invoke-direct {p0, v3}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonObjectStart(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->groupPrincipalByScheme(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 214
    .local v2, "principalsByScheme":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 215
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 217
    .local v1, "principalValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 218
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 220
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonArray(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 224
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "principalValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-direct {p0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonObjectEnd()V

    goto :goto_0
.end method

.method private writeResources(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Resource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "resources":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Resource;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v1, "resourceStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/policy/Resource;

    .line 179
    .local v0, "resource":Lcom/amazonaws/auth/policy/Resource;
    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Resource;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    .end local v0    # "resource":Lcom/amazonaws/auth/policy/Resource;
    :cond_0
    const-string v2, "Resource"

    invoke-direct {p0, v2, v1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeJsonArray(Ljava/lang/String;Ljava/util/List;)V

    .line 182
    return-void
.end method


# virtual methods
.method public writePolicyToString(Lcom/amazonaws/auth/policy/Policy;)Ljava/lang/String;
    .locals 4
    .param p1, "policy"    # Lcom/amazonaws/auth/policy/Policy;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->isNotNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Policy cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->jsonStringOf(Lcom/amazonaws/auth/policy/Policy;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 84
    :try_start_1
    iget-object v3, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 77
    :goto_0
    return-object v2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to serialize policy to JSON string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "message":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 84
    :try_start_3
    iget-object v3, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 86
    :goto_1
    throw v2

    .line 85
    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_0
.end method
