.class public Lcom/cashwalk/cashwalk/util/network/model/Invite;
.super Ljava/lang/Object;
.source "Invite.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1eeed7ab51cdd480L


# instance fields
.field public code:Ljava/lang/String;

.field public count:I

.field public point:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Invite;->point:I

    .line 8
    iput v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Invite;->count:I

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Invite;->code:Ljava/lang/String;

    return-void
.end method
