.class public final enum Lat/grabner/circleprogress/TextMode;
.super Ljava/lang/Enum;
.source "TextMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lat/grabner/circleprogress/TextMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lat/grabner/circleprogress/TextMode;

.field public static final enum PERCENT:Lat/grabner/circleprogress/TextMode;

.field public static final enum TEXT:Lat/grabner/circleprogress/TextMode;

.field public static final enum VALUE:Lat/grabner/circleprogress/TextMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lat/grabner/circleprogress/TextMode;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v2}, Lat/grabner/circleprogress/TextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/grabner/circleprogress/TextMode;->TEXT:Lat/grabner/circleprogress/TextMode;

    .line 11
    new-instance v0, Lat/grabner/circleprogress/TextMode;

    const-string v1, "PERCENT"

    invoke-direct {v0, v1, v3}, Lat/grabner/circleprogress/TextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/grabner/circleprogress/TextMode;->PERCENT:Lat/grabner/circleprogress/TextMode;

    .line 15
    new-instance v0, Lat/grabner/circleprogress/TextMode;

    const-string v1, "VALUE"

    invoke-direct {v0, v1, v4}, Lat/grabner/circleprogress/TextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/grabner/circleprogress/TextMode;->VALUE:Lat/grabner/circleprogress/TextMode;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lat/grabner/circleprogress/TextMode;

    sget-object v1, Lat/grabner/circleprogress/TextMode;->TEXT:Lat/grabner/circleprogress/TextMode;

    aput-object v1, v0, v2

    sget-object v1, Lat/grabner/circleprogress/TextMode;->PERCENT:Lat/grabner/circleprogress/TextMode;

    aput-object v1, v0, v3

    sget-object v1, Lat/grabner/circleprogress/TextMode;->VALUE:Lat/grabner/circleprogress/TextMode;

    aput-object v1, v0, v4

    sput-object v0, Lat/grabner/circleprogress/TextMode;->$VALUES:[Lat/grabner/circleprogress/TextMode;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lat/grabner/circleprogress/TextMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lat/grabner/circleprogress/TextMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lat/grabner/circleprogress/TextMode;

    return-object v0
.end method

.method public static values()[Lat/grabner/circleprogress/TextMode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lat/grabner/circleprogress/TextMode;->$VALUES:[Lat/grabner/circleprogress/TextMode;

    invoke-virtual {v0}, [Lat/grabner/circleprogress/TextMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lat/grabner/circleprogress/TextMode;

    return-object v0
.end method
