.class public Lme/everything/providers/android/dictionary/DictionaryProvider;
.super Lme/everything/providers/core/AbstractProvider;
.source "DictionaryProvider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lme/everything/providers/core/AbstractProvider;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getWords()Lme/everything/providers/core/Data;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/dictionary/Word;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    sget-object v1, Lme/everything/providers/android/dictionary/Word;->uri:Landroid/net/Uri;

    const-class v2, Lme/everything/providers/android/dictionary/Word;

    invoke-virtual {p0, v1, v2}, Lme/everything/providers/android/dictionary/DictionaryProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    .line 19
    .local v0, "words":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<Lme/everything/providers/android/dictionary/Word;>;"
    return-object v0
.end method
