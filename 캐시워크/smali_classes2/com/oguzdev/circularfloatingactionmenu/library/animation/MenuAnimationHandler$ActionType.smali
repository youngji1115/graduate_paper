.class public final enum Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;
.super Ljava/lang/Enum;
.source "MenuAnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

.field public static final enum CLOSING:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

.field public static final enum OPENING:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

    const-string v1, "OPENING"

    invoke-direct {v0, v1, v2}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;->OPENING:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

    new-instance v0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

    const-string v1, "CLOSING"

    invoke-direct {v0, v1, v3}, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;->CLOSING:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

    sget-object v1, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;->OPENING:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;->CLOSING:Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;->$VALUES:[Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;->$VALUES:[Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

    invoke-virtual {v0}, [Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oguzdev/circularfloatingactionmenu/library/animation/MenuAnimationHandler$ActionType;

    return-object v0
.end method
