.class public Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;
.super Ljava/lang/Object;
.source "JsonPolicyReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;
    }
.end annotation


# static fields
.field private static final PRINCIPAL_SCHEMA_SERVICE:Ljava/lang/String; = "Service"

.field private static final PRINCIPAL_SCHEMA_USER:Ljava/lang/String; = "AWS"

.field private static final PRINICIPAL_SCHEMA_FEDERATED:Ljava/lang/String; = "Federated"


# instance fields
.field private reader:Lcom/amazonaws/util/json/AwsJsonReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private actionsOf(Lcom/amazonaws/util/json/AwsJsonReader;)Ljava/util/List;
    .locals 3
    .param p1, "reader"    # Lcom/amazonaws/util/json/AwsJsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/util/json/AwsJsonReader;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Action;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 157
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Action;>;"
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->isContainer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->beginArray()V

    .line 159
    :goto_0
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    new-instance v1, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;

    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_0
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->endArray()V

    .line 167
    :goto_1
    return-object v0

    .line 164
    :cond_1
    new-instance v1, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;

    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private conditionsOf(Lcom/amazonaws/util/json/AwsJsonReader;)Ljava/util/List;
    .locals 2
    .param p1, "reader"    # Lcom/amazonaws/util/json/AwsJsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/util/json/AwsJsonReader;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 266
    .local v0, "conditionList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Condition;>;"
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 267
    :goto_0
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->convertConditionRecord(Ljava/util/List;Ljava/lang/String;Lcom/amazonaws/util/json/AwsJsonReader;)V

    goto :goto_0

    .line 270
    :cond_0
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->endObject()V

    .line 272
    return-object v0
.end method

