.class Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$2;
.super Ljava/lang/Object;
.source "LottoListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;->onBindViewHolder(Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/cashwalk/cashwalk/util/network/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$2;->this$0:Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cashwalk/cashwalk/util/network/model/User;Lcom/cashwalk/cashwalk/util/network/model/User;)I
    .locals 2
    .param p1, "o1"    # Lcom/cashwalk/cashwalk/util/network/model/User;
    .param p2, "o2"    # Lcom/cashwalk/cashwalk/util/network/model/User;

    .prologue
    .line 68
    iget-object v0, p1, Lcom/cashwalk/cashwalk/util/network/model/User;->birthday:Lorg/joda/time/DateTime;

    iget-object v1, p2, Lcom/cashwalk/cashwalk/util/network/model/User;->birthday:Lorg/joda/time/DateTime;

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->compareTo(Lorg/joda/time/ReadableInstant;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lcom/cashwalk/cashwalk/util/network/model/User;

    check-cast p2, Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$2;->compare(Lcom/cashwalk/cashwalk/util/network/model/User;Lcom/cashwalk/cashwalk/util/network/model/User;)I

    move-result v0

    return v0
.end method
