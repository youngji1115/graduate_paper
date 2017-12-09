.class public Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
.super Ljava/lang/Object;
.source "BucketWebsiteConfiguration.java"


# instance fields
.field private errorDocument:Ljava/lang/String;

.field private indexDocumentSuffix:Ljava/lang/String;

.field private redirectAllRequestsTo:Lcom/amazonaws/services/s3/model/RedirectRule;

.field private routingRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/RoutingRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->routingRules:Ljava/util/List;

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "indexDocumentSuffix"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->routingRules:Ljava/util/List;

    .line 106
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->indexDocumentSuffix:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "indexDocumentSuffix"    # Ljava/lang/String;
    .param p2, "errorDocument"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->routingRules:Ljava/util/List;

    .line 120
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->indexDocumentSuffix:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->errorDocument:Ljava/lang/String;

    .line 122
    return-void
.end method


# virtual methods
.method public getErrorDocument()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->errorDocument:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexDocumentSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->indexDocumentSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectAllRequestsTo()Lcom/amazonaws/services/s3/model/RedirectRule;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->redirectAllRequestsTo:Lcom/amazonaws/services/s3/model/RedirectRule;

    return-object v0
.end method

.method public getRoutingRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/RoutingRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->routingRules:Ljava/util/List;

    return-object v0
.end method

.method public setErrorDocument(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorDocument"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->errorDocument:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setIndexDocumentSuffix(Ljava/lang/String;)V
    .locals 0
    .param p1, "indexDocumentSuffix"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->indexDocumentSuffix:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setRedirectAllRequestsTo(Lcom/amazonaws/services/s3/model/RedirectRule;)V
    .locals 0
    .param p1, "redirectAllRequestsTo"    # Lcom/amazonaws/services/s3/model/RedirectRule;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->redirectAllRequestsTo:Lcom/amazonaws/services/s3/model/RedirectRule;

    .line 176
    return-void
.end method

.method public setRoutingRules(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/RoutingRule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "routingRules":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/RoutingRule;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->routingRules:Ljava/util/List;

    .line 209
    return-void
.end method

.method public withRedirectAllRequestsTo(Lcom/amazonaws/services/s3/model/RedirectRule;)Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    .locals 0
    .param p1, "redirectAllRequestsTo"    # Lcom/amazonaws/services/s3/model/RedirectRule;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->redirectAllRequestsTo:Lcom/amazonaws/services/s3/model/RedirectRule;

    .line 197
    return-object p0
.end method

.method public withRoutingRules(Ljava/util/List;)Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/RoutingRule;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "routingRules":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/RoutingRule;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->routingRules:Ljava/util/List;

    .line 231
    return-object p0
.end method
