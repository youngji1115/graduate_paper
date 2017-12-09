.class final Lat/grabner/circleprogress/AnimationMsg;
.super Ljava/lang/Enum;
.source "AnimationMsg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lat/grabner/circleprogress/AnimationMsg;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$45ba50f7:[I

.field public static final enum SET_VALUE$48cb079c:I

.field public static final enum SET_VALUE_ANIMATED$48cb079c:I

.field public static final enum START_SPINNING$48cb079c:I

.field public static final enum STOP_SPINNING$48cb079c:I

.field public static final enum TICK$48cb079c:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v0, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5
    sput v3, Lat/grabner/circleprogress/AnimationMsg;->START_SPINNING$48cb079c:I

    .line 6
    sput v4, Lat/grabner/circleprogress/AnimationMsg;->STOP_SPINNING$48cb079c:I

    .line 7
    sput v5, Lat/grabner/circleprogress/AnimationMsg;->SET_VALUE$48cb079c:I

    .line 8
    sput v6, Lat/grabner/circleprogress/AnimationMsg;->SET_VALUE_ANIMATED$48cb079c:I

    .line 9
    sput v0, Lat/grabner/circleprogress/AnimationMsg;->TICK$48cb079c:I

    .line 3
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lat/grabner/circleprogress/AnimationMsg;->START_SPINNING$48cb079c:I

    aput v2, v0, v1

    sget v1, Lat/grabner/circleprogress/AnimationMsg;->STOP_SPINNING$48cb079c:I

    aput v1, v0, v3

    sget v1, Lat/grabner/circleprogress/AnimationMsg;->SET_VALUE$48cb079c:I

    aput v1, v0, v4

    sget v1, Lat/grabner/circleprogress/AnimationMsg;->SET_VALUE_ANIMATED$48cb079c:I

    aput v1, v0, v5

    sget v1, Lat/grabner/circleprogress/AnimationMsg;->TICK$48cb079c:I

    aput v1, v0, v6

    sput-object v0, Lat/grabner/circleprogress/AnimationMsg;->$VALUES$45ba50f7:[I

    return-void
.end method

.method public static values$47292116()[I
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lat/grabner/circleprogress/AnimationMsg;->$VALUES$45ba50f7:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
