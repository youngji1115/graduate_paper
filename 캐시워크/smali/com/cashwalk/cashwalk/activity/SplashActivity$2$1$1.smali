.class Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->handleResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 121
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 122
    return-void
.end method
