.class public Lcom/amazonaws/services/cognitoidentity/model/ResourceConflictException;
.super Lcom/amazonaws/AmazonServiceException;
.source "ResourceConflictException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method
