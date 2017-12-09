.class Lcom/cashwalk/cashwalk/MainActivity$23$1$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity$23$1;->handleResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cashwalk/cashwalk/MainActivity$23$1;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity$23$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/cashwalk/cashwalk/MainActivity$23$1;

    .prologue
    .line 988
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1$7;->this$2:Lcom/cashwalk/cashwalk/MainActivity$23$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 991
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 992
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1$7;->this$2:Lcom/cashwalk/cashwalk/MainActivity$23$1;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/MainActivity$23$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/MainActivity$23;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1$7;->this$2:Lcom/cashwalk/cashwalk/MainActivity$23$1;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity$23$1;->this$1:Lcom/cashwalk/cashwalk/MainActivity$23;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/MainActivity$23;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cashwalk/cashwalk/util/Utils;->sendCsEmail(Landroid/content/Context;Landroid/content/SharedPreferences;Z)V

    .line 993
    return-void
.end method
