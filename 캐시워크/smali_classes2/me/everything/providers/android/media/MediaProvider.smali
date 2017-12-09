.class public Lme/everything/providers/android/media/MediaProvider;
.super Lme/everything/providers/core/AbstractProvider;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/everything/providers/android/media/MediaProvider$1;,
        Lme/everything/providers/android/media/MediaProvider$Storage;
    }
.end annotation


# static fields
.field private static final LIMIT:I = 0xfa

.field private static final ORDER_BY_COLUMN:Ljava/lang/String; = "date_modified"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lme/everything/providers/core/AbstractProvider;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getAlbums(Lme/everything/providers/android/media/MediaProvider$Storage;)Lme/everything/providers/core/Data;
    .locals 2
    .param p1, "storage"    # Lme/everything/providers/android/media/MediaProvider$Storage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/everything/providers/android/media/MediaProvider$Storage;",
            ")",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/media/Album;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    sget-object v0, Lme/everything/providers/android/media/MediaProvider$1;->$SwitchMap$me$everything$providers$android$media$MediaProvider$Storage:[I

    invoke-virtual {p1}, Lme/everything/providers/android/media/MediaProvider$Storage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 70
    sget-object v0, Lme/everything/providers/android/media/Album;->uriExternal:Landroid/net/Uri;

    const-class v1, Lme/everything/providers/android/media/Album;

    invoke-virtual {p0, v0, v1}, Lme/everything/providers/android/media/MediaProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    :goto_0
    return-object v0

    .line 68
    :pswitch_0
    sget-object v0, Lme/everything/providers/android/media/Album;->uriInternal:Landroid/net/Uri;

    const-class v1, Lme/everything/providers/android/media/Album;

    invoke-virtual {p0, v0, v1}, Lme/everything/providers/android/media/MediaProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getArtists(Lme/everything/providers/android/media/MediaProvider$Storage;)Lme/everything/providers/core/Data;
    .locals 2
    .param p1, "storage"    # Lme/everything/providers/android/media/MediaProvider$Storage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/everything/providers/android/media/MediaProvider$Storage;",
            ")",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/media/Artist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lme/everything/providers/android/media/MediaProvider$1;->$SwitchMap$me$everything$providers$android$media$MediaProvider$Storage:[I

    invoke-virtual {p1}, Lme/everything/providers/android/media/MediaProvider$Storage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 79
    sget-object v0, Lme/everything/providers/android/media/Artist;->uriExternal:Landroid/net/Uri;

    const-class v1, Lme/everything/providers/android/media/Artist;

    invoke-virtual {p0, v0, v1}, Lme/everything/providers/android/media/MediaProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    :goto_0
    return-object v0

    .line 77
    :pswitch_0
    sget-object v0, Lme/everything/providers/android/media/Artist;->uriInternal:Landroid/net/Uri;

    const-class v1, Lme/everything/providers/android/media/Artist;

    invoke-virtual {p0, v0, v1}, Lme/everything/providers/android/media/MediaProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getAudios(Lme/everything/providers/android/media/MediaProvider$Storage;)Lme/everything/providers/core/Data;
    .locals 6
    .param p1, "storage"    # Lme/everything/providers/android/media/MediaProvider$Storage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/everything/providers/android/media/MediaProvider$Storage;",
            ")",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/media/Audio;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 55
    sget-object v0, Lme/everything/providers/android/media/MediaProvider$1;->$SwitchMap$me$everything$providers$android$media$MediaProvider$Storage:[I

    invoke-virtual {p1}, Lme/everything/providers/android/media/MediaProvider$Storage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 59
    sget-object v1, Lme/everything/providers/android/media/Audio;->uriExternal:Landroid/net/Uri;

    const-string v4, "date_modified DESC LIMIT 250"

    const-class v5, Lme/everything/providers/android/media/Audio;

    move-object v0, p0

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lme/everything/providers/android/media/MediaProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    :goto_0
    return-object v0

    .line 57
    :pswitch_0
    sget-object v0, Lme/everything/providers/android/media/Audio;->uriInternal:Landroid/net/Uri;

    const-class v1, Lme/everything/providers/android/media/Audio;

    invoke-virtual {p0, v0, v1}, Lme/everything/providers/android/media/MediaProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getFiles(Lme/everything/providers/android/media/MediaProvider$Storage;)Lme/everything/providers/core/Data;
    .locals 6
    .param p1, "storage"    # Lme/everything/providers/android/media/MediaProvider$Storage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/everything/providers/android/media/MediaProvider$Storage;",
            ")",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/media/File;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 22
    sget-object v0, Lme/everything/providers/android/media/MediaProvider$1;->$SwitchMap$me$everything$providers$android$media$MediaProvider$Storage:[I

    invoke-virtual {p1}, Lme/everything/providers/android/media/MediaProvider$Storage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 26
    sget-object v1, Lme/everything/providers/android/media/File;->uriExternal:Landroid/net/Uri;

    const-string v4, "date_modified DESC LIMIT 250"

    const-class v5, Lme/everything/providers/android/media/File;

    move-object v0, p0

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lme/everything/providers/android/media/MediaProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    :goto_0
    return-object v0

    .line 24
    :pswitch_0
    sget-object v0, Lme/everything/providers/android/media/File;->uriInternal:Landroid/net/Uri;

    const-class v1, Lme/everything/providers/android/media/File;

    invoke-virtual {p0, v0, v1}, Lme/everything/providers/android/media/MediaProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getGenres(Lme/everything/providers/android/media/MediaProvider$Storage;)Lme/everything/providers/core/Data;
    .locals 2
    .param p1, "storage"    # Lme/everything/providers/android/media/MediaProvider$Storage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/everything/providers/android/media/MediaProvider$Storage;",
            ")",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/media/Genre;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lme/everything/providers/android/media/MediaProvider$1;->$SwitchMap$me$everything$providers$android$media$MediaProvider$Storage:[I

    invoke-virtual {p1}, Lme/everything/providers/android/media/MediaProvider$Storage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 88
    sget-object v0, Lme/everything/providers/android/media/Genre;->uriExternal:Landroid/net/Uri;

    const-class v1, Lme/everything/providers/android/media/Genre;

    invoke-virtual {p0, v0, v1}, Lme/everything/providers/android/media/MediaProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    :goto_0
    return-object v0

    .line 86
    :pswitch_0
    sget-object v0, Lme/everything/providers/android/media/Genre;->uriInternal:Landroid/net/Uri;

    const-class v1, Lme/everything/providers/android/media/Genre;

    invoke-virtual {p0, v0, v1}, Lme/everything/providers/android/media/MediaProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getImages(Lme/everything/providers/android/media/MediaProvider$Storage;)Lme/everything/providers/core/Data;
    .locals 6
    .param p1, "storage"    # Lme/everything/providers/android/media/MediaProvider$Storage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/everything/providers/android/media/MediaProvider$Storage;",
            ")",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/media/Image;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 33
    sget-object v0, Lme/everything/providers/android/media/MediaProvider$1;->$SwitchMap$me$everything$providers$android$media$MediaProvider$Storage:[I

    invoke-virtual {p1}, Lme/everything/providers/android/media/MediaProvider$Storage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 37
    sget-object v1, Lme/everything/providers/android/media/Image;->uriExternal:Landroid/net/Uri;

    const-string v4, "date_modified DESC LIMIT 250"

    const-class v5, Lme/everything/providers/android/media/Image;

    move-object v0, p0

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lme/everything/providers/android/media/MediaProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    :goto_0
    return-object v0

    .line 35
    :pswitch_0
    sget-object v0, Lme/everything/providers/android/media/Image;->uriInternal:Landroid/net/Uri;

    const-class v1, Lme/everything/providers/android/media/Image;

    invoke-virtual {p0, v0, v1}, Lme/everything/providers/android/media/MediaProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getPlaylists(Lme/everything/providers/android/media/MediaProvider$Storage;)Lme/everything/providers/core/Data;
    .locals 2
    .param p1, "storage"    # Lme/everything/providers/android/media/MediaProvider$Storage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/everything/providers/android/media/MediaProvider$Storage;",
            ")",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/media/Playlist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    sget-object v0, Lme/everything/providers/android/media/MediaProvider$1;->$SwitchMap$me$everything$providers$android$media$MediaProvider$Storage:[I

    invoke-virtual {p1}, Lme/everything/providers/android/media/MediaProvider$Storage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 97
    sget-object v0, Lme/everything/providers/android/media/Playlist;->uriExternal:Landroid/net/Uri;

    const-class v1, Lme/everything/providers/android/media/Playlist;

    invoke-virtual {p0, v0, v1}, Lme/everything/providers/android/media/MediaProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    :goto_0
    return-object v0

    .line 95
    :pswitch_0
    sget-object v0, Lme/everything/providers/android/media/Playlist;->uriInternal:Landroid/net/Uri;

    const-class v1, Lme/everything/providers/android/media/Playlist;

    invoke-virtual {p0, v0, v1}, Lme/everything/providers/android/media/MediaProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getVideos(Lme/everything/providers/android/media/MediaProvider$Storage;)Lme/everything/providers/core/Data;
    .locals 6
    .param p1, "storage"    # Lme/everything/providers/android/media/MediaProvider$Storage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/everything/providers/android/media/MediaProvider$Storage;",
            ")",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/media/Video;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 44
    sget-object v0, Lme/everything/providers/android/media/MediaProvider$1;->$SwitchMap$me$everything$providers$android$media$MediaProvider$Storage:[I

    invoke-virtual {p1}, Lme/everything/providers/android/media/MediaProvider$Storage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 48
    sget-object v1, Lme/everything/providers/android/media/Video;->uriExternal:Landroid/net/Uri;

    const-string v4, "date_modified DESC LIMIT 250"

    const-class v5, Lme/everything/providers/android/media/Video;

    move-object v0, p0

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lme/everything/providers/android/media/MediaProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    :goto_0
    return-object v0

    .line 46
    :pswitch_0
    sget-object v0, Lme/everything/providers/android/media/Video;->uriInternal:Landroid/net/Uri;

    const-class v1, Lme/everything/providers/android/media/Video;

    invoke-virtual {p0, v0, v1}, Lme/everything/providers/android/media/MediaProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
