.class Lcom/cashwalk/cashwalk/CashWalkMainActivity$6$2;
.super Ljava/lang/Object;
.source "CashWalkMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;->handleResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;

    .prologue
    .line 735
    iput-object p1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6$2;->this$1:Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 738
    iget-object v0, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6$2;->this$1:Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$6;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->finish()V

    .line 739
    return-void
.end method
