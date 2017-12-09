.class public Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;
.super Ljava/lang/Object;
.source "EventRaffle.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2f65838a549fb143L


# instance fields
.field public prize:Lcom/cashwalk/cashwalk/util/network/model/Prize;

.field public showEvent:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;->showEvent:Z

    .line 9
    new-instance v0, Lcom/cashwalk/cashwalk/util/network/model/Prize;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/util/network/model/Prize;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;->prize:Lcom/cashwalk/cashwalk/util/network/model/Prize;

    return-void
.end method
