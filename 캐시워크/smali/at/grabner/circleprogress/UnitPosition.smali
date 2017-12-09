.class public final enum Lat/grabner/circleprogress/UnitPosition;
.super Ljava/lang/Enum;
.source "UnitPosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lat/grabner/circleprogress/UnitPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lat/grabner/circleprogress/UnitPosition;

.field public static final enum BOTTOM:Lat/grabner/circleprogress/UnitPosition;

.field public static final enum LEFT_BOTTOM:Lat/grabner/circleprogress/UnitPosition;

.field public static final enum LEFT_TOP:Lat/grabner/circleprogress/UnitPosition;

.field public static final enum RIGHT_BOTTOM:Lat/grabner/circleprogress/UnitPosition;

.field public static final enum RIGHT_TOP:Lat/grabner/circleprogress/UnitPosition;

.field public static final enum TOP:Lat/grabner/circleprogress/UnitPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lat/grabner/circleprogress/UnitPosition;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v3}, Lat/grabner/circleprogress/UnitPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/grabner/circleprogress/UnitPosition;->TOP:Lat/grabner/circleprogress/UnitPosition;

    .line 8
    new-instance v0, Lat/grabner/circleprogress/UnitPosition;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Lat/grabner/circleprogress/UnitPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/grabner/circleprogress/UnitPosition;->BOTTOM:Lat/grabner/circleprogress/UnitPosition;

    .line 9
    new-instance v0, Lat/grabner/circleprogress/UnitPosition;

    const-string v1, "LEFT_TOP"

    invoke-direct {v0, v1, v5}, Lat/grabner/circleprogress/UnitPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/grabner/circleprogress/UnitPosition;->LEFT_TOP:Lat/grabner/circleprogress/UnitPosition;

    .line 10
    new-instance v0, Lat/grabner/circleprogress/UnitPosition;

    const-string v1, "RIGHT_TOP"

    invoke-direct {v0, v1, v6}, Lat/grabner/circleprogress/UnitPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/grabner/circleprogress/UnitPosition;->RIGHT_TOP:Lat/grabner/circleprogress/UnitPosition;

    .line 11
    new-instance v0, Lat/grabner/circleprogress/UnitPosition;

    const-string v1, "LEFT_BOTTOM"

    invoke-direct {v0, v1, v7}, Lat/grabner/circleprogress/UnitPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/grabner/circleprogress/UnitPosition;->LEFT_BOTTOM:Lat/grabner/circleprogress/UnitPosition;

    .line 12
    new-instance v0, Lat/grabner/circleprogress/UnitPosition;

    const-string v1, "RIGHT_BOTTOM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lat/grabner/circleprogress/UnitPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/grabner/circleprogress/UnitPosition;->RIGHT_BOTTOM:Lat/grabner/circleprogress/UnitPosition;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lat/grabner/circleprogress/UnitPosition;

    sget-object v1, Lat/grabner/circleprogress/UnitPosition;->TOP:Lat/grabner/circleprogress/UnitPosition;

    aput-object v1, v0, v3

    sget-object v1, Lat/grabner/circleprogress/UnitPosition;->BOTTOM:Lat/grabner/circleprogress/UnitPosition;

    aput-object v1, v0, v4

    sget-object v1, Lat/grabner/circleprogress/UnitPosition;->LEFT_TOP:Lat/grabner/circleprogress/UnitPosition;

    aput-object v1, v0, v5

    sget-object v1, Lat/grabner/circleprogress/UnitPosition;->RIGHT_TOP:Lat/grabner/circleprogress/UnitPosition;

    aput-object v1, v0, v6

    sget-object v1, Lat/grabner/circleprogress/UnitPosition;->LEFT_BOTTOM:Lat/grabner/circleprogress/UnitPosition;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lat/grabner/circleprogress/UnitPosition;->RIGHT_BOTTOM:Lat/grabner/circleprogress/UnitPosition;

    aput-object v2, v0, v1

    sput-object v0, Lat/grabner/circleprogress/UnitPosition;->$VALUES:[Lat/grabner/circleprogress/UnitPosition;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lat/grabner/circleprogress/UnitPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lat/grabner/circleprogress/UnitPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lat/grabner/circleprogress/UnitPosition;

    return-object v0
.end method

.method public static values()[Lat/grabner/circleprogress/UnitPosition;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lat/grabner/circleprogress/UnitPosition;->$VALUES:[Lat/grabner/circleprogress/UnitPosition;

    invoke-virtual {v0}, [Lat/grabner/circleprogress/UnitPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lat/grabner/circleprogress/UnitPosition;

    return-object v0
.end method
