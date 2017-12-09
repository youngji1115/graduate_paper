.class public interface abstract Lorg/mapdb/Bind$MapWithModificationListener;
.super Ljava/lang/Object;
.source "Bind.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Bind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MapWithModificationListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
.method public abstract modificationListenerAdd(Lorg/mapdb/Bind$MapListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Bind$MapListener",
            "<TK;TV;>;)V"
        }
    .end annotation
.end method

.method public abstract modificationListenerRemove(Lorg/mapdb/Bind$MapListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Bind$MapListener",
            "<TK;TV;>;)V"
        }
    .end annotation
.end method

.method public abstract sizeLong()J
.end method
