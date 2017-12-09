.class public final enum Lat/grabner/circleprogress/AnimationState;
.super Ljava/lang/Enum;
.source "AnimationState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lat/grabner/circleprogress/AnimationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lat/grabner/circleprogress/AnimationState;

.field public static final enum ANIMATING:Lat/grabner/circleprogress/AnimationState;

.field public static final enum END_SPINNING:Lat/grabner/circleprogress/AnimationState;

.field public static final enum END_SPINNING_START_ANIMATING:Lat/grabner/circleprogress/AnimationState;

.field public static final enum IDLE:Lat/grabner/circleprogress/AnimationState;

.field public static final enum SPINNING:Lat/grabner/circleprogress/AnimationState;

.field public static final enum START_ANIMATING_AFTER_SPINNING:Lat/grabner/circleprogress/AnimationState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lat/grabner/circleprogress/AnimationState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lat/grabner/circleprogress/AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/grabner/circleprogress/AnimationState;->IDLE:Lat/grabner/circleprogress/AnimationState;

    .line 5
    new-instance v0, Lat/grabner/circleprogress/AnimationState;

    const-string v1, "SPINNING"

    invoke-direct {v0, v1, v4}, Lat/grabner/circleprogress/AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/grabner/circleprogress/AnimationState;->SPINNING:Lat/grabner/circleprogress/AnimationState;

    .line 6
    new-instance v0, Lat/grabner/circleprogress/AnimationState;

    const-string v1, "END_SPINNING"

    invoke-direct {v0, v1, v5}, Lat/grabner/circleprogress/AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/grabner/circleprogress/AnimationState;->END_SPINNING:Lat/grabner/circleprogress/AnimationState;

    .line 7
    new-instance v0, Lat/grabner/circleprogress/AnimationState;

    const-string v1, "END_SPINNING_START_ANIMATING"

    invoke-direct {v0, v1, v6}, Lat/grabner/circleprogress/AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/grabner/circleprogress/AnimationState;->END_SPINNING_START_ANIMATING:Lat/grabner/circleprogress/AnimationState;

    .line 8
    new-instance v0, Lat/grabner/circleprogress/AnimationState;

    const-string v1, "START_ANIMATING_AFTER_SPINNING"

    invoke-direct {v0, v1, v7}, Lat/grabner/circleprogress/AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/grabner/circleprogress/AnimationState;->START_ANIMATING_AFTER_SPINNING:Lat/grabner/circleprogress/AnimationState;

    new-instance v0, Lat/grabner/circleprogress/AnimationState;

    const-string v1, "ANIMATING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lat/grabner/circleprogress/AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/grabner/circleprogress/AnimationState;->ANIMATING:Lat/grabner/circleprogress/AnimationState;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lat/grabner/circleprogress/AnimationState;

    sget-object v1, Lat/grabner/circleprogress/AnimationState;->IDLE:Lat/grabner/circleprogress/AnimationState;

    aput-object v1, v0, v3

    sget-object v1, Lat/grabner/circleprogress/AnimationState;->SPINNING:Lat/grabner/circleprogress/AnimationState;

    aput-object v1, v0, v4

    sget-object v1, Lat/grabner/circleprogress/AnimationState;->END_SPINNING:Lat/grabner/circleprogress/AnimationState;

    aput-object v1, v0, v5

    sget-object v1, Lat/grabner/circleprogress/AnimationState;->END_SPINNING_START_ANIMATING:Lat/grabner/circleprogress/AnimationState;

    aput-object v1, v0, v6

    sget-object v1, Lat/grabner/circleprogress/AnimationState;->START_ANIMATING_AFTER_SPINNING:Lat/grabner/circleprogress/AnimationState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lat/grabner/circleprogress/AnimationState;->ANIMATING:Lat/grabner/circleprogress/AnimationState;

    aput-object v2, v0, v1

    sput-object v0, Lat/grabner/circleprogress/AnimationState;->$VALUES:[Lat/grabner/circleprogress/AnimationState;

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

.method public static valueOf(Ljava/lang/String;)Lat/grabner/circleprogress/AnimationState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lat/grabner/circleprogress/AnimationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lat/grabner/circleprogress/AnimationState;

    return-object v0
.end method

.method public static values()[Lat/grabner/circleprogress/AnimationState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lat/grabner/circleprogress/AnimationState;->$VALUES:[Lat/grabner/circleprogress/AnimationState;

    invoke-virtual {v0}, [Lat/grabner/circleprogress/AnimationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lat/grabner/circleprogress/AnimationState;

    return-object v0
.end method
