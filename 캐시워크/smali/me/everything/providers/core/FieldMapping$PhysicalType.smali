.class public final enum Lme/everything/providers/core/FieldMapping$PhysicalType;
.super Ljava/lang/Enum;
.source "FieldMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/everything/providers/core/FieldMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhysicalType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lme/everything/providers/core/FieldMapping$PhysicalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/everything/providers/core/FieldMapping$PhysicalType;

.field public static final enum Blob:Lme/everything/providers/core/FieldMapping$PhysicalType;

.field public static final enum Double:Lme/everything/providers/core/FieldMapping$PhysicalType;

.field public static final enum Int:Lme/everything/providers/core/FieldMapping$PhysicalType;

.field public static final enum Long:Lme/everything/providers/core/FieldMapping$PhysicalType;

.field public static final enum String:Lme/everything/providers/core/FieldMapping$PhysicalType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lme/everything/providers/core/FieldMapping$PhysicalType;

    const-string v1, "String"

    invoke-direct {v0, v1, v2}, Lme/everything/providers/core/FieldMapping$PhysicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;

    .line 28
    new-instance v0, Lme/everything/providers/core/FieldMapping$PhysicalType;

    const-string v1, "Long"

    invoke-direct {v0, v1, v3}, Lme/everything/providers/core/FieldMapping$PhysicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/everything/providers/core/FieldMapping$PhysicalType;->Long:Lme/everything/providers/core/FieldMapping$PhysicalType;

    .line 29
    new-instance v0, Lme/everything/providers/core/FieldMapping$PhysicalType;

    const-string v1, "Int"

    invoke-direct {v0, v1, v4}, Lme/everything/providers/core/FieldMapping$PhysicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;

    .line 30
    new-instance v0, Lme/everything/providers/core/FieldMapping$PhysicalType;

    const-string v1, "Double"

    invoke-direct {v0, v1, v5}, Lme/everything/providers/core/FieldMapping$PhysicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/everything/providers/core/FieldMapping$PhysicalType;->Double:Lme/everything/providers/core/FieldMapping$PhysicalType;

    .line 31
    new-instance v0, Lme/everything/providers/core/FieldMapping$PhysicalType;

    const-string v1, "Blob"

    invoke-direct {v0, v1, v6}, Lme/everything/providers/core/FieldMapping$PhysicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/everything/providers/core/FieldMapping$PhysicalType;->Blob:Lme/everything/providers/core/FieldMapping$PhysicalType;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Lme/everything/providers/core/FieldMapping$PhysicalType;

    sget-object v1, Lme/everything/providers/core/FieldMapping$PhysicalType;->String:Lme/everything/providers/core/FieldMapping$PhysicalType;

    aput-object v1, v0, v2

    sget-object v1, Lme/everything/providers/core/FieldMapping$PhysicalType;->Long:Lme/everything/providers/core/FieldMapping$PhysicalType;

    aput-object v1, v0, v3

    sget-object v1, Lme/everything/providers/core/FieldMapping$PhysicalType;->Int:Lme/everything/providers/core/FieldMapping$PhysicalType;

    aput-object v1, v0, v4

    sget-object v1, Lme/everything/providers/core/FieldMapping$PhysicalType;->Double:Lme/everything/providers/core/FieldMapping$PhysicalType;

    aput-object v1, v0, v5

    sget-object v1, Lme/everything/providers/core/FieldMapping$PhysicalType;->Blob:Lme/everything/providers/core/FieldMapping$PhysicalType;

    aput-object v1, v0, v6

    sput-object v0, Lme/everything/providers/core/FieldMapping$PhysicalType;->$VALUES:[Lme/everything/providers/core/FieldMapping$PhysicalType;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lme/everything/providers/core/FieldMapping$PhysicalType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lme/everything/providers/core/FieldMapping$PhysicalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/everything/providers/core/FieldMapping$PhysicalType;

    return-object v0
.end method

.method public static values()[Lme/everything/providers/core/FieldMapping$PhysicalType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lme/everything/providers/core/FieldMapping$PhysicalType;->$VALUES:[Lme/everything/providers/core/FieldMapping$PhysicalType;

    invoke-virtual {v0}, [Lme/everything/providers/core/FieldMapping$PhysicalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/everything/providers/core/FieldMapping$PhysicalType;

    return-object v0
.end method
