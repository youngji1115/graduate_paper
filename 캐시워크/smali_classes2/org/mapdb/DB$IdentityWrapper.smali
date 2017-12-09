.class public Lorg/mapdb/DB$IdentityWrapper;
.super Ljava/lang/Object;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/DB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "IdentityWrapper"
.end annotation


# instance fields
.field final o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/mapdb/DB$IdentityWrapper;->o:Ljava/lang/Object;

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Lorg/mapdb/DB$IdentityWrapper;

    .end local p1    # "v":Ljava/lang/Object;
    iget-object v0, p1, Lorg/mapdb/DB$IdentityWrapper;->o:Ljava/lang/Object;

    iget-object v1, p0, Lorg/mapdb/DB$IdentityWrapper;->o:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/mapdb/DB$IdentityWrapper;->o:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
