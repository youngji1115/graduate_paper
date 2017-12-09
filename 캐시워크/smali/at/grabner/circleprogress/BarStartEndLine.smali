.class public final enum Lat/grabner/circleprogress/BarStartEndLine;
.super Ljava/lang/Enum;
.source "BarStartEndLine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lat/grabner/circleprogress/BarStartEndLine;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lat/grabner/circleprogress/BarStartEndLine;

.field public static final enum BOTH:Lat/grabner/circleprogress/BarStartEndLine;

.field public static final enum END:Lat/grabner/circleprogress/BarStartEndLine;

.field public static final enum NONE:Lat/grabner/circleprogress/BarStartEndLine;

.field public static final enum START:Lat/grabner/circleprogress/BarStartEndLine;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lat/grabner/circleprogress/BarStartEndLine;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lat/grabner/circleprogress/BarStartEndLine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/grabner/circleprogress/BarStartEndLine;->NONE:Lat/grabner/circleprogress/BarStartEndLine;

    .line 13
    new-instance v0, Lat/grabner/circleprogress/BarStartEndLine;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lat/grabner/circleprogress/BarStartEndLine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/grabner/circleprogress/BarStartEndLine;->START:Lat/grabner/circleprogress/BarStartEndLine;

    .line 17
    new-instance v0, Lat/grabner/circleprogress/BarStartEndLine;

    const-string v1, "END"

    invoke-direct {v0, v1, v4}, Lat/grabner/circleprogress/BarStartEndLine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/grabner/circleprogress/BarStartEndLine;->END:Lat/grabner/circleprogress/BarStartEndLine;

    .line 21
    new-instance v0, Lat/grabner/circleprogress/BarStartEndLine;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v5}, Lat/grabner/circleprogress/BarStartEndLine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/grabner/circleprogress/BarStartEndLine;->BOTH:Lat/grabner/circleprogress/BarStartEndLine;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lat/grabner/circleprogress/BarStartEndLine;

    sget-object v1, Lat/grabner/circleprogress/BarStartEndLine;->NONE:Lat/grabner/circleprogress/BarStartEndLine;

    aput-object v1, v0, v2

    sget-object v1, Lat/grabner/circleprogress/BarStartEndLine;->START:Lat/grabner/circleprogress/BarStartEndLine;

    aput-object v1, v0, v3

    sget-object v1, Lat/grabner/circleprogress/BarStartEndLine;->END:Lat/grabner/circleprogress/BarStartEndLine;

    aput-object v1, v0, v4

    sget-object v1, Lat/grabner/circleprogress/BarStartEndLine;->BOTH:Lat/grabner/circleprogress/BarStartEndLine;

    aput-object v1, v0, v5

    sput-object v0, Lat/grabner/circleprogress/BarStartEndLine;->$VALUES:[Lat/grabner/circleprogress/BarStartEndLine;

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

.method public static valueOf(Ljava/lang/String;)Lat/grabner/circleprogress/BarStartEndLine;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lat/grabner/circleprogress/BarStartEndLine;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lat/grabner/circleprogress/BarStartEndLine;

    return-object v0
.end method

.method public static values()[Lat/grabner/circleprogress/BarStartEndLine;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lat/grabner/circleprogress/BarStartEndLine;->$VALUES:[Lat/grabner/circleprogress/BarStartEndLine;

    invoke-virtual {v0}, [Lat/grabner/circleprogress/BarStartEndLine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lat/grabner/circleprogress/BarStartEndLine;

    return-object v0
.end method
