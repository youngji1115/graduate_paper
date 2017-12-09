.class public abstract Lcom/kakao/network/exception/ResponseStatusError;
.super Ljava/lang/Exception;
.source "ResponseStatusError.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public abstract getErrorCode()I
.end method

.method public abstract getErrorMsg()Ljava/lang/String;
.end method

.method public abstract getHttpStatusCode()I
.end method
