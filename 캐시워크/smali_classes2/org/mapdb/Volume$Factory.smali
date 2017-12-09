.class public interface abstract Lorg/mapdb/Volume$Factory;
.super Ljava/lang/Object;
.source "Volume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Volume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createIndexVolume()Lorg/mapdb/Volume;
.end method

.method public abstract createPhysVolume()Lorg/mapdb/Volume;
.end method

.method public abstract createTransLogVolume()Lorg/mapdb/Volume;
.end method
