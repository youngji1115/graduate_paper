.class public abstract Lme/everything/providers/core/AbstractProvider;
.super Ljava/lang/Object;
.source "AbstractProvider.java"


# instance fields
.field protected TAG:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/everything/providers/core/AbstractProvider;->TAG:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lme/everything/providers/core/AbstractProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 22
    return-void
.end method


# virtual methods
.method protected getContentRowData(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lme/everything/providers/core/Entity;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lme/everything/providers/core/Entity;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 49
    .local p5, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v7, 0x0

    .line 50
    .local v7, "t":Lme/everything/providers/core/Entity;, "TT;"
    iget-object v0, p0, Lme/everything/providers/core/AbstractProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p5}, Lme/everything/providers/core/Entity;->getColumns(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 51
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    .line 55
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-static {v6, p5}, Lme/everything/providers/core/Entity;->create(Landroid/database/Cursor;Ljava/lang/Class;)Lme/everything/providers/core/Entity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 60
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    .line 62
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lme/everything/providers/core/Entity;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lme/everything/providers/core/Data",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 29
    iget-object v0, p0, Lme/everything/providers/core/AbstractProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p2}, Lme/everything/providers/core/Entity;->getColumns(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 30
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 35
    :goto_0
    return-object v3

    .line 34
    :cond_0
    new-instance v7, Lme/everything/providers/core/Data;

    invoke-direct {v7, v6, p2}, Lme/everything/providers/core/Data;-><init>(Landroid/database/Cursor;Ljava/lang/Class;)V

    .local v7, "data":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<TT;>;"
    move-object v3, v7

    .line 35
    goto :goto_0
.end method

.method protected getContentTableData(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lme/everything/providers/core/Data;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lme/everything/providers/core/Entity;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lme/everything/providers/core/Data",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p5, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lme/everything/providers/core/AbstractProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p5}, Lme/everything/providers/core/Entity;->getColumns(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 40
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 41
    const/4 v7, 0x0

    .line 45
    :goto_0
    return-object v7

    .line 44
    :cond_0
    new-instance v7, Lme/everything/providers/core/Data;

    invoke-direct {v7, v6, p5}, Lme/everything/providers/core/Data;-><init>(Landroid/database/Cursor;Ljava/lang/Class;)V

    .line 45
    .local v7, "data":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<TT;>;"
    goto :goto_0
.end method

.method public registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 25
    iget-object v0, p0, Lme/everything/providers/core/AbstractProvider;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 26
    return-void
.end method

.method protected updateTableRow(Landroid/net/Uri;Lme/everything/providers/core/Entity;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "entity"    # Lme/everything/providers/core/Entity;

    .prologue
    const/4 v8, 0x0

    .line 66
    invoke-static {p2}, Lme/everything/providers/core/Entity;->getId(Lme/everything/providers/core/Entity;)Ljava/lang/Long;

    move-result-object v1

    .line 67
    .local v1, "id":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lme/everything/providers/core/Entity;->getWriteColumns(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "columns":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v5, v0

    if-lez v5, :cond_0

    .line 70
    invoke-static {v0, p2}, Lme/everything/providers/core/Entity;->getContentValues([Ljava/lang/String;Lme/everything/providers/core/Entity;)Landroid/content/ContentValues;

    move-result-object v4

    .line 71
    .local v4, "values":Landroid/content/ContentValues;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 72
    .local v3, "updateUri":Landroid/net/Uri;
    iget-object v5, p0, Lme/everything/providers/core/AbstractProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, v3, v4, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 76
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v3    # "updateUri":Landroid/net/Uri;
    .end local v4    # "values":Landroid/content/ContentValues;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
