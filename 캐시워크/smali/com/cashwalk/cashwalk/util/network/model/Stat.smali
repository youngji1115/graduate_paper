.class public Lcom/cashwalk/cashwalk/util/network/model/Stat;
.super Ljava/lang/Object;
.source "Stat.java"


# instance fields
.field public date:Lorg/joda/time/DateTime;

.field public records:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public steps:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
