.class public Lme/everything/providers/core/Data;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lme/everything/providers/core/Entity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/Class;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<TT;>;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lme/everything/providers/core/Data;->mCursor:Landroid/database/Cursor;

    .line 15
    iput-object p2, p0, Lme/everything/providers/core/Data;->mCls:Ljava/lang/Class;

    .line 16
    return-void
.end method


# virtual methods
.method public fromCursor(Landroid/database/Cursor;)Lme/everything/providers/core/Entity;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<TT;>;"
    iget-object v0, p0, Lme/everything/providers/core/Data;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lme/everything/providers/core/Data;->mCls:Ljava/lang/Class;

    invoke-static {v0, v1}, Lme/everything/providers/core/Entity;->create(Landroid/database/Cursor;Ljava/lang/Class;)Lme/everything/providers/core/Entity;

    move-result-object v0

    return-object v0
.end method

.method public varargs fromCursor(Landroid/database/Cursor;[Ljava/lang/String;)Lme/everything/providers/core/Entity;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<TT;>;"
    iget-object v0, p0, Lme/everything/providers/core/Data;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lme/everything/providers/core/Data;->mCls:Ljava/lang/Class;

    invoke-static {v0, v1, p2}, Lme/everything/providers/core/Entity;->create(Landroid/database/Cursor;Ljava/lang/Class;[Ljava/lang/String;)Lme/everything/providers/core/Entity;

    move-result-object v0

    return-object v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<TT;>;"
    iget-object v0, p0, Lme/everything/providers/core/Data;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lme/everything/providers/core/Data;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 35
    :goto_0
    return-object v0

    .line 28
    :cond_0
    :goto_1
    :try_start_0
    iget-object v2, p0, Lme/everything/providers/core/Data;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    iget-object v2, p0, Lme/everything/providers/core/Data;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lme/everything/providers/core/Data;->mCls:Ljava/lang/Class;

    invoke-static {v2, v3}, Lme/everything/providers/core/Entity;->create(Landroid/database/Cursor;Ljava/lang/Class;)Lme/everything/providers/core/Entity;

    move-result-object v1

    .line 30
    .local v1, "t":Lme/everything/providers/core/Entity;, "TT;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 33
    .end local v1    # "t":Lme/everything/providers/core/Entity;, "TT;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lme/everything/providers/core/Data;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    iget-object v2, p0, Lme/everything/providers/core/Data;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
