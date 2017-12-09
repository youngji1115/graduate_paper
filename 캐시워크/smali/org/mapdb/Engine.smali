.class public interface abstract Lorg/mapdb/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# static fields
.field public static final CATALOG_RECID:J = 0x1L

.field public static final CHECK_RECORD:J = 0x3L

.field public static final CLASS_INFO_RECID:J = 0x2L

.field public static final LAST_RESERVED_RECID:J = 0x7L


# virtual methods
.method public abstract canRollback()Z
.end method

.method public abstract canSnapshot()Z
.end method

.method public abstract clearCache()V
.end method

.method public abstract close()V
.end method

.method public abstract closeListenerRegister(Ljava/lang/Runnable;)V
.end method

.method public abstract closeListenerUnregister(Ljava/lang/Runnable;)V
.end method

.method public abstract commit()V
.end method

.method public abstract compact()V
.end method

.method public abstract compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(JTA;TA;",
            "Lorg/mapdb/Serializer",
            "<TA;>;)Z"
        }
    .end annotation
.end method

.method public abstract delete(JLorg/mapdb/Serializer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(J",
            "Lorg/mapdb/Serializer",
            "<TA;>;)V"
        }
    .end annotation
.end method

.method public abstract get(JLorg/mapdb/Serializer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(J",
            "Lorg/mapdb/Serializer",
            "<TA;>;)TA;"
        }
    .end annotation
.end method

.method public abstract getSerializerPojo()Lorg/mapdb/SerializerPojo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract preallocate()J
.end method

.method public abstract preallocate([J)V
.end method

.method public abstract put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Lorg/mapdb/Serializer",
            "<TA;>;)J"
        }
    .end annotation
.end method

.method public abstract rollback()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract snapshot()Lorg/mapdb/Engine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(JTA;",
            "Lorg/mapdb/Serializer",
            "<TA;>;)V"
        }
    .end annotation
.end method
