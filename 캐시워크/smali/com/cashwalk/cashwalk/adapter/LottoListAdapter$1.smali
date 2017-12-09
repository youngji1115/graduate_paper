.class Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$1;
.super Ljava/lang/Object;
.source "LottoListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V
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
        "Lcom/cashwalk/cashwalk/util/network/model/Lotto;",
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
    .line 36
    iput-object p1, p0, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$1;->this$0:Lcom/cashwalk/cashwalk/adapter/LottoListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cashwalk/cashwalk/util/network/model/Lotto;Lcom/cashwalk/cashwalk/util/network/model/Lotto;)I
    .locals 2
    .param p1, "o1"    # Lcom/cashwalk/cashwalk/util/network/model/Lotto;
    .param p2, "o2"    # Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    .prologue
    .line 39
    iget v0, p2, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->point:I

    iget v1, p1, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->point:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 36
    check-cast p1, Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    check-cast p2, Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/adapter/LottoListAdapter$1;->compare(Lcom/cashwalk/cashwalk/util/network/model/Lotto;Lcom/cashwalk/cashwalk/util/network/model/Lotto;)I

    move-result v0

    return v0
.end method
