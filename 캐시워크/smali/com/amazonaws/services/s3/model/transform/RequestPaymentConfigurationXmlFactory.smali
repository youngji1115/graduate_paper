.class public Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;
.super Ljava/lang/Object;
.source "RequestPaymentConfigurationXmlFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;)[B
    .locals 6
    .param p1, "requestPaymentConfiguration"    # Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;

    .prologue
    .line 40
    new-instance v2, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    .line 41
    .local v2, "xml":Lcom/amazonaws/services/s3/internal/XmlWriter;
    const-string v3, "RequestPaymentConfiguration"

    const-string/jumbo v4, "xmlns"

    const-string v5, "http://s3.amazonaws.com/doc/2006-03-01/"

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 44
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;->getPayer()Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    move-result-object v0

    .line 45
    .local v0, "payer":Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;
    if-eqz v0, :cond_0

    .line 46
    const-string v3, "Payer"

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    .line 47
    .local v1, "payerDocumentElement":Lcom/amazonaws/services/s3/internal/XmlWriter;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 48
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 50
    .end local v1    # "payerDocumentElement":Lcom/amazonaws/services/s3/internal/XmlWriter;
    :cond_0
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 51
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object v3

    return-object v3
.end method
