.class public Lcom/amazonaws/auth/BasicSessionCredentials;
.super Ljava/lang/Object;
.source "BasicSessionCredentials.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSSessionCredentials;


# instance fields
.field private final awsAccessKey:Ljava/lang/String;

.field private final awsSecretKey:Ljava/lang/String;

.field private final sessionToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "awsAccessKey"    # Ljava/lang/String;
    .param p2, "awsSecretKey"    # Ljava/lang/String;
    .param p3, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazonaws/auth/BasicSessionCredentials;->awsAccessKey:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/amazonaws/auth/BasicSessionCredentials;->awsSecretKey:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/amazonaws/auth/BasicSessionCredentials;->sessionToken:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getAWSAccessKeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazonaws/auth/BasicSessionCredentials;->awsAccessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAWSSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazonaws/auth/BasicSessionCredentials;->awsSecretKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amazonaws/auth/BasicSessionCredentials;->sessionToken:Ljava/lang/String;

    return-object v0
.end method
