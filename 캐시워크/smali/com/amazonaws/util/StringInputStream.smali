.class public Lcom/amazonaws/util/StringInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "StringInputStream.java"


# instance fields
.field private final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 32
    sget-object v0, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 33
    iput-object p1, p0, Lcom/amazonaws/util/StringInputStream;->string:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amazonaws/util/StringInputStream;->string:Ljava/lang/String;

    return-object v0
.end method
