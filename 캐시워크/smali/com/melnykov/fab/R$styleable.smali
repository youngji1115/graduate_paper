.class public final Lcom/melnykov/fab/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/melnykov/fab/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FloatingActionButton:[I

.field public static final FloatingActionButton_fab_colorDisabled:I = 0x4

.field public static final FloatingActionButton_fab_colorNormal:I = 0x2

.field public static final FloatingActionButton_fab_colorPressed:I = 0x1

.field public static final FloatingActionButton_fab_colorRipple:I = 0x3

.field public static final FloatingActionButton_fab_shadow:I = 0x5

.field public static final FloatingActionButton_fab_type:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/melnykov/fab/R$styleable;->FloatingActionButton:[I

    return-void

    :array_0
    .array-data 4
        0x7f010021
        0x7f010123
        0x7f010124
        0x7f010125
        0x7f010126
        0x7f010127
        0x7f010128
        0x7f010129
        0x7f01012a
        0x7f01012b
        0x7f01012c
        0x7f01012d
        0x7f010237
        0x7f010238
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
