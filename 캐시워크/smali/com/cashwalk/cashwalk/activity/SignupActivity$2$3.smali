.class Lcom/cashwalk/cashwalk/activity/SignupActivity$2$3;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/SignupActivity$2;->handleResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/SignupActivity$2;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/SignupActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/SignupActivity$2;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/SignupActivity$2$3;->this$1:Lcom/cashwalk/cashwalk/activity/SignupActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 205
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 206
    return-void
.end method
