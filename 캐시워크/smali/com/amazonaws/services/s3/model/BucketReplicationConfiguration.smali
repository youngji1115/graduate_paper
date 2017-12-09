.class public Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
.super Ljava/lang/Object;
.source "BucketReplicationConfiguration.java"


# instance fields
.field private roleARN:Ljava/lang/String;

.field private rules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/ReplicationRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->rules:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addRule(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ReplicationRule;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "rule"    # Lcom/amazonaws/services/s3/model/ReplicationRule;

    .prologue
    .line 118
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rule id cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    if-nez p2, :cond_2

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Replication rule cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->rules:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-object p0
.end method

.method public getRoleARN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->roleARN:Ljava/lang/String;

    return-object v0
.end method

.method public getRule(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ReplicationRule;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->rules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/ReplicationRule;

    return-object v0
.end method

.method public getRules()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/ReplicationRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->rules:Ljava/util/Map;

    return-object v0
.end method

.method public removeRule(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->rules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-object p0
.end method

.method public setRoleARN(Ljava/lang/String;)V
    .locals 0
    .param p1, "roleARN"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->roleARN:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setRules(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/ReplicationRule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "rules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/s3/model/ReplicationRule;>;"
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Replication rules cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->rules:Ljava/util/Map;

    .line 91
    return-void
.end method

.method public withRoleARN(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
    .locals 0
    .param p1, "roleARN"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->setRoleARN(Ljava/lang/String;)V

    .line 56
    return-object p0
.end method

.method public withRules(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/ReplicationRule;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "rules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/s3/model/ReplicationRule;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->setRules(Ljava/util/Map;)V

    .line 104
    return-object p0
.end method
