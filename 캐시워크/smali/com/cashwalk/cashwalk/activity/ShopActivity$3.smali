.class Lcom/cashwalk/cashwalk/activity/ShopActivity$3;
.super Ljava/lang/Object;
.source "ShopActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/ShopActivity;->shopOpen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/ShopActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/ShopActivity;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 163
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 164
    return-void
.end method
