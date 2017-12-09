.class public Lme/everything/providers/android/browser/BrowserProvider;
.super Lme/everything/providers/core/AbstractProvider;
.source "BrowserProvider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lme/everything/providers/core/AbstractProvider;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getBookmarks()Lme/everything/providers/core/Data;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/browser/Bookmark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    sget-object v1, Lme/everything/providers/android/browser/Bookmark;->uri:Landroid/net/Uri;

    const-class v2, Lme/everything/providers/android/browser/Bookmark;

    invoke-virtual {p0, v1, v2}, Lme/everything/providers/android/browser/BrowserProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    .line 16
    .local v0, "bookmarks":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<Lme/everything/providers/android/browser/Bookmark;>;"
    return-object v0
.end method

.method public getSearches()Lme/everything/providers/core/Data;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/browser/Search;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    sget-object v1, Lme/everything/providers/android/browser/Search;->uri:Landroid/net/Uri;

    const-class v2, Lme/everything/providers/android/browser/Search;

    invoke-virtual {p0, v1, v2}, Lme/everything/providers/android/browser/BrowserProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    .line 21
    .local v0, "searches":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<Lme/everything/providers/android/browser/Search;>;"
    return-object v0
.end method
