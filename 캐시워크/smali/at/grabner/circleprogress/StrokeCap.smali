.class public final enum Lat/grabner/circleprogress/StrokeCap;
.super Ljava/lang/Enum;
.source "StrokeCap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lat/grabner/circleprogress/StrokeCap;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lat/grabner/circleprogress/StrokeCap;

.field public static final enum BUTT:Lat/grabner/circleprogress/StrokeCap;

.field public static final enum ROUND:Lat/grabner/circleprogress/StrokeCap;

.field public static final enum SQUARE:Lat/grabner/circleprogress/StrokeCap;


# instance fields
.field final paintCap:Landroid/graphics/Paint$Cap;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lat/grabner/circleprogress/StrokeCap;

    const-string v1, "BUTT"

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-direct {v0, v1, v3, v2}, Lat/grabner/circleprogress/StrokeCap;-><init>(Ljava/lang/String;ILandroid/graphics/Paint$Cap;)V

    sput-object v0, Lat/grabner/circleprogress/StrokeCap;->BUTT:Lat/grabner/circleprogress/StrokeCap;

    .line 14
    new-instance v0, Lat/grabner/circleprogress/StrokeCap;

    const-string v1, "ROUND"

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-direct {v0, v1, v4, v2}, Lat/grabner/circleprogress/StrokeCap;-><init>(Ljava/lang/String;ILandroid/graphics/Paint$Cap;)V

    sput-object v0, Lat/grabner/circleprogress/StrokeCap;->ROUND:Lat/grabner/circleprogress/StrokeCap;

    .line 19
    new-instance v0, Lat/grabner/circleprogress/StrokeCap;

    const-string v1, "SQUARE"

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-direct {v0, v1, v5, v2}, Lat/grabner/circleprogress/StrokeCap;-><init>(Ljava/lang/String;ILandroid/graphics/Paint$Cap;)V

    sput-object v0, Lat/grabner/circleprogress/StrokeCap;->SQUARE:Lat/grabner/circleprogress/StrokeCap;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lat/grabner/circleprogress/StrokeCap;

    sget-object v1, Lat/grabner/circleprogress/StrokeCap;->BUTT:Lat/grabner/circleprogress/StrokeCap;

    aput-object v1, v0, v3

    sget-object v1, Lat/grabner/circleprogress/StrokeCap;->ROUND:Lat/grabner/circleprogress/StrokeCap;

    aput-object v1, v0, v4

    sget-object v1, Lat/grabner/circleprogress/StrokeCap;->SQUARE:Lat/grabner/circleprogress/StrokeCap;

    aput-object v1, v0, v5

    sput-object v0, Lat/grabner/circleprogress/StrokeCap;->$VALUES:[Lat/grabner/circleprogress/StrokeCap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/graphics/Paint$Cap;)V
    .locals 0
    .param p3, "paintCap"    # Landroid/graphics/Paint$Cap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint$Cap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lat/grabner/circleprogress/StrokeCap;->paintCap:Landroid/graphics/Paint$Cap;

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lat/grabner/circleprogress/StrokeCap;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lat/grabner/circleprogress/StrokeCap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lat/grabner/circleprogress/StrokeCap;

    return-object v0
.end method

.method public static values()[Lat/grabner/circleprogress/StrokeCap;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lat/grabner/circleprogress/StrokeCap;->$VALUES:[Lat/grabner/circleprogress/StrokeCap;

    invoke-virtual {v0}, [Lat/grabner/circleprogress/StrokeCap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lat/grabner/circleprogress/StrokeCap;

    return-object v0
.end method
