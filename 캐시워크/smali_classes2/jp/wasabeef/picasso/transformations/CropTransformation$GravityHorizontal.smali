.class public final enum Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;
.super Ljava/lang/Enum;
.source "CropTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/wasabeef/picasso/transformations/CropTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GravityHorizontal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

.field public static final enum CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

.field public static final enum LEFT:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

.field public static final enum RIGHT:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->LEFT:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 48
    new-instance v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 49
    new-instance v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->RIGHT:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    sget-object v1, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->LEFT:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    aput-object v1, v0, v2

    sget-object v1, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    aput-object v1, v0, v3

    sget-object v1, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->RIGHT:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    aput-object v1, v0, v4

    sput-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->$VALUES:[Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    return-object v0
.end method

.method public static values()[Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->$VALUES:[Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    invoke-virtual {v0}, [Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    return-object v0
.end method
