.class public Lcom/amazonaws/internal/config/SignerConfig;
.super Ljava/lang/Object;
.source "SignerConfig.java"


# instance fields
.field private final signerType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazonaws/internal/config/SignerConfig;)V
    .locals 1
    .param p1, "from"    # Lcom/amazonaws/internal/config/SignerConfig;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/internal/config/SignerConfig;->getSignerType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/internal/config/SignerConfig;->signerType:Ljava/lang/String;

    .line 31
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "signerType"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazonaws/internal/config/SignerConfig;->signerType:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getSignerType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazonaws/internal/config/SignerConfig;->signerType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazonaws/internal/config/SignerConfig;->signerType:Ljava/lang/String;

    return-object v0
.end method
