.class public final enum Lme/everything/providers/core/FieldMapping$LogicalType;
.super Ljava/lang/Enum;
.source "FieldMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/everything/providers/core/FieldMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogicalType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lme/everything/providers/core/FieldMapping$LogicalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/everything/providers/core/FieldMapping$LogicalType;

.field public static final enum Array:Lme/everything/providers/core/FieldMapping$LogicalType;

.field public static final enum Boolean:Lme/everything/providers/core/FieldMapping$LogicalType;

.field public static final enum Double:Lme/everything/providers/core/FieldMapping$LogicalType;

.field public static final enum EnumInt:Lme/everything/providers/core/FieldMapping$LogicalType;

.field public static final enum Int:Lme/everything/providers/core/FieldMapping$LogicalType;

.field public static final enum Long:Lme/everything/providers/core/FieldMapping$LogicalType;

.field public static final enum Physical:Lme/everything/providers/core/FieldMapping$LogicalType;

.field public static final enum String:Lme/everything/providers/core/FieldMapping$LogicalType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lme/everything/providers/core/FieldMapping$LogicalType;

    const-string v1, "String"

    invoke-direct {v0, v1, v3}, Lme/everything/providers/core/FieldMapping$LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/everything/providers/core/FieldMapping$LogicalType;->String:Lme/everything/providers/core/FieldMapping$LogicalType;

    .line 39
    new-instance v0, Lme/everything/providers/core/FieldMapping$LogicalType;

    const-string v1, "Long"

    invoke-direct {v0, v1, v4}, Lme/everything/providers/core/FieldMapping$LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/everything/providers/core/FieldMapping$LogicalType;->Long:Lme/everything/providers/core/FieldMapping$LogicalType;

    .line 40
    new-instance v0, Lme/everything/providers/core/FieldMapping$LogicalType;

    const-string v1, "Int"

    invoke-direct {v0, v1, v5}, Lme/everything/providers/core/FieldMapping$LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/everything/providers/core/FieldMapping$LogicalType;->Int:Lme/everything/providers/core/FieldMapping$LogicalType;

    .line 41
    new-instance v0, Lme/everything/providers/core/FieldMapping$LogicalType;

    const-string v1, "Boolean"

    invoke-direct {v0, v1, v6}, Lme/everything/providers/core/FieldMapping$LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/everything/providers/core/FieldMapping$LogicalType;->Boolean:Lme/everything/providers/core/FieldMapping$LogicalType;

    .line 42
    new-instance v0, Lme/everything/providers/core/FieldMapping$LogicalType;

    const-string v1, "Array"

    invoke-direct {v0, v1, v7}, Lme/everything/providers/core/FieldMapping$LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/everything/providers/core/FieldMapping$LogicalType;->Array:Lme/everything/providers/core/FieldMapping$LogicalType;

    .line 43
    new-instance v0, Lme/everything/providers/core/FieldMapping$LogicalType;

    const-string v1, "EnumInt"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lme/everything/providers/core/FieldMapping$LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/everything/providers/core/FieldMapping$LogicalType;->EnumInt:Lme/everything/providers/core/FieldMapping$LogicalType;

    .line 44
    new-instance v0, Lme/everything/providers/core/FieldMapping$LogicalType;

    const-string v1, "Double"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lme/everything/providers/core/FieldMapping$LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/everything/providers/core/FieldMapping$LogicalType;->Double:Lme/everything/providers/core/FieldMapping$LogicalType;

    .line 45
    new-instance v0, Lme/everything/providers/core/FieldMapping$LogicalType;

    const-string v1, "Physical"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lme/everything/providers/core/FieldMapping$LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/everything/providers/core/FieldMapping$LogicalType;->Physical:Lme/everything/providers/core/FieldMapping$LogicalType;

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [Lme/everything/providers/core/FieldMapping$LogicalType;

    sget-object v1, Lme/everything/providers/core/FieldMapping$LogicalType;->String:Lme/everything/providers/core/FieldMapping$LogicalType;

    aput-object v1, v0, v3

    sget-object v1, Lme/everything/providers/core/FieldMapping$LogicalType;->Long:Lme/everything/providers/core/FieldMapping$LogicalType;

    aput-object v1, v0, v4

    sget-object v1, Lme/everything/providers/core/FieldMapping$LogicalType;->Int:Lme/everything/providers/core/FieldMapping$LogicalType;

    aput-object v1, v0, v5

    sget-object v1, Lme/everything/providers/core/FieldMapping$LogicalType;->Boolean:Lme/everything/providers/core/FieldMapping$LogicalType;

    aput-object v1, v0, v6

    sget-object v1, Lme/everything/providers/core/FieldMapping$LogicalType;->Array:Lme/everything/providers/core/FieldMapping$LogicalType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lme/everything/providers/core/FieldMapping$LogicalType;->EnumInt:Lme/everything/providers/core/FieldMapping$LogicalType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lme/everything/providers/core/FieldMapping$LogicalType;->Double:Lme/everything/providers/core/FieldMapping$LogicalType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lme/everything/providers/core/FieldMapping$LogicalType;->Physical:Lme/everything/providers/core/FieldMapping$LogicalType;

    aput-object v2, v0, v1

    sput-object v0, Lme/everything/providers/core/FieldMapping$LogicalType;->$VALUES:[Lme/everything/providers/core/FieldMapping$LogicalType;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lme/everything/providers/core/FieldMapping$LogicalType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lme/everything/providers/core/FieldMapping$LogicalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/everything/providers/core/FieldMapping$LogicalType;

    return-object v0
.end method

.method public static values()[Lme/everything/providers/core/FieldMapping$LogicalType;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lme/everything/providers/core/FieldMapping$LogicalType;->$VALUES:[Lme/everything/providers/core/FieldMapping$LogicalType;

    invoke-virtual {v0}, [Lme/everything/providers/core/FieldMapping$LogicalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/everything/providers/core/FieldMapping$LogicalType;

    return-object v0
.end method
