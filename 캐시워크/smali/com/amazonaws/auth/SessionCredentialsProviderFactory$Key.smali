.class final Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;
.super Ljava/lang/Object;
.source "SessionCredentialsProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/auth/SessionCredentialsProviderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Key"
.end annotation


# instance fields
.field private final awsAccessKeyId:Ljava/lang/String;

.field private final serviceEndpoint:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "awsAccessKeyId"    # Ljava/lang/String;
    .param p2, "serviceEndpoint"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->awsAccessKeyId:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->serviceEndpoint:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    if-ne p0, p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 57
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 60
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 61
    check-cast v0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;

    .line 62
    .local v0, "other":Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;
    iget-object v3, p0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->awsAccessKeyId:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 63
    iget-object v3, v0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->awsAccessKeyId:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 64
    goto :goto_0

    .line 65
    :cond_4
    iget-object v3, p0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->awsAccessKeyId:Ljava/lang/String;

    iget-object v4, v0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->awsAccessKeyId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 66
    goto :goto_0

    .line 67
    :cond_5
    iget-object v3, p0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->serviceEndpoint:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 68
    iget-object v3, v0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->serviceEndpoint:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 69
    goto :goto_0

    .line 70
    :cond_6
    iget-object v3, p0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->serviceEndpoint:Ljava/lang/String;

    iget-object v4, v0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->serviceEndpoint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 71
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 46
    const/16 v0, 0x1f

    .line 47
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 48
    .local v1, "result":I
    iget-object v2, p0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->awsAccessKeyId:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 49
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->serviceEndpoint:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 50
    return v1

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->awsAccessKeyId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 49
    :cond_1
    iget-object v3, p0, Lcom/amazonaws/auth/SessionCredentialsProviderFactory$Key;->serviceEndpoint:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method
