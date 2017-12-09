.class Lcom/cashwalk/cashwalk/MainActivity$23$1$4;
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
    .line 962
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$23$1$4;->this$2:Lcom/cashwalk/cashwalk/MainActivity$23$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 965
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 966
    return-void
.end method
