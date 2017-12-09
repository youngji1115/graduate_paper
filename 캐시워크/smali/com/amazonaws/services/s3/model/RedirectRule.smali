.class public Lcom/amazonaws/services/s3/model/RedirectRule;
.super Ljava/lang/Object;
.source "RedirectRule.java"


# instance fields
.field private hostName:Ljava/lang/String;

.field private httpRedirectCode:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private replaceKeyPrefixWith:Ljava/lang/String;

.field private replaceKeyWith:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpRedirectCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->httpRedirectCode:Ljava/lang/String;

    return-object v0
.end method

.method public getReplaceKeyPrefixWith()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->replaceKeyPrefixWith:Ljava/lang/String;

    return-object v0
.end method

.method public getReplaceKeyWith()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->replaceKeyWith:Ljava/lang/String;

    return-object v0
.end method

.method public getprotocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public setHostName(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostName"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->hostName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setHttpRedirectCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "httpRedirectCode"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->httpRedirectCode:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->protocol:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setReplaceKeyPrefixWith(Ljava/lang/String;)V
    .locals 0
    .param p1, "replaceKeyPrefixWith"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->replaceKeyPrefixWith:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setReplaceKeyWith(Ljava/lang/String;)V
    .locals 0
    .param p1, "replaceKeyWith"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->replaceKeyWith:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public withHostName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RedirectRule;
    .locals 0
    .param p1, "hostName"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/RedirectRule;->setHostName(Ljava/lang/String;)V

    .line 82
    return-object p0
.end method

.method public withHttpRedirectCode(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RedirectRule;
    .locals 0
    .param p1, "httpRedirectCode"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->httpRedirectCode:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public withProtocol(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RedirectRule;
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/RedirectRule;->setProtocol(Ljava/lang/String;)V

    .line 59
    return-object p0
.end method

.method public withReplaceKeyPrefixWith(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RedirectRule;
    .locals 0
    .param p1, "replaceKeyPrefixWith"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/RedirectRule;->setReplaceKeyPrefixWith(Ljava/lang/String;)V

    .line 105
    return-object p0
.end method

.method public withReplaceKeyWith(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RedirectRule;
    .locals 0
    .param p1, "replaceKeyWith"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/RedirectRule;->setReplaceKeyWith(Ljava/lang/String;)V

    .line 128
    return-object p0
.end method
