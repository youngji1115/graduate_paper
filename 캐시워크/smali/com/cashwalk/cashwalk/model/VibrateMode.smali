.class public Lcom/cashwalk/cashwalk/model/VibrateMode;
.super Ljava/lang/Object;
.source "VibrateMode.java"


# instance fields
.field public modeIndex:I

.field public modeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "modeName"    # Ljava/lang/String;
    .param p2, "modeIndex"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/cashwalk/cashwalk/model/VibrateMode;->modeName:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/cashwalk/cashwalk/model/VibrateMode;->modeIndex:I

    .line 15
    return-void
.end method
