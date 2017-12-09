.class public Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
.super Ljava/lang/Object;
.source "BucketNotificationConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;
    }
.end annotation


# instance fields
.field private topicConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->topicConfigurations:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->topicConfigurations:Ljava/util/List;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "topicConfigurations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->topicConfigurations:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->topicConfigurations:Ljava/util/List;

    .line 93
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->topicConfigurations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    return-void
.end method


# virtual methods
.method public getTopicConfigurations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->topicConfigurations:Ljava/util/List;

    return-object v0
.end method

.method public setTopicConfigurations(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "topicConfigurations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;>;"
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->topicConfigurations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 137
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->topicConfigurations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TopicConfigurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->getTopicConfigurations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public varargs withTopicConfigurations([Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;)Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
    .locals 3
    .param p1, "topicConfigurations"    # [Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;

    .prologue
    .line 114
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->topicConfigurations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 116
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->topicConfigurations:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-object p0
.end method
