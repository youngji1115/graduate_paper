.class public Lcom/cashwalk/cashwalk/util/network/model/Phone;
.super Ljava/lang/Object;
.source "Phone.java"


# instance fields
.field public _id:I

.field public contacts_id:I

.field public countryCode:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 19
    if-nez p1, :cond_1

    .line 25
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 21
    check-cast v0, Lcom/cashwalk/cashwalk/util/network/model/Phone;

    .line 22
    .local v0, "temp":Lcom/cashwalk/cashwalk/util/network/model/Phone;
    iget-object v2, v0, Lcom/cashwalk/cashwalk/util/network/model/Phone;->number:Ljava/lang/String;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/util/network/model/Phone;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Phone;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
