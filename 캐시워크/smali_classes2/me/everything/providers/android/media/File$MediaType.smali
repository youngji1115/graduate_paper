.class public final enum Lme/everything/providers/android/media/File$MediaType;
.super Ljava/lang/Enum;
.source "File.java"

# interfaces
.implements Lme/everything/providers/core/EnumInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/everything/providers/android/media/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lme/everything/providers/android/media/File$MediaType;",
        ">;",
        "Lme/everything/providers/core/EnumInt;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/everything/providers/android/media/File$MediaType;

.field public static final enum AUDIO:Lme/everything/providers/android/media/File$MediaType;

.field public static final enum IMAGE:Lme/everything/providers/android/media/File$MediaType;

.field public static final enum NONE:Lme/everything/providers/android/media/File$MediaType;

.field public static final enum PLAYLIST:Lme/everything/providers/android/media/File$MediaType;

.field public static final enum VIDEO:Lme/everything/providers/android/media/File$MediaType;


# instance fields
.field val:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lme/everything/providers/android/media/File$MediaType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lme/everything/providers/android/media/File$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/media/File$MediaType;->NONE:Lme/everything/providers/android/media/File$MediaType;

    .line 61
    new-instance v0, Lme/everything/providers/android/media/File$MediaType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v3, v3}, Lme/everything/providers/android/media/File$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/media/File$MediaType;->IMAGE:Lme/everything/providers/android/media/File$MediaType;

    .line 62
    new-instance v0, Lme/everything/providers/android/media/File$MediaType;

    const-string v1, "AUDIO"

    invoke-direct {v0, v1, v4, v4}, Lme/everything/providers/android/media/File$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/media/File$MediaType;->AUDIO:Lme/everything/providers/android/media/File$MediaType;

    .line 63
    new-instance v0, Lme/everything/providers/android/media/File$MediaType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v5, v5}, Lme/everything/providers/android/media/File$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/media/File$MediaType;->VIDEO:Lme/everything/providers/android/media/File$MediaType;

    .line 64
    new-instance v0, Lme/everything/providers/android/media/File$MediaType;

    const-string v1, "PLAYLIST"

    invoke-direct {v0, v1, v6, v6}, Lme/everything/providers/android/media/File$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/everything/providers/android/media/File$MediaType;->PLAYLIST:Lme/everything/providers/android/media/File$MediaType;

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Lme/everything/providers/android/media/File$MediaType;

    sget-object v1, Lme/everything/providers/android/media/File$MediaType;->NONE:Lme/everything/providers/android/media/File$MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lme/everything/providers/android/media/File$MediaType;->IMAGE:Lme/everything/providers/android/media/File$MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lme/everything/providers/android/media/File$MediaType;->AUDIO:Lme/everything/providers/android/media/File$MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lme/everything/providers/android/media/File$MediaType;->VIDEO:Lme/everything/providers/android/media/File$MediaType;

    aput-object v1, v0, v5

    sget-object v1, Lme/everything/providers/android/media/File$MediaType;->PLAYLIST:Lme/everything/providers/android/media/File$MediaType;

    aput-object v1, v0, v6

    sput-object v0, Lme/everything/providers/android/media/File$MediaType;->$VALUES:[Lme/everything/providers/android/media/File$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lme/everything/providers/android/media/File$MediaType;->val:I

    .line 70
    return-void
.end method

.method public static fromVal(I)Lme/everything/providers/android/media/File$MediaType;
    .locals 5
    .param p0, "val"    # I

    .prologue
    .line 73
    invoke-static {}, Lme/everything/providers/android/media/File$MediaType;->values()[Lme/everything/providers/android/media/File$MediaType;

    move-result-object v0

    .local v0, "arr$":[Lme/everything/providers/android/media/File$MediaType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 74
    .local v3, "mediaType":Lme/everything/providers/android/media/File$MediaType;
    iget v4, v3, Lme/everything/providers/android/media/File$MediaType;->val:I

    if-ne v4, p0, :cond_0

    .line 78
    .end local v3    # "mediaType":Lme/everything/providers/android/media/File$MediaType;
    :goto_1
    return-object v3

    .line 73
    .restart local v3    # "mediaType":Lme/everything/providers/android/media/File$MediaType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v3    # "mediaType":Lme/everything/providers/android/media/File$MediaType;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lme/everything/providers/android/media/File$MediaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lme/everything/providers/android/media/File$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/everything/providers/android/media/File$MediaType;

    return-object v0
.end method

.method public static values()[Lme/everything/providers/android/media/File$MediaType;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lme/everything/providers/android/media/File$MediaType;->$VALUES:[Lme/everything/providers/android/media/File$MediaType;

    invoke-virtual {v0}, [Lme/everything/providers/android/media/File$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/everything/providers/android/media/File$MediaType;

    return-object v0
.end method
