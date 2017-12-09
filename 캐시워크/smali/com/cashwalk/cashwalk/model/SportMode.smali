.class public Lcom/cashwalk/cashwalk/model/SportMode;
.super Ljava/lang/Object;
.source "SportMode.java"


# instance fields
.field public baseDrawableName:Ljava/lang/String;

.field public isSelect:Z

.field public modeCode:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "baseDrawableName"    # Ljava/lang/String;
    .param p3, "modeCode"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/model/SportMode;->isSelect:Z

    .line 15
    iput-object p1, p0, Lcom/cashwalk/cashwalk/model/SportMode;->name:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/cashwalk/cashwalk/model/SportMode;->baseDrawableName:Ljava/lang/String;

    .line 17
    iput p3, p0, Lcom/cashwalk/cashwalk/model/SportMode;->modeCode:I

    .line 18
    return-void
.end method
