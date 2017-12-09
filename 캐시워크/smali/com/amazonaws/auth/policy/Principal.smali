.class public Lcom/amazonaws/auth/policy/Principal;
.super Ljava/lang/Object;
.source "Principal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;,
        Lcom/amazonaws/auth/policy/Principal$Services;
    }
.end annotation


# static fields
.field public static final All:Lcom/amazonaws/auth/policy/Principal;

.field public static final AllServices:Lcom/amazonaws/auth/policy/Principal;

.field public static final AllUsers:Lcom/amazonaws/auth/policy/Principal;

.field public static final AllWebProviders:Lcom/amazonaws/auth/policy/Principal;


# instance fields
.field private final id:Ljava/lang/String;

.field private final provider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/amazonaws/auth/policy/Principal;

    const-string v1, "AWS"

    const-string v2, "*"

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal;->AllUsers:Lcom/amazonaws/auth/policy/Principal;

    .line 47
    new-instance v0, Lcom/amazonaws/auth/policy/Principal;

    const-string v1, "Service"

    const-string v2, "*"

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal;->AllServices:Lcom/amazonaws/auth/policy/Principal;

    .line 52
    new-instance v0, Lcom/amazonaws/auth/policy/Principal;

    const-string v1, "Federated"

    const-string v2, "*"

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal;->AllWebProviders:Lcom/amazonaws/auth/policy/Principal;

    .line 58
    new-instance v0, Lcom/amazonaws/auth/policy/Principal;

    const-string v1, "*"

    const-string v2, "*"

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal;->All:Lcom/amazonaws/auth/policy/Principal;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/policy/Principal$Services;)V
    .locals 2
    .param p1, "service"    # Lcom/amazonaws/auth/policy/Principal$Services;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null AWS service name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Principal$Services;->getServiceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Principal;->id:Ljava/lang/String;

    .line 75
    const-string v0, "Service"

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Principal;->provider:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;)V
    .locals 2
    .param p1, "webIdentityProvider"    # Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null web identity provider specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;->getWebIdentityProvider()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Principal;->id:Ljava/lang/String;

    .line 113
    const-string v0, "Federated"

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Principal;->provider:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null AWS account ID specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Principal;->id:Ljava/lang/String;

    .line 100
    const-string v0, "AWS"

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Principal;->provider:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Principal;->provider:Ljava/lang/String;

    .line 83
    const-string v0, "AWS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 86
    :cond_0
    iput-object p2, p0, Lcom/amazonaws/auth/policy/Principal;->id:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "principal"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 234
    if-ne p0, p1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v1

    .line 238
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 239
    goto :goto_0

    .line 242
    :cond_2
    instance-of v3, p1, Lcom/amazonaws/auth/policy/Principal;

    if-nez v3, :cond_3

    move v1, v2

    .line 243
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 246
    check-cast v0, Lcom/amazonaws/auth/policy/Principal;

    .line 248
    .local v0, "other":Lcom/amazonaws/auth/policy/Principal;
    invoke-virtual {p0}, Lcom/amazonaws/auth/policy/Principal;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Principal;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 249
    invoke-virtual {p0}, Lcom/amazonaws/auth/policy/Principal;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Principal;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    .line 253
    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Principal;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Principal;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 224
    const/16 v1, 0x1f

    .line 225
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 227
    .local v0, "hashCode":I
    iget-object v2, p0, Lcom/amazonaws/auth/policy/Principal;->provider:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit8 v0, v2, 0x1f

    .line 228
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/amazonaws/auth/policy/Principal;->id:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 229
    return v0
.end method
