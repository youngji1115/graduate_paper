.class public interface abstract Lcom/google/android/exoplayer2/metadata/MetadataDecoder;
.super Ljava/lang/Object;
.source "MetadataDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract canDecode(Ljava/lang/String;)Z
.end method

.method public abstract decode([BI)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/metadata/MetadataDecoderException;
        }
    .end annotation
.end method