.method private convertConditionRecord(Ljava/util/List;Ljava/lang/String;Lcom/amazonaws/util/json/AwsJsonReader;)V
    .locals 3
    .param p2, "conditionType"    # Ljava/lang/String;
    .param p3, "reader"    # Lcom/amazonaws/util/json/AwsJsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/util/json/AwsJsonReader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Condition;>;"
    invoke-interface {p3}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 288
    :goto_0
    invoke-interface {p3}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    invoke-interface {p3}, Lcom/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 291
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Lcom/amazonaws/util/json/AwsJsonReader;->isContainer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    invoke-interface {p3}, Lcom/amazonaws/util/json/AwsJsonReader;->beginArray()V

    .line 293
    :goto_1
    invoke-interface {p3}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    invoke-interface {p3}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 296
    :cond_0
    invoke-interface {p3}, Lcom/amazonaws/util/json/AwsJsonReader;->endArray()V

    .line 300
    :goto_2
    new-instance v2, Lcom/amazonaws/auth/policy/Condition;

    invoke-direct {v2}, Lcom/amazonaws/auth/policy/Condition;-><init>()V

    invoke-virtual {v2, p2}, Lcom/amazonaws/auth/policy/Condition;->withType(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amazonaws/auth/policy/Condition;->withConditionKey(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;

    move-result-object v2

    .line 301
    invoke-virtual {v2, v1}, Lcom/amazonaws/auth/policy/Condition;->withValues(Ljava/util/List;)Lcom/amazonaws/auth/policy/Condition;

    move-result-object v2

    .line 300
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    :cond_1
    invoke-interface {p3}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 303
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {p3}, Lcom/amazonaws/util/json/AwsJsonReader;->endObject()V

    .line 304
    return-void
.end method

.method private createPrincipal(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal;
    .locals 3
    .param p1, "schema"    # Ljava/lang/String;
    .param p2, "principal"    # Ljava/lang/String;

    .prologue
    .line 239
    const-string v0, "AWS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Lcom/amazonaws/auth/policy/Principal;

    invoke-direct {v0, p2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;)V

    .line 248
    :goto_0
    return-object v0

    .line 241
    :cond_0
    const-string v0, "Service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    new-instance v0, Lcom/amazonaws/auth/policy/Principal;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_1
    const-string v0, "Federated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    invoke-static {p2}, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;->fromString(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 245
    new-instance v0, Lcom/amazonaws/auth/policy/Principal;

    .line 246
    invoke-static {p2}, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;->fromString(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/auth/policy/Principal;-><init>(Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;)V

    goto :goto_0

    .line 248
    :cond_2
    new-instance v0, Lcom/amazonaws/auth/policy/Principal;

    const-string v1, "Federated"

    invoke-direct {v0, v1, p2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_3
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Schema "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid value for the principal."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private principalOf(Lcom/amazonaws/util/json/AwsJsonReader;)Ljava/util/List;
    .locals 6
    .param p1, "reader"    # Lcom/amazonaws/util/json/AwsJsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/util/json/AwsJsonReader;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Principal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 202
    .local v0, "principals":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Principal;>;"
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->isContainer()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 203
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 205
    :goto_0
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "schema":Ljava/lang/String;
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->isContainer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->beginArray()V

    .line 209
    :goto_1
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->createPrincipal(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 212
    :cond_0
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->endArray()V

    goto :goto_0

    .line 214
    :cond_1
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->createPrincipal(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    .end local v2    # "schema":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->endObject()V

    .line 227
    :goto_2
    return-object v0

    .line 219
    :cond_3
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "s":Ljava/lang/String;
    const-string v3, "*"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 221
    sget-object v3, Lcom/amazonaws/auth/policy/Principal;->All:Lcom/amazonaws/auth/policy/Principal;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 223
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid principals: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private resourcesOf(Lcom/amazonaws/util/json/AwsJsonReader;)Ljava/util/List;
    .locals 3
    .param p1, "reader"    # Lcom/amazonaws/util/json/AwsJsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/util/json/AwsJsonReader;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Resource;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 179
    .local v0, "resources":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Resource;>;"
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->isContainer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->beginArray()V

    .line 181
    :goto_0
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    new-instance v1, Lcom/amazonaws/auth/policy/Resource;

    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/auth/policy/Resource;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_0
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->endArray()V

    .line 189
    :goto_1
    return-object v0

    .line 186
    :cond_1
    new-instance v1, Lcom/amazonaws/auth/policy/Resource;

    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/auth/policy/Resource;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private statementOf(Lcom/amazonaws/util/json/AwsJsonReader;)Lcom/amazonaws/auth/policy/Statement;
    .locals 4
    .param p1, "reader"    # Lcom/amazonaws/util/json/AwsJsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 121
    new-instance v1, Lcom/amazonaws/auth/policy/Statement;

    invoke-direct {v1, v2}, Lcom/amazonaws/auth/policy/Statement;-><init>(Lcom/amazonaws/auth/policy/Statement$Effect;)V

    .line 123
    .local v1, "statement":Lcom/amazonaws/auth/policy/Statement;
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 124
    :goto_0
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 125
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "name":Ljava/lang/String;
    const-string v3, "Effect"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/auth/policy/Statement$Effect;->valueOf(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Statement$Effect;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/auth/policy/Statement;->setEffect(Lcom/amazonaws/auth/policy/Statement$Effect;)V

    goto :goto_0

    .line 128
    :cond_0
    const-string v3, "Sid"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/auth/policy/Statement;->setId(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_1
    const-string v3, "Action"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->actionsOf(Lcom/amazonaws/util/json/AwsJsonReader;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/auth/policy/Statement;->setActions(Ljava/util/Collection;)V

    goto :goto_0

    .line 132
    :cond_2
    const-string v3, "Resource"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 133
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->resourcesOf(Lcom/amazonaws/util/json/AwsJsonReader;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/auth/policy/Statement;->setResources(Ljava/util/Collection;)V

    goto :goto_0

    .line 134
    :cond_3
    const-string v3, "Principal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 135
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->principalOf(Lcom/amazonaws/util/json/AwsJsonReader;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/auth/policy/Statement;->setPrincipals(Ljava/util/Collection;)V

    goto :goto_0

    .line 136
    :cond_4
    const-string v3, "Condition"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 137
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->conditionsOf(Lcom/amazonaws/util/json/AwsJsonReader;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/auth/policy/Statement;->setConditions(Ljava/util/List;)V

    goto :goto_0

    .line 139
    :cond_5
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 142
    .end local v0    # "name":Ljava/lang/String;
    :cond_6
    invoke-interface {p1}, Lcom/amazonaws/util/json/AwsJsonReader;->endObject()V

    .line 144
    invoke-virtual {v1}, Lcom/amazonaws/auth/policy/Statement;->getEffect()Lcom/amazonaws/auth/policy/Statement$Effect;

    move-result-object v3

    if-nez v3, :cond_7

    move-object v1, v2

    .end local v1    # "statement":Lcom/amazonaws/auth/policy/Statement;
    :cond_7
    return-object v1
.end method


# virtual methods
.method public createPolicyFromJsonString(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Policy;
    .locals 7
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "JSON string cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 65
    :cond_0
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/amazonaws/util/json/JsonUtils;->getJsonReader(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v5

    iput-object v5, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->reader:Lcom/amazonaws/util/json/AwsJsonReader;

    .line 66
    new-instance v3, Lcom/amazonaws/auth/policy/Policy;

    invoke-direct {v3}, Lcom/amazonaws/auth/policy/Policy;-><init>()V

    .line 67
    .local v3, "policy":Lcom/amazonaws/auth/policy/Policy;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 70
    .local v4, "statements":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Statement;>;"
    :try_start_0
    iget-object v5, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->reader:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-interface {v5}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 71
    :goto_0
    iget-object v5, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->reader:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-interface {v5}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 72
    iget-object v5, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->reader:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-interface {v5}, Lcom/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "name":Ljava/lang/String;
    const-string v5, "Id"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 74
    iget-object v5, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->reader:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-interface {v5}, Lcom/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amazonaws/auth/policy/Policy;->setId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 87
    .end local v2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to generate policy object fron JSON string "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "message":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "message":Ljava/lang/String;
    :catchall_0
    move-exception v5

    .line 93
    :try_start_2
    iget-object v6, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->reader:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-interface {v6}, Lcom/amazonaws/util/json/AwsJsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 95
    :goto_1
    throw v5

    .line 75
    .restart local v2    # "name":Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v5, "Statement"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 76
    iget-object v5, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->reader:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-interface {v5}, Lcom/amazonaws/util/json/AwsJsonReader;->beginArray()V

    .line 77
    :goto_2
    iget-object v5, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->reader:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-interface {v5}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 78
    iget-object v5, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->reader:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-direct {p0, v5}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->statementOf(Lcom/amazonaws/util/json/AwsJsonReader;)Lcom/amazonaws/auth/policy/Statement;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 80
    :cond_2
    iget-object v5, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->reader:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-interface {v5}, Lcom/amazonaws/util/json/AwsJsonReader;->endArray()V

    goto :goto_0

    .line 82
    :cond_3
    iget-object v5, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->reader:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-interface {v5}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 85
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->reader:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-interface {v5}, Lcom/amazonaws/util/json/AwsJsonReader;->endObject()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    :try_start_4
    iget-object v5, p0, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->reader:Lcom/amazonaws/util/json/AwsJsonReader;

    invoke-interface {v5}, Lcom/amazonaws/util/json/AwsJsonReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 97
    :goto_3
    invoke-virtual {v3, v4}, Lcom/amazonaws/auth/policy/Policy;->setStatements(Ljava/util/Collection;)V

    .line 98
    return-object v3

    .line 94
    :catch_1
    move-exception v6

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_3
.end method
