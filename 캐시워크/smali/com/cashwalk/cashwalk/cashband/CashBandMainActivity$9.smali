.class Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$9;
.super Ljava/lang/Object;
.source "CashBandMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->bandConnected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 687
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$9;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 691
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$9;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$2000(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;Z)V

    .line 692
    return-void
.end method
