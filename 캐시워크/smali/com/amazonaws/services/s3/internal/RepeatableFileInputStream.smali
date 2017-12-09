.class public Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;
.super Lcom/amazonaws/internal/SdkInputStream;
.source "RepeatableFileInputStream.java"


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private bytesReadPastMarkPoint:J

.field private final file:Ljava/io/File;

.field private fis:Ljava/io/FileInputStream;

.field private markPoint:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 51
    invoke-direct {p0}, Lcom/amazonaws/internal/SdkInputStream;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    .line 41
    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    .line 42
    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->markPoint:J

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    .line 56
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->file:Ljava/io/File;

    .line 57
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->abortIfNeeded()V

    .line 113
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 119
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->abortIfNeeded()V

    .line 120
    return-void
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->file:Ljava/io/File;

    return-object v0
.end method

.method public getWrappedInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public mark(I)V
    .locals 4
    .param p1, "readlimit"    # I

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->abortIfNeeded()V

    .line 103
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->markPoint:J

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->markPoint:J

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    .line 105
    sget-object v0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input stream marked at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->markPoint:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 108
    :cond_0
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 124
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->abortIfNeeded()V

    .line 125
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .line 126
    .local v0, "byteRead":I
    if-eq v0, v1, :cond_0

    .line 127
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    .line 130
    .end local v0    # "byteRead":I
    :goto_0
    return v0

    .restart local v0    # "byteRead":I
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "arg0"    # [B
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->abortIfNeeded()V

    .line 145
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 146
    .local v0, "count":I
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    .line 147
    return v0
.end method

.method public reset()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 77
    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 78
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->abortIfNeeded()V

    .line 79
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->file:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    .line 81
    const-wide/16 v0, 0x0

    .line 82
    .local v0, "skipped":J
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->markPoint:J

    .line 83
    .local v2, "toSkip":J
    :goto_0
    cmp-long v4, v2, v8

    if-lez v4, :cond_0

    .line 84
    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v4, v2, v3}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v0

    .line 85
    sub-long/2addr v2, v0

    goto :goto_0

    .line 88
    :cond_0
    sget-object v4, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    sget-object v4, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reset to mark point "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->markPoint:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " after returning "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 92
    :cond_1
    iput-wide v8, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    .line 93
    return-void
.end method

.method public skip(J)J
    .locals 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->abortIfNeeded()V

    .line 137
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v0

    .line 138
    .local v0, "skipped":J
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    .line 139
    return-wide v0
.end method
