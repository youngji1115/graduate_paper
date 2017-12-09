.class public final enum Lme/everything/providers/android/media/MediaProvider$Storage;
.super Ljava/lang/Enum;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/everything/providers/android/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Storage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lme/everything/providers/android/media/MediaProvider$Storage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/everything/providers/android/media/MediaProvider$Storage;

.field public static final enum EXTERNAL:Lme/everything/providers/android/media/MediaProvider$Storage;

.field public static final enum INTERNAL:Lme/everything/providers/android/media/MediaProvider$Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    new-instance v0, Lme/everything/providers/android/media/MediaProvider$Storage;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v2}, Lme/everything/providers/android/media/MediaProvider$Storage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/everything/providers/android/media/MediaProvider$Storage;->INTERNAL:Lme/everything/providers/android/media/MediaProvider$Storage;

    .line 103
    new-instance v0, Lme/everything/providers/android/media/MediaProvider$Storage;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v3}, Lme/everything/providers/android/media/MediaProvider$Storage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/everything/providers/android/media/MediaProvider$Storage;->EXTERNAL:Lme/everything/providers/android/media/MediaProvider$Storage;

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Lme/everything/providers/android/media/MediaProvider$Storage;

    sget-object v1, Lme/everything/providers/android/media/MediaProvider$Storage;->INTERNAL:Lme/everything/providers/android/media/MediaProvider$Storage;

    aput-object v1, v0, v2

    sget-object v1, Lme/everything/providers/android/media/MediaProvider$Storage;->EXTERNAL:Lme/everything/providers/android/media/MediaProvider$Storage;

    aput-object v1, v0, v3

    sput-object v0, Lme/everything/providers/android/media/MediaProvider$Storage;->$VALUES:[Lme/everything/providers/android/media/MediaProvider$Storage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lme/everything/providers/android/media/MediaProvider$Storage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v0, Lme/everything/providers/android/media/MediaProvider$Storage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/everything/providers/android/media/MediaProvider$Storage;

    return-object v0
.end method

.method public static values()[Lme/everything/providers/android/media/MediaProvider$Storage;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lme/everything/providers/android/media/MediaProvider$Storage;->$VALUES:[Lme/everything/providers/android/media/MediaProvider$Storage;

    invoke-virtual {v0}, [Lme/everything/providers/android/media/MediaProvider$Storage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/everything/providers/android/media/MediaProvider$Storage;

    return-object v0
.end method
