.class synthetic Lme/everything/providers/android/media/MediaProvider$1;
.super Ljava/lang/Object;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/everything/providers/android/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$me$everything$providers$android$media$MediaProvider$Storage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Lme/everything/providers/android/media/MediaProvider$Storage;->values()[Lme/everything/providers/android/media/MediaProvider$Storage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lme/everything/providers/android/media/MediaProvider$1;->$SwitchMap$me$everything$providers$android$media$MediaProvider$Storage:[I

    :try_start_0
    sget-object v0, Lme/everything/providers/android/media/MediaProvider$1;->$SwitchMap$me$everything$providers$android$media$MediaProvider$Storage:[I

    sget-object v1, Lme/everything/providers/android/media/MediaProvider$Storage;->INTERNAL:Lme/everything/providers/android/media/MediaProvider$Storage;

    invoke-virtual {v1}, Lme/everything/providers/android/media/MediaProvider$Storage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
