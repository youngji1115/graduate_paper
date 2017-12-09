.class public interface abstract Lorg/mapdb/BTreeMap$BNode;
.super Ljava/lang/Object;
.source "BTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/BTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "BNode"
.end annotation


# virtual methods
.method public abstract child()[J
.end method

.method public abstract highKey()Ljava/lang/Object;
.end method

.method public abstract isLeaf()Z
.end method

.method public abstract keys()[Ljava/lang/Object;
.end method

.method public abstract next()J
.end method

.method public abstract vals()[Ljava/lang/Object;
.end method
